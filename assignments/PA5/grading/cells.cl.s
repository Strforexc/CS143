# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"./cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	17
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
	.word	Main_protObj
	.word	Main_init
Object_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
IO_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	IO.out_string
	# metho # 4
	.word	IO.out_int
	# metho # 5
	.word	IO.in_string
	# metho # 6
	.word	IO.in_int
Int_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
Bool_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
String_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	String.length
	# metho # 4
	.word	String.concat
	# metho # 5
	.word	String.substr
CellularAutomaton_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	IO.out_string
	# metho # 4
	.word	IO.out_int
	# metho # 5
	.word	IO.in_string
	# metho # 6
	.word	IO.in_int
	# metho # 7
	.word	CellularAutomaton.init
	# metho # 8
	.word	CellularAutomaton.print
	# metho # 9
	.word	CellularAutomaton.num_cells
	# metho # 10
	.word	CellularAutomaton.cell
	# metho # 11
	.word	CellularAutomaton.cell_left_neighbor
	# metho # 12
	.word	CellularAutomaton.cell_right_neighbor
	# metho # 13
	.word	CellularAutomaton.cell_at_next_evolution
	# metho # 14
	.word	CellularAutomaton.evolve
Main_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	Main.main
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0	# val(0)
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0	# val(0)
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1	# int(0)
	.word	0	# str(0)
	.word	-1
CellularAutomaton_protObj:
	.word	5
	.word	4
	.word	CellularAutomaton_dispTab
	.word	str_const16
	.word	-1
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0	# void
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	la	$a0 int_const1
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
CellularAutomaton_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	IO_init
	la	$a0 str_const16
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Main_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
CellularAutomaton.init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# block_class
	# assign_class
	# first eval expression 
	# Object_class:
	# It is a param:map:0
	lw	$a0 12($fp)
	# Now find the lvalue.
	# It is an attribute.population_map
	sw	$a0 12($s0)
	# Object_class:
	# It is self
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jalr		$ra
CellularAutomaton.print:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# block_class
	# dispatch_class
	# First eval param
	# String
	# dispatch_class
	# First eval param
	# String
	# string_const_class:
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:population_map
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::String
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp concat
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp out_string
	jalr		$t1
	# Object_class:
	# It is self
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
CellularAutomaton.num_cells:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:population_map
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::String
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp length
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
CellularAutomaton.cell:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Int
	# int_const_class:1
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:population_map
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::String
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]5
	lw	$t1 20($t1)
	# jmptp substr
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jalr		$ra
CellularAutomaton.cell_left_neighbor:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# int_const_class:0
	la	$a0 int_const1
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label4
	# eval then
	# dispatch_class
	# First eval param
	# Int
	# sub
	# eval e1 and push
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]9
	lw	$t1 36($t1)
	# jmptp num_cells
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2 and make a copy for result
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	 # extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label7:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]10
	lw	$t1 40($t1)
	# jmptp cell
	jalr		$t1
	b	label5
	# eval else
label4:
	# dispatch_class
	# First eval param
	# Int
	# sub
	# eval e1 and push
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2 and make a copy for result
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	 # extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]10
	lw	$t1 40($t1)
	# jmptp cell
	jalr		$t1
label5:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jalr		$ra
CellularAutomaton.cell_right_neighbor:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# sub
	# eval e1 and push
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label11:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]9
	lw	$t1 36($t1)
	# jmptp num_cells
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2 and make a copy for result
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	 # extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label9
	# eval then
	# dispatch_class
	# First eval param
	# Int
	# int_const_class:0
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label12:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]10
	lw	$t1 40($t1)
	# jmptp cell
	jalr		$t1
	b	label10
	# eval else
label9:
	# dispatch_class
	# First eval param
	# Int
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	# Modify the int inside t2
	add	$t3 $t1 $t2
	sw	$t3 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label13:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]10
	lw	$t1 40($t1)
	# jmptp cell
	jalr		$t1
label10:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jalr		$ra
CellularAutomaton.cell_at_next_evolution:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]10
	lw	$t1 40($t1)
	# jmptp cell
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# string_const_class:
	la	$a0 str_const2
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label16
	# eval then
	# int_const_class:1
	la	$a0 int_const0
	b	label17
	# eval else
label16:
	# int_const_class:0
	la	$a0 int_const1
label17:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label21:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]11
	lw	$t1 44($t1)
	# jmptp cell_left_neighbor
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# string_const_class:
	la	$a0 str_const2
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label19
	# eval then
	# int_const_class:1
	la	$a0 int_const0
	b	label20
	# eval else
label19:
	# int_const_class:0
	la	$a0 int_const1
label20:
	jal	Object.copy
	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	# Modify the int inside t2
	add	$t3 $t1 $t2
	sw	$t3 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a param:position:0
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]12
	lw	$t1 48($t1)
	# jmptp cell_right_neighbor
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# string_const_class:
	la	$a0 str_const2
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label22
	# eval then
	# int_const_class:1
	la	$a0 int_const0
	b	label23
	# eval else
label22:
	# int_const_class:0
	la	$a0 int_const1
label23:
	jal	Object.copy
	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	# Modify the int inside t2
	add	$t3 $t1 $t2
	sw	$t3 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# int_const_class:1
	la	$a0 int_const0
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label14
	# eval then
	# string_const_class:
	la	$a0 str_const2
	b	label15
	# eval else
label14:
	# string_const_class:
	la	$a0 str_const3
label15:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 4
	jalr		$ra
CellularAutomaton.evolve:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Let expr class
	# eval init
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]9
	lw	$t1 36($t1)
	# jmptp num_cells
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	la	$a0 str_const16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	# loop_class
	# start label
label26:
	# eval pred
	# less than class
	# eval e1 and push
	# Object_class:
	# It is a let var:position
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:num
	lw	$a0 12($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	blt	$t1 $t2 label28
	la	$a0 bool_const0
label28:
	lw	$t1 12($a0)
	# t1==0, then jump to finish
	beq	$t1 $zero label27
	# block_class
	# assign_class
	# first eval expression 
	# dispatch_class
	# First eval param
	# String
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a let var:position
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label29:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]13
	lw	$t1 52($t1)
	# jmptp cell_at_next_evolution
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:temp
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label30:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::String
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp concat
	jalr		$t1
	# Now find the lvalue.
	# It is a let variable.temp
	sw	$a0 4($sp)
	# assign_class
	# first eval expression 
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a let var:position
	lw	$a0 12($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	# Modify the int inside t2
	add	$t3 $t1 $t2
	sw	$t3 12($a0)
	# Now find the lvalue.
	# It is a let variable.position
	sw	$a0 12($sp)
	# jump to start
	b	label26
label27:
	move	$a0 $zero
	# assign_class
	# first eval expression 
	# Object_class:
	# It is a let var:temp
	lw	$a0 4($sp)
	# Now find the lvalue.
	# It is an attribute.population_map
	sw	$a0 12($s0)
	# Object_class:
	# It is self
	move	$a0 $s0
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
Main.main:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# block_class
	# assign_class
	# first eval expression 
	# dispatch_class
	# First eval param
	# String
	# string_const_class:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# new__class
	la	$a0 CellularAutomaton_protObj
	jal	Object.copy
	jal	CellularAutomaton_init
	# if obj = void
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label31:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp init
	jalr		$t1
	# Now find the lvalue.
	# It is an attribute.cells
	sw	$a0 12($s0)
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:cells
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label32:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp print
	jalr		$t1
	# Let expr class
	# eval init
	# int_const_class:20
	la	$a0 int_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# loop_class
	# start label
label33:
	# eval pred
	# less than class
	# eval e1 and push
	# int_const_class:0
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:countdown
	lw	$a0 8($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	blt	$t1 $t2 label35
	la	$a0 bool_const0
label35:
	lw	$t1 12($a0)
	# t1==0, then jump to finish
	beq	$t1 $zero label34
	# block_class
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:cells
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label36:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]14
	lw	$t1 56($t1)
	# jmptp evolve
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:cells
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label37:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::CellularAutomaton
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp print
	jalr		$t1
	# assign_class
	# first eval expression 
	# sub
	# eval e1 and push
	# Object_class:
	# It is a let var:countdown
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2 and make a copy for result
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	 # extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)
	# Now find the lvalue.
	# It is a let variable.countdown
	sw	$a0 4($sp)
	# jump to start
	b	label33
label34:
	move	$a0 $zero
	addiu	$sp $sp 4
	# Object_class:
	# It is self
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
