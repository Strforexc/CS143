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
str_const18:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"\nz: "
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"\ny: "
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"false"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"true"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"\nb: "
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"x: "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./init-default.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	17
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	4
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
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
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
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
	.word	IO.out_string
	# metho # 4
	.word	IO.out_int
	# metho # 5
	.word	IO.in_string
	# metho # 6
	.word	IO.in_int
	# metho # 7
	.word	A.print_attr
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
	.word	int_const3	# int(0)
	.word	0	# str(0)
	.word	-1
A_protObj:
	.word	5
	.word	7
	.word	A_dispTab
	.word	int_const3	# int(0)
	.word	bool_const0
	.word	int_const3	# int(0)
	.word	int_const3	# int(0)
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
	la	$a0 int_const3
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
	jal	IO_init
	 # cond_class
	# eval pred
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label0
	# eval then
	# int_const_class:1
	la	$a0 int_const0
	b	label1
	# eval else
label0:
	# neg_class
	# eval e1 and make a copy for result
	# int_const_class:1
	la	$a0 int_const0
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
label1:
	sw	$a0 12($s0)
	# bool_const_class:1
	la	$a0 bool_const1
	sw	$a0 16($s0)
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a attrib:x
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:3
	la	$a0 int_const1
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
	sw	$a0 20($s0)
	# sub
	# eval e1 and push
	# Object_class:
	# It is a attrib:z
	lw	$a0 24($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2 and make a copy for result
	# int_const_class:5
	la	$a0 int_const2
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
	sw	$a0 24($s0)
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
	# new__class
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
A.print_attr:
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
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
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
	# Object_class:
	# It is self
	move	$a0 $s0
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
	# Object_class:
	# It is self
	move	$a0 $s0
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
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp out_string
	jalr		$t1
	# dispatch_class
	# First eval param
	# String
	 # cond_class
	# eval pred
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label5
	# eval then
	# string_const_class:
	la	$a0 str_const3
	b	label6
	# eval else
label5:
	# string_const_class:
	la	$a0 str_const4
label6:
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
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp out_string
	jalr		$t1
	# dispatch_class
	# First eval param
	# String
	# string_const_class:
	la	$a0 str_const5
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
	# now locate the method in the dispatch table::A
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
	# It is a attrib:y
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
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
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# String
	# string_const_class:
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
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
	# jmptp out_string
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# Object_class:
	# It is a attrib:z
	lw	$a0 24($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
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
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
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
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label12:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp print_attr
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
