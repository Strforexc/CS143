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
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./objectequality.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
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
	.word	1
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
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
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
	.word	str_const5
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
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
	.word	A.foo
B_dispTab:
	# metho # 0
	.word	Object.abort
	# metho # 1
	.word	Object.type_name
	# metho # 2
	.word	Object.copy
	# metho # 3
	.word	A.foo
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
B_protObj:
	.word	6
	.word	4
	.word	B_dispTab
	.word	int_const1	# int(0)
	.word	-1
Main_protObj:
	.word	7
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
	# int_const_class:5
	la	$a0 int_const0
	sw	$a0 12($s0)
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
A.foo:
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
	# It is a param:y:0
	lw	$a0 12($fp)
	# Now find the lvalue.
	# It is an attribute.x
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
Main.main:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	# evaluating expression and put it to ACC
	# block_class
	# Let expr class
	# eval init
	# new__class
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:x
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:x
	lw	$a0 8($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label2
	la	$a0 bool_const0
label2:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label0
	# eval then
	# int_const_class:0
	la	$a0 int_const1
	b	label1
	# eval else
label0:
	# dispatch_class
	# First eval param
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
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
label1:
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:x
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# new__class
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label6
	la	$a0 bool_const0
label6:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label4
	# eval then
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
	b	label5
	# eval else
label4:
	# int_const_class:0
	la	$a0 int_const1
label5:
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# new__class
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# new__class
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label10
	la	$a0 bool_const0
label10:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label8
	# eval then
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
	b	label9
	# eval else
label8:
	# int_const_class:0
	la	$a0 int_const1
label9:
	# Let expr class
	# eval init
	# Object_class:
	# It is a let var:x
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:y
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:x
	lw	$a0 12($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label14
	la	$a0 bool_const0
label14:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label12
	# eval then
	# int_const_class:0
	la	$a0 int_const1
	b	label13
	# eval else
label12:
	# dispatch_class
	# First eval param
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
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
label13:
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# dispatch_class
	# First eval param
	# Int
	# int_const_class:3
	la	$a0 int_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# next eval the obj in dispatch_class
	# Object_class:
	# It is a let var:y
	lw	$a0 8($sp)
	# if obj = void
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::A
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]3
	lw	$t1 12($t1)
	# jmptp foo
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:x
	lw	$a0 12($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label19
	la	$a0 bool_const0
label19:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label16
	# eval then
	# int_const_class:0
	la	$a0 int_const1
	b	label17
	# eval else
label16:
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
label17:
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	 # cond_class
	# eval pred
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:x
	lw	$a0 8($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# Object_class:
	# It is a let var:y
	lw	$a0 8($sp)
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label23
	la	$a0 bool_const0
label23:
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label21
	# eval then
	# int_const_class:0
	la	$a0 int_const1
	b	label22
	# eval else
label21:
	# dispatch_class
	# First eval param
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
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
label22:
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
