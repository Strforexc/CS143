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
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
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
	.word	int_const5
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
	.word	int_const4
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
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./not.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
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
	.word	3
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
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
	.word	1
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	100
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
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
	.word	int_const0	# int(0)
	.word	0	# str(0)
	.word	-1
Main_protObj:
	.word	5
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
	la	$a0 int_const0
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
	# int_const_class:0
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Let expr class
	# eval init
	# no_expr_class
	move	$a0 $zero
	la	$a0 bool_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# block_class
	# loop_class
	# start label
label0:
	# eval pred
	# less than class
	# eval e1 and push
	# Object_class:
	# It is a let var:x
	lw	$a0 8($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# int_const_class:100
	la	$a0 int_const1
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	# extract the int inside the object
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	blt	$t1 $t2 label2
	la	$a0 bool_const0
label2:
	lw	$t1 12($a0)
	# t1==0, then jump to finish
	beq	$t1 $zero label1
	# block_class
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# Object_class:
	# It is a let var:b
	lw	$a0 8($sp)
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label3
	# load false
	la	$a0 bool_const0
	# finish
label3:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label4
	# load false
	la	$a0 bool_const0
	# finish
label4:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label5
	# load false
	la	$a0 bool_const0
	# finish
label5:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label6
	# load false
	la	$a0 bool_const0
	# finish
label6:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label7
	# load false
	la	$a0 bool_const0
	# finish
label7:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label8
	# load false
	la	$a0 bool_const0
	# finish
label8:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label9
	# load false
	la	$a0 bool_const0
	# finish
label9:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label10
	# load false
	la	$a0 bool_const0
	# finish
label10:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label11
	# load false
	la	$a0 bool_const0
	# finish
label11:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label12
	# load false
	la	$a0 bool_const0
	# finish
label12:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label13
	# load false
	la	$a0 bool_const0
	# finish
label13:
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# Object_class:
	# It is a let var:b
	lw	$a0 8($sp)
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label14
	# load false
	la	$a0 bool_const0
	# finish
label14:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label15
	# load false
	la	$a0 bool_const0
	# finish
label15:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label16
	# load false
	la	$a0 bool_const0
	# finish
label16:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label17
	# load false
	la	$a0 bool_const0
	# finish
label17:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label18
	# load false
	la	$a0 bool_const0
	# finish
label18:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label19
	# load false
	la	$a0 bool_const0
	# finish
label19:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label20
	# load false
	la	$a0 bool_const0
	# finish
label20:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label21
	# load false
	la	$a0 bool_const0
	# finish
label21:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label22
	# load false
	la	$a0 bool_const0
	# finish
label22:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label23
	# load false
	la	$a0 bool_const0
	# finish
label23:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label24
	# load false
	la	$a0 bool_const0
	# finish
label24:
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# Object_class:
	# It is a let var:b
	lw	$a0 8($sp)
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label25
	# load false
	la	$a0 bool_const0
	# finish
label25:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label26
	# load false
	la	$a0 bool_const0
	# finish
label26:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label27
	# load false
	la	$a0 bool_const0
	# finish
label27:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label28
	# load false
	la	$a0 bool_const0
	# finish
label28:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label29
	# load false
	la	$a0 bool_const0
	# finish
label29:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label30
	# load false
	la	$a0 bool_const0
	# finish
label30:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label31
	# load false
	la	$a0 bool_const0
	# finish
label31:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label32
	# load false
	la	$a0 bool_const0
	# finish
label32:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label33
	# load false
	la	$a0 bool_const0
	# finish
label33:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label34
	# load false
	la	$a0 bool_const0
	# finish
label34:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label35
	# load false
	la	$a0 bool_const0
	# finish
label35:
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# Object_class:
	# It is a let var:b
	lw	$a0 8($sp)
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label36
	# load false
	la	$a0 bool_const0
	# finish
label36:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label37
	# load false
	la	$a0 bool_const0
	# finish
label37:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label38
	# load false
	la	$a0 bool_const0
	# finish
label38:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label39
	# load false
	la	$a0 bool_const0
	# finish
label39:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label40
	# load false
	la	$a0 bool_const0
	# finish
label40:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label41
	# load false
	la	$a0 bool_const0
	# finish
label41:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label42
	# load false
	la	$a0 bool_const0
	# finish
label42:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label43
	# load false
	la	$a0 bool_const0
	# finish
label43:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label44
	# load false
	la	$a0 bool_const0
	# finish
label44:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label45
	# load false
	la	$a0 bool_const0
	# finish
label45:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label46
	# load false
	la	$a0 bool_const0
	# finish
label46:
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# eq_class
	# eval e1 and push
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval e2
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# comp_class
	# Object_class:
	# It is a let var:b
	lw	$a0 8($sp)
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label47
	# load false
	la	$a0 bool_const0
	# finish
label47:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label48
	# load false
	la	$a0 bool_const0
	# finish
label48:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label49
	# load false
	la	$a0 bool_const0
	# finish
label49:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label50
	# load false
	la	$a0 bool_const0
	# finish
label50:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label51
	# load false
	la	$a0 bool_const0
	# finish
label51:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label52
	# load false
	la	$a0 bool_const0
	# finish
label52:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label53
	# load false
	la	$a0 bool_const0
	# finish
label53:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label54
	# load false
	la	$a0 bool_const0
	# finish
label54:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label55
	# load false
	la	$a0 bool_const0
	# finish
label55:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label56
	# load false
	la	$a0 bool_const0
	# finish
label56:
	# move ACC  to T1
	lw	$t1 12($a0)
	# load True
	la	$a0 bool_const1
	# if T1 == false, jumpto finish
	beq	$t1 $zero label57
	# load false
	la	$a0 bool_const0
	# finish
label57:
	# pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# assign_class
	# first eval expression 
	# plus_class 
	# First Eval e1 and push
	# Object_class:
	# It is a let var:x
	lw	$a0 8($sp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Then eval e2 and make a copy for res 
	# int_const_class:1
	la	$a0 int_const2
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
	# It is a let variable.x
	sw	$a0 8($sp)
	# jump to start
	b	label0
label1:
	move	$a0 $zero
	 # cond_class
	# eval pred
	# Object_class:
	# It is a let var:b
	lw	$a0 4($sp)
	# -----
	# extract 
	lw	$t1 12($a0)
	# beq jump else
	beq	$t1 $zero label58
	# eval then
	# dispatch_class
	# First eval param
	# next eval the obj in dispatch_class
	# Object_class:
	# It is self
	move	$a0 $s0
	# if obj = void
	bne	$a0 $zero label60
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label60:
	# obj != void; Find dispatch table
	# now locate the method in the dispatch table::Main
	# t1 = self.dispTab
	lw	$t1 8($a0)
	# load this method in table
	# t1 = dispTab[]0
	lw	$t1 0($t1)
	# jmptp abort
	jalr		$t1
	b	label59
	# eval else
label58:
	# int_const_class:0
	la	$a0 int_const0
label59:
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	addiu	$sp $sp 0
	jalr		$ra

# end of generated code
