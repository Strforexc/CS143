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
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"x is "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./new-st.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
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
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
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
	.word	A_protObj
	.word	A_init
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
A_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	A.printX
	# metho # 4
	.word	A.new_st
	# metho # 5
	.word	A.bump
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
A_protObj:
	.word	5
	.word	4
	.word	A_dispTab
	.word	int_const1	# int(0)
	.word	-1
Main_protObj:
	.word	6
	.word	3
	.word	Main_dispTab
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
A_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Object_init
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a attrib:x
	lw	$a0 12($s0)
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
A.printX:
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
	# string_const_class:
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# new__class
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	# if obj = void
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::IO
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp out_string
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a attrib:x
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# new__class
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	# if obj = void
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::IO
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# String
	# string_const_class:
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# new__class
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	# if obj = void
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::IO
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp out_string
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
A.new_st:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# new__class
	# load class_objTab
	la	$t1 class_objTab
	# get our class tag
	lw	$t2 0($s0)
	# mult 8 to get protObj, because every class entry in class_objTab occupy 8 bytes
	sll	$t2 $t2 3
	# now we get the address of LOC_SELF_CLASS in class_objTab
	addu	$t1 $t1 $t2
	# store T1 because we will use it to find obj_init after call Object.copy
	sw	$t1 0($sp)
	addiu	$sp $sp -4
	# we load obj to a0
	lw	$a0 0($t1)
	# go to Object.copy
	jal	Object.copy
	# now we restore T1 value
	lw	$t1 4($sp)
	addiu	$sp $sp 4
	# get init address
	lw	$t1 4($t1)
	# go to init
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
A.bump:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# assign_class
	# first eval expression 
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a attrib:x
	lw	$a0 12($s0)
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
	# It is an attribute.x
	sw	$a0 12($s0)
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
	# Let expr class
	# eval init
	# new__class
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp printX
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label4:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]5
	lw	$t1 20($t1)
	# jmptp bump
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label5:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]5
	lw	$t1 20($t1)
	# jmptp bump
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]5
	lw	$t1 20($t1)
	# jmptp bump
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label7:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp printX
	jalr		$t1
	# assign_class
	# first eval expression 
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp new_st
	jalr		$t1
	# Now find the lvalue.
	# It is a let variable.a2
	sw	$a0 4($sp)
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a2
	lw	$a0 4($sp)
	# if obj = void
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label9:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp printX
	jalr		$t1
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:a1
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label10:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp printX
	jalr		$t1
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
