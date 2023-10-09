#include <assert.h>
#include <stdio.h>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"
#include <unordered_map>
#include <vector>
#include <map>
#include <climits>
enum Basicness     {Basic, NotBasic};
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;
class CgenNode;
typedef CgenNode *CgenNodeP;

class CgenClassTable : public SymbolTable<Symbol,CgenNode> {
private:
   //std::unordered_map<Symbol,int> classTags;

   List<CgenNode> *nds;
   ostream& str;
   int stringclasstag;
   int intclasstag;
   int boolclasstag;


// The following methods emit code for
// constants and global declarations.

   void code_global_data();
   void code_global_text();
   void code_bools(int);
   void code_select_gc();
   void code_constants();
   void code_prototype();
   void code_class_nameTab();
   void code_dispatch_Tab();
   void code_prot_Objs();
   void code_global_inits();
   void code_global_methods();

// The following creates an inheritance graph from
// a list of classes.  The graph is implemented as
// a tree of `CgenNode', and class names are placed
// in the base class symbol table.

   void install_basic_classes();
   void install_class(CgenNodeP nd);
   void install_classes(Classes cs);
   void install_method_attribute(Classes cs);
   void build_inheritance_tree();
   void set_relations(CgenNodeP nd);
public:
   std::map<Symbol, int> m_classtag;
   std::vector<CgenNode *> m_classnodes;
   CgenClassTable(Classes, ostream& str);
   void code();
   CgenNodeP root();
   std::map<Symbol, int> GetClassTag();
   std::vector<CgenNode *> GetClassNodes();

   CgenNode* GetClassNode(Symbol name){
     GetClassNodes();

     return m_classnodes[m_classtag[name]]; 
   }
};


class CgenNode : public class__class {
private: 
   CgenNodeP parentnd ;                        // Parent of class
   List<CgenNode> *children;                  // Children of class
   Basicness basic_status;                    // `Basic' if class is basic
                                              // `NotBasic' otherwise

public:
   CgenNode(Class_ c,
            Basicness bstatus,
            CgenClassTableP class_table);
   int class_tag;

   void add_child(CgenNodeP child);
   std::vector<CgenNode*> GetChildren() {
        std::vector<CgenNode*> ret;
        List<CgenNode>* _children = get_children();
        while (_children != nullptr) {
            ret.push_back(_children->hd());
            _children = _children->tl();
        }
        return ret;
    }
   List<CgenNode> *get_children() { return children; }
   void set_parentnd(CgenNodeP p);
   CgenNodeP get_parentnd() { return parentnd; }
   int basic() { return (basic_status == Basic); }
   std::vector<method_class*> m_methods;
   std::vector<method_class*> GetMethods();
   
   std::vector<method_class *> GetFullMethods();
   std::vector<method_class *> m_full_methods;

   std::map<Symbol, Symbol> GetDistabClass();
   std::map<Symbol, Symbol> m_dispatch_class_tab;

   std::map<Symbol, int> GetDispatchIdxTab();
   std::map<Symbol, int> m_dispatch_idx_tab;

   std::map<Symbol, int> GetAttrTab();
   std::map<Symbol, int> m_attr_tab; 

   std::map<Symbol, int> GetMethodTab();
   std::map<Symbol, int> m_method_tab; 

   std::vector<attr_class*> GetAttr();
   std::vector<attr_class*> m_attrs; 
   
   std::vector<attr_class*> GetFullAttr();
   std::vector<attr_class*> m_full_attrs;

   std::vector<CgenNode*> inheritants; 
   std::vector<CgenNode*> GetInheritance();


   void code_inits(ostream &s);
   void code_methods(ostream &s); 



};

class BoolConst 
{
 private: 
  int val;
 public:
  BoolConst(int);
  void code_def(ostream&, int boolclasstag);
  void code_ref(ostream&) const;
};

class Environment  
{

public:
  std::vector<Symbol> m_var_idx_tab;
  std::vector<Symbol> m_param_idx_tab;
  std::vector<int> m_scope_lengths;
  CgenNode* m_class_node;

  Environment(CgenNode * Cnode) {
    m_class_node = Cnode;
  }


  void enter_frame(){
    m_scope_lengths.push_back(0);
  }

  void exit_frame(){
    for(int i=0; i< m_scope_lengths[m_scope_lengths.size() -1]; ++i){
      m_var_idx_tab.pop_back();
    }
    m_scope_lengths.pop_back();
  }

  int LookUpVal(Symbol sym)
  {
    for(int idx = m_var_idx_tab.size()-1 ; idx >=0 ; --idx)
    {
      if(m_var_idx_tab[idx] == sym){
        return m_var_idx_tab.size() - 1 - idx;
      }

    }
    return -1;

  }

  int LookUpParam(Symbol sym)
  {
    for(int idx = 0; idx < m_param_idx_tab.size() ; ++idx)
    {
      if(m_param_idx_tab[idx] == sym){
        return m_param_idx_tab.size() - idx -1;
      }

    }
    return -1;

  }
  int AddObstacle();
  int Add_Val(Symbol s){
    m_var_idx_tab.push_back(s);
    m_scope_lengths[m_scope_lengths.size() - 1]++;
    return m_var_idx_tab.size()-1;
    
  }

  int Add_Param(Symbol s){
    m_param_idx_tab.push_back(s);
    return m_param_idx_tab.size() -1 ;
  }

  int LookUpAttrib(Symbol sym)
  {
    std::map<Symbol, int>  attr_tab = m_class_node->GetAttrTab();
    if(attr_tab.find(sym) != attr_tab.end())
      return attr_tab[sym];
    else
      return -1;

  }

};
