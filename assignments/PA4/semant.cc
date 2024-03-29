

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "semant.h"
#include <list>
#include <set>
#include "utilities.h"
#include <vector>


extern int semant_debug;
extern char *curr_filename;
static bool TESTING = false;
static std::ostringstream nop_sstream;
static std::ostream &log = TESTING ? std::cout : nop_sstream;
static Class_ curr_class = NULL; // show what type about class 
ClassTable* classtable;
// typedef std::map<Symbol, Symbol>  MyfeatureName;
typedef SymbolTable<Symbol, Feature_class> MethodTable;
static std::map<Symbol, MethodTable> methodtables;
static SymbolTable<Symbol, Symbol> Objecttable;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
// idttable is identified table 
// strtable is string table
//
static void initialize_constants(void)
{
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}


// – Pass 1: Gather all class names
//   Pass 2: Do the checking
// Class
ClassTable::ClassTable(Classes classes) : semant_errors(0) , error_stream(cerr) {

    /* Fill this in */
    log << "install_basic_classes" <<endl;
    install_basic_classes(); // 添加五个基本类

    log << "Now let's build inheritence graph" << std::endl;
    for(int i = classes->first() ;classes->more(i);i = classes->next(i)){
        // Symbol parent = classes->nth(i)->Getparent();

        log << classes->nth(i)->GetName() << " parent is " <<classes->nth(i)->Getparent() <<std::endl;
        
       if (classes->nth(i)->GetName() == SELF_TYPE) {
            semant_error(classes->nth(i)) << "Error! SELF_TYPE redeclared!" << std::endl;
        }
    
        if(m_classes.find(classes->nth(i)->GetName()) == m_classes.end())
        {
            m_classes.insert(std::make_pair(classes->nth(i)->GetName(),classes->nth(i)));
        }
        else{
            semant_error(classes->nth(i))<< "Error! Class "<<classes->nth(i)->GetName() << " has been defined!"<< std::endl;
            // return;
        }
        
        
    }


    if(m_classes.find(Main) == m_classes.end()){
        semant_error() << "Class Main is not defined." << std::endl;
    }
    
    // check inheritence exist ring,使用拓扑排序
    // 这里只有一个父节点，我们对每一个节点找其父节点，如果能回来，说明有环，如果没有，说明没有环
    for(int i = classes->first() ;classes->more(i);i = classes->next(i)){
        log << "check ring ablout "<<classes->nth(i)->GetName() <<std::endl;
        curr_class = classes->nth(i);
        Symbol parent_name= curr_class ->Getparent() ;
        if(m_classes.find(parent_name)==m_classes.end()){
            semant_error(classes->nth(i))<< "Class "<<classes->nth(i)->GetName()<<" inherits from an undefined class "<<parent_name<<"."<< std::endl;
            return;
        }
        while(parent_name != Object )
        {
            if(parent_name == Int || parent_name ==Str || parent_name ==Bool|| parent_name == SELF_TYPE){
                semant_error(classes->nth(i))<< "Class "<<classes->nth(i)->GetName()<<" cannot inherit class "<<parent_name<<"."<< std::endl;

                return;

            }
            if(parent_name  == classes->nth(i)->GetName() )
            {
                log << "Error" << endl;
                semant_error() << "Error! Class "<<classes->nth(i)->GetName() << " has ring!"<< std::endl;
                return;
            }
            parent_name = m_classes[parent_name]->Getparent();            
        }
    }
}

// check classType::CheckInheritance
// check  whether  A  is the  Subtype of B
// as the teacher's PPT shows , we will extend subtpype for self_type
bool ClassTable::Subtype(Symbol child,Symbol ancestor){
    // First rule && Third rule
    if(ancestor == SELF_TYPE)
        return child == SELF_TYPE;

    // second rule 
    Symbol parent_name = child;
    if(child == SELF_TYPE )
        parent_name = curr_class->GetName();
    
    // fourth rule
    while(parent_name != No_class){
        if(parent_name == ancestor){
            return true;
        }
        parent_name = m_classes[parent_name]->Getparent();
    } 

    return false;
}


// Find the common ancestor 
// Try to construct path 
// ACDFEQB
//RZMDFEQB
// reverse find  

std::list<Symbol> ClassTable::FindSymbolPath(Symbol A)
{
    if(A == SELF_TYPE){
        A = curr_class->GetName();
    }
    std::list<Symbol> Path;
    Symbol parent_name = A;
    while(parent_name != No_class){
        Path.push_front(parent_name);
        parent_name = m_classes[parent_name]->Getparent();
    }
    return Path;
}
Symbol ClassTable::Lub(Symbol A,Symbol B){

    std::list<Symbol> Path_A = FindSymbolPath(A);
    std::list<Symbol> Path_B = FindSymbolPath(B);
    Symbol Tmp;

    if(A == B){
        return A;
    }
    if(A == Object || B == Object){
        return Object;
    }
    while( Path_A.front() == Path_B.front())
    {  
        // log << Path_A.front()  << ":" << Path_B.front() <<endl;
        Tmp = Path_A.front();
        Path_A.pop_front();
        Path_B.pop_front();
    }
    return Tmp;
}

void ClassTable::install_basic_classes() {

    // The tree package uses these globals to annotate the classes built below.
   // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.
    // parent is _no_class
    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);

    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename);  

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);

    // 
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);
    // 添加到classTable
    log << "Add basic classTable... " << endl;
    m_classes.insert(std::make_pair(Object,Object_class));
    m_classes.insert(std::make_pair(IO,IO_class));
    m_classes.insert(std::make_pair(Int,Int_class));
    m_classes.insert(std::make_pair(Bool,Bool_class));
    m_classes.insert(std::make_pair(Str,Str_class));
    log << "End " << endl;

}

// 
void method_class::AddMethodToTable(Symbol class_name)
{
    log << "Adding method : " << name <<endl;
    methodtables[class_name].addid(name,new method_class(copy_Symbol(name),formals->copy_list(),copy_Symbol(return_type),expr->copy_Expression()));
}

void method_class::AddAttribToTable(Symbol class_name)
{

}
void attr_class::AddMethodToTable(Symbol class_name)
{

}
void attr_class::AddAttribToTable(Symbol class_name)
{
    log << "Adding attribute :" << name <<endl;
    if(name == self){
        classtable->semant_error(curr_class)<<"'self' cannot be the name of an attribute." << endl;
    }
    if(Objecttable.lookup(name) != NULL){
        classtable->semant_error(curr_class)<<"Error attribute ,already Exsit"  << curr_class->GetName() << endl;
        return;
    }
    
    Objecttable.addid(name,new Symbol(type_decl));

}

void method_class::CheckFeatureType(){
    log << "Checking method :" << name  << std::endl;

     //check return type
    if(classtable->m_classes.find(return_type) == classtable->m_classes.end() && return_type != SELF_TYPE){
        classtable->semant_error(curr_class) << "Error! Cannot find return_type " << return_type << endl;
    }

    Objecttable.enterscope();
    std::set<Symbol> names;
    // check formals type
    for(int i = formals->first() ;formals->more(i);i = formals->next(i)){
        
        Symbol type = formals->nth(i)->GetType();
        Symbol name = formals->nth(i)->GetName();
        if(classtable->m_classes.find(type) == classtable->m_classes.end()){
            classtable->semant_error(curr_class) << "Error! Cannot find class " << type << endl;
        } 
        if(name == self){
                classtable->semant_error(curr_class)<<"'self' cannot be the name of a formal parameter."<<endl;
        }
        // check same name
        if(names.find(name) == names.end()){
            names.insert(name);
            log << "Add " << name<<":" << type << " into Objecttable"  << std::endl;
            Objecttable.addid(name,new Symbol(type));
        }
        else{
            classtable->semant_error(curr_class) << "Error same name" <<endl;
        }
        
    }
    
    // check expr_type 
    
    Symbol expr_type = expr->CheckExprType();
    
    if(classtable->Subtype(expr_type,return_type) == false){
        classtable->semant_error(curr_class)<<"Error expr type is not subtype of expr_type"<<endl;
    }

    Objecttable.exitscope();

}

void attr_class::CheckAttrType(){
    
    //check T0 exist
    
    log << "Checking attribute: " << name << ":" << type_decl << endl;
    if(classtable->m_classes.find(type_decl) == classtable->m_classes.end())
    {
        classtable->semant_error(curr_class)<<"Error x's type is not exist"<<endl;
    }
    Symbol type = init->CheckExprType();
    if(type == No_type ){
        log<<"NO INIT" <<std::endl;
    }
    log << "Checking attribute: " << name <<":"<<type<< " ------end----- " <<  endl;

}

Symbol assign_class::CheckExprType()
{
    log << "Checking assign "<< name <<endl;
    
    if(Objecttable.lookup(name) == NULL){
        // Not Find 
        classtable->semant_error(curr_class)<<"Value is not define before"<<endl;
        type = Object;
        return type;
    }
    // Objecttable.addid(name,new Symbol(type));
    type = *Objecttable.lookup(name);
    Symbol value_type = expr->CheckExprType();

    if(classtable->Subtype(value_type,type) == FALSE){

        classtable->semant_error(curr_class)<<"ValueType is not Subtype of Name type "<<endl;
        type = Object;
        return type;
    }
    // type = value_type;
    log<<"................."<< type <<endl;
    return value_type;
}

// e0.f(e1,e2....,en):Tn+1

Symbol dispatch_class::CheckExprType()
{
    bool error = false;
    log << "checking dispatch type " << name <<endl;
    
    // check e0's type
    
    Symbol expr_type = expr->CheckExprType();
    if(expr_type == SELF_TYPE){
        log << "Dispatch:   Class_type:" << expr_type <<",functionName:"<<name<< ",curr_class: " << curr_class->GetName() << std::endl;
        // expr_type = curr_class->GetName();
        // log << "122"<<endl;
    }
    else
    {
        log << "Dispatch: class = " << expr_type  << std::endl;
    }


    // check  method
    method_class * method = NULL;
    std::list<Symbol> Path = classtable->FindSymbolPath(expr_type);
    Path.reverse();

    for(auto iter = Path.begin(); iter != Path.end(); ++iter ){
        // log<< iter <<endl;
        log << "Find method name " << name<<":" << expr_type << ":" << *iter<<endl;
        if(methodtables[*iter].lookup(name)!= NULL){    
            method = (method_class*)methodtables[*iter].lookup(name);
            break;
        }
    }
    //if Not find ,error;
    if(method == NULL){
        error = true;
        classtable->semant_error(curr_class)<<"Dispatch to undefined method "<<name<<"."<<endl;
        type = Object;
        return type ;
    }

    // Check params
    // log << actual->len() << endl;

    for(int i = actual->first(); actual->more(i); i = actual->next(i) ){
        Symbol actual_type = actual->nth(i)->CheckExprType();
        // Symbol actual_name = actual->nth(i)->
        log << "params type is " << actual_type <<endl;

        if(method != NULL)
        {
            if( actual->len() != method->GetFormals()->len()){
                classtable->semant_error(curr_class) << "Method "<<method->GetName()<<" called with wrong number of arguments." <<std::endl;
                break;
            }
            
            // check e1-en 's Type exist
            if(actual_type == SELF_TYPE)
                actual_type = curr_class->GetName();
            if(classtable->m_classes.find(actual_type) == classtable->m_classes.end()){
                error = true;
                classtable->semant_error(curr_class)<<"classtype Not have this params type:"<< actual_type<<endl;
            }
            // check the conform
            Symbol formal_type = method->GetFormals()->nth(i)->GetType();
            Symbol actual_name = method->GetFormals()->nth(i)->GetName();

            
            log << "formal_type is " << formal_type <<endl;
            if(classtable->Subtype(actual_type,formal_type) == false){
                classtable->semant_error(curr_class) << "In call of method "<<method->GetName()<<", type " << actual_type <<" of parameter "<<actual_name<< " does not conform to declared type " << formal_type << "." <<std::endl;
                error = true;
            }
        }
    }
    // log << "testing... " <<endl;
    //check return type 
    Symbol Method_Rtype = method->GetReturnType();
    log << Method_Rtype <<endl;
    if(Method_Rtype == SELF_TYPE){
        
        Method_Rtype = expr_type; 
    }   

    if(error == true){
        type = Object;
    }
    else{
        type  = Method_Rtype;
    }
    // log << "testing................... " << type<<endl;
    return type ;
}


// e0@T.f(e1,,,en):Tn+1
Symbol static_dispatch_class::CheckExprType()
{
    bool error = false;
    log << "checking Statuc dispatch type " << name <<endl;

    // Check T exist
    Symbol T_type = GetType_name();
    if(classtable->m_classes.find(T_type) == classtable->m_classes.end()){
        error = true;
        classtable->semant_error(curr_class) << "Error Can't Find TypeName  " << T_type  << std::endl;
    }
    // Check T has method f

    method_class * method = NULL;
    std::list<Symbol> Path = classtable->FindSymbolPath(T_type);
    for(auto iter = Path.rbegin(); iter != Path.rend(); ++iter ){
        
        if(methodtables[*iter].lookup(name)!= NULL){    
            method =(method_class *)methodtables[*iter].lookup(name);
            break;
        }
    }
    // e0's type should conform T
    Symbol expr_type = expr->CheckExprType();
    if(expr_type == SELF_TYPE){
        error = true;
        classtable->semant_error(curr_class) << "Expression type SELF_TYPE does not conform to declared static dispatch type " << T_type  << std::endl;
    }

    if(classtable->Subtype(expr_type,T_type) == false){
        error = true;
        classtable->semant_error(curr_class) << "Expression type "<<expr_type<< " does not conform to declared static dispatch type " << T_type  << std::endl;
    }

    // params check 
    for(int i = actual->first(); actual->more(i); i = actual->next(i) ){
        Symbol actual_type = actual->nth(i)->CheckExprType();
        if(method != NULL)
        {
            // check e1-en 's Type exist
            if(classtable->m_classes.find(actual_type) == classtable->m_classes.end()){
                error = true;
                classtable->semant_error(curr_class)<<"classtype Not have this params type "<<endl;
            }
            // check the conform
            Symbol formal_type = method->GetFormals()->nth(i)->GetType();

            if(classtable->Subtype(actual_type,formal_type) == false){
                classtable->semant_error(curr_class) << "Error! Actual type " << actual_type << " doesn't suit formal type " << formal_type << std::endl;
                error = true;
            }
        }
    }
    //check return type 
    Symbol Method_Rtype = method->GetReturnType();
    if(Method_Rtype == SELF_TYPE){
        Method_Rtype = expr_type; 
    }   

    if(error == true){
        type = Object;
    }
    else{
        type  = Method_Rtype;
    }
    
    return type ;

}

// if <expr> then <expr> else <expr> fi

Symbol cond_class::CheckExprType()
{
    // check whether pred_type is Bool 
    log << "Checking cond_class" <<endl;
    Symbol pred_type = pred->CheckExprType();
    if(pred_type != Bool) {
        classtable->semant_error(curr_class) << "Error! predicate type is not  Bool " << pred_type  << std::endl;
    }
    Symbol then_type = then_exp->CheckExprType();
    Symbol else_type = else_exp->CheckExprType();
    
    // Lub
    if(else_type == No_type){
        type = then_type;
    }
    else{
        log << then_type <<endl;
        log << else_type <<endl;
        type = classtable->Lub(then_type,else_type);
    }

    return type;

}


// while <expr> loop <expr> pool

Symbol loop_class::CheckExprType()
{
    //check pred
    log << "Checking loop_class" <<endl;
    Symbol pred_type = pred->CheckExprType();
    if(pred_type != Bool) {
        classtable->semant_error(curr_class) << "Error! predicate type is not  Bool " << pred_type  << std::endl;
    }
    body->CheckExprType();
    type = Object;
    return type;
    
}

// { <expr>; ... <expr>; }
Symbol block_class::CheckExprType()
{
    log << "Checking block_class " <<endl;
    for(int i = body->first(); body->more(i); i = body->next(i) ){
        type = body->nth(i)->CheckExprType();
    }
    return type;
}



Symbol typcase_class::CheckExprType()
{
    log << "Checking typcase_class" <<endl;
    Symbol expr_type = expr->CheckExprType();
    Case branch;
    Symbol type_decl;
    

    // Lub each one
    // Check double type !!!!!
    std::set<Symbol> typelist;
    for(int i = cases->first(); cases->more(i); i = cases->next(i)){

        branch = cases->nth(i);
        
        Symbol Branch_type =  branch->CheckBranchType();
        type_decl = ((branch_class *)branch)->GetType();
        if(typelist.find(type_decl) ==  typelist.end()){
            typelist.insert(type_decl);
        }
        else{
            classtable->semant_error(curr_class)<<"Duplicate branch "<<Branch_type<<" in case statement"<<endl;
            type = Object;
            return type; 
        }
        
        if(i != cases->first()){
            type = classtable->Lub(type,Branch_type);
        }else{
            type = Branch_type;
        }
        // log << "Lub "<< type <<","<< Branch_type << endl;
    }
    // type = Object;
    return type;

}
Symbol branch_class::CheckBranchType()
{
    Symbol Type;
    log << "Checking branch" <<endl;
    Objecttable.enterscope();
    Objecttable.addid(name,new Symbol (type_decl));
    log << "add " << name<< ":" << type_decl <<endl;
    Type = expr->CheckExprType();
    Objecttable.exitscope();
    log << Type << ":"<< endl;
    if(classtable->Subtype(Type,type_decl)){
        return Type;
    }else
    {
        classtable->semant_error(curr_class) << "Inferred type "<<Type<<" of initialization of attribute a does not conform to declared type "<< type_decl <<"."  << std::endl;
        return Object;
    }
    

}


Symbol let_class::CheckExprType()
{   
    // check init
    log << "Checking let_class" <<endl;
    Symbol init_type = init->CheckExprType();
    if(init_type != No_type){
        if(classtable->Subtype(init_type,type_decl) == false)
        {
            classtable->semant_error(curr_class) << "Error! predicate type is not right " << init_type  << ":" << type_decl << std::endl;
        }
    }
    if(identifier == self){
        classtable->semant_error(curr_class) << " 'self' cannot be bound in a 'let' expression." << std::endl;
    }
    // O[T0'/x] 
    Objecttable.enterscope();
    Objecttable.addid(identifier,new Symbol(type_decl));
    type = body->CheckExprType();
    Objecttable.exitscope();

    return type;

}

Symbol plus_class::CheckExprType()
{
    log << "checking plus_class" <<endl;
    type = Int;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith right is not Int" << std::endl;
        type = Object;
    }
    return type;
}

Symbol sub_class::CheckExprType()
{
    log << "checking sub_class" <<endl;
    type = Int;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith right is not Int" << std::endl;
        type = Object;
    }
    return type;
}
Symbol mul_class::CheckExprType()
{
    log << "checking mul_class" <<endl;
    type = Int;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith right is not Int" << std::endl;
        type = Object;
    }
    return type;
}
Symbol divide_class::CheckExprType()
{
    log << "checking divide_class" <<endl;
    type = Int;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Arith right is not Int" << std::endl;
        type = Object;
    }
    return type;
}

Symbol neg_class::CheckExprType()
{
    log << "checking neg_class" <<endl;
    type = Int;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! Neg type is not Int"  << std::endl;
        type = Object;
    }
    
    return type;
}

Symbol lt_class::CheckExprType()
{
    log << "checking lt_class" <<endl;
    type = Bool;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error!  lt left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error!  lt right is not Int" << std::endl;
        type = Object;
    }
    return type;
}


Symbol leq_class::CheckExprType()
{
    log << "checking leq_class" <<endl;
    type = Bool;
    if(e1->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! leq left is not Int"  << std::endl;
        type = Object;
    }
    if(e2->CheckExprType() != Int ){
        classtable->semant_error(curr_class) << "Error! leq right is not Int" << std::endl;
        type = Object;
    }
    return type;

}



Symbol comp_class::CheckExprType()
{
    log << "checking comp_class" <<endl;
    type = Bool;
    if(e1->CheckExprType() != Bool ){
        classtable->semant_error(curr_class) << "Error! comp(Not) type is not Bool"  << std::endl;
        type = Object;
    }
    
    return type;
}


Symbol eq_class::CheckExprType()
{
    log << "Checking eq_class"<<endl;
    Symbol LType = e1->CheckExprType();
    Symbol RType = e2->CheckExprType();
    if(LType == Int || LType == Bool || LType == Str||RType == Int || RType == Bool || RType == Str)
    {
        if(LType == RType)
            type = Bool;
        else{
            type = Object;
            classtable->semant_error(curr_class) << "Illegal comparison with a basic type."  << std::endl;
        }
        
    }else
    {
        type = Bool;
        
    }

    return type;

}
Symbol int_const_class::CheckExprType()
{
    log << "Checking int_const_class"<<endl;
    type = Int;
    return type;
}
Symbol bool_const_class::CheckExprType()
{
    type = Bool;
    return type;
}
Symbol string_const_class::CheckExprType()
{   
    
    type = Str;
    log<<"check str:"<<type<<endl;
    return type;
}
Symbol isvoid_class::CheckExprType()
{
    log << "Checking isvoid_class"<<endl;
    e1->CheckExprType();
    type = Bool;
    return type;
}
Symbol no_expr_class::CheckExprType() 
{
    type = No_type;
    return type;
}


Symbol new__class::CheckExprType()
{

    type = type_name;
    return type;
}

Symbol object_class::CheckExprType() {
    log << "Checking object_class:"<<name<<endl;
    if (name == self) {
        type = SELF_TYPE;
        // log <<"testing : "<< type <<endl;
        return type;
    }
    Symbol* found_type = Objecttable.lookup(name);
    if (found_type == NULL) {
        classtable->semant_error(curr_class) << "Undeclared identifier " << name << std::endl;
        type = Object;
    } else {
        type = *found_type;
    }
    return type;
}


// //////////////////////////////////////////////////////////////////

// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:

//    ostream& ClassTable::semant_error()                

//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'

//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename

// /////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c)
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 



/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */

// 对每个Class的所有方法进行添加和检查
void ClassTable::install_Method()
{
    log << "Now Lets install Method ..."<<endl;
    for(std::map<Symbol, Class_>::iterator it = m_classes.begin();it != m_classes.end();++it)
    {
        Symbol S_class = it->first;
        MethodTable MethodList;
        curr_class = it->second;
        log << "Current Class:" << curr_class->GetName() << endl;
        methodtables[S_class].enterscope();
        for(int i = curr_class->Getfeatures()->first(); curr_class->Getfeatures()->more(i); i = curr_class->Getfeatures()->next(i) )
        {
            
            Symbol MethodName = curr_class->Getfeatures()->nth(i)->GetName();
            
            if(methodtables[S_class].lookup(MethodName) != NULL){
                // double define
                semant_error(curr_class) << "Error! double define method "  << std::endl;

            }
            else{
                curr_class->Getfeatures()->nth(i)->AddMethodToTable(S_class);
            }
        }
    }
    
    
}

// 根据我们上面添加的Method，检查其是否重写父类的方法
void ClassTable::CheckMethod()
{ 
    
    // Get all class
    for(std::map<Symbol, MethodTable>::iterator itr = methodtables.begin();itr != methodtables.end() ; itr++){
        // Get parent method 
        Symbol current_class_name  = itr->first;
        curr_class = m_classes[itr->first];
        Features Methods = curr_class->Getfeatures();
        log << "test1:"<<current_class_name <<endl;
        std::list<Symbol> Path = FindSymbolPath(current_class_name);
        
        Path.reverse();
        log << "Check Method type :" <<current_class_name  <<endl;
        // Get all Methods
        for(int i = Methods->first();Methods->more(i); i = Methods->next(i)){
            
            Symbol Method_name = Methods->nth(i)->GetName();
            Feature  curr_method =  Methods->nth(i);
            bool find_flag = false;
            // Get his Parent
            
            for(auto itr = Path.begin(); itr != Path.end(); itr++){
                if(current_class_name == *itr)
                    continue;
                    
                Symbol Parent_name =  *itr;
                MethodTable Parent_table = methodtables[Parent_name];
            
                // Get Parent method class
                method_class*  Parent_method = (method_class *)Parent_table.lookup(Method_name);
               
                if(Parent_method != NULL){
                    // exsit overridding
                    find_flag = true;
                    //Check return type
                    if(Parent_method->GetReturnType() !=  ((method_class *)curr_method)->GetReturnType()){

                        semant_error(curr_class) << "Error! return type not Match "  << std::endl;

                    }
                    // Check argument numbers and type
                    Formals Parent_formals =  Parent_method->GetFormals();
                    Formals curr_formals = ((method_class *)curr_method)->GetFormals();
                    if(curr_formals->len() != Parent_formals->len())
                    {
                        
                        semant_error(curr_class) << "Error! args number  not match "  << std::endl;
                    }
                    else
                    {
                        
                        for(int i = curr_formals->first();curr_formals->more(i);i = curr_formals->next(i))
                        {
                            // check type 
                            if(curr_formals->nth(i)->GetType() != Parent_formals->nth(i)->GetType()){

                                semant_error(curr_class) << "Error! Type not Match "  << std::endl;
                                break;
                            }

                        }
                    }
                }
                if(find_flag == true )
                    break;
            }
            // log <<  <<endl;
        }
    }

}


void program_class::semant()
{
    log << "start" <<std::endl;
    
    // write(1,"123",4);
    
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */

    // Install and Check Class
    classtable = new ClassTable(classes);
    if (classtable->errors()) {
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
    // Install and Check Method
    classtable->install_Method();
    classtable->CheckMethod();

    
    // Step in all Classes

    for(int i = classes->first() ;classes->more(i);i = classes->next(i)){
        curr_class = classes->nth(i);
        log <<"----------------"<< "Checking class:"<<curr_class->GetName()<<"----------------"<<endl;
        Features curr_features = curr_class->Getfeatures();



        
        // Get the inheritance path , add all the attributes
        std::list<Symbol>  attr_path = classtable->FindSymbolPath(curr_class->GetName());

        for(auto it = attr_path.begin(); it != attr_path.end(); it++){
            
            Objecttable.enterscope();
            Features attr_features  = classtable->m_classes[*it]->Getfeatures();
            for(int j = attr_features->first() ;attr_features->more(j);j = attr_features->next(j)){
                
                Feature attr_feature = attr_features->nth(j);
                attr_feature->AddAttribToTable(curr_class->GetName());
            }
        }

        for(int j = curr_features->first() ;curr_features->more(j);j = curr_features->next(j)){
            Feature curr_feature = curr_features->nth(j);
            
            if(curr_feature->ismethod()){
                // 自下而上开始check 

                ((method_class *)curr_feature)->CheckFeatureType();
            }
            else
            {   
                attr_class * curr_attr = ((attr_class *)curr_feature);
                curr_attr->CheckAttrType(); 
                
            }
            

        }
        for(int k = 0 ; k < attr_path.size();k++){
            Objecttable.exitscope();
        }

    }
    /* some semantic analysis code may go here */

    if (classtable->errors()) {
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
}


