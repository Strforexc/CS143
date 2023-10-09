
//**************************************************************
//
// Code generator SKELETON
//
// Read the comments carefully. Make sure to
//    initialize the base class tags in
//       `CgenClassTable::CgenClassTable'
//
//    Add the label for the dispatch tables to
//       `IntEntry::code_def'
//       `StringEntry::code_def'
//       `BoolConst::code_def'
//
//    Add code to emit everyting else that is needed
//       in `CgenClassTable::code'
//
//
// The files as provided will produce code to begin the code
// segments, declare globals, and emit constants.  You must
// fill in the rest.
//
//**************************************************************

#include "cgen.h"
#include "cgen_gc.h"
#include "cool-tree.h"
#include "cool-tree.handcode.h"
#include <algorithm>
#include <cstdio>
#include <iostream>
#include <ostream>
#include <vector>

extern void emit_string_constant(ostream& str, char *s);
extern int cgen_debug;
int labelnum = 0;

static CgenClassTable *codegen_classtable = nullptr; 
//
// Three symbols from the semantic analyzer (semant.cc) are used.
// If e : No_type, then no code is generated for e.
// Special code is generated for new SELF_TYPE.
// The name "self" also generates code different from other references.
//
//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
Symbol
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

static char *gc_init_names[] =
  { "_NoGC_Init", "_GenGC_Init", "_ScnGC_Init" };
static char *gc_collect_names[] =
  { "_NoGC_Collect", "_GenGC_Collect", "_ScnGC_Collect" };


//  BoolConst is a class that implements code generation for operations
//  on the two booleans, which are given global names here.
BoolConst falsebool(FALSE);
BoolConst truebool(TRUE);

//*********************************************************
//
// Define method for code generation
//
// This is the method called by the compiler driver
// `cgtest.cc'. cgen takes an `ostream' to which the assembly will be
// emmitted, and it passes this and the class list of the
// code generator tree to the constructor for `CgenClassTable'.
// That constructor performs all of the work of the code
// generator.
//
//*********************************************************

void program_class::cgen(ostream &os)
{
  // spim wants comments to start with '#'
  os << "# start of generated code\n";
  //cgen_debug = 1;

  initialize_constants();
  codegen_classtable = new CgenClassTable(classes,os);

  os << "\n# end of generated code\n";
}


//////////////////////////////////////////////////////////////////////////////
//
//  emit_* procedures
//
//  emit_X  writes code for operation "X" to the output stream.
//  There is an emit_X for each opcode X, as well as emit_ functions
//  for generating names according to the naming conventions (see emit.h)
//  and calls to support functions defined in the trap handler.
//
//  Register names and addresses are passed as strings.  See `emit.h'
//  for symbolic names you can use to refer to the strings.
//
//////////////////////////////////////////////////////////////////////////////

static void emit_load(char *dest_reg, int offset, char *source_reg, ostream& s)
{
  s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")"
    << endl;
}

static void emit_store(char *source_reg, int offset, char *dest_reg, ostream& s)
{
  s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")"
      << endl;
}

static void emit_load_imm(char *dest_reg, int val, ostream& s)
{ s << LI << dest_reg << " " << val << endl; }

static void emit_load_address(char *dest_reg, char *address, ostream& s)
{ s << LA << dest_reg << " " << address << endl; }

static void emit_partial_load_address(char *dest_reg, ostream& s)
{ s << LA << dest_reg << " "; }

static void emit_load_bool(char *dest, const BoolConst& b, ostream& s)
{
  emit_partial_load_address(dest,s);
  b.code_ref(s);
  s << endl;
}

static void emit_load_string(char *dest, StringEntry *str, ostream& s)
{
  emit_partial_load_address(dest,s);
  str->code_ref(s);
  s << endl;
}

static void emit_load_int(char *dest, IntEntry *i, ostream& s)
{
  emit_partial_load_address(dest,s);
  i->code_ref(s);
  s << endl;
}

static void emit_move(char *dest_reg, char *source_reg, ostream& s)
{ s << MOVE << dest_reg << " " << source_reg << endl; }

static void emit_neg(char *dest, char *src1, ostream& s)
{ s << NEG << dest << " " << src1 << endl; }

static void emit_add(char *dest, char *src1, char *src2, ostream& s)
{ s << ADD << dest << " " << src1 << " " << src2 << endl; }

static void emit_addu(char *dest, char *src1, char *src2, ostream& s)
{ s << ADDU << dest << " " << src1 << " " << src2 << endl; }

static void emit_addiu(char *dest, char *src1, int imm, ostream& s)
{ s << ADDIU << dest << " " << src1 << " " << imm << endl; }

static void emit_div(char *dest, char *src1, char *src2, ostream& s)
{ s << DIV << dest << " " << src1 << " " << src2 << endl; }

static void emit_mul(char *dest, char *src1, char *src2, ostream& s)
{ s << MUL << dest << " " << src1 << " " << src2 << endl; }

static void emit_sub(char *dest, char *src1, char *src2, ostream& s)
{ s << SUB << dest << " " << src1 << " " << src2 << endl; }

static void emit_sll(char *dest, char *src1, int num, ostream& s)
{ s << SLL << dest << " " << src1 << " " << num << endl; }

static void emit_jalr(char *dest, ostream& s)
{ s << JALR << "\t" << dest << endl; }

static void emit_jal(char *address,ostream &s)
{ s << JAL << address << endl; }

static void emit_return(ostream& s)
{ s << RET << endl; }

static void emit_gc_assign(ostream& s)
{ s << JAL << "_GenGC_Assign" << endl; }

static void emit_disptable_ref(Symbol sym, ostream& s)
{  s << sym << DISPTAB_SUFFIX; }

static void emit_init_ref(Symbol sym, ostream& s)
{ s << sym << CLASSINIT_SUFFIX; }

static void emit_label_ref(int l, ostream &s)
{ s << "label" << l; }

static void emit_protobj_ref(Symbol sym, ostream& s)
{ s << sym << PROTOBJ_SUFFIX; }

static void emit_method_ref(Symbol classname, Symbol methodname, ostream& s)
{ s << classname << METHOD_SEP << methodname; }

static void emit_label_def(int l, ostream &s)
{
  emit_label_ref(l,s);
  s << ":" << endl;
}

static void emit_beqz(char *source, int label, ostream &s)
{
  s << BEQZ << source << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_beq(char *src1, char *src2, int label, ostream &s)
{
  s << BEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bne(char *src1, char *src2, int label, ostream &s)
{
  s << BNE << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bleq(char *src1, char *src2, int label, ostream &s)
{
  s << BLEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_blt(char *src1, char *src2, int label, ostream &s)
{
  s << BLT << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_blti(char *src1, int imm, int label, ostream &s)
{
  s << BLT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bgti(char *src1, int imm, int label, ostream &s)
{
  s << BGT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_branch(int l, ostream& s)
{
  s << BRANCH;
  emit_label_ref(l,s);
  s << endl;
}

//
// Push a register on the stack. The stack grows towards smaller addresses.
//
static void emit_push(char *reg, ostream& str)
{
  emit_store(reg,0,SP,str);
  emit_addiu(SP,SP,-4,str);
}

//
// Fetch the integer value in an Int object.
// Emits code to fetch the integer value of the Integer object pointed
// to by register source into the register dest
//
static void emit_fetch_int(char *dest, char *source, ostream& s)
{ emit_load(dest, DEFAULT_OBJFIELDS, source, s); }

//
// Emits code to store the integer value contained in register source
// into the Integer object pointed to by dest.
//
static void emit_store_int(char *source, char *dest, ostream& s)
{ emit_store(source, DEFAULT_OBJFIELDS, dest, s); }


static void emit_test_collector(ostream &s)
{
  emit_push(ACC, s);
  emit_move(ACC, SP, s); // stack end
  emit_move(A1, ZERO, s); // allocate nothing
  s << JAL << gc_collect_names[cgen_Memmgr] << endl;
  emit_addiu(SP,SP,4,s);
  emit_load(ACC,0,SP,s);
}

static void emit_gc_check(char *source, ostream &s)
{
  if (source != (char*)A1) emit_move(A1, source, s);
  s << JAL << "_gc_check" << endl;
}

static void emit_start_frame(ostream &s)
{
  emit_addiu(SP, SP, -12, s);
  emit_store(FP, 3, SP, s);
  emit_store(SELF, 2, SP, s);
  emit_store(RA, 1, SP, s);
  emit_addiu(FP, SP, 4, s);
  emit_move(SELF, ACC, s);

}
static void emit_end_frame(ostream &s)
{
  emit_move(ACC,SELF,s);
  emit_load(FP, 3, SP, s);
  emit_load(SELF, 2, SP, s);
  emit_load(RA, 1, SP, s);
  emit_addiu(SP, SP, 12, s);
  emit_jalr(RA, s);

}

static void emit_end_fun(ostream &s, int num)
{
  emit_load(FP, 3, SP, s);
  emit_load(SELF, 2, SP, s);
  emit_load(RA, 1, SP, s);
  emit_addiu(SP, SP, 12, s);
  emit_addiu(SP, SP, num*4, s);
  emit_jalr(RA, s);
}
///////////////////////////////////////////////////////////////////////////////
//
// coding strings, ints, and booleans
//
// Cool has three kinds of constants: strings, ints, and booleans.
// This section defines code generation for each type.
//
// All string constants are listed in the global "stringtable" and have
// type StringEntry.  StringEntry methods are defined both for String
// constant definitions and references.
//
// All integer constants are listed in the global "inttable" and have
// type IntEntry.  IntEntry methods are defined for Int
// constant definitions and references.
//
// Since there are only two Bool values, there is no need for a table.
// The two booleans are represented by instances of the class BoolConst,
// which defines the definition and reference methods for Bools.
//
///////////////////////////////////////////////////////////////////////////////

//
// Strings
//
void StringEntry::code_ref(ostream& s)
{
  s << STRCONST_PREFIX << index;
}

//
// Emit code for a constant String.
// You should fill in the code naming the dispatch table.
//

void StringEntry::code_def(ostream& s, int stringclasstag)
{
  IntEntryP lensym = inttable.add_int(len);

  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s  << LABEL                                             // label
      << WORD << stringclasstag << endl                                 // tag
      << WORD << (DEFAULT_OBJFIELDS + STRING_SLOTS + (len+4)/4) << endl // size
      << WORD;


 /***** Add dispatch information for class String ******/
      emit_disptable_ref(Str,s);

      s << endl;                                              // dispatch table
      s << WORD;  lensym->code_ref(s);  s << endl;            // string length
  emit_string_constant(s,str);                                // ascii string
  s << ALIGN;                                                 // align to word
}

//
// StrTable::code_string
// Generate a string object definition for every string constant in the
// stringtable.
//
void StrTable::code_string_table(ostream& s, int stringclasstag)
{
  for (List<StringEntry> *l = tbl; l; l = l->tl()){
    l->hd()->code_def(s,stringclasstag);
  }
}

//
// Ints
//
void IntEntry::code_ref(ostream &s)
{
  s << INTCONST_PREFIX << index;
}

//
// Emit code for a constant Integer.
// You should fill in the code naming the dispatch table.
//

void IntEntry::code_def(ostream &s, int intclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                // label
      << WORD << intclasstag << endl                      // class tag
      << WORD << (DEFAULT_OBJFIELDS + INT_SLOTS) << endl  // object size
      << WORD;

 /***** Add dispatch information for class Int ******/
      emit_disptable_ref(Int,s);
      s << endl;                                          // dispatch table
      s << WORD << str << endl;                           // integer value
}


//
// IntTable::code_string_table
// Generate an Int object definition for every Int constant in the
// inttable.
//
void IntTable::code_string_table(ostream &s, int intclasstag)
{
  for (List<IntEntry> *l = tbl; l; l = l->tl())
    l->hd()->code_def(s,intclasstag);
}


//
// Bools
//
BoolConst::BoolConst(int i) : val(i) { assert(i == 0 || i == 1); }

void BoolConst::code_ref(ostream& s) const
{
  s << BOOLCONST_PREFIX << val;
}

//
// Emit code for a constant Bool.
// You should fill in the code naming the dispatch table.
//

void BoolConst::code_def(ostream& s, int boolclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                  // label
      << WORD << boolclasstag << endl                       // class tag
      << WORD << (DEFAULT_OBJFIELDS + BOOL_SLOTS) << endl   // object size
      << WORD;
      emit_disptable_ref(Bool,s);
 /***** Add dispatch information for class Bool ******/

      s << endl;                                            // dispatch table
      s << WORD << val << endl;                             // value (0 or 1)
}

//////////////////////////////////////////////////////////////////////////////
//
//  CgenClassTable methods
//
//////////////////////////////////////////////////////////////////////////////

//***************************************************
//
//  Emit code to start the .data segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_data()
{
  Symbol main    = idtable.lookup_string(MAINNAME);
  Symbol string  = idtable.lookup_string(STRINGNAME);
  Symbol integer = idtable.lookup_string(INTNAME);
  Symbol boolc   = idtable.lookup_string(BOOLNAME);

  str << "\t.data\n" << ALIGN;
  //
  // The following global names must be defined first.
  //
  str << GLOBAL << CLASSNAMETAB << endl;
  str << GLOBAL; emit_protobj_ref(main,str);    str << endl;
  str << GLOBAL; emit_protobj_ref(integer,str); str << endl;
  str << GLOBAL; emit_protobj_ref(string,str);  str << endl;
  str << GLOBAL; falsebool.code_ref(str);  str << endl;
  str << GLOBAL; truebool.code_ref(str);   str << endl;
  str << GLOBAL << INTTAG << endl;
  str << GLOBAL << BOOLTAG << endl;
  str << GLOBAL << STRINGTAG << endl;

  //
  // We also need to know the tag of the Int, String, and Bool classes
  // during code generation.
  //
  str << INTTAG << LABEL
      << WORD << intclasstag << endl;
  str << BOOLTAG << LABEL
      << WORD << boolclasstag << endl;
  str << STRINGTAG << LABEL
      << WORD << stringclasstag << endl;
}


//***************************************************
//
//  Emit code to start the .text segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_text()
{
  str << GLOBAL << HEAP_START << endl
      << HEAP_START << LABEL
      << WORD << 0 << endl
      << "\t.text" << endl
      << GLOBAL;
  emit_init_ref(idtable.add_string("Main"), str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Int"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("String"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Bool"),str);
  str << endl << GLOBAL;
  emit_method_ref(idtable.add_string("Main"), idtable.add_string("main"), str);
  str << endl;
}
 
void CgenClassTable::code_global_inits()
{
  auto class_nodes = GetClassNodes();
  for(auto node: class_nodes){
    node->code_inits(str);
  }

}

void CgenClassTable::code_global_methods()
{
  std::vector<CgenNode *> class_nodes = GetClassNodes();
  for(auto class_node: class_nodes){
    if(!class_node->basic()){
      class_node->code_methods(str);
    }
  }

}
void CgenClassTable::code_bools(int boolclasstag)
{
  falsebool.code_def(str,boolclasstag);
  truebool.code_def(str,boolclasstag);
}

void CgenClassTable::code_select_gc()
{
  //
  // Generate GC choice constants (pointers to GC functions)
  //
  str << GLOBAL << "_MemMgr_INITIALIZER" << endl;
  str << "_MemMgr_INITIALIZER:" << endl;
  str << WORD << gc_init_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_COLLECTOR" << endl;
  str << "_MemMgr_COLLECTOR:" << endl;
  str << WORD << gc_collect_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_TEST" << endl;
  str << "_MemMgr_TEST:" << endl;
  str << WORD << (cgen_Memmgr_Test == GC_TEST) << endl;
}


void CgenClassTable::code_prototype()
{
  str << CLASSOBJTAB << ":" <<endl;
  auto class_nodes = GetClassNodes();
  for (auto class_node: class_nodes) { 
    Symbol classname = class_node->get_name();
    str << WORD;
    emit_protobj_ref(classname, str);
    str << endl;
    str << WORD;  
    emit_init_ref(classname, str);
    str << endl;
  }

}
void CgenClassTable::code_class_nameTab(){
  str << CLASSNAMETAB << ":" <<endl;
  auto class_nodes = GetClassNodes();
  for (auto class_node : class_nodes) { 

    Symbol res = class_node->get_name();
    StringEntry* strep = stringtable.lookup_string(res->get_string());     
    str << WORD;
    strep->code_ref(str);
    str << endl;
     
  }

}
void CgenClassTable::code_dispatch_Tab(){
   // emit_disptable_ref();
  auto class_nodes = GetClassNodes();
  for (auto class_node : class_nodes) { 

    emit_disptable_ref(class_node->get_name(), str);
    str<< ":"<<endl;
    std::vector<method_class *> m_full_methods = class_node->GetFullMethods();
    std::map<Symbol, Symbol> m_dispatch_class_tab = class_node->GetDistabClass();
    std::map<Symbol, int> dispatch_idx_tab  = class_node->GetDispatchIdxTab();

    for(int i = 0; i < m_full_methods.size(); i++){
      Symbol method_name = m_full_methods.at(i)->name;
      Symbol classname = m_dispatch_class_tab[method_name];
      int _idx = dispatch_idx_tab[method_name];
      str <<"\t# metho # " <<_idx <<endl;
      str << WORD;
      emit_method_ref(classname, method_name, str);
      str << endl;
    }
  }

}

void CgenClassTable::code_prot_Objs(){
  auto class_nodes = GetClassNodes();
  for(auto class_node : class_nodes)
  {
    str << WORD << "-1" << endl;
    emit_protobj_ref(class_node->name, str);
    str << ":" << endl;
    str <<WORD << m_classtag[class_node->name] <<endl;
    // cal num of attrs
    std::vector<attr_class*> m_full_attrs = class_node->GetFullAttr();
    int num =  m_full_attrs.size() + 3;
    str <<WORD << num <<endl;
    str << WORD;
    emit_disptable_ref(class_node->name, str);
    str << endl;
    for(auto attr: m_full_attrs){
      str << WORD;
      //cout << attr->type_decl << "  " << attr->name << "  " << class_node->name << endl;
      if(attr->name == val){
        if (class_node->name == Str){
          inttable.lookup_string("0")->code_ref(str);
          str << "\t# int(0)";
        }else{
          str << "0" << "\t# val(0)" ;
        }
      }
      else if(attr->name == str_field){
        str << "0\t# str(0)";
      }
      else{
        Symbol type = attr->type_decl;
        if(type == Int) {
          inttable.lookup_string("0")->code_ref(str);
          str << "\t# int(0)";
        }
        else if(type == Bool){
          falsebool.code_ref(str);
        }
        else if (type == Str){
          stringtable.lookup_string("")->code_ref(str);
        }
        else{
          str << "0\t# void" ;
        }
      }
      str << endl;
    }
    
  
  }

}
int Environment::AddObstacle() {
    enter_frame(); 
    return Add_Val(No_class);
}
//********************************************************
//
// Emit code to reserve space for and initialize all of
// the constants.  Class names should have been added to
// the string table (in the supplied code, is is done
// during the construction of the inheritance graph), and
// code for emitting string constants as a side effect adds
// the string's length to the integer table.  The constants
// are emmitted by running through the stringtable and inttable
// and producing code for each entry.
//
//********************************************************

void CgenClassTable::code_constants()
{
  //
  // Add constants that are required by the code generator.
  //
  stringtable.add_string("");
  inttable.add_string("0");

  stringtable.code_string_table(str,stringclasstag);
  inttable.code_string_table(str,intclasstag);
  code_bools(boolclasstag);
}


CgenClassTable::CgenClassTable(Classes classes, ostream& s) : nds(NULL) , str(s)
{
   stringclasstag = 4 /* Change to your String class tag here */;
   intclasstag =    2 /* Change to your Int class tag here */;
   boolclasstag =   3 /* Change to your Bool class tag here */;

   codegen_classtable = this;
   enterscope();
   if (cgen_debug) cout << "Building CgenClassTable" << endl;
   install_basic_classes();
   install_classes(classes);
   build_inheritance_tree();
   GetClassTag();
   code();
   exitscope();
}

void CgenClassTable::install_basic_classes()
{

// The tree package uses these globals to annotate the classes built below.
  //curr_lineno  = 0;
  Symbol filename = stringtable.add_string("<basic class>");

//
// A few special class names are installed in the lookup table but not
// the class list.  Thus, these classes exist, but are not part of the
// inheritance hierarchy.
// No_class serves as the parent of Object and the other special classes.
// SELF_TYPE is the self class; it cannot be redefined or inherited.
// prim_slot is a class known to the code generator.
//
  addid(No_class,
	new CgenNode(class_(No_class,No_class,nil_Features(),filename),
			    Basic,this));
  addid(SELF_TYPE,
	new CgenNode(class_(SELF_TYPE,No_class,nil_Features(),filename),
			    Basic,this));
  addid(prim_slot,
	new CgenNode(class_(prim_slot,No_class,nil_Features(),filename),
			    Basic,this));

//
// The Object class has no parent class. Its methods are
//        cool_abort() : Object    aborts the program
//        type_name() : Str        returns a string representation of class name
//        copy() : SELF_TYPE       returns a copy of the object
//
// There is no need for method bodies in the basic classes---these
// are already built in to the runtime system.
//
  install_class(
   new CgenNode(
    class_(Object,
	   No_class,
	   append_Features(
           append_Features(
           single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
           single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
           single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	   filename),
    Basic,this));

//
// The IO class inherits from Object. Its methods are
//        out_string(Str) : SELF_TYPE          writes a string to the output
//        out_int(Int) : SELF_TYPE               "    an int    "  "     "
//        in_string() : Str                    reads a string from the input
//        in_int() : Int                         "   an int     "  "     "
//
   install_class(
    new CgenNode(
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
	   filename),
    Basic,this));

//
// The Int class has no methods and only a single attribute, the
// "val" for the integer.
//
   install_class(
    new CgenNode(
     class_(Int,
	    Object,
            single_Features(attr(val, prim_slot, no_expr())),
	    filename),
     Basic,this));

//
// Bool also has only the "val" slot.
//
    install_class(
     new CgenNode(
      class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename),
      Basic,this));

//
// The class Str has a number of slots and operations:
//       val                                  ???
//       str_field                            the string itself
//       length() : Int                       length of the string
//       concat(arg: Str) : Str               string concatenation
//       substr(arg: Int, arg2: Int): Str     substring
//
   install_class(
    new CgenNode(
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
	     filename),
        Basic,this));

}

// CgenClassTable::install_class
// CgenClassTable::install_classes
//
// install_classes enters a list of classes in the symbol table.
//
void CgenClassTable::install_class(CgenNodeP nd)
{
  Symbol name = nd->get_name();

  if (probe(name))
    {
      return;
    }

  // The class name is legal, so add it to the list of classes
  // and the symbol table.
  nds = new List<CgenNode>(nd,nds);
  addid(name,nd);
}

void CgenClassTable::install_classes(Classes cs)
{
  for(int i = cs->first(); cs->more(i); i = cs->next(i))
    install_class(new CgenNode(cs->nth(i),NotBasic,this));
}

//
// CgenClassTable::build_inheritance_tree
//
void CgenClassTable::build_inheritance_tree()
{
  for(List<CgenNode> *l = nds; l; l = l->tl())
      set_relations(l->hd());
}

std::map<Symbol, int> CgenClassTable::GetClassTag()
{
  GetClassNodes();
  return m_classtag;

}
std::vector<CgenNode *> CgenClassTable::GetClassNodes()
{
  if(m_classnodes.empty()){

    for (List<CgenNode> *l = nds; l; l = l->tl()) { 
        auto class_node = l->hd();
        m_classnodes.push_back(class_node);
    }

    std::reverse(m_classnodes.begin(), m_classnodes.end());
    for(int i =0; i < m_classnodes.size(); i++)
    {
      m_classnodes[i]->class_tag = i;
      m_classtag[m_classnodes[i]->name] = i;
    }

  }
  return m_classnodes;
}
//
// CgenClassTable::set_relations
//
// Takes a CgenNode and locates its, and its parent's, inheritance nodes
// via the class table.  Parent and child pointers are added as appropriate.
//
void CgenClassTable::set_relations(CgenNodeP nd)
{
  CgenNode *parent_node = probe(nd->get_parent());
  nd->set_parentnd(parent_node);
  parent_node->add_child(nd);
}

void CgenNode::add_child(CgenNodeP n)
{
  children = new List<CgenNode>(n,children);
}

void CgenNode::set_parentnd(CgenNodeP p)
{
  assert(parentnd == NULL);
  assert(p != NULL);
  parentnd = p;
}

std::vector<method_class*> CgenNode::GetMethods()
{
  if (m_methods.empty()){
    for(int i = features->first(); features->more(i); i = features->next(i) ){
      Feature feature = features->nth(i);
      if(feature->IsMethod()) 
        m_methods.push_back((method_class *)feature);
    } 
  }
  return m_methods;
}


std::vector<attr_class*> CgenNode::GetAttr()
{
  if (m_attrs.empty()){
    for(int i = features->first(); features->more(i); i = features->next(i) ){
      Feature feature = features->nth(i);
      if(! feature->IsMethod() ) {
        m_attrs.push_back((attr_class *)feature);
      }
    } 
  }
  return m_attrs;
}

std::vector<CgenNode*> CgenNode::GetInheritance()
{
  if(inheritants.empty()){
    CgenNode* class_node= this;
    while(class_node->name != No_class)
    {
        inheritants.push_back(class_node);
        class_node= class_node->get_parentnd();
    }
    std::reverse(inheritants.begin(),inheritants.end());
  }
  return inheritants;
}
  
std::map<Symbol, Symbol> CgenNode::GetDistabClass(){
  if(m_dispatch_class_tab.empty())
  {
    std::vector<CgenNode*> inheritance = GetInheritance();

    for(int i = inheritance.size()-1; i >= 0; i--){
      std::vector<method_class *> m_methods = inheritance.at(i)->GetMethods();
      Symbol classname = inheritance.at(i)->name ;

      for(int j = 0; j < m_methods.size(); j++){
        method_class* method = m_methods.at(j);
    
        if(m_dispatch_class_tab.find(method->name) == m_dispatch_class_tab.end() )
          m_dispatch_class_tab[method->name] = classname;
      }
    }
  }
  
  return m_dispatch_class_tab;
}

std::map<Symbol, int> CgenNode::GetDispatchIdxTab() {
    GetFullMethods();
    return m_dispatch_idx_tab;
}

std::map<Symbol, int> CgenNode::GetMethodTab()
{
  GetFullMethods();
  return m_method_tab;
}
std::vector<method_class *> CgenNode::GetFullMethods()
{
  if(m_full_methods.empty()){
  
    std::vector<CgenNode*> inheritance = GetInheritance();

    for(int i = 0; i< inheritance.size(); i++){
      std::vector<method_class *> _methods = inheritance.at(i)->GetMethods();
      Symbol classname = inheritance.at(i)->name ;

      for(int j = 0; j < _methods.size(); j++){
        method_class* method = _methods.at(j);
        Symbol _method_name = method->name;
        if(m_dispatch_idx_tab.find(_method_name) == m_dispatch_idx_tab.end()){
          m_full_methods.push_back(method);
          m_dispatch_idx_tab[_method_name] = m_full_methods.size() - 1;
          m_dispatch_class_tab[_method_name] = classname;
        }else{
          int idx = m_dispatch_idx_tab[_method_name];
          m_full_methods[idx] = method;
          m_dispatch_class_tab[_method_name] = classname;

        }

      }
    }
  }
  return m_full_methods;
}

std::map<Symbol, int> CgenNode::GetAttrTab()
{
  GetFullAttr();
  return m_attr_tab;
}

std::vector<attr_class*> CgenNode::GetFullAttr()
{
  if(m_full_attrs.empty()){
    std::vector<CgenNode*> inheritance = GetInheritance();

    for(auto class_node : inheritance){
      
      Features features = class_node->features;
      for(int i = features->first(); features->more(i); i = features->next(i)){
        Feature feature = features->nth(i);
        if (!feature->IsMethod()){
          m_full_attrs.push_back((attr_class*) feature);
        }
      }

    }
    int index = 0;
    for(auto attr: m_full_attrs){
      m_attr_tab[attr->name] = index;
      index += 1;
    }
  }
  return m_full_attrs;

}
void CgenNode::code_methods(ostream &s){


  std::vector<method_class*> methods = GetMethods();
  for(auto method: m_methods){
    emit_method_ref(name, method->name, s);
    s<< ":" << endl;
    emit_start_frame(s);
    s << "\t# evaluating expression and put it to ACC" << endl;
    Environment env = Environment(this);
    Formals formals = method->formals;
    for(int i= formals->first(); formals->more(i); i = formals->next(i))
    {

      env.Add_Param(formals->nth(i)->Getname());
    }
    method->expr->code(s, env);
    emit_end_fun(s, method->GetArgNum());
  }

  return;
  

}
void CgenNode::code_inits(ostream &s)
{
  emit_init_ref(name, s);
  s << ":" << endl;
  emit_start_frame(s);
  Symbol parent_name = get_parentnd()->name;
  if(parent_name != No_class){
    s << "\t# init parent" <<endl;
    s << JAL;
    emit_init_ref(parent_name, s);
    s << endl;
  }
  // add CgenNode attr
  std::vector<attr_class *> attribs = GetAttr();
  std::map<Symbol,int> attrib_idx_tab = GetAttrTab();
  for(auto attrib : attribs){
    int offset = attrib_idx_tab[attrib->name];

    Expression init_expr =  attrib->init;
    if(init_expr->isEmpty()){

      if(attrib->type_decl == Str){
        emit_load_string(ACC, stringtable.lookup_string(""), s);
        emit_store(ACC, 3 +offset , SELF, s);
      }
      else if(attrib->type_decl == Int)
      {
        emit_load_int(ACC,inttable.lookup_string("0") , s);
        emit_store(ACC, 3 +offset , SELF, s);
      }
      else if (attrib->type_decl == Bool) {
        emit_load_bool(ACC, BoolConst(0) , s);
        emit_store(ACC, 3 +offset , SELF, s);
      }
    }
    else
    {
      Environment env = Environment(this);
      attrib->init->code(s, env);
      emit_store(ACC, offset + 3, SELF, s);
       if (cgen_Memmgr == 1) {
                emit_addiu(A1, SELF, 4 * (offset + 3), s);
                emit_jal("_GenGC_Assign", s);
       } 
    }
    //attrib->init->code(s);

  }
  

  emit_end_frame(s);

}


void CgenClassTable::code()
{
  if (cgen_debug) cout << "coding global data" << endl;
  code_global_data();

  if (cgen_debug) cout << "choosing gc" << endl;
  code_select_gc();

  if (cgen_debug) cout << "coding constants" << endl;
  code_constants();

//                 Add your code to emit
//                   - prototype objects
  if (cgen_debug) cout << "coding Class name tab" << endl;
  code_class_nameTab();

  if (cgen_debug) cout << "coding prototype objects" << endl;
  code_prototype();
//                   - class_nameTab
//                   - dispatch tables
  if (cgen_debug) cout << "coding dispatch tables" << endl;
  code_dispatch_Tab();
//

  if (cgen_debug) cout << "coding prot Objs" << endl;
  code_prot_Objs();

  if (cgen_debug) cout << "coding global text" << endl;
  code_global_text();


//                 Add your code to emit
//                   - object initializer
//                   - the class methods
//                   - etc...
  if (cgen_debug) cout << "coding global inits" << endl;
  code_global_inits();

  if (cgen_debug) cout << "coding methods" << endl;
  code_global_methods();
}


CgenNodeP CgenClassTable::root()
{
   return probe(Object);
}


///////////////////////////////////////////////////////////////////////
//
// CgenNode methods
//
///////////////////////////////////////////////////////////////////////

CgenNode::CgenNode(Class_ nd, Basicness bstatus, CgenClassTableP ct) :
   class__class((const class__class &) *nd),
   parentnd(NULL),
   children(NULL),
   basic_status(bstatus)
{
   stringtable.add_string(name->get_string());          // Add class name to string table
}


//******************************************************************
//
//   Fill in the following methods to produce code for the
//   appropriate expression.  You may add or remove parameters
//   as you wish, but if you do, remember to change the parameters
//   of the declarations in `cool-tree.h'  Sample code for
//   constant integers, strings, and booleans are provided.
//
//*****************************************************************

void assign_class::code(ostream &s, Environment Env) {
  s << "\t# assign_class" <<endl;
  s << "\t# first eval expression " <<endl;
  expr->code(s, Env);
  s << "\t# Now find the lvalue." << endl;
    int idx;

    if ((idx = Env.LookUpVal(name)) != -1) {
        s << "\t# It is a let variable." <<name << endl;
        emit_store(ACC, idx + 1, SP, s);
        if (cgen_Memmgr == 1) {
            emit_addiu(A1, SP, 4 * (idx + 1), s);
            emit_jal("_GenGC_Assign", s);
        }
    } else if ((idx = Env.LookUpParam(name)) != -1){
        s << "\t# It is a param."  << name<< endl;
        emit_store(ACC, idx + 3, FP, s);
        if (cgen_Memmgr == 1) {
            emit_addiu(A1, FP, 4 * (idx + 3), s);
            emit_jal("_GenGC_Assign", s);
        }
    }
    else if ((idx = Env.LookUpAttrib(name)) != -1) {
        s << "\t# It is an attribute."<< name << endl;
        emit_store(ACC, idx + 3, SELF, s);
        if (cgen_Memmgr == 1) {
            emit_addiu(A1, SELF, 4 * (idx + 3), s);
            emit_jal("_GenGC_Assign", s);
        }

    } else {
        s << "Error! assign to what?" << endl;
    }

}

void static_dispatch_class::code(ostream &s, Environment Env) {
  s << "\t# static_dispatch_class " <<endl;

  s << "\t# First eval param" << endl;

  for(int i = actual->first(); actual->more(i) ; i = actual->next(i)){
    Expression m_expr = actual->nth(i);
    m_expr->code(s, Env);
    emit_push(ACC, s);
    Env.enter_frame();
    Env.AddObstacle();
  }
  s << "\t# next eval the obj in static_dispatch_class" << endl;
  expr->code(s, Env);

  s << "\t# if obj = void" <<endl;
  emit_bne(ACC, ZERO, labelnum, s);
  s << LA << ACC << " str_const0" << endl;
  emit_load_imm(T1, 2, s);
  emit_jal("_dispatch_abort", s);
  emit_label_def(labelnum, s);
  labelnum++;

  Symbol _class_name = type_name; 
  //int _class_node = codegen_classtable->GetClassNode(_class_name);
  CgenNode * _class_node = codegen_classtable->GetClassNode(_class_name);
  s << "\t# now locate the method in the dispatch table" << endl;

  std::string addr = type_name->get_string();
  addr += DISPTAB_SUFFIX;
  emit_load_address(T1, (char *)addr.c_str(), s);

  int idx = _class_node->GetDispatchIdxTab()[name]; 
  emit_load(T1, idx, T1, s);
  emit_jalr(T1, s);
  

}

void dispatch_class::code(ostream &s, Environment Env) {
  s << "\t# dispatch_class" <<endl;
  s << "\t# First eval param" << endl;

  for(int i = actual->first(); actual->more(i) ; i = actual->next(i)){
    Expression m_expr = actual->nth(i);
    s << "\t# " << m_expr->type << endl;
    m_expr->code(s, Env);
    emit_push(ACC, s);
    Env.AddObstacle();
  }
  s << "\t# next eval the obj in dispatch_class" << endl;
  expr->code(s, Env);

  s << "\t# if obj = void" <<endl;
  emit_bne(ACC, ZERO, labelnum, s);
  s << LA << ACC << " str_const0" << endl;
  emit_load_imm(T1, 1, s);
  emit_jal("_dispatch_abort", s);
  emit_label_def(labelnum, s);
  labelnum++;

  s << "\t# obj != void; Find dispatch table" <<endl;
  Symbol _class_name = Env.m_class_node->name;
  if(expr->get_type() != SELF_TYPE){
    _class_name = expr->get_type();
  }
  //int _class_node = codegen_classtable->GetClassNode(_class_name);
  CgenNode * _class_node = codegen_classtable->GetClassNode(_class_name);
  s << "\t# now locate the method in the dispatch table::"<< _class_node->name << endl;
  s << "\t# t1 = self.dispTab" <<endl;
  emit_load(T1, 2, ACC, s);
  s << "\t# load this method in table" << endl;
  int idx = _class_node->GetDispatchIdxTab()[name];
  s << "\t# t1 = dispTab[]" <<idx <<  endl;
  emit_load(T1, idx, T1,s);
  s << "\t# jmptp " << name <<endl;
  emit_jalr(T1, s);
  



}

void cond_class::code(ostream &s, Environment Env) {
  s <<"\t # cond_class" <<endl;
  int else_l = labelnum;
  int finish = labelnum +1;
  labelnum+= 2;
  s << "\t# eval pred" <<endl;
  pred->code(s, Env);
  s << "\t# -----"<<endl;

  s << "\t# extract " << endl;
  emit_fetch_int(T1, ACC, s);

  s << "\t# beq jump else" << endl;
  emit_beq(T1, ZERO, else_l, s);

  s << "\t# eval then" <<endl;
  then_exp->code(s, Env);

  emit_branch(finish, s);
  
  s << "\t# eval else" <<endl;
  emit_label_def(else_l, s);
  else_exp->code(s ,Env);

  emit_label_def(finish, s);
}

void loop_class::code(ostream &s, Environment Env) {
  s<<"\t# loop_class" <<endl;
  int start = labelnum;
  int finish = labelnum + 1;
  labelnum += 2;
  s << "\t# start label" << endl;
  emit_label_def(start, s);
  
  s << "\t# eval pred" << endl;
  pred->code(s, Env);
  emit_fetch_int(T1, ACC, s);
  
  s << "\t# t1==0, then jump to finish" << endl;
  emit_beq(T1, ZERO, finish, s);


  body->code(s, Env);

  s << "\t# jump to start" <<endl;
  emit_branch(start, s);

  emit_label_def(finish, s);
  emit_move(ACC, ZERO, s);

}

void typcase_class::code(ostream &s, Environment Env) {
  std::map<Symbol, int> _class_tags = codegen_classtable->GetClassTag();
  std::vector<CgenNode*> _class_nodes = codegen_classtable->GetClassNodes();
  s << "\t# typecase_class" <<endl;
  s << "\t# eval expr" <<endl;
  expr->code(s, Env);
  
  s << "\t# if e0 == void, abort" <<endl;
  emit_bne(ACC, ZERO, labelnum, s);
  emit_load_address(ACC, "str_const0", s);
  emit_load_imm(T1, 59, s);
  emit_jal("_case_abort2", s);

  emit_label_def(labelnum, s);
  labelnum++;

  s << "\t# T1 = type(acc)" << endl;
  emit_load(T1,0,ACC,s);

  std::vector<branch_class*> _cases = Getcases(); 
  int label_start = labelnum;
  int label_finish = labelnum + _cases.size();
  int case_idx = 0;
  labelnum+= _cases.size() + 1;

  auto GetChildrenTagSet = [&](std::vector<int> __curr_tags){
    std::vector<int> __children_tags;
    for(int __curr_tag : __curr_tags)
    {
      CgenNode * __curr_node = _class_nodes[__curr_tag];
      std::vector<CgenNode *> __children_nodes = __curr_node->GetChildren();
      for(CgenNode* __children_node : __children_nodes){
        int __children_tag = _class_tags[__children_node->name];
        if(std::find(__children_tags.begin(), __children_tags.end(),__children_tag) == __children_tags.end())
          __children_tags.push_back(__children_tag);
      }
    }

    return __children_tags;
  };

  auto HasFinished = [&](std::vector<std::vector<int>> __cases_tags){
    for(std::vector<int> __case_tags: __cases_tags){
      if(!__case_tags.empty())
        return false;
    }
    return true;
  };

  std::vector<std::vector<int>> cases_tags;
  for(branch_class* _case : _cases){
    Symbol _type_decl = _case->type_decl;
    int _class_tag = _class_tags[_type_decl];
    std::vector<int> case_tags = {_class_tag};
    cases_tags.push_back(case_tags);
  }

  while(!HasFinished(cases_tags)){
    for(int caseidx =0; caseidx < cases_tags.size(); ++caseidx){
      std::vector<int> case_tags = cases_tags[caseidx];
      for(int case_tag : case_tags){
        s << "\t# tag =" << case_tag <<" : goto case " << caseidx << endl;
        emit_load_imm(T2, case_tag, s);
        emit_beq(T1, T2, label_start + caseidx, s);
      }

    }

    s << "\t# -------------------------" <<endl;

    for(int i =0;i < cases_tags.size(); ++i){
      cases_tags[i] = GetChildrenTagSet(cases_tags[i]);
    }
  }
   
  
  s << "\t# No match" <<endl;
  emit_jal("_case_abort", s);
  emit_branch(label_finish, s);

  for(branch_class* _case : _cases){
    Symbol _name = _case->name;
    Symbol _type_decl = _case->type_decl;
    Expression _expr = _case->expr;
    
    s << "\t# eval expr" << endl;
    emit_label_def(label_start+ case_idx, s);
    Env.enter_frame();
    Env.Add_Val(_name);
    emit_push(ACC, s);
    _expr->code(s, Env);
    emit_addiu(SP, SP, 4, s);
    emit_branch(label_finish, s);

    case_idx++;
  }

  s << "\t# finish:" << endl;
  emit_label_def(label_finish, s);


}

void block_class::code(ostream &s, Environment Env) {
  s<<"\t# block_class" <<endl;
    for (int i = body->first(); body->more(i); i = body->next(i)) {
        body->nth(i)->code(s, Env);
    }
}

void let_class::code(ostream &s, Environment Env) {
  s << "\t# Let expr class" << endl;
  s << "\t# eval init" << endl;
  init->code(s, Env);
  if (init->isEmpty()){
        // We still need to deal with basic types.
        if (type_decl == Str) {
            emit_load_string(ACC, stringtable.lookup_string(""), s);
        } else if (type_decl == Int) {
            emit_load_int(ACC, inttable.lookup_string("0"), s);
        } else if (type_decl == Bool) {
            emit_load_bool(ACC, BoolConst(0), s);
        }
    }

  emit_push(ACC, s);

  Env.enter_frame();
  Env.Add_Val(identifier);

  body->code(s, Env);

  emit_addiu(SP, SP, 4, s);


}

void plus_class::code(ostream &s, Environment Env) {
  s << "\t# plus_class "<< endl;
  s << "\t# First Eval e1 and push"<<endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
    
  s << "\t# Then eval e2 and make a copy for res "<< endl;
  e2->code(s, Env);
  emit_jal("Object.copy", s);

  s << "\t# Let's pop e1 to t1, move e2 to t2"<< endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t# extract the int inside the object"<<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);

  s << "\t# Modify the int inside t2" << endl;
  emit_add(T3, T1, T2, s);
  emit_store(T3, 3, ACC, s);

}

void sub_class::code(ostream &s, Environment Env) {
  s << "\t# sub" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2 and make a copy for result" <<endl;

  e2->code(s, Env);
  emit_jal("Object.copy", s);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t # extract the int inside the object" <<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);

  emit_sub(T3, T1, T2, s);
  emit_store(T3, 3, ACC, s);
}

void mul_class::code(ostream &s, Environment Env) {
  s << "\t# mul" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2 and make a copy for result" <<endl;

  e2->code(s, Env);
  emit_jal("Object.copy", s);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t# extract the int inside the object" <<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);

  emit_mul(T3, T1, T2, s);
  emit_store(T3, 3, ACC, s);
}

void divide_class::code(ostream &s, Environment Env) {
  s << "\t# divide_class" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2 and make a copy for result" <<endl;

  e2->code(s, Env);
  emit_jal("Object.copy", s);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t# extract the int inside the object" <<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);

  emit_div(T3, T1, T2, s);
  emit_store(T3, 3, ACC, s);
}

void neg_class::code(ostream &s, Environment Env) {
  s << "\t# neg_class" <<endl;
  s << "\t# eval e1 and make a copy for result" << endl;
  e1->code(s, Env);
  emit_jal("Object.copy", s);

  emit_load(T1, 3, ACC, s);
  emit_neg(T1, T1, s);
  emit_store(T1, 3, ACC, s);
}

void lt_class::code(ostream &s, Environment Env) {
  s << "\t# less than class" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2" <<endl;

  e2->code(s, Env);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t# extract the int inside the object" <<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);


  emit_load_bool(ACC, BoolConst(1), s);

  emit_blt(T1, T2, labelnum, s);
  emit_load_bool(ACC, BoolConst(0), s);

  emit_label_def(labelnum, s);
  labelnum++;

}

void eq_class::code(ostream &s, Environment Env) {
  s << "\t# eq_class" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2" <<endl;
  e2->code(s, Env);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  if(e1->type == Int || e1->type == Str || e1->type==Bool)
    if(e2->type == Int || e2->type == Str || e2->type == Bool)
    {
      emit_load_bool(ACC, BoolConst(1), s);
      emit_load_bool(A1, BoolConst(0), s);
      emit_jal("equality_test", s);
      return;
    }

  emit_load_bool(ACC, BoolConst(1), s);

  emit_beq(T1, T2 ,labelnum , s) ;
  emit_load_bool(ACC, BoolConst(0), s);

  emit_label_def(labelnum, s);
  labelnum++;
}

void leq_class::code(ostream &s, Environment Env) {
  s << "\t# leq_class" <<endl;
  s << "\t# eval e1 and push" << endl;
  e1->code(s, Env);
  emit_push(ACC, s);
  Env.AddObstacle();
  s << "\t# eval e2" <<endl;

  e2->code(s, Env);
  s << "\t# pop e1 to t1, move e2 to t2" << endl;
  emit_addiu(SP, SP, 4, s);
  emit_load(T1, 0, SP, s);
  emit_move(T2, ACC, s);

  s << "\t# extract the int inside the object" <<endl;
  emit_load(T1, 3, T1, s);
  emit_load(T2, 3, T2, s);


  emit_load_bool(ACC, BoolConst(1), s);

  emit_beq(T1, T2 ,labelnum , s) ;
  emit_load_bool(ACC, BoolConst(0), s);

  emit_label_def(labelnum, s);
  labelnum++;

}

void comp_class::code(ostream &s, Environment Env) {
  s << "\t# comp_class" <<endl;
  e1->code(s, Env);
  s <<"\t# move ACC  to T1" << endl;
  emit_load(T1, 3, ACC, s);

  s <<"\t# load True" << endl;
  emit_load_bool(ACC, BoolConst(1), s);

  s << "\t# if T1 == false, jumpto finish" <<endl;
  emit_beq(T1, ZERO, labelnum, s);
  
  s<< "\t# load false" << endl;
  emit_load_bool(ACC, BoolConst(0), s);

  s<< "\t# finish" <<endl;
  emit_label_def(labelnum,s);

  labelnum++;
}

void int_const_class::code(ostream &s, Environment Env)
{
  //
  // Need to be sure we have an IntEntry *, not an arbitrary Symbol
  s << "\t# int_const_class:"<<token<<endl;
  //
  emit_load_int(ACC,inttable.lookup_string(token->get_string()),s);
}

void string_const_class::code(ostream &s, Environment Env)
{
  s<<"\t# string_const_class:"<<endl;
  emit_load_string(ACC,stringtable.lookup_string(token->get_string()),s);
}

void bool_const_class::code(ostream &s, Environment Env)
{
  s <<"\t# bool_const_class:" << val  <<endl;
  emit_load_bool(ACC, BoolConst(val), s);
}

void new__class::code(ostream &s, Environment Env) {
  s << "\t# new__class" << endl;
  if(type_name == SELF_TYPE){

// we do not have LOC_SELF_CLASS name, so we can only use class tag

        s << "\t# load class_objTab" << endl;
        emit_load_address(T1, "class_objTab", s);

        s << "\t# get our class tag" << endl;
        emit_load(T2, 0, SELF, s);

        s << "\t# mult 8 to get protObj, because every class entry in class_objTab occupy 8 bytes" << endl;
        emit_sll(T2, T2, 3, s);

        s << "\t# now we get the address of LOC_SELF_CLASS in class_objTab" << endl;
        emit_addu(T1, T1, T2, s);

        s << "\t# store T1 because we will use it to find obj_init after call Object.copy" << endl;
        emit_push(T1, s);

        s << "\t# we load obj to a0" << endl;
        emit_load(ACC, 0, T1, s);

        s << "\t# go to Object.copy" << endl;
        emit_jal("Object.copy", s);

        s << "\t# now we restore T1 value" << endl;
        emit_load(T1, 1, SP, s);
        emit_addiu(SP, SP, 4, s);

        s << "\t# get init address" << endl;
        emit_load(T1, 1, T1, s);

        s << "\t# go to init" << endl;
        emit_jalr(T1, s);
        return;
  }
  std::string dest = type_name->get_string() ;
  dest = dest + PROTOBJ_SUFFIX;
  emit_load_address(ACC,(char *)dest.c_str() ,s);
  emit_jal("Object.copy", s);

  std::string dest_init = type_name->get_string() ;
  dest_init = dest_init + CLASSINIT_SUFFIX;
  emit_jal((char *)dest_init.c_str(), s);


}

void isvoid_class::code(ostream &s, Environment Env) {
  s << "\t# isvoid_class" <<endl;
  e1->code(s, Env);
  s << "\t# t1 = acc"<<endl;
  emit_move(T1, ACC, s);
  
  s << "\t# First pretend t1 = void: acc = bool(1)" << endl;
  emit_load_bool(ACC, BoolConst(1), s);

  s << "\t# if T1 = void: jump finish" <<endl;
  emit_beq(T1, ZERO, labelnum, s);

  s << "\t# if T1 != void: return false" << endl;
  emit_load_bool(ACC, BoolConst(0), s);

  emit_label_def(labelnum, s);

  labelnum += 1;
}

void no_expr_class::code(ostream &s, Environment Env) {
  s << "\t# no_expr_class" << endl;
  emit_move(ACC, ZERO, s);
}

void object_class::code(ostream &s, Environment Env) {
  s << "\t# Object_class:" << endl;
  int idx;
  if((idx = Env.LookUpVal(name)) != -1){
    s << "\t# It is a let var:" << name<< endl;
    emit_load(ACC, idx +1 , SP, s);
    if (cgen_Memmgr == 1) {
            emit_addiu(A1, SP, 4 * (idx + 1), s);
            emit_jal("_GenGC_Assign", s);
        }
  }
  else if((idx = Env.LookUpParam(name)) != -1){
    s << "\t# It is a param:" << name<<":"<<idx << endl;
    emit_load(ACC, idx+3, FP, s);
    if (cgen_Memmgr == 1) {
            emit_addiu(A1, FP, 4 * (idx + 3), s);
            emit_jal("_GenGC_Assign", s);
        }
  }
  else if ((idx = Env.LookUpAttrib(name)) != -1){
    s << "\t# It is a attrib:"<< name << endl;
    emit_load(ACC, idx+3, SELF, s);
    if (cgen_Memmgr == 1) {
            emit_addiu(A1, SELF, 4 * (idx + 3), s);
            emit_jal("_GenGC_Assign", s);
        }
  }
  else if (name == self){
    s << "\t# It is self" << endl;
    emit_move(ACC, SELF, s);
    
  }
  else{
    s << "Error" << endl;
  }
  
}
