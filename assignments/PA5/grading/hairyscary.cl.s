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
	.word	int_const2
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
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
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
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	15
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
	.word	6
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
	.word	4
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	Foo_protObj
	.word	Foo_init
	.word	Bar_protObj
	.word	Bar_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bazz_protObj
	.word	Bazz_init
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
Foo_dispTab:
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
	.word	Bazz.printh
	# metho # 8
	.word	Foo.doh
Bar_dispTab:
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
	.word	Bazz.printh
	# metho # 8
	.word	Foo.doh
Razz_dispTab:
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
	.word	Bazz.printh
	# metho # 8
	.word	Foo.doh
Bazz_dispTab:
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
	.word	Bazz.printh
	# metho # 8
	.word	Bazz.doh
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
	.word	int_const2	# int(0)
	.word	0	# str(0)
	.word	-1
Foo_protObj:
	.word	5
	.word	8
	.word	Foo_dispTab
	.word	int_const2	# int(0)
	.word	0	# void
	.word	0	# void
	.word	0	# void
	.word	int_const2	# int(0)
	.word	-1
Bar_protObj:
	.word	6
	.word	12
	.word	Bar_dispTab
	.word	int_const2	# int(0)
	.word	0	# void
	.word	0	# void
	.word	0	# void
	.word	int_const2	# int(0)
	.word	0	# void
	.word	int_const2	# int(0)
	.word	int_const2	# int(0)
	.word	0	# void
	.word	-1
Razz_protObj:
	.word	7
	.word	10
	.word	Razz_dispTab
	.word	int_const2	# int(0)
	.word	0	# void
	.word	0	# void
	.word	0	# void
	.word	int_const2	# int(0)
	.word	0	# void
	.word	int_const2	# int(0)
	.word	-1
Bazz_protObj:
	.word	8
	.word	6
	.word	Bazz_dispTab
	.word	int_const2	# int(0)
	.word	0	# void
	.word	0	# void
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
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Foo_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Bazz_init
	# typecase_class
	# eval expr
	# Object_class:
	# It is self
	move	$a0 $s0
	# if e0 == void, abort
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 59
	jal	_case_abort2
label0:
	# T1 = type(acc)
	lw	$t1 0($a0)
	# tag =7 : goto case 0
	li	$t2 7
	beq	$t1 $t2 label1
	# tag =5 : goto case 1
	li	$t2 5
	beq	$t1 $t2 label2
	# tag =6 : goto case 2
	li	$t2 6
	beq	$t1 $t2 label3
	# -------------------------
	# tag =6 : goto case 0
	li	$t2 6
	beq	$t1 $t2 label1
	# tag =7 : goto case 1
	li	$t2 7
	beq	$t1 $t2 label2
	# -------------------------
	# tag =6 : goto case 1
	li	$t2 6
	beq	$t1 $t2 label2
	# -------------------------
	# No match
	jal	_case_abort
	b	label4
	# eval expr
label1:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label4
	# eval expr
label2:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
	addiu	$sp $sp 4
	b	label4
	# eval expr
label3:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Object_class:
	# It is a let var:n
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label4
	# finish:
label4:
	sw	$a0 24($s0)
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label5:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Razz
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:g
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Foo
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
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
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Foo
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
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
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Foo
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp printh
	jalr		$t1
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
	sw	$a0 28($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Bar_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Razz_init
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Bar
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
	sw	$a0 40($s0)
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Bar
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp printh
	jalr		$t1
	sw	$a0 44($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Razz_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	Foo_init
	# typecase_class
	# eval expr
	# Object_class:
	# It is self
	move	$a0 $s0
	# if e0 == void, abort
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 59
	jal	_case_abort2
label11:
	# T1 = type(acc)
	lw	$t1 0($a0)
	# tag =7 : goto case 0
	li	$t2 7
	beq	$t1 $t2 label12
	# tag =6 : goto case 1
	li	$t2 6
	beq	$t1 $t2 label13
	# -------------------------
	# tag =6 : goto case 0
	li	$t2 6
	beq	$t1 $t2 label12
	# -------------------------
	# No match
	jal	_case_abort
	b	label14
	# eval expr
label12:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label14
	# eval expr
label13:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Object_class:
	# It is a let var:n
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label14
	# finish:
label14:
	sw	$a0 32($s0)
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# plus_class 
	# First Eval e1 and push
	# static_dispatch_class 
	# First eval param
	# next eval the obj in static_dispatch_class
	# Object_class:
	# It is a attrib:a
	lw	$a0 24($s0)
	# if obj = void
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 2
	jal	_dispatch_abort
label15:
	# now locate the method in the dispatch table
	la	$t1 Bazz_dispTab
	lw	$t1 32($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:g
	lw	$a0 16($s0)
	# if obj = void
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label16:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Foo
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
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
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a attrib:e
	lw	$a0 32($s0)
	# if obj = void
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label17:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Bar
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
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
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Razz
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]8
	lw	$t1 32($t1)
	# jmptp doh
	jalr		$t1
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
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Razz
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp printh
	jalr		$t1
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
	sw	$a0 36($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Bazz_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# init parent
	jal	IO_init
	# int_const_class:1
	la	$a0 int_const1
	sw	$a0 12($s0)
	# typecase_class
	# eval expr
	# Object_class:
	# It is self
	move	$a0 $s0
	# if e0 == void, abort
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 59
	jal	_case_abort2
label20:
	# T1 = type(acc)
	lw	$t1 0($a0)
	# tag =8 : goto case 0
	li	$t2 8
	beq	$t1 $t2 label21
	# tag =7 : goto case 1
	li	$t2 7
	beq	$t1 $t2 label22
	# tag =5 : goto case 2
	li	$t2 5
	beq	$t1 $t2 label23
	# tag =6 : goto case 3
	li	$t2 6
	beq	$t1 $t2 label24
	# -------------------------
	# tag =5 : goto case 0
	li	$t2 5
	beq	$t1 $t2 label21
	# tag =6 : goto case 1
	li	$t2 6
	beq	$t1 $t2 label22
	# tag =7 : goto case 2
	li	$t2 7
	beq	$t1 $t2 label23
	# -------------------------
	# tag =7 : goto case 0
	li	$t2 7
	beq	$t1 $t2 label21
	# tag =6 : goto case 2
	li	$t2 6
	beq	$t1 $t2 label23
	# -------------------------
	# tag =6 : goto case 0
	li	$t2 6
	beq	$t1 $t2 label21
	# -------------------------
	# No match
	jal	_case_abort
	b	label25
	# eval expr
label21:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Foo_protObj
	jal	Object.copy
	jal	Foo_init
	addiu	$sp $sp 4
	b	label25
	# eval expr
label22:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
	addiu	$sp $sp 4
	b	label25
	# eval expr
label23:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# new__class
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
	addiu	$sp $sp 4
	b	label25
	# eval expr
label24:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Object_class:
	# It is a let var:n
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	b	label25
	# finish:
label25:
	sw	$a0 16($s0)
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Bazz
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]7
	lw	$t1 28($t1)
	# jmptp printh
	jalr		$t1
	sw	$a0 20($s0)
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
	la	$a0 Bazz_protObj
	jal	Object.copy
	jal	Bazz_init
	sw	$a0 12($s0)
	# new__class
	la	$a0 Foo_protObj
	jal	Object.copy
	jal	Foo_init
	sw	$a0 16($s0)
	# new__class
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
	sw	$a0 20($s0)
	# new__class
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
	sw	$a0 24($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jalr		$ra
Foo.doh:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# Let expr class
	# eval init
	# Object_class:
	# It is a attrib:h
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	# assign_class
	# first eval expression 
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a attrib:h
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:2
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
	# It is an attribute.h
	sw	$a0 12($s0)
	# Object_class:
	# It is a let var:i
	lw	$a0 4($sp)
	addiu	$sp $sp 4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
Bazz.printh:
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
	# Object_class:
	# It is a attrib:h
	lw	$a0 12($s0)
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
	# now locate the method in the dispatch table::Bazz
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]4
	lw	$t1 16($t1)
	# jmptp out_int
	jalr		$t1
	# int_const_class:0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra
Bazz.doh:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# Let expr class
	# eval init
	# Object_class:
	# It is a attrib:h
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	# assign_class
	# first eval expression 
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a attrib:h
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:1
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
	# Now find the lvalue.
	# It is an attribute.h
	sw	$a0 12($s0)
	# Object_class:
	# It is a let var:i
	lw	$a0 4($sp)
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
	# string_const_class:
	la	$a0 str_const1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
