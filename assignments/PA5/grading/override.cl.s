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
	.word	int_const6
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
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"D"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"C"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
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
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./override.cl"
	.byte	0	
	.align	2
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
	.word	0
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
	.word	5
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
	.word	3
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	str_const6
	.word	str_const7
	.word	str_const8
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
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
	.word	C_protObj
	.word	C_init
	.word	D_protObj
	.word	D_init
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
	.word	A.f
	# metho # 4
	.word	A.g
B_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	A.f
	# metho # 4
	.word	B.g
C_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	C.f
	# metho # 4
	.word	B.g
D_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	D.f
	# metho # 4
	.word	D.g
Main_dispTab:
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
	.word	int_const6	# int(0)
	.word	0	# str(0)
	.word	-1
A_protObj:
	.word	5
	.word	3
	.word	A_dispTab
	.word	-1
B_protObj:
	.word	6
	.word	3
	.word	B_dispTab
	.word	-1
C_protObj:
	.word	7
	.word	3
	.word	C_dispTab
	.word	-1
D_protObj:
	.word	8
	.word	3
	.word	D_dispTab
	.word	-1
Main_protObj:
	.word	9
	.word	7
	.word	Main_dispTab
	.word	0	# void
	.word	0	# void
	.word	0	# void
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
	la	$a0 int_const6
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
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
B_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	A_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
C_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	B_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
D_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	C_init
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
	jal	IO_init
	# new__class
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	sw	$a0 12($s0)
	# new__class
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	sw	$a0 16($s0)
	# new__class
	la	$a0 C_protObj
	jal	Object.copy
	jal	C_init
	sw	$a0 20($s0)
	# new__class
	la	$a0 D_protObj
	jal	Object.copy
	jal	D_init
	sw	$a0 24($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
A.f:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:1
	la	$a0 int_const0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
A.g:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:2
	la	$a0 int_const1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
B.g:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:3
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
C.f:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:4
	la	$a0 int_const3
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
D.f:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:5
	la	$a0 int_const4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
D.g:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# int_const_class:6
	la	$a0 int_const5
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
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
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
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label4:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::B
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label5:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::B
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::C
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label10:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::C
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:d
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label12:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::D
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:d
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label14:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::D
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label15:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label16:
	# now locate the method in the dispatch table
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label17:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label18:
	# now locate the method in the dispatch table
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label19:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label20:
	# now locate the method in the dispatch table
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label22:
	# now locate the method in the dispatch table
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label23:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label24:
	# now locate the method in the dispatch table
	la	$t1 B_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label26:
	# now locate the method in the dispatch table
	la	$t1 B_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label27:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:d
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label28:
	# now locate the method in the dispatch table
	la	$t1 C_dispTab
	lw	$t1 12($t1)
	jalr		$t1
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:d
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label30:
	# now locate the method in the dispatch table
	la	$t1 C_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label31:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# assign_class
	# first eval expression 
	# new__class
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	# Now find the lvalue.
	# It is an attribute.a
	sw	$a0 12($s0)
	# assign_class
	# first eval expression 
	# new__class
	la	$a0 C_protObj
	jal	Object.copy
	jal	C_init
	# Now find the lvalue.
	# It is an attribute.b
	sw	$a0 16($s0)
	# assign_class
	# first eval expression 
	# new__class
	la	$a0 D_protObj
	jal	Object.copy
	jal	D_init
	# Now find the lvalue.
	# It is an attribute.c
	sw	$a0 20($s0)
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label32:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label33:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 12($s0)
	# if obj = void
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label34:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label35:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label36:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::B
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label37:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:b
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label38:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::B
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label39:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label40:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::C
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp f
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label41:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# dispatch_class
	# First eval param
	# Int
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:c
	lw	$a0 20($s0)
	# if obj = void
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label42:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::C
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp g
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label43:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
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
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label44:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
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

# end of generated code
