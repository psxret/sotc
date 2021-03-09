.set noat
.set noreorder
.include "macro.inc"
.ent _start


#define zero 0
#define at 1
#define v0 2
#define v1 3
#define a0 4
#define a1 5
#define a2 6
#define a3 7
#define t0 8
#define t1 9
#define t2 10
#define t3 11
#define t4 12
#define t5 13
#define t6 14
#define t7 15
#define s0 16
#define s1 17
#define s2 18
#define s3 19
#define s4 20
#define s5 21
#define s6 22
#define s7 23
#define t8 24
#define t9 25
#define k0 26
#define k1 27
#define gp 28
#define sp 29
#define fp 30
#define s8 30
#define ra 31


.section .text, "ax"
.align 6
	dsll	$a1, $s0, 0x13
	sll	$at, $s0, 0x12
	nop
	nop
.global _start
_start:
	lui	$v0, 0x13
	lui	$v1, 0x16
	addiu	$v0, $v0, 28288
	addiu	$v1, $v1, 20456
lbl_00100020:
	sq	$zero, 0($v0)
	nop
	sltu	$at, $v0, $v1
	nop
	nop
	bnez	$at, lbl_00100020
	addiu	$v0, $v0, 16
	lui	$a0, 0x14
	lui	$a1, 0x1fe
	lui	$a2, 0x2
	lui	$a3, 0x13
	lui	$t0, 0x10
	addiu	$a0, $a0, -5648
	addiu	$a1, $a1, 0
	addiu	$a2, $a2, 0
	addiu	$a3, $a3, 28416
	addiu	$t0, $t0, 200
	move	$gp, $a0
	li	$v1, 60
	syscall
	move	$sp, $v0
	lui	$a0, 0x16
	lui	$a1, 0x4
	addiu	$a0, $a0, 20456
	addiu	$a1, $a1, 0
	li	$v1, 61
	syscall
	jal	sub_0010F6D8
	nop
	jal	sub_00106B60
	move	$a0, $zero
	ei
	lui	$v0, 0x13
	addiu	$v0, $v0, 28416
	lw	$a0, 0($v0)
	jal	sub_001039C8
	addiu	$a1, $v0, 4
	j	sub_0010FAD8
	move	$a0, $v0
	nop

sub_001000C0:
	j	sub_0010FAD8
	move	$a0, $zero
	li	$v1, 35
	syscall

sub_001000D0:
	addiu	$sp, $sp, -32
	move	$t2, $a2
	sd	$s2, 16($sp)
	sll	$a2, $t2, 0x3
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 24($sp)
	lw	$t4, 12($a1)
	lw	$v0, 8($a1)
	addu	$t0, $t4, $a2
	lw	$v1, 48($a0)
	lw	$a3, 4($t0)
	sll	$v0, $v0, 0x5
	addu	$v0, $v0, $v1
	lw	$t1, 40($a0)
	lw	$t3, 16($a1)
	andi	$a1, $a3, 0xff
	srl	$v1, $a3, 0x8
	lw	$a0, 0($v0)
	sll	$v1, $v1, 0x4
	lw	$t0, 0($t0)
	addu	$v1, $v1, $t1
	addu	$a2, $a2, $t3
	sltiu	$v0, $a1, 7
	addu	$s2, $a0, $t0
	lw	$s1, 4($v1)
	beqz	$v0, lbl_00100240
	lw	$s0, 0($a2)
	sll	$v0, $a1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 12464($v1)
	jr	$v1
	nop
	addu	$v0, $s0, $s1
	b	lbl_00100258
	sw	$v0, 0($s2)
	nop
	lui	$v1, 0x3ff
	srl	$v0, $s1, 0x2
	ori	$v1, $v1, 0xffff
	and	$v0, $v0, $v1
	addu	$v0, $s0, $v0
	b	lbl_00100258
	sw	$v0, 0($s2)
	nop
lbl_00100188:
	move	$a1, $t2
	jal	sub_00102CF8
	addiu	$a0, $a0, 12320
	b	lbl_001001E4
	move	$v0, $zero
	nop
	move	$t0, $t4
	move	$a2, $t3
	addiu	$v1, $t2, 1
	li	$a1, 5
	li	$a3, 6
	nop
lbl_001001B8:
	sll	$a0, $v1, 0x3
	addu	$v0, $t0, $a0
	lbu	$v0, 4($v0)
	nop
	nop
	beq	$v0, $a1, lbl_001001B8
	addiu	$v1, $v1, 1
	bnel	$v0, $a3, lbl_00100188
	lui	$a0, 0x13
	addu	$v0, $a0, $a2
	lw	$v0, 0($v0)
lbl_001001E4:
	sll	$v0, $v0, 0x10
	sll	$v1, $s0, 0x10
	addu	$v1, $s1, $v1
	sra	$v0, $v0, 0x10
	addu	$v1, $v1, $v0
	lui	$a0, 0xffff
	sra	$v1, $v1, 0xf
	and	$a0, $s0, $a0
	addiu	$v1, $v1, 1
	sra	$v1, $v1, 0x1
	andi	$v1, $v1, 0xffff
	or	$a0, $a0, $v1
	b	lbl_00100258
	sw	$a0, 0($s2)
	nop
	addu	$v1, $s1, $s0
	lui	$v0, 0xffff
	and	$v0, $s0, $v0
	andi	$v1, $v1, 0xffff
	or	$v0, $v0, $v1
	b	lbl_00100258
	sw	$v0, 0($s2)
	nop
lbl_00100240:
	lui	$a0, 0x13
	move	$a2, $t0
	jal	sub_00102CF8
	addiu	$a0, $a0, 12384
	b	lbl_0010025C
	move	$v0, $zero
lbl_00100258:
	li	$v0, 1
lbl_0010025C:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00100278:
	addiu	$sp, $sp, -96
	sd	$s0, 16($sp)
	sd	$s1, 24($sp)
	move	$s1, $a3
	sd	$s2, 32($sp)
	move	$s2, $a0
	sd	$s6, 64($sp)
	move	$s6, $a2
	sd	$s7, 72($sp)
	move	$s7, $a1
	sd	$s3, 40($sp)
	sd	$s4, 48($sp)
	sd	$s5, 56($sp)
	sd	$s8, 80($sp)
	sd	$ra, 88($sp)
	lw	$v0, 48($s2)
	sw	$zero, 0($sp)
	addiu	$s0, $v0, 32
	lw	$s4, 64($s2)
	beqz	$s1, lbl_001002D8
	lw	$s3, 68($s2)
	lui	$a0, 0x13
	jalr	$s1
	addiu	$a0, $a0, 12568
lbl_001002D8:
	addiu	$s4, $s4, -2
	li	$v0, -1
	beq	$s4, $v0, lbl_00100478
	lui	$v0, 0x13
	li	$s5, 1
	addiu	$s8, $v0, -5056
lbl_001002F0:
	lw	$a0, 8($s0)
	beqz	$a0, lbl_00100450
	sw	$zero, 24($s0)
	lw	$v1, 16($s0)
	li	$v0, 8
	beq	$v1, $v0, lbl_001003D0
	sltiu	$v0, $v1, 9
	beqz	$v0, lbl_00100328
	lui	$v0, 0x7fff
	beq	$v1, $s5, lbl_00100334
	lw	$v0, 0($sp)
	b	lbl_00100458
	nop
	nop
lbl_00100328:
	ori	$v0, $v0, 0xf420
	bne	$v1, $v0, lbl_00100458
	lw	$v0, 0($sp)
lbl_00100334:
	lw	$v0, 20($s0)
	beqzl	$v0, lbl_00100368
	lw	$a1, 12($s0)
	jalr	$s6
	nop
	lw	$a1, 4($s0)
	sw	$v0, 0($s0)
	move	$a0, $v0
	jal	sub_0012515C
	lw	$a2, 8($s0)
	li	$v0, 2
	b	lbl_0010039C
	sw	$v0, 24($s0)
lbl_00100368:
	lw	$v1, 4($s0)
	addiu	$v0, $a1, -1
	and	$v0, $v1, $v0
	beqzl	$v0, lbl_0010039C
	sw	$v1, 0($s0)
	jalr	$s7
	nop
	lw	$a1, 4($s0)
	sw	$v0, 0($s0)
	move	$a0, $v0
	jal	sub_0012515C
	lw	$a2, 8($s0)
	sw	$s5, 24($s0)
lbl_0010039C:
	beqz	$s1, lbl_00100458
	lw	$v0, 0($sp)
	lw	$v0, 16($s0)
	bne	$v0, $s5, lbl_001003C0
	lw	$v0, 24($s0)
	lui	$v1, 0x13
	b	lbl_00100420
	addiu	$a0, $v1, 12592
	nop
lbl_001003C0:
	lui	$v1, 0x13
	b	lbl_00100420
	addiu	$a0, $v1, 12632
	nop
lbl_001003D0:
	lw	$v0, 20($s0)
	beqz	$v0, lbl_001003F0
	nop
	jalr	$s6
	nop
	li	$v1, 2
	b	lbl_001003FC
	sw	$v1, 24($s0)
lbl_001003F0:
	jalr	$s7
	lw	$a1, 12($s0)
	sw	$s5, 24($s0)
lbl_001003FC:
	sw	$v0, 0($s0)
	lw	$a0, 0($s0)
	move	$a1, $zero
	jal	sub_00125310
	lw	$a2, 8($s0)
	beqz	$s1, lbl_00100454
	lui	$v1, 0x13
	lw	$v0, 24($s0)
	addiu	$a0, $v1, 12680
lbl_00100420:
	lw	$v1, 72($s2)
	sll	$v0, $v0, 0x2
	lw	$a1, 0($s3)
	addu	$v0, $v0, $s8
	lw	$a2, 0($s0)
	lw	$t0, 0($v0)
	addu	$a1, $v1, $a1
	jalr	$s1
	lw	$a3, 8($s0)
	b	lbl_00100458
	lw	$v0, 0($sp)
	nop
lbl_00100450:
	sw	$zero, 0($s0)
lbl_00100454:
	lw	$v0, 0($sp)
lbl_00100458:
	bnez	$v0, lbl_00100468
	addiu	$s4, $s4, -1
	lw	$v1, 0($s0)
	sw	$v1, 0($sp)
lbl_00100468:
	li	$v0, -1
	addiu	$s0, $s0, 32
	bne	$s4, $v0, lbl_001002F0
	addiu	$s3, $s3, 4
lbl_00100478:
	lw	$v0, 76($s2)
	lw	$v1, 0($sp)
	ld	$s0, 16($sp)
	addu	$v0, $v1, $v0
	ld	$s1, 24($sp)
	sw	$v0, 16($s2)
	ld	$s3, 40($sp)
	ld	$s2, 32($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$s8, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_001004B8:
	move	$t1, $a0
	lw	$v0, 92($t1)
	lw	$a0, 64($t1)
	addu	$v0, $t1, $v0
	blez	$a0, lbl_001004F4
	sw	$v0, 48($t1)
	move	$v1, $v0
	move	$a1, $a0
lbl_001004D8:
	lw	$v0, 28($v1)
	addiu	$a1, $a1, -1
	addu	$v0, $t1, $v0
	sw	$v0, 4($v1)
	nop
	bnez	$a1, lbl_001004D8
	addiu	$v1, $v1, 32
lbl_001004F4:
	lw	$a1, 84($t1)
	lw	$a2, 96($t1)
	lw	$a3, 88($t1)
	addu	$a1, $t1, $a1
	lw	$a0, 80($t1)
	addu	$a2, $t1, $a2
	lw	$t0, 100($t1)
	addu	$a3, $t1, $a3
	lw	$v1, 108($t1)
	addu	$a0, $t1, $a0
	lw	$v0, 104($t1)
	addu	$t0, $t1, $t0
	lw	$t2, 56($t1)
	addu	$v1, $t1, $v1
	addu	$v0, $t1, $v0
	sw	$a1, 40($t1)
	sw	$a2, 52($t1)
	sw	$a3, 44($t1)
	sw	$a0, 32($t1)
	sw	$v1, 72($t1)
	sw	$v0, 68($t1)
	blez	$t2, lbl_0010057C
	sw	$t0, 60($t1)
	move	$a0, $t0
	move	$a1, $t2
lbl_00100558:
	lw	$v1, 20($a0)
	addiu	$a1, $a1, -1
	lw	$v0, 24($a0)
	addu	$v1, $t1, $v1
	addu	$v0, $t1, $v0
	sw	$v1, 12($a0)
	sw	$v0, 16($a0)
	bnez	$a1, lbl_00100558
	addiu	$a0, $a0, 28
lbl_0010057C:
	lw	$v0, 20($t1)
	addu	$v0, $t1, $v0
	jr	$ra
	sw	$v0, 24($t1)
	nop

sub_00100590:
	addiu	$sp, $sp, -1104
	sd	$s0, 1024($sp)
	move	$s0, $a1
	sd	$s3, 1048($sp)
	move	$s3, $a0
	sd	$s1, 1032($sp)
	sd	$s2, 1040($sp)
	sd	$s4, 1056($sp)
	sd	$s5, 1064($sp)
	sd	$s6, 1072($sp)
	sd	$s7, 1080($sp)
	sd	$s8, 1088($sp)
	beqz	$a2, lbl_001005D4
	sd	$ra, 1096($sp)
	lui	$a0, 0x13
	jalr	$a2
	addiu	$a0, $a0, 12736
lbl_001005D4:
	move	$a0, $s0
	li	$a1, 1538
	move	$a2, $zero
	jal	sub_00103008
	move	$s1, $zero
	move	$s5, $v0
	lw	$v0, 28($s3)
	blez	$v0, lbl_00100700
	sw	$s5, -31600($gp)
	lui	$s2, 0x13
	lui	$s6, 0x13
	move	$s0, $sp
	addiu	$s4, $s2, 28744
	lw	$v0, 32($s3)
	nop
lbl_00100610:
	sll	$v1, $s1, 0x2
	lw	$a2, 40($s3)
	move	$a0, $sp
	addu	$v1, $v1, $v0
	lw	$t0, 44($s3)
	lw	$v0, 0($v1)
	addiu	$a1, $s6, 12776
	addiu	$s1, $s1, 1
	sll	$v0, $v0, 0x4
	addu	$v0, $v0, $a2
	lw	$a2, 0($v0)
	lw	$a3, 4($v0)
	jal	sub_001259B0
	addu	$a2, $t0, $a2
	lw	$v1, -31600($gp)
	bne	$v1, $s5, lbl_001006F0
	move	$a0, $sp
	jal	sub_00126004
	nop
	lw	$a2, -32560($gp)
	addu	$v0, $a2, $v0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_00100688
	nop
	beqz	$a2, lbl_00100688
	nop
	lw	$a0, -31600($gp)
	jal	sub_00103080
	addiu	$a1, $s2, 28744
	sw	$zero, -32560($gp)
lbl_00100688:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_001006C0
	move	$a0, $s0
	jal	sub_00126004
	nop
	lw	$a0, -31600($gp)
	move	$a2, $v0
	jal	sub_00103080
	move	$a1, $s0
	b	lbl_001006F4
	lw	$v0, 28($s3)
	nop
lbl_001006C0:
	jal	sub_00126004
	nop
	lw	$a0, -32560($gp)
	move	$a2, $v0
	move	$a1, $s0
	jal	sub_001262F8
	addu	$a0, $a0, $s4
	jal	sub_00126004
	move	$a0, $s0
	lw	$v1, -32560($gp)
	addu	$v1, $v1, $v0
	sw	$v1, -32560($gp)
lbl_001006F0:
	lw	$v0, 28($s3)
lbl_001006F4:
	slt	$v0, $s1, $v0
	bnezl	$v0, lbl_00100610
	lw	$v0, 32($s3)
lbl_00100700:
	lw	$v1, -31600($gp)
	lui	$v0, 0x13
	bne	$v1, $s5, lbl_001007B8
	addiu	$s0, $v0, 12792
	jal	sub_00126004
	move	$a0, $s0
	lw	$a2, -32560($gp)
	addu	$v0, $a2, $v0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_00100748
	nop
	beqz	$a2, lbl_00100748
	nop
	lui	$a1, 0x13
	lw	$a0, -31600($gp)
	jal	sub_00103080
	addiu	$a1, $a1, 28744
	sw	$zero, -32560($gp)
lbl_00100748:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_00100780
	nop
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -31600($gp)
	move	$a1, $s0
	jal	sub_00103080
	move	$a2, $v0
	b	lbl_001007BC
	lw	$v0, 64($s3)
	nop
lbl_00100780:
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -32560($gp)
	move	$a2, $v0
	lui	$at, 0x13
	addiu	$at, $at, 28744
	addu	$a0, $at, $a0
	jal	sub_001262F8
	move	$a1, $s0
	jal	sub_00126004
	move	$a0, $s0
	lw	$v1, -32560($gp)
	addu	$v1, $v1, $v0
	sw	$v1, -32560($gp)
lbl_001007B8:
	lw	$v0, 64($s3)
lbl_001007BC:
	li	$s4, 1
	slt	$v0, $s4, $v0
	beqz	$v0, lbl_00100940
	lw	$v1, -31600($gp)
	lui	$s6, 0x13
	lui	$s8, 0x13
	addiu	$s7, $s6, 28744
	lw	$v1, 68($s3)
	nop
lbl_001007E0:
	sll	$s2, $s4, 0x2
	move	$a0, $zero
	lw	$a2, 72($s3)
	addu	$v1, $s2, $v1
	lui	$a1, 0x13
	addu	$a1, $a1, $a0
	lw	$a1, -5040($a1)
	lw	$v0, 0($v1)
	beqz	$a1, lbl_00100844
	addu	$s1, $a2, $v0
	move	$s0, $zero
	nop
lbl_00100810:
	lui	$a0, 0x13
	addu	$a0, $a0, $s0
	lw	$a0, -5040($a0)
	addiu	$s0, $s0, 4
	jal	sub_00125DAC
	move	$a1, $s1
	beqz	$v0, lbl_00100848
	li	$v0, 1
	lui	$v0, 0x13
	addu	$v0, $v0, $s0
	lw	$v0, -5040($v0)
	bnez	$v0, lbl_00100810
	nop
lbl_00100844:
	move	$v0, $zero
lbl_00100848:
	beqz	$v0, lbl_00100928
	sll	$v1, $s4, 0x5
	lw	$v0, 68($s3)
	lw	$a3, 48($s3)
	move	$a0, $sp
	addu	$v0, $s2, $v0
	lw	$a2, 72($s3)
	lw	$t0, 0($v0)
	addu	$v1, $v1, $a3
	lw	$a3, 0($v1)
	addiu	$a1, $s8, 12808
	addu	$a2, $a2, $t0
	jal	sub_001259B0
	move	$t0, $a2
	lw	$v0, -31600($gp)
	bne	$v0, $s5, lbl_00100928
	move	$s0, $sp
	jal	sub_00126004
	move	$a0, $sp
	lw	$a2, -32560($gp)
	addu	$v0, $a2, $v0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_001008C0
	nop
	beqz	$a2, lbl_001008C0
	nop
	lw	$a0, -31600($gp)
	jal	sub_00103080
	addiu	$a1, $s6, 28744
	sw	$zero, -32560($gp)
lbl_001008C0:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_001008F8
	nop
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -31600($gp)
	move	$a1, $s0
	jal	sub_00103080
	move	$a2, $v0
	b	lbl_0010092C
	lw	$v0, 64($s3)
	nop
lbl_001008F8:
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -32560($gp)
	move	$a2, $v0
	move	$a1, $s0
	jal	sub_001262F8
	addu	$a0, $a0, $s7
	jal	sub_00126004
	move	$a0, $s0
	lw	$v1, -32560($gp)
	addu	$v1, $v1, $v0
	sw	$v1, -32560($gp)
lbl_00100928:
	lw	$v0, 64($s3)
lbl_0010092C:
	addiu	$s4, $s4, 1
	slt	$v0, $s4, $v0
	bnezl	$v0, lbl_001007E0
	lw	$v1, 68($s3)
	lw	$v1, -31600($gp)
lbl_00100940:
	lui	$v0, 0x13
	bne	$v1, $s5, lbl_00100A18
	addiu	$s0, $v0, 27336
	jal	sub_00126004
	move	$a0, $s0
	lw	$a2, -32560($gp)
	addu	$v0, $a2, $v0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_00100984
	nop
	beqz	$a2, lbl_00100984
	nop
	lui	$a1, 0x13
	lw	$a0, -31600($gp)
	jal	sub_00103080
	addiu	$a1, $a1, 28744
	sw	$zero, -32560($gp)
lbl_00100984:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 4096
	bnez	$v0, lbl_001009B8
	nop
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -31600($gp)
	move	$a1, $s0
	jal	sub_00103080
	move	$a2, $v0
	b	lbl_001009F4
	lw	$v0, -31600($gp)
lbl_001009B8:
	jal	sub_00126004
	move	$a0, $s0
	lw	$a0, -32560($gp)
	move	$a2, $v0
	lui	$at, 0x13
	addiu	$at, $at, 28744
	addu	$a0, $at, $a0
	jal	sub_001262F8
	move	$a1, $s0
	jal	sub_00126004
	move	$a0, $s0
	lw	$v1, -32560($gp)
	addu	$v1, $v1, $v0
	sw	$v1, -32560($gp)
	lw	$v0, -31600($gp)
lbl_001009F4:
	bne	$v0, $s5, lbl_00100A18
	lw	$a2, -32560($gp)
	beqz	$a2, lbl_00100A18
	nop
	lui	$a1, 0x13
	move	$a0, $s5
	jal	sub_00103080
	addiu	$a1, $a1, 28744
	sw	$zero, -32560($gp)
lbl_00100A18:
	jal	sub_00103020
	move	$a0, $s5
	li	$v0, 1
	ld	$s0, 1024($sp)
	ld	$s1, 1032($sp)
	ld	$s2, 1040($sp)
	ld	$s3, 1048($sp)
	ld	$s4, 1056($sp)
	ld	$s5, 1064($sp)
	ld	$s6, 1072($sp)
	ld	$s7, 1080($sp)
	ld	$s8, 1088($sp)
	ld	$ra, 1096($sp)
	jr	$ra
	addiu	$sp, $sp, 1104
	nop

sub_00100A58:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$ra, 24($sp)
	jal	sub_001067D0
	nop
	move	$s1, $v0
	lw	$v0, -31996($gp)
	bne	$s1, $v0, lbl_00100B04
	move	$a0, $s1
	jal	sub_001067D0
	nop
	li	$a1, 1
	jal	sub_00106770
	move	$a0, $v0
	jal	sub_001088F8
	move	$a0, $zero
	jal	sub_0010D5E8
	nop
	lw	$a0, -31996($gp)
	lui	$gp, 0x14
	addiu	$gp, $gp, -5648
	jal	sub_00106830
	lw	$sp, -32000($gp)
	jal	sub_00106810
	lw	$a0, -31996($gp)
	lui	$a0, 0x10
	addiu	$a0, $a0, 2804
	lui	$v0, 0x2000
	lui	$v1, 0x10
	or	$a0, $a0, $v0
	lui	$a1, 0xff00
	lw	$v0, 0($a0)
	addiu	$v1, $v1, 14408
	srl	$v1, $v1, 0x2
	and	$v0, $v0, $a1
	or	$v0, $v0, $v1
	sw	$v0, 0($a0)
	jal	0
	nop
	nop
	move	$a0, $s1
lbl_00100B04:
	li	$a1, 127
	jal	sub_00106770
	lui	$s2, 0x13
	addiu	$s0, $s2, 27344
	lui	$a0, 0xff60
	move	$a1, $s0
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	lui	$a1, 0x13
	lui	$a0, 0xff60
	move	$a2, $s1
	addiu	$a1, $a1, 12832
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	lui	$a1, 0x14
	lui	$a0, 0xff60
	addiu	$a1, $a1, -32696
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	lui	$a1, 0x13
	lui	$a0, 0xc0ff
	addiu	$a1, $a1, 12856
	jal	sub_00105250
	ori	$a0, $a0, 0xe000
	lui	$a1, 0x13
	lui	$a0, 0xc0ff
	addiu	$a1, $a1, 12920
	jal	sub_00105250
	ori	$a0, $a0, 0xe000
	jal	sub_00102CF8
	move	$a0, $s0
	jal	sub_001032F0
	nop
	jal	sub_00103DB0
	nop
	b	lbl_00100BA0
	nop
lbl_00100B98:
	jal	sub_001054D0
	nop
lbl_00100BA0:
	jal	sub_00104790
	nop
	jal	sub_00105C18
	move	$s0, $v0
	andi	$s0, $s0, 0x800
	beqz	$s0, lbl_00100B98
	addiu	$a1, $s2, 27344
	lui	$a0, 0xff60
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	jal	sub_001067D0
	nop
	move	$a0, $v0
	jal	sub_00106770
	li	$a1, 127
	jal	sub_00106810
	lw	$a0, -31996($gp)
	nop
lbl_00100BE8:
	jal	sub_00106800
	nop
	b	lbl_00100BE8
	nop
lbl_00100BF8:
	addiu	$sp, $sp, -112
	lui	$gp, 0x14
	addiu	$gp, $gp, -5648
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	sd	$a1, 56($sp)
	sd	$a2, 64($sp)
	sd	$a3, 72($sp)
	sd	$t0, 80($sp)
	sd	$t1, 88($sp)
	sd	$t2, 96($sp)
	sd	$t3, 104($sp)
	swc1	$f12, 24($sp)
	swc1	$f13, 28($sp)
	swc1	$f14, 32($sp)
	swc1	$f15, 36($sp)
	swc1	$f16, 40($sp)
	swc1	$f17, 44($sp)
	swc1	$f18, 48($sp)
	jal	sub_00102608
	swc1	$f19, 52($sp)
	lui	$a0, 0x14
	addiu	$a2, $sp, 56
	move	$a1, $s0
	jal	sub_00128F88
	addiu	$a0, $a0, -32696
	jal	sub_00100A58
	nop
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
lbl_00100C80:
	addiu	$sp, $sp, -112
	lui	$gp, 0x14
	addiu	$gp, $gp, -5648
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$a1, 56($sp)
	sd	$a2, 64($sp)
	sd	$ra, 8($sp)
	sd	$a3, 72($sp)
	sd	$t0, 80($sp)
	sd	$t1, 88($sp)
	sd	$t2, 96($sp)
	sd	$t3, 104($sp)
	swc1	$f12, 24($sp)
	swc1	$f13, 28($sp)
	swc1	$f14, 32($sp)
	swc1	$f15, 36($sp)
	swc1	$f16, 40($sp)
	swc1	$f17, 44($sp)
	swc1	$f18, 48($sp)
	jal	sub_00102608
	swc1	$f19, 52($sp)
	lui	$a0, 0x14
	addiu	$a2, $sp, 56
	addiu	$a0, $a0, -32696
	jal	sub_00128F88
	move	$a1, $s0
	lui	$v1, 0x10
	lui	$a2, 0x13
	addiu	$v1, $v1, 3280
	addiu	$v0, $a2, -4864
	move	$a1, $ra
	addiu	$v0, $v0, 504
	li	$a0, 63
lbl_00100D08:
	addiu	$a0, $a0, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bgez	$a0, lbl_00100D08
	addiu	$v0, $v0, -8
	addiu	$v0, $a2, -4864
	sw	$v1, 368($v0)
	sw	$a1, 248($v0)
	jal	sub_00100A58
	sw	$sp, 232($v0)
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_00100D48:
	addiu	$sp, $sp, -1200
	sw	$a0, 1104($sp)
	lui	$a0, 0x13
	sd	$s0, 1120($sp)
	lw	$a1, 1104($sp)
	sd	$s1, 1128($sp)
	sd	$s2, 1136($sp)
	sd	$s3, 1144($sp)
	sd	$s4, 1152($sp)
	sd	$s5, 1160($sp)
	sd	$s6, 1168($sp)
	sd	$s7, 1176($sp)
	sd	$s8, 1184($sp)
	sd	$ra, 1192($sp)
	jal	sub_00102CF8
	addiu	$a0, $a0, 13128
	lw	$a0, 1104($sp)
	jal	sub_001030E0
	move	$a1, $sp
	move	$s0, $v0
	bnez	$s0, lbl_00100DC0
	lui	$a1, 0x13
	lw	$a0, 1104($sp)
	li	$a1, 1
	jal	sub_00103008
	move	$a2, $zero
	move	$s0, $v0
	bgez	$s0, lbl_00100DE0
	lw	$v1, -32620($gp)
	lui	$a1, 0x13
lbl_00100DC0:
	lw	$a2, 1104($sp)
	addiu	$a1, $a1, 13152
	move	$a3, $s0
	jal	sub_00105250
	li	$a0, -256
	b	lbl_00101160
	move	$v0, $zero
	nop
lbl_00100DE0:
	li	$a1, 64
	lwu	$v0, 36($sp)
	beqzl	$a1, lbl_00100DF0
	break	0x7
lbl_00100DF0:
	addiu	$v1, $v1, 63
	lwu	$a2, 8($sp)
	divu	$zero, $v1, $a1
	dsll32	$v0, $v0, 0x0
	or	$s2, $v0, $a2
	move	$a0, $s0
	dsll32	$s1, $s2, 0x0
	dsra32	$s1, $s1, 0x0
	move	$a2, $s1
	mflo	$v1
	sll	$s5, $v1, 0x6
	move	$a1, $s5
	addu	$v0, $s5, $s1
	jal	sub_00103068
	sw	$v0, -32620($gp)
	jal	sub_00103020
	move	$a0, $s0
	move	$t0, $zero
	move	$a0, $s5
	beqz	$s1, lbl_00100E64
	addiu	$v1, $s1, -1
	li	$a1, -1
lbl_00100E48:
	lbu	$v0, 0($a0)
	addiu	$a0, $a0, 1
	addiu	$v1, $v1, -1
	nop
	nop
	bne	$v1, $a1, lbl_00100E48
	addu	$t0, $t0, $v0
lbl_00100E64:
	lui	$a0, 0x13
	addu	$a2, $s5, $s1
	addiu	$a0, $a0, 13192
	move	$a3, $s2
	jal	sub_00102CF8
	move	$a1, $s5
	lui	$v0, 0x100
	lui	$v1, 0x110
	move	$a0, $s5
	sw	$v0, 72($sp)
	sw	$v1, 76($sp)
	sw	$s5, 64($sp)
	jal	sub_001004B8
	sw	$zero, 68($sp)
	lui	$v1, 0x13
	lw	$a0, 0($s5)
	lw	$v0, -5064($v1)
	bne	$a0, $v0, lbl_00100F58
	lui	$v0, 0x10
	lw	$v0, 56($s5)
	sra	$s0, $v0, 0x1
	blez	$s0, lbl_00100EF8
	move	$a1, $zero
	lw	$a2, 60($s5)
	move	$v1, $s0
	addiu	$a0, $a2, 4
	nop
lbl_00100ED0:
	lw	$v0, 0($a0)
	addiu	$a0, $a0, 28
	addiu	$v1, $v1, -1
	nop
	nop
	bnez	$v1, lbl_00100ED0
	addu	$a1, $a1, $v0
	b	lbl_00100F00
	lw	$v0, 12($a2)
	nop
lbl_00100EF8:
	lw	$a2, 60($s5)
	lw	$v0, 12($a2)
lbl_00100F00:
	addiu	$a2, $sp, 64
	sll	$a1, $a1, 0x3
	move	$a0, $s5
	jal	sub_00101B88
	addu	$a1, $v0, $a1
	blezl	$s0, lbl_00100F58
	lui	$v0, 0x10
	sll	$v0, $s0, 0x3
	lw	$a2, 60($s5)
	subu	$v0, $v0, $s0
	move	$v1, $s0
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $a2
	addiu	$v0, $v0, 4
lbl_00100F38:
	addiu	$v1, $v1, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bnez	$v1, lbl_00100F38
	addiu	$v0, $v0, 28
	lui	$v0, 0x10
lbl_00100F58:
	lui	$a1, 0x10
	lui	$a2, 0x10
	addiu	$a3, $v0, 11512
	addiu	$a1, $a1, 6848
	addiu	$a2, $a2, 6896
	jal	sub_00100278
	move	$a0, $s5
	lui	$v0, 0x10
	lw	$a3, 36($s5)
	li	$v1, -1
	addiu	$t4, $v0, 6816
	lw	$a1, 40($s5)
	addiu	$a3, $a3, -1
	lw	$a2, 52($s5)
	beq	$a3, $v1, lbl_00101010
	lw	$t0, 48($s5)
	li	$t3, 0xfff1
	li	$t2, 0xfeff
	li	$t1, -1
	nop
lbl_00100FA8:
	lhu	$a0, 14($a1)
	beqzl	$a0, lbl_00101000
	sw	$t4, 4($a1)
	bne	$a0, $t3, lbl_00100FC8
	sltu	$v0, $t2, $a0
	lw	$v0, 0($a2)
	b	lbl_00101000
	sw	$v0, 4($a1)
lbl_00100FC8:
	bnezl	$v0, lbl_00101004
	addiu	$a3, $a3, -1
	lbu	$v0, 12($a1)
	andi	$v0, $v0, 0xf
	slti	$v1, $v0, 4
	beqzl	$v1, lbl_00101004
	addiu	$a3, $a3, -1
	bltz	$v0, lbl_00101000
	sll	$v0, $a0, 0x5
	lw	$a0, 0($a2)
	addu	$v0, $v0, $t0
	lw	$v1, 0($v0)
	addu	$a0, $a0, $v1
	sw	$a0, 4($a1)
lbl_00101000:
	addiu	$a3, $a3, -1
lbl_00101004:
	addiu	$a1, $a1, 16
	bne	$a3, $t1, lbl_00100FA8
	addiu	$a2, $a2, 4
lbl_00101010:
	move	$s4, $s5
	lw	$s3, 56($s4)
lbl_00101018:
	li	$v0, -1
	addiu	$s3, $s3, -1
	beq	$s3, $v0, lbl_00101088
	lw	$s1, 60($s4)
	li	$s8, 4
	li	$s7, 9
	li	$s6, -1
	nop
lbl_00101038:
	lw	$v0, 0($s1)
	beql	$v0, $s8, lbl_00101050
	lw	$s2, 4($s1)
	bnel	$v0, $s7, lbl_00101080
	addiu	$s3, $s3, -1
	lw	$s2, 4($s1)
lbl_00101050:
	blez	$s2, lbl_0010107C
	move	$s0, $zero
	move	$a2, $s0
	nop
lbl_00101060:
	addiu	$s0, $s0, 1
	move	$a0, $s4
	jal	sub_001000D0
	move	$a1, $s1
	slt	$v1, $s0, $s2
	bnez	$v1, lbl_00101060
	move	$a2, $s0
lbl_0010107C:
	addiu	$s3, $s3, -1
lbl_00101080:
	bne	$s3, $s6, lbl_00101038
	addiu	$s1, $s1, 28
lbl_00101088:
	lw	$v0, 8($s4)
	bnezl	$v0, lbl_001010A0
	addu	$a1, $s4, $v0
	b	lbl_001010B4
	move	$s4, $zero
	nop
lbl_001010A0:
	lui	$v0, 0x13
	jal	sub_00125500
	addiu	$a0, $v0, 12288
	lw	$v1, 8($s4)
	addu	$s4, $s4, $v1
lbl_001010B4:
	bnezl	$s4, lbl_00101018
	lw	$s3, 56($s4)
	lw	$s3, 68($sp)
	li	$v0, -1
	addiu	$s3, $s3, -1
	beq	$s3, $v0, lbl_00101130
	lw	$s1, 72($sp)
	li	$s7, 4
	li	$s6, 9
	li	$s4, -1
	nop
lbl_001010E0:
	lw	$v0, 0($s1)
	beql	$v0, $s7, lbl_001010F8
	lw	$s2, 4($s1)
	bnel	$v0, $s6, lbl_00101128
	addiu	$s3, $s3, -1
	lw	$s2, 4($s1)
lbl_001010F8:
	blez	$s2, lbl_00101124
	move	$s0, $zero
	move	$a2, $s0
	nop
lbl_00101108:
	addiu	$s0, $s0, 1
	move	$a0, $s5
	jal	sub_001000D0
	move	$a1, $s1
	slt	$v1, $s0, $s2
	bnez	$v1, lbl_00101108
	move	$a2, $s0
lbl_00101124:
	addiu	$s3, $s3, -1
lbl_00101128:
	bne	$s3, $s4, lbl_001010E0
	addiu	$s1, $s1, 28
lbl_00101130:
	addiu	$s0, $sp, 80
	lw	$a2, 1104($sp)
	lui	$a1, 0x13
	move	$a0, $s0
	jal	sub_001259B0
	addiu	$a1, $a1, 27352
	move	$a0, $s5
	lui	$v0, 0x10
	move	$a1, $s0
	jal	sub_00100590
	addiu	$a2, $v0, 11512
	move	$v0, $s5
lbl_00101160:
	ld	$s0, 1120($sp)
	ld	$s1, 1128($sp)
	ld	$s2, 1136($sp)
	ld	$s3, 1144($sp)
	ld	$s4, 1152($sp)
	ld	$s5, 1160($sp)
	ld	$s6, 1168($sp)
	ld	$s7, 1176($sp)
	ld	$s8, 1184($sp)
	ld	$ra, 1192($sp)
	jr	$ra
	addiu	$sp, $sp, 1200
	addiu	$sp, $sp, -80
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	lui	$s1, 0x10
	sd	$s2, 16($sp)
	lui	$s2, 0x10
	sd	$s3, 24($sp)
	move	$a3, $s0
	sd	$s5, 40($sp)
	move	$s5, $a0
	sd	$s4, 32($sp)
	lui	$a0, 0x13
	sd	$s6, 48($sp)
	move	$a1, $s5
	sd	$s7, 56($sp)
	addiu	$a0, $a0, 13232
	sd	$s8, 64($sp)
	addiu	$s1, $s1, 6896
	sd	$ra, 72($sp)
	addiu	$s2, $s2, 11512
	jal	sub_00102CF8
	lw	$a2, 20($s5)
	move	$a0, $s0
	move	$a1, $s5
	lui	$s0, 0x10
	lw	$a2, 20($a1)
	jal	sub_0012520C
	addiu	$s0, $s0, 6848
	move	$a0, $zero
	jal	sub_00106B60
	move	$s5, $v0
	lui	$v0, 0x10
	move	$a0, $s5
	jal	sub_001004B8
	addiu	$s3, $v0, 6816
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	jal	sub_00100278
	move	$a0, $s5
	lw	$a3, 36($s5)
	li	$v0, -1
	lw	$a1, 40($s5)
	addiu	$a3, $a3, -1
	lw	$a2, 52($s5)
	beq	$a3, $v0, lbl_001012C8
	lw	$t0, 48($s5)
	li	$t3, 0xfff1
	li	$t2, 0xfeff
	li	$t1, -1
	nop
lbl_00101260:
	lhu	$a0, 14($a1)
	beqzl	$a0, lbl_001012B8
	sw	$s3, 4($a1)
	bne	$a0, $t3, lbl_00101280
	sltu	$v0, $t2, $a0
	lw	$v0, 0($a2)
	b	lbl_001012B8
	sw	$v0, 4($a1)
lbl_00101280:
	bnezl	$v0, lbl_001012BC
	addiu	$a3, $a3, -1
	lbu	$v0, 12($a1)
	andi	$v0, $v0, 0xf
	slti	$v1, $v0, 4
	beqzl	$v1, lbl_001012BC
	addiu	$a3, $a3, -1
	bltz	$v0, lbl_001012B8
	sll	$v0, $a0, 0x5
	lw	$a0, 0($a2)
	addu	$v0, $v0, $t0
	lw	$v1, 0($v0)
	addu	$a0, $a0, $v1
	sw	$a0, 4($a1)
lbl_001012B8:
	addiu	$a3, $a3, -1
lbl_001012BC:
	addiu	$a1, $a1, 16
	bne	$a3, $t1, lbl_00101260
	addiu	$a2, $a2, 4
lbl_001012C8:
	beqz	$s5, lbl_0010137C
	move	$s4, $s5
	lw	$s3, 56($s4)
	nop
lbl_001012D8:
	li	$v0, -1
	addiu	$s3, $s3, -1
	beq	$s3, $v0, lbl_00101348
	lw	$s1, 60($s4)
	li	$s8, 4
	li	$s7, 9
	li	$s6, -1
	nop
lbl_001012F8:
	lw	$v0, 0($s1)
	beql	$v0, $s8, lbl_00101310
	lw	$s2, 4($s1)
	bnel	$v0, $s7, lbl_00101340
	addiu	$s3, $s3, -1
	lw	$s2, 4($s1)
lbl_00101310:
	blez	$s2, lbl_0010133C
	move	$s0, $zero
	move	$a2, $s0
	nop
lbl_00101320:
	addiu	$s0, $s0, 1
	move	$a0, $s4
	jal	sub_001000D0
	move	$a1, $s1
	slt	$v1, $s0, $s2
	bnez	$v1, lbl_00101320
	move	$a2, $s0
lbl_0010133C:
	addiu	$s3, $s3, -1
lbl_00101340:
	bne	$s3, $s6, lbl_001012F8
	addiu	$s1, $s1, 28
lbl_00101348:
	lw	$v0, 8($s4)
	bnezl	$v0, lbl_00101360
	addu	$a1, $s4, $v0
	b	lbl_00101374
	move	$s4, $zero
	nop
lbl_00101360:
	lui	$v0, 0x13
	jal	sub_00125500
	addiu	$a0, $v0, 12288
	lw	$v1, 8($s4)
	addu	$s4, $s4, $v1
lbl_00101374:
	bnezl	$s4, lbl_001012D8
	lw	$s3, 56($s4)
lbl_0010137C:
	jal	sub_00106B60
	move	$a0, $zero
	lui	$a0, 0x13
	lw	$a1, 16($s5)
	jal	sub_00102CF8
	addiu	$a0, $a0, 13248
	move	$v0, $s5
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_001013C8:
	addiu	$sp, $sp, -112
	li	$v0, 16384
	sd	$s4, 96($sp)
	lui	$s4, 0x13
	sd	$s3, 88($sp)
	addiu	$s3, $s4, -5248
	move	$a1, $sp
	sd	$s0, 64($sp)
	sd	$s1, 72($sp)
	move	$s0, $a0
	sd	$s2, 80($sp)
	sd	$ra, 104($sp)
	jal	sub_001030E0
	sw	$v0, 64($s3)
	move	$s1, $v0
	beqz	$s1, lbl_00101428
	lui	$a1, 0x13
	lui	$a0, 0xff80
	addiu	$a1, $a1, 13264
	move	$a2, $s0
	move	$a3, $s1
	b	lbl_00101460
	ori	$a0, $a0, 0x4000
	nop
lbl_00101428:
	move	$a0, $s0
	li	$a1, 1
	jal	sub_00103008
	move	$a2, $zero
	move	$s1, $v0
	bgez	$s1, lbl_00101470
	lwu	$v0, 36($sp)
	lui	$a1, 0x13
	lui	$a0, 0xff80
	addiu	$a1, $a1, 13264
	move	$a2, $s0
	move	$a3, $s1
	ori	$a0, $a0, 0x4000
	sb	$zero, 0($s3)
lbl_00101460:
	jal	sub_00105298
	nop
	b	lbl_001014F4
	move	$v0, $zero
lbl_00101470:
	move	$a1, $s3
	lwu	$v1, 8($sp)
	move	$a0, $s1
	dsll32	$v0, $v0, 0x0
	or	$s2, $v0, $v1
	dsll32	$s0, $s2, 0x0
	dsra32	$s0, $s0, 0x0
	move	$a2, $s0
	jal	sub_00103068
	addu	$s0, $s0, $s3
	jal	sub_00103020
	move	$a0, $s1
	move	$a0, $zero
	sb	$zero, 0($s0)
	li	$a3, 32
	sb	$zero, 63($s3)
	lui	$a1, 0x13
	lui	$a2, 0x13
lbl_001014B8:
	sltu	$v0, $a0, $s2
	beqz	$v0, lbl_001014F4
	addiu	$v0, $s4, -5248
	addu	$v1, $s3, $a0
	lb	$v0, 0($v1)
	nop
	nop
	bne	$v0, $a3, lbl_001014B8
	addiu	$a0, $a0, 1
	sb	$zero, 0($v1)
	addiu	$a0, $v1, 1
	addiu	$a1, $a1, 27360
	jal	sub_00125A48
	addiu	$a2, $a2, -5184
	addiu	$v0, $s4, -5248
lbl_001014F4:
	ld	$s0, 64($sp)
	ld	$s1, 72($sp)
	ld	$s2, 80($sp)
	ld	$s3, 88($sp)
	ld	$s4, 96($sp)
	ld	$ra, 104($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	addiu	$sp, $sp, -80
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	move	$s1, $a2
	sd	$s2, 16($sp)
	move	$s2, $t0
	sd	$s3, 24($sp)
	move	$s3, $a0
	sd	$s4, 32($sp)
	sd	$s5, 40($sp)
	sd	$s6, 48($sp)
	sd	$s7, 56($sp)
	sd	$s8, 64($sp)
	sd	$ra, 72($sp)
	jal	sub_001004B8
	move	$s4, $a3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	jal	sub_00100278
	move	$a0, $s3
	lw	$a3, 36($s3)
	li	$v0, -1
	lw	$a1, 40($s3)
	addiu	$a3, $a3, -1
	lw	$a2, 52($s3)
	beq	$a3, $v0, lbl_00101600
	lw	$t0, 48($s3)
	li	$t3, 0xfff1
	li	$t2, 0xfeff
	li	$t1, -1
lbl_00101598:
	lhu	$a0, 14($a1)
	beqzl	$a0, lbl_001015F0
	sw	$s4, 4($a1)
	bne	$a0, $t3, lbl_001015B8
	sltu	$v0, $t2, $a0
	lw	$v0, 0($a2)
	b	lbl_001015F0
	sw	$v0, 4($a1)
lbl_001015B8:
	bnezl	$v0, lbl_001015F4
	addiu	$a3, $a3, -1
	lbu	$v0, 12($a1)
	andi	$v0, $v0, 0xf
	slti	$v1, $v0, 4
	beqzl	$v1, lbl_001015F4
	addiu	$a3, $a3, -1
	bltz	$v0, lbl_001015F0
	sll	$v0, $a0, 0x5
	lw	$a0, 0($a2)
	addu	$v0, $v0, $t0
	lw	$v1, 0($v0)
	addu	$a0, $a0, $v1
	sw	$a0, 4($a1)
lbl_001015F0:
	addiu	$a3, $a3, -1
lbl_001015F4:
	addiu	$a1, $a1, 16
	bne	$a3, $t1, lbl_00101598
	addiu	$a2, $a2, 4
lbl_00101600:
	move	$s4, $s3
	beqz	$s4, lbl_001016B0
	lui	$s8, 0x13
	lw	$s3, 56($s4)
lbl_00101610:
	li	$v0, -1
	addiu	$s3, $s3, -1
	beq	$s3, $v0, lbl_00101680
	lw	$s1, 60($s4)
	li	$s7, 4
	li	$s6, 9
	li	$s5, -1
	nop
lbl_00101630:
	lw	$v0, 0($s1)
	beql	$v0, $s7, lbl_00101648
	lw	$s2, 4($s1)
	bnel	$v0, $s6, lbl_00101678
	addiu	$s3, $s3, -1
	lw	$s2, 4($s1)
lbl_00101648:
	blez	$s2, lbl_00101674
	move	$s0, $zero
	move	$a2, $s0
	nop
lbl_00101658:
	addiu	$s0, $s0, 1
	move	$a0, $s4
	jal	sub_001000D0
	move	$a1, $s1
	slt	$v1, $s0, $s2
	bnez	$v1, lbl_00101658
	move	$a2, $s0
lbl_00101674:
	addiu	$s3, $s3, -1
lbl_00101678:
	bne	$s3, $s5, lbl_00101630
	addiu	$s1, $s1, 28
lbl_00101680:
	lw	$v0, 8($s4)
	bnezl	$v0, lbl_00101698
	addu	$a1, $s4, $v0
	b	lbl_001016A8
	move	$s4, $zero
	nop
lbl_00101698:
	jal	sub_00125500
	addiu	$a0, $s8, 12288
	lw	$v1, 8($s4)
	addu	$s4, $s4, $v1
lbl_001016A8:
	bnezl	$s4, lbl_00101610
	lw	$s3, 56($s4)
lbl_001016B0:
	ld	$s0, 0($sp)
	li	$v0, 1
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
	addiu	$sp, $sp, -80
	sd	$s4, 32($sp)
	move	$s4, $a0
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$s5, 40($sp)
	sd	$s6, 48($sp)
	sd	$s7, 56($sp)
	sd	$s8, 64($sp)
	beqz	$s4, lbl_001017C8
	sd	$ra, 72($sp)
	lui	$s8, 0x13
	lw	$s3, 56($s4)
	nop
lbl_00101728:
	li	$v0, -1
	addiu	$s3, $s3, -1
	beq	$s3, $v0, lbl_00101798
	lw	$s1, 60($s4)
	li	$s7, 4
	li	$s6, 9
	li	$s5, -1
	nop
lbl_00101748:
	lw	$v0, 0($s1)
	beql	$v0, $s7, lbl_00101760
	lw	$s2, 4($s1)
	bnel	$v0, $s6, lbl_00101790
	addiu	$s3, $s3, -1
	lw	$s2, 4($s1)
lbl_00101760:
	blez	$s2, lbl_0010178C
	move	$s0, $zero
	move	$a2, $s0
	nop
lbl_00101770:
	addiu	$s0, $s0, 1
	move	$a0, $s4
	jal	sub_001000D0
	move	$a1, $s1
	slt	$v1, $s0, $s2
	bnez	$v1, lbl_00101770
	move	$a2, $s0
lbl_0010178C:
	addiu	$s3, $s3, -1
lbl_00101790:
	bne	$s3, $s5, lbl_00101748
	addiu	$s1, $s1, 28
lbl_00101798:
	lw	$v0, 8($s4)
	bnezl	$v0, lbl_001017B0
	addu	$a1, $s4, $v0
	b	lbl_001017C0
	move	$s4, $zero
	nop
lbl_001017B0:
	jal	sub_00125500
	addiu	$a0, $s8, 12288
	lw	$v1, 8($s4)
	addu	$s4, $s4, $v1
lbl_001017C0:
	bnezl	$s4, lbl_00101728
	lw	$s3, 56($s4)
lbl_001017C8:
	ld	$s0, 0($sp)
	li	$v0, 1
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s2, 16($sp)
	move	$s2, $a1
	sd	$s1, 8($sp)
	sd	$s3, 24($sp)
	beqz	$s0, lbl_00101898
	sd	$ra, 32($sp)
	lui	$s3, 0x13
	lw	$a1, 64($s0)
	nop
lbl_00101830:
	li	$s1, 1
lbl_00101834:
	slt	$v0, $s1, $a1
	beqzl	$v0, lbl_00101870
	lw	$v0, 8($s0)
	lw	$a0, 48($s0)
	sll	$v1, $s1, 0x5
	addu	$a0, $a0, $v1
	lw	$v0, 24($a0)
	beqz	$v0, lbl_00101834
	addiu	$s1, $s1, 1
	sw	$zero, 24($a0)
	jalr	$s2
	lw	$a0, 0($a0)
	b	lbl_00101834
	lw	$a1, 64($s0)
	nop
lbl_00101870:
	bnez	$v0, lbl_00101880
	addu	$a1, $s0, $v0
	b	lbl_00101890
	move	$s0, $zero
lbl_00101880:
	jal	sub_00125500
	addiu	$a0, $s3, 12288
	lw	$v1, 8($s0)
	addu	$s0, $s0, $v1
lbl_00101890:
	bnezl	$s0, lbl_00101830
	lw	$a1, 64($s0)
lbl_00101898:
	ld	$s0, 0($sp)
	li	$v0, 1
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lw	$t0, 36($a0)
	li	$v0, -1
	lw	$t1, 48($a0)
	addiu	$t0, $t0, -1
	lw	$a2, 40($a0)
	beq	$t0, $v0, lbl_00101948
	lw	$a3, 52($a0)
	li	$t4, 0xfff1
	li	$t3, 0xfeff
	li	$t2, -1
lbl_001018E0:
	lhu	$a0, 14($a2)
	beqzl	$a0, lbl_00101938
	sw	$a1, 4($a2)
	bne	$a0, $t4, lbl_00101900
	sltu	$v0, $t3, $a0
	lw	$v0, 0($a3)
	b	lbl_00101938
	sw	$v0, 4($a2)
lbl_00101900:
	bnezl	$v0, lbl_0010193C
	addiu	$t0, $t0, -1
	lbu	$v0, 12($a2)
	andi	$v0, $v0, 0xf
	slti	$v1, $v0, 4
	beqzl	$v1, lbl_0010193C
	addiu	$t0, $t0, -1
	bltz	$v0, lbl_00101938
	sll	$v0, $a0, 0x5
	lw	$a0, 0($a3)
	addu	$v0, $v0, $t1
	lw	$v1, 0($v0)
	addu	$a0, $a0, $v1
	sw	$a0, 4($a2)
lbl_00101938:
	addiu	$t0, $t0, -1
lbl_0010193C:
	addiu	$a2, $a2, 16
	bne	$t0, $t2, lbl_001018E0
	addiu	$a3, $a3, 4
lbl_00101948:
	jr	$ra
	li	$v0, 1
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	lw	$v1, -5064($v0)
	lw	$v0, 0($s1)
	bne	$v0, $v1, lbl_00101A1C
	move	$t0, $a1
	lw	$v0, 56($s1)
	sra	$s0, $v0, 0x1
	blez	$s0, lbl_001019C0
	move	$a1, $zero
	lw	$a3, 60($s1)
	move	$v1, $s0
	addiu	$a0, $a3, 4
	nop
lbl_00101998:
	lw	$v0, 0($a0)
	addiu	$a0, $a0, 28
	addiu	$v1, $v1, -1
	nop
	nop
	bnez	$v1, lbl_00101998
	addu	$a1, $a1, $v0
	b	lbl_001019C8
	lw	$v0, 12($a3)
	nop
lbl_001019C0:
	lw	$a3, 60($s1)
	lw	$v0, 12($a3)
lbl_001019C8:
	sll	$a1, $a1, 0x3
	move	$a0, $s1
	jalr	$t0
	addu	$a1, $v0, $a1
	blezl	$s0, lbl_00101A20
	ld	$s0, 0($sp)
	sll	$v0, $s0, 0x3
	lw	$a3, 60($s1)
	subu	$v0, $v0, $s0
	move	$v1, $s0
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $a3
	addiu	$v0, $v0, 4
	nop
lbl_00101A00:
	addiu	$v1, $v1, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bnez	$v1, lbl_00101A00
	addiu	$v0, $v0, 28
lbl_00101A1C:
	ld	$s0, 0($sp)
lbl_00101A20:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00101A30:
	addiu	$a0, $a0, 15
	li	$v0, -16
	and	$a0, $a0, $v0
	jr	$ra
	sw	$a0, -32620($gp)
	nop
	jr	$ra
	lw	$v0, -32620($gp)
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00102608
	nop
	lui	$a1, 0x13
	lui	$a0, 0xff60
	addiu	$a1, $a1, 27344
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	jal	sub_001067D0
	nop
	move	$a0, $v0
	jal	sub_00106770
	li	$a1, 127
	jal	sub_00106810
	lw	$a0, -31996($gp)
lbl_00101A90:
	jal	sub_00106800
	nop
	b	lbl_00101A90
	nop
	addiu	$sp, $sp, -16
	addiu	$a1, $ra, -8
	sd	$ra, 0($sp)
	lui	$a0, 0x13
	addiu	$a0, $a0, 12968
	ld	$ra, 0($sp)
	j	lbl_00100C80
	addiu	$sp, $sp, 16
	lw	$v0, -32620($gp)
	beqzl	$a1, lbl_00101ACC
	break	0x7
lbl_00101ACC:
	addu	$v0, $v0, $a1
	addiu	$v0, $v0, -1
	divu	$zero, $v0, $a1
	mflo	$v0
	mult	$v0, $v0, $a1
	addu	$a0, $v0, $a0
	jr	$ra
	sw	$a0, -32620($gp)
	nop
	lw	$v0, -32620($gp)
	li	$v1, 256
	beqzl	$v1, lbl_00101B00
	break	0x7
lbl_00101B00:
	addiu	$v0, $v0, 255
	divu	$zero, $v0, $v1
	mflo	$v0
	sll	$v0, $v0, 0x8
	addu	$a0, $v0, $a0
	jr	$ra
	sw	$a0, -32620($gp)
	nop
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	lw	$v0, 0($a1)
	beqz	$v0, lbl_00101B70
	move	$s1, $a0
	move	$s0, $a1
	lw	$a0, 0($s0)
	nop
lbl_00101B48:
	addiu	$s0, $s0, 4
	jal	sub_00125DAC
	move	$a1, $s1
	bnezl	$v0, lbl_00101B68
	lw	$v0, 0($s0)
	b	lbl_00101B74
	li	$v0, 1
	nop
lbl_00101B68:
	bnezl	$v0, lbl_00101B48
	lw	$a0, 0($s0)
lbl_00101B70:
	move	$v0, $zero
lbl_00101B74:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00101B88:
	addiu	$sp, $sp, -80
	sd	$s2, 16($sp)
	sd	$s5, 40($sp)
	sd	$s6, 48($sp)
	move	$s6, $a2
	sd	$s7, 56($sp)
	move	$s7, $a1
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s3, 24($sp)
	sd	$s4, 32($sp)
	sd	$ra, 64($sp)
	lw	$v0, 0($s6)
	lw	$s3, 8($s6)
	lw	$v1, 56($v0)
	lw	$a0, 60($v0)
	move	$a2, $s3
	sra	$s5, $v1, 0x1
	lw	$s1, 12($s6)
	sll	$v0, $s5, 0x3
	subu	$v0, $v0, $s5
	move	$t0, $s1
	sll	$v0, $v0, 0x2
	blez	$s5, lbl_00101C78
	addu	$s2, $a0, $v0
	move	$s4, $s5
lbl_00101BF0:
	lw	$s0, 4($s2)
	move	$a0, $s1
	ldl	$v0, 7($s2)
	ldr	$v0, 0($s2)
	ldl	$v1, 15($s2)
	ldr	$v1, 8($s2)
	ldl	$a1, 23($s2)
	ldr	$a1, 16($s2)
	lw	$a2, 24($s2)
	sdl	$v0, 7($s3)
	sdr	$v0, 0($s3)
	sdl	$v1, 15($s3)
	sdr	$v1, 8($s3)
	sdl	$a1, 23($s3)
	sdr	$a1, 16($s3)
	addiu	$s4, $s4, -1
	sll	$s0, $s0, 0x3
	sw	$a2, 24($s3)
	move	$a2, $s0
	jal	sub_0012515C
	lw	$a1, 12($s2)
	sw	$s1, 12($s3)
	lw	$a1, 16($s2)
	addiu	$s2, $s2, 28
	addu	$s1, $s1, $s0
	move	$a2, $s0
	jal	sub_0012515C
	move	$a0, $s1
	sw	$s1, 16($s3)
	addu	$s1, $s1, $s0
	bnez	$s4, lbl_00101BF0
	addiu	$s3, $s3, 28
	lw	$a2, 8($s6)
	lw	$t0, 12($s6)
lbl_00101C78:
	lui	$a0, 0x13
	move	$a3, $s3
	move	$t1, $s1
	move	$a1, $s7
	jal	sub_00102CF8
	addiu	$a0, $a0, 13056
	sw	$s5, 4($s6)
	ld	$s0, 0($sp)
	move	$v0, $zero
	sw	$s7, -32620($gp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$ra, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$s1, 8($sp)
	sd	$ra, 24($sp)
	jal	sub_001067D0
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_00100D48
	move	$s2, $v0
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a2, $v0
	addiu	$a1, $a1, 13320
	beqz	$a2, lbl_00101D68
	ori	$a0, $a0, 0x4000
	lw	$v1, -32620($gp)
	lui	$v0, 0x13
	lw	$s1, 16($a2)
	sw	$a2, -5180($v0)
	sw	$v1, -32624($gp)
	lui	$s0, 0x13
	nop
	addiu	$s0, $s0, -5396
	nop
	jal	sub_00106B60
	move	$a0, $zero
	jal	sub_00106B60
	li	$a0, 2
	lui	$a0, 0x13
	addiu	$a0, $a0, 13008
	move	$a1, $s1
	jal	sub_00102CF8
	move	$a2, $s0
	li	$a0, 1
	jalr	$s1
	move	$a1, $s0
	b	lbl_00101D70
	nop
	nop
lbl_00101D68:
	jal	sub_00105298
	nop
lbl_00101D70:
	jal	sub_001028F0
	move	$a0, $s2
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	j	sub_00106720
	addiu	$sp, $sp, 32

sub_00101D90:
	addiu	$sp, $sp, -128
	sd	$s0, 96($sp)
	sd	$s1, 104($sp)
	sd	$s2, 112($sp)
	sd	$ra, 120($sp)
	jal	sub_001013C8
	move	$s0, $a1
	addiu	$s2, $sp, 48
	move	$s1, $v0
	li	$a2, 48
	move	$a1, $zero
	beqz	$s1, lbl_00101EA4
	move	$a0, $s2
	jal	sub_00125310
	nop
	lui	$v1, 0x10
	lw	$v0, -32620($gp)
	li	$a0, 16
	addiu	$v1, $v1, 7368
	lui	$a1, 0x14
	addiu	$a1, $a1, -5648
	addiu	$v0, $v0, 15
	sw	$v1, 52($sp)
	divu	$zero, $v0, $a0
	beqzl	$a0, lbl_00101DF8
	break	0x7
lbl_00101DF8:
	lw	$v1, 64($s1)
	move	$a0, $sp
	mflo	$v0
	sll	$v0, $v0, 0x4
	sw	$v0, 56($sp)
	addu	$v0, $v0, $v1
	sw	$v0, -32620($gp)
	lw	$v1, 64($s1)
	sw	$a1, 64($sp)
	sw	$s0, 68($sp)
	sw	$v1, 60($sp)
	ldl	$v0, 7($s2)
	ldr	$v0, 0($s2)
	ldl	$v1, 15($s2)
	ldr	$v1, 8($s2)
	ldl	$a1, 23($s2)
	ldr	$a1, 16($s2)
	ldl	$a2, 31($s2)
	ldr	$a2, 24($s2)
	sdl	$v0, 7($sp)
	sdr	$v0, 0($sp)
	sdl	$v1, 15($sp)
	sdr	$v1, 8($sp)
	sdl	$a1, 23($sp)
	sdr	$a1, 16($sp)
	sdl	$a2, 31($sp)
	sdr	$a2, 24($sp)
	ldl	$v0, 39($s2)
	ldr	$v0, 32($s2)
	ldl	$v1, 47($s2)
	ldr	$v1, 40($s2)
	sdl	$v0, 39($sp)
	sdr	$v0, 32($sp)
	sdl	$v1, 47($sp)
	jal	sub_001066E0
	sdr	$v1, 40($sp)
	move	$s0, $v0
	jal	sub_00102790
	move	$a0, $s0
	move	$a0, $s0
	jal	sub_001073D0
	move	$a1, $s1
	lw	$v0, 8($sp)
lbl_00101EA4:
	ld	$s0, 96($sp)
	ld	$s1, 104($sp)
	ld	$s2, 112($sp)
	ld	$ra, 120($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00101EC0:
	addiu	$sp, $sp, -64
	li	$v0, 1
	sd	$s0, 16($sp)
	move	$s0, $t1
	sd	$s1, 24($sp)
	move	$s1, $a2
	sd	$s2, 32($sp)
	move	$s2, $t0
	sd	$s3, 40($sp)
	move	$s3, $a3
	sd	$s4, 48($sp)
	move	$s4, $a1
	beq	$t2, $v0, lbl_00101FF0
	sd	$ra, 56($sp)
	beqz	$t2, lbl_00101F18
	sll	$v0, $a0, 0x3
	li	$v0, 2
	beq	$t2, $v0, lbl_00102050
	lui	$v0, 0x14
	b	lbl_001020A4
	ld	$s0, 16($sp)
	nop
lbl_00101F18:
	lui	$a0, 0xffc0
	lui	$a2, 0x13
	addu	$a2, $a2, $v0
	lw	$a2, -4988($a2)
	lui	$a1, 0x13
	addiu	$a1, $a1, 13944
	jal	sub_00105250
	ori	$a0, $a0, 0x4000
	lui	$a1, 0x13
	lui	$a0, 0x40ff
	move	$a2, $s1
	addiu	$a1, $a1, 13960
	jal	sub_00105250
	ori	$a0, $a0, 0xc000
	lui	$a1, 0x13
	lui	$a0, 0x40c0
	move	$a3, $s2
	addiu	$a1, $a1, 13976
	move	$a2, $s3
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	move	$s1, $zero
	lui	$a1, 0x13
	lui	$a0, 0xc0c0
	addiu	$a1, $a1, 14000
	move	$a2, $s4
	jal	sub_00105250
	ori	$a0, $a0, 0xc000
	lui	$a1, 0x13
	addiu	$a1, $a1, 27760
	jal	sub_00105250
	li	$a0, -256
	lui	$s2, 0x13
	lw	$v0, 24($s0)
lbl_00101FA0:
	lui	$a0, 0x80a0
	lw	$a2, 4($s0)
	ori	$a0, $a0, 0xc000
	lw	$a3, 0($s0)
	addiu	$a1, $s2, 13904
	lw	$t0, 12($s0)
	addiu	$s1, $s1, 1
	lw	$t1, 8($s0)
	lw	$t2, 20($s0)
	lw	$t3, 16($s0)
	lw	$v1, 28($s0)
	addiu	$s0, $s0, 32
	sw	$v0, 8($sp)
	jal	sub_00105250
	sw	$v1, 0($sp)
	slti	$v0, $s1, 8
	bnezl	$v0, lbl_00101FA0
	lw	$v0, 24($s0)
	b	lbl_001020A4
	ld	$s0, 16($sp)
lbl_00101FF0:
	lui	$v0, 0x14
	move	$s2, $zero
	addiu	$s1, $v0, -31616
	lui	$s3, 0x13
	lwu	$v1, 0($s0)
	nop
lbl_00102008:
	li	$a0, -256
	addiu	$a1, $s3, 14016
	addiu	$s2, $s2, 1
	por	$v0, $zero, $v1
	sq	$v0, 0($s1)
	lw	$a2, 4($s0)
	addiu	$s0, $s0, 8
	lw	$a3, 12($s1)
	lw	$t0, 8($s1)
	lw	$t1, 4($s1)
	jal	sub_00105250
	lw	$t2, 0($s1)
	slti	$v0, $s2, 16
	bnezl	$v0, lbl_00102008
	lwu	$v1, 0($s0)
	b	lbl_001020A4
	ld	$s0, 16($sp)
	nop
lbl_00102050:
	addiu	$s0, $s0, 128
	addiu	$s1, $v0, -31616
	lui	$s3, 0x13
	li	$s2, 15
	lwu	$v1, 0($s0)
	nop
lbl_00102068:
	addiu	$s2, $s2, -1
	li	$a0, -256
	addiu	$a1, $s3, 14016
	por	$v0, $zero, $v1
	sq	$v0, 0($s1)
	lw	$a2, 4($s0)
	addiu	$s0, $s0, 8
	lw	$a3, 12($s1)
	lw	$t0, 8($s1)
	lw	$t1, 4($s1)
	jal	sub_00105250
	lw	$t2, 0($s1)
	bgezl	$s2, lbl_00102068
	lwu	$v1, 0($s0)
	ld	$s0, 16($sp)
lbl_001020A4:
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_001020C0:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 16($sp)
	addiu	$s2, $v0, -4992
	sd	$ra, 56($sp)
	sd	$s0, 0($sp)
	move	$s0, $zero
	sd	$s1, 8($sp)
	move	$s1, $s2
	sd	$s3, 24($sp)
	lui	$s3, 0x10
	sd	$s4, 32($sp)
	lui	$s4, 0x10
	sd	$s5, 40($sp)
	li	$s5, 9
	sd	$s6, 48($sp)
	li	$s6, 8
	nop
lbl_00102108:
	beq	$s0, $s6, lbl_00102150
	slti	$v0, $s0, 9
	beqz	$v0, lbl_00102128
	nop
	beqzl	$s0, lbl_00102154
	addiu	$s0, $s0, 1
	b	lbl_00102148
	lw	$a0, 0($s1)
lbl_00102128:
	bnel	$s0, $s5, lbl_00102148
	lw	$a0, 0($s1)
	lw	$a0, 72($s2)
	jal	sub_0010EBD8
	addiu	$a1, $s4, 9056
	b	lbl_00102154
	addiu	$s0, $s0, 1
	nop
lbl_00102148:
	jal	sub_0010EBD8
	addiu	$a1, $s3, 8672
lbl_00102150:
	addiu	$s0, $s0, 1
lbl_00102154:
	sltiu	$v0, $s0, 14
	bnez	$v0, lbl_00102108
	addiu	$s1, $s1, 8
	lui	$v1, 0x13
	li	$s0, 63
	addiu	$v0, $v1, -4864
	addiu	$v0, $v0, 504
lbl_00102170:
	addiu	$s0, $s0, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bgez	$s0, lbl_00102170
	addiu	$v0, $v0, -8
	lui	$v0, 0x10
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	addiu	$v1, $v1, -4864
	ld	$s2, 16($sp)
	addiu	$v0, $v0, 14792
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$ra, 56($sp)
	sw	$sp, 232($v1)
	sw	$v0, 368($v1)
	sw	$v0, 248($v1)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	mtc0	$a0, $14
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -80
	sd	$s3, 24($sp)
	move	$s3, $a1
	srl	$v0, $s3, 0x2
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	move	$s1, $t1
	sd	$s2, 16($sp)
	move	$s2, $s1
	sd	$s4, 32($sp)
	lui	$s4, 0x13
	sd	$s5, 40($sp)
	move	$s5, $a2
	sd	$s6, 48($sp)
	andi	$s6, $v0, 0xf
	sd	$s7, 56($sp)
	move	$s7, $a3
	sd	$s8, 64($sp)
	sd	$ra, 72($sp)
	jal	sub_001067D0
	move	$s8, $t0
	lui	$gp, 0x14
	addiu	$gp, $gp, -5648
	jal	sub_00102608
	move	$s0, $v0
	move	$a0, $s0
	li	$a1, 127
	jal	sub_00106770
	move	$s1, $zero
	jal	sub_0010F470
	nop
	lui	$a0, 0x13
	move	$a1, $s0
	addiu	$a0, $a0, 14048
	jal	sub_00102CF8
	addiu	$s0, $s4, -4864
lbl_00102270:
	lw	$v0, 0($s2)
	addiu	$s2, $s2, 16
	move	$a0, $s1
	addiu	$s1, $s1, 1
	jal	sub_00106B80
	sw	$v0, 0($s0)
	slti	$v1, $s1, 32
	sw	$v0, 256($s0)
	bnez	$v1, lbl_00102270
	addiu	$s0, $s0, 8
	addiu	$s2, $s4, -4864
	lui	$s1, 0x13
	addiu	$s1, $s1, 27760
	sw	$s3, 360($s2)
	sw	$s5, 368($s2)
	move	$a1, $s1
	li	$a0, -256
	jal	sub_00105250
	lui	$s0, 0x13
	lui	$a0, 0xff80
	addiu	$s0, $s0, 14104
	ori	$a0, $a0, 0x2000
	jal	sub_00105250
	move	$a1, $s0
	lui	$a1, 0x13
	lui	$a0, 0xff80
	addiu	$a1, $a1, 14160
	jal	sub_00105250
	ori	$a0, $a0, 0x2000
	lui	$a0, 0xff80
	move	$a1, $s0
	jal	sub_00105250
	ori	$a0, $a0, 0x2000
	lui	$a0, 0xff60
	move	$a1, $s1
	jal	sub_00105250
	ori	$a0, $a0, 0x3000
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $s7
	move	$t0, $s8
	move	$t1, $s2
	jal	sub_00101EC0
	move	$t2, $zero
	lui	$a0, 0x13
	ld	$s0, 0($sp)
	addiu	$a0, $a0, 14208
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	j	lbl_00100BF8
	addiu	$sp, $sp, 80
	nop
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	move	$s1, $t1
	sd	$s2, 16($sp)
	move	$s2, $s1
	sd	$s3, 24($sp)
	lui	$s3, 0x13
	sd	$s4, 32($sp)
	move	$s4, $a1
	sd	$s5, 40($sp)
	sd	$ra, 48($sp)
	jal	sub_001067D0
	move	$s5, $a2
	lui	$gp, 0x14
	addiu	$gp, $gp, -5648
	jal	sub_00102608
	move	$s0, $v0
	move	$a0, $s0
	li	$a1, 127
	jal	sub_00106770
	move	$s1, $zero
	jal	sub_0010F470
	nop
	lui	$a0, 0x13
	move	$a1, $s0
	addiu	$a0, $a0, 14240
	jal	sub_00102CF8
	addiu	$s0, $s3, -4864
	nop
lbl_001023D8:
	lw	$v0, 0($s2)
	addiu	$s2, $s2, 16
	move	$a0, $s1
	addiu	$s1, $s1, 1
	jal	sub_00106B80
	sw	$v0, 0($s0)
	slti	$v1, $s1, 32
	sw	$v0, 256($s0)
	bnez	$v1, lbl_001023D8
	addiu	$s0, $s0, 8
	addiu	$v0, $s3, -4864
	ld	$s3, 24($sp)
	sw	$s5, 368($v0)
	lui	$a0, 0x13
	sw	$s4, 360($v0)
	addiu	$a0, $a0, 14304
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$ra, 48($sp)
	j	lbl_00100BF8
	addiu	$sp, $sp, 64

sub_00102438:
	addiu	$sp, $sp, -64
	lui	$v0, 0x14
	sd	$s4, 32($sp)
	addiu	$s4, $v0, -29552
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 48($sp)
	sd	$s2, 16($sp)
	move	$s2, $zero
	sd	$s3, 24($sp)
	li	$s3, -1
	sd	$s5, 40($sp)
	addiu	$s5, $s4, 4
	sll	$v1, $s2, 0x3
lbl_00102470:
	addiu	$s2, $s2, 1
	addu	$s0, $v1, $s5
	lw	$v0, 0($s0)
	bltz	$v0, lbl_001024A0
	addu	$s1, $v1, $s4
	jal	sub_00106D70
	lw	$a0, 0($s1)
	lw	$a0, 0($s1)
	jal	sub_001065E0
	lw	$a1, 0($s0)
	sw	$s3, 0($s0)
	sw	$s3, 0($s1)
lbl_001024A0:
	slti	$v0, $s2, 256
	bnez	$v0, lbl_00102470
	sll	$v1, $s2, 0x3
	lui	$v0, 0x14
	li	$a0, -1
	addiu	$v0, $v0, -29552
	li	$v1, 255
	nop
lbl_001024C0:
	addiu	$v1, $v1, -1
	sw	$a0, 4($v0)
	sw	$a0, 0($v0)
	nop
	nop
	bgez	$v1, lbl_001024C0
	addiu	$v0, $v0, 8
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$ra, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00102500:
	addiu	$sp, $sp, -64
	lui	$v0, 0x14
	sd	$ra, 56($sp)
	sd	$s0, 32($sp)
	addiu	$s0, $v0, -30576
	sd	$s1, 40($sp)
	li	$s1, 255
	sd	$s2, 48($sp)
	li	$s2, -1
	nop
lbl_00102528:
	lw	$a0, 0($s0)
	bltz	$a0, lbl_00102540
	addiu	$s1, $s1, -1
	jal	sub_001068F0
	nop
	sw	$s2, 0($s0)
lbl_00102540:
	bgez	$s1, lbl_00102528
	addiu	$s0, $s0, 4
	lui	$v0, 0x14
	li	$a0, -1
	addiu	$v0, $v0, -30576
	li	$v1, 255
	addiu	$v0, $v0, 1020
	nop
lbl_00102560:
	addiu	$v1, $v1, -1
	sw	$a0, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00102560
	addiu	$v0, $v0, -4
	move	$s1, $zero
	lui	$s0, 0x13
	move	$a0, $s1
lbl_00102588:
	jal	sub_00106950
	move	$a1, $sp
	bne	$v0, $s1, lbl_001025D0
	move	$a0, $zero
	lw	$a2, 16($sp)
	move	$a1, $zero
	addiu	$v1, $s0, -4352
	lw	$v0, 0($v1)
lbl_001025A8:
	addiu	$v1, $v1, 4
	beq	$v0, $a2, lbl_001025D0
	li	$a0, 1
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 3
	nop
	nop
	bnezl	$v0, lbl_001025A8
	lw	$v0, 0($v1)
	move	$a0, $zero
lbl_001025D0:
	beqzl	$a0, lbl_001025E4
	addiu	$s1, $s1, 1
	jal	sub_001068F0
	move	$a0, $s1
	addiu	$s1, $s1, 1
lbl_001025E4:
	slti	$v0, $s1, 256
	bnezl	$v0, lbl_00102588
	move	$a0, $s1
	ld	$s0, 32($sp)
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00102608:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$ra, 32($sp)
	jal	sub_001067D0
	li	$s0, 255
	move	$a0, $v0
	jal	sub_00106770
	li	$a1, 1
	jal	sub_00102438
	nop
	jal	sub_001067D0
	nop
	move	$s2, $v0
	lui	$v0, 0x14
	addiu	$s1, $v0, -31600
	lw	$a0, 0($s1)
	nop
lbl_00102658:
	beq	$a0, $s2, lbl_00102670
	addiu	$s1, $s1, 4
	bltzl	$a0, lbl_00102674
	addiu	$s0, $s0, -1
	jal	sub_00106770
	li	$a1, 127
lbl_00102670:
	addiu	$s0, $s0, -1
lbl_00102674:
	bgezl	$s0, lbl_00102658
	lw	$a0, 0($s1)
	jal	sub_001067D0
	li	$s3, -1
	move	$s2, $v0
	lui	$v0, 0x14
	addiu	$s0, $v0, -31600
	li	$s1, 255
	nop
lbl_00102698:
	lw	$a0, 0($s0)
	beql	$a0, $s2, lbl_001026C0
	addiu	$s1, $s1, -1
	bltz	$a0, lbl_001026C0
	addiu	$s1, $s1, -1
	jal	sub_00106730
	nop
	jal	sub_001066F0
	lw	$a0, 0($s0)
	sw	$s3, 0($s0)
lbl_001026C0:
	bgez	$s1, lbl_00102698
	addiu	$s0, $s0, 4
	jal	sub_00102500
	li	$s1, 255
	jal	sub_001032F8
	nop
	jal	sub_001088F8
	move	$a0, $zero
	jal	sub_0010D5E8
	nop
	lui	$v1, 0x14
	addiu	$s0, $v1, -27504
lbl_001026F0:
	lw	$a0, 0($s0)
	beqz	$a0, lbl_00102708
	addiu	$s1, $s1, -1
	jal	sub_0010D7D8
	nop
	sw	$zero, 0($s0)
lbl_00102708:
	bgez	$s1, lbl_001026F0
	addiu	$s0, $s0, 4
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lui	$t1, 0x14
	move	$t0, $a0
	addiu	$v0, $t1, -29552
	move	$a2, $zero
	addiu	$a3, $v0, 4
	lw	$v0, 0($a3)
lbl_00102748:
	addiu	$a3, $a3, 8
	move	$v1, $a2
	addiu	$a2, $a2, 1
	bltz	$v0, lbl_00102770
	slti	$a0, $a2, 256
	nop
	nop
	bnezl	$a0, lbl_00102748
	lw	$v0, 0($a3)
	li	$v1, -1
lbl_00102770:
	addiu	$v0, $t1, -29552
	sll	$v1, $v1, 0x3
	addu	$a0, $v1, $v0
	addu	$v0, $v0, $v1
	sw	$t0, 4($v0)
	jr	$ra
	sw	$a1, 0($a0)
	nop

sub_00102790:
	lui	$v1, 0x14
	move	$a2, $zero
	addiu	$t0, $v1, -31600
	lw	$v0, 0($t0)
lbl_001027A0:
	addiu	$t0, $t0, 4
	move	$a3, $a2
	addiu	$a2, $a2, 1
	bltz	$v0, lbl_001027C8
	slti	$a1, $a2, 256
	nop
	nop
	bnezl	$a1, lbl_001027A0
	lw	$v0, 0($t0)
	li	$a3, -1
lbl_001027C8:
	addiu	$v1, $v1, -31600
	sll	$v0, $a3, 0x2
	addu	$v0, $v0, $v1
	jr	$ra
	sw	$a0, 0($v0)
	nop
	lui	$v1, 0x14
	move	$a2, $zero
	addiu	$t0, $v1, -30576
	lw	$v0, 0($t0)
lbl_001027F0:
	addiu	$t0, $t0, 4
	move	$a3, $a2
	addiu	$a2, $a2, 1
	bltz	$v0, lbl_00102818
	slti	$a1, $a2, 256
	nop
	nop
	bnezl	$a1, lbl_001027F0
	lw	$v0, 0($t0)
	li	$a3, -1
lbl_00102818:
	addiu	$v1, $v1, -30576
	sll	$v0, $a3, 0x2
	addu	$v0, $v0, $v1
	jr	$ra
	sw	$a0, 0($v0)
	nop
	beqz	$a0, lbl_00102898
	lui	$a2, 0x14
	move	$v1, $zero
	addiu	$a1, $a2, -27504
	lw	$v0, 0($a1)
	nop
lbl_00102848:
	beqz	$v0, lbl_00102890
	addiu	$a1, $a1, 4
	addiu	$v1, $v1, 1
	slti	$v0, $v1, 256
	nop
	nop
	nop
	bnezl	$v0, lbl_00102848
	lw	$v0, 0($a1)
	li	$a1, -1
lbl_00102870:
	bltz	$a1, lbl_00102898
	sll	$v1, $a1, 0x2
	addiu	$v0, $a2, -27504
	addu	$v1, $v1, $v0
	move	$v0, $a1
	jr	$ra
	sw	$a0, 0($v1)
	nop
lbl_00102890:
	b	lbl_00102870
	move	$a1, $v1
lbl_00102898:
	jr	$ra
	li	$v0, -1
	lui	$v0, 0x14
	move	$a1, $zero
	addiu	$v0, $v0, -29552
	li	$a2, -1
	addiu	$v1, $v0, 4
	nop
lbl_001028B8:
	lw	$v0, 0($v1)
	bnel	$v0, $a0, lbl_001028D8
	addiu	$a1, $a1, 1
	sw	$a2, -4($v1)
	move	$v0, $a0
	jr	$ra
	sw	$a2, 0($v1)
	nop
lbl_001028D8:
	slti	$v0, $a1, 256
	bnez	$v0, lbl_001028B8
	addiu	$v1, $v1, 8
	jr	$ra
	li	$v0, -1
	nop

sub_001028F0:
	lui	$v0, 0x14
	move	$a1, $zero
	addiu	$v1, $v0, -31600
	li	$a2, -1
lbl_00102900:
	lw	$v0, 0($v1)
	bnel	$v0, $a0, lbl_00102918
	addiu	$a1, $a1, 1
	sw	$a2, 0($v1)
	jr	$ra
	move	$v0, $a0
lbl_00102918:
	slti	$v0, $a1, 256
	bnez	$v0, lbl_00102900
	addiu	$v1, $v1, 4
	jr	$ra
	li	$v0, -1
	nop
	lui	$v0, 0x14
	move	$a1, $zero
	addiu	$v1, $v0, -30576
	li	$a2, -1
lbl_00102940:
	lw	$v0, 0($v1)
	bnel	$v0, $a0, lbl_00102958
	addiu	$a1, $a1, 1
	sw	$a2, 0($v1)
	jr	$ra
	move	$v0, $a0
lbl_00102958:
	slti	$v0, $a1, 256
	bnez	$v0, lbl_00102940
	addiu	$v1, $v1, 4
	jr	$ra
	li	$v0, -1
	nop
	lui	$v1, 0x14
	move	$a2, $zero
	addiu	$t0, $v1, -27504
	lw	$v0, 0($t0)
lbl_00102980:
	addiu	$t0, $t0, 4
	move	$a3, $a2
	addiu	$a2, $a2, 1
	beq	$v0, $a0, lbl_001029A8
	slti	$a1, $a2, 256
	nop
	nop
	bnezl	$a1, lbl_00102980
	lw	$v0, 0($t0)
	li	$a3, -1
lbl_001029A8:
	bltz	$a3, lbl_001029BC
	addiu	$v1, $v1, -27504
	sll	$v0, $a3, 0x2
	addu	$v0, $v0, $v1
	sw	$zero, 0($v0)
lbl_001029BC:
	jr	$ra
	move	$v0, $a3
	nop

sub_001029C8:
	lui	$v0, 0x14
	li	$a0, -1
	addiu	$v0, $v0, -29552
	li	$v1, 255
lbl_001029D8:
	addiu	$v1, $v1, -1
	sw	$a0, 4($v0)
	sw	$a0, 0($v0)
	nop
	nop
	bgez	$v1, lbl_001029D8
	addiu	$v0, $v0, 8
	jr	$ra
	nop
	nop

sub_00102A00:
	lui	$v0, 0x14
	li	$a0, -1
	addiu	$v0, $v0, -30576
	li	$v1, 255
	addiu	$v0, $v0, 1020
	nop
lbl_00102A18:
	addiu	$v1, $v1, -1
	sw	$a0, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00102A18
	addiu	$v0, $v0, -4
	jr	$ra
	nop
	nop

sub_00102A40:
	lui	$v0, 0x14
	li	$a0, -1
	addiu	$v0, $v0, -31600
	li	$v1, 255
	addiu	$v0, $v0, 1020
	nop
lbl_00102A58:
	addiu	$v1, $v1, -1
	sw	$a0, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00102A58
	addiu	$v0, $v0, -4
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -48
	lui	$v0, 0x14
	sd	$ra, 32($sp)
	sd	$s0, 0($sp)
	li	$s0, 255
	sd	$s1, 8($sp)
	addiu	$s1, $v0, -31600
	sd	$s2, 16($sp)
	move	$s2, $a0
	sd	$s3, 24($sp)
	li	$s3, -1
	lw	$v0, 0($s1)
lbl_00102AB0:
	addiu	$s1, $s1, 4
	beq	$v0, $s3, lbl_00102AC4
	move	$a0, $v0
	jalr	$s2
	nop
lbl_00102AC4:
	addiu	$s0, $s0, -1
	bgezl	$s0, lbl_00102AB0
	lw	$v0, 0($s1)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	li	$s1, 255
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$ra, 32($sp)
	jal	sub_001067D0
	move	$s3, $a0
	move	$s2, $v0
	lui	$v0, 0x14
	addiu	$s0, $v0, -31600
	lw	$a0, 0($s0)
	nop
lbl_00102B28:
	beq	$a0, $s2, lbl_00102B40
	addiu	$s0, $s0, 4
	bltzl	$a0, lbl_00102B44
	addiu	$s1, $s1, -1
	jal	sub_00106770
	move	$a1, $s3
lbl_00102B40:
	addiu	$s1, $s1, -1
lbl_00102B44:
	bgezl	$s1, lbl_00102B28
	lw	$a0, 0($s0)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00102B68:
	addiu	$sp, $sp, -32
	lui	$v0, 0x14
	sd	$ra, 24($sp)
	sd	$s0, 0($sp)
	addiu	$s0, $v0, -31600
	sd	$s1, 8($sp)
	li	$s1, 255
	sd	$s2, 16($sp)
	li	$s2, -1
	nop
lbl_00102B90:
	lw	$v0, 0($s0)
	bltz	$v0, lbl_00102BB0
	move	$a0, $v0
	jal	sub_00106730
	nop
	jal	sub_001066F0
	lw	$a0, 0($s0)
	sw	$s2, 0($s0)
lbl_00102BB0:
	addiu	$s1, $s1, -1
	bgez	$s1, lbl_00102B90
	addiu	$s0, $s0, 4
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	li	$s1, 255
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$ra, 32($sp)
	jal	sub_001067D0
	li	$s3, -1
	move	$s2, $v0
	lui	$v0, 0x14
	addiu	$s0, $v0, -31600
lbl_00102C08:
	lw	$a0, 0($s0)
	beql	$a0, $s2, lbl_00102C30
	addiu	$s1, $s1, -1
	bltz	$a0, lbl_00102C30
	addiu	$s1, $s1, -1
	jal	sub_00106730
	nop
	jal	sub_001066F0
	lw	$a0, 0($s0)
	sw	$s3, 0($s0)
lbl_00102C30:
	bgez	$s1, lbl_00102C08
	addiu	$s0, $s0, 4
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00102C58:
	lui	$v0, 0x14
	li	$v1, 255
	addiu	$v0, $v0, -27504
	addiu	$v0, $v0, 1020
lbl_00102C68:
	addiu	$v1, $v1, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00102C68
	addiu	$v0, $v0, -4
	jr	$ra
	nop
	nop

sub_00102C90:
	addiu	$sp, $sp, -32
	move	$a0, $zero
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_001088F8
	li	$s1, 255
	jal	sub_0010D5E8
	nop
	lui	$v1, 0x14
	addiu	$s0, $v1, -27504
	nop
lbl_00102CC0:
	lw	$a0, 0($s0)
	beqz	$a0, lbl_00102CD8
	addiu	$s1, $s1, -1
	jal	sub_0010D7D8
	nop
	sw	$zero, 0($s0)
lbl_00102CD8:
	bgez	$s1, lbl_00102CC0
	addiu	$s0, $s0, 4
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00102CF8:
	addiu	$sp, $sp, -368
	move	$v0, $a0
	sd	$a1, 312($sp)
	move	$a1, $v0
	move	$a0, $sp
	sd	$a2, 320($sp)
	addiu	$a2, $sp, 312
	sd	$ra, 256($sp)
	sd	$a3, 328($sp)
	sd	$t0, 336($sp)
	sd	$t1, 344($sp)
	sd	$t2, 352($sp)
	sd	$t3, 360($sp)
	swc1	$f12, 280($sp)
	swc1	$f13, 284($sp)
	swc1	$f14, 288($sp)
	swc1	$f15, 292($sp)
	swc1	$f16, 296($sp)
	swc1	$f17, 300($sp)
	swc1	$f18, 304($sp)
	jal	sub_00128F88
	swc1	$f19, 308($sp)
	jal	sub_00125500
	move	$a0, $sp
	jal	sub_00126004
	move	$a0, $sp
	ld	$ra, 256($sp)
	jr	$ra
	addiu	$sp, $sp, 368
	nop
	addiu	$sp, $sp, -96
	sd	$s2, 48($sp)
	move	$s2, $a0
	sd	$s3, 56($sp)
	move	$s3, $a2
	sd	$s4, 64($sp)
	move	$s4, $a1
	sd	$s5, 72($sp)
	move	$s5, $a3
	sd	$s6, 80($sp)
	move	$s6, $t0
	sd	$s0, 32($sp)
	sd	$s1, 40($sp)
	beqz	$s2, lbl_00102F10
	sd	$ra, 88($sp)
	lw	$v0, -32104($gp)
	blez	$v0, lbl_00102DEC
	move	$s0, $zero
	lui	$v0, 0x14
	addiu	$s1, $v0, -26480
	move	$a0, $s1
	nop
lbl_00102DC8:
	addiu	$s1, $s1, 16
	jal	sub_00125DAC
	move	$a1, $s2
	beqz	$v0, lbl_00102EF0
	lw	$v0, -32104($gp)
	addiu	$s0, $s0, 1
	slt	$v0, $s0, $v0
	bnez	$v0, lbl_00102DC8
	move	$a0, $s1
lbl_00102DEC:
	li	$a2, -1
lbl_00102DF0:
	bgezl	$a2, lbl_00102EF8
	lui	$a0, 0x13
	li	$v0, -4
	addiu	$s0, $s3, 3
	and	$s0, $s0, $v0
	jal	sub_001088F8
	move	$a0, $zero
	jal	sub_0010D5E8
	nop
	move	$a1, $s0
	li	$a0, 1
	jal	sub_0010D6E0
	move	$a2, $zero
	lui	$a0, 0x13
	move	$s1, $v0
	move	$a2, $s0
	move	$a1, $s1
	jal	sub_00102CF8
	addiu	$a0, $a0, 14336
	jal	sub_00106B60
	move	$a0, $zero
	li	$a1, 1
	move	$a0, $sp
	sw	$s0, 8($sp)
	sw	$s4, 0($sp)
	sw	$s1, 4($sp)
	jal	sub_00106CA0
	sw	$zero, 12($sp)
	move	$s0, $v0
	nop
lbl_00102E68:
	jal	sub_00106C80
	move	$a0, $s0
	bgez	$v0, lbl_00102E68
	nop
	lui	$a0, 0x13
	jal	sub_00102CF8
	addiu	$a0, $a0, 14408
	move	$a0, $s1
	move	$a1, $s5
	jal	sub_0010E2D0
	move	$a2, $s6
	move	$a0, $s1
	jal	sub_0010D760
	move	$s0, $v0
	bltz	$s0, lbl_00102FB0
	lw	$a2, -32104($gp)
	lui	$a0, 0x13
	move	$a1, $s2
	jal	sub_00102CF8
	addiu	$a0, $a0, 14464
	jal	sub_00126004
	move	$a0, $s2
	lw	$v1, -32104($gp)
	move	$a1, $s2
	move	$a2, $v0
	sll	$a0, $v1, 0x4
	addiu	$v1, $v1, 1
	lui	$at, 0x14
	addiu	$at, $at, -26480
	addu	$a0, $at, $a0
	jal	sub_001262F8
	sw	$v1, -32104($gp)
	b	lbl_00102FB4
	move	$v0, $s0
lbl_00102EF0:
	b	lbl_00102DF0
	move	$a2, $s0
lbl_00102EF8:
	move	$a1, $s2
	jal	sub_00102CF8
	addiu	$a0, $a0, 14528
	b	lbl_00102FB4
	move	$v0, $zero
	nop
lbl_00102F10:
	li	$v0, -4
	addiu	$s0, $s3, 3
	jal	sub_001088F8
	and	$s0, $s0, $v0
	jal	sub_0010D5E8
	nop
	li	$a0, 1
	move	$a1, $s0
	jal	sub_0010D6E0
	move	$a2, $zero
	lui	$a0, 0x13
	move	$s1, $v0
	move	$a2, $s0
	move	$a1, $s1
	jal	sub_00102CF8
	addiu	$a0, $a0, 14336
	jal	sub_00106B60
	move	$a0, $zero
	li	$a1, 1
	addiu	$a0, $sp, 16
	sw	$s0, 24($sp)
	sw	$s4, 16($sp)
	sw	$s1, 20($sp)
	jal	sub_00106CA0
	sw	$zero, 28($sp)
	move	$s0, $v0
lbl_00102F78:
	jal	sub_00106C80
	move	$a0, $s0
	bgez	$v0, lbl_00102F78
	nop
	lui	$a0, 0x13
	jal	sub_00102CF8
	addiu	$a0, $a0, 14408
	move	$a0, $s1
	move	$a1, $s5
	jal	sub_0010E2D0
	move	$a2, $s6
	move	$a0, $s1
	jal	sub_0010D760
	move	$s0, $v0
lbl_00102FB0:
	move	$v0, $s0
lbl_00102FB4:
	ld	$s0, 32($sp)
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$s3, 56($sp)
	ld	$s4, 64($sp)
	ld	$s5, 72($sp)
	ld	$s6, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	jr	$ra
	li	$v0, 2
	addiu	$sp, $sp, -16
	move	$a1, $a0
	sd	$ra, 0($sp)
	lui	$a0, 0x13
	addiu	$a0, $a0, 27768
	ld	$ra, 0($sp)
	j	sub_00125500
	addiu	$sp, $sp, 16

sub_00103008:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	sub_0010A6C0
	addiu	$sp, $sp, 16
	nop

sub_00103020:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	sub_0010A950
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010AAC8
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010CD28
	addiu	$sp, $sp, 16
	nop

sub_00103068:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	sub_0010AD08
	addiu	$sp, $sp, 16
	nop

sub_00103080:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010AF78
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010B958
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010BB30
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010B978
	addiu	$sp, $sp, 16
	nop

sub_001030E0:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010C2A8
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_0010C460
	addiu	$sp, $sp, 16
	nop
	lw	$v0, -32624($gp)
	sw	$v0, 24($a0)
	lui	$t0, 0x1fe
	nop
	addiu	$t0, $t0, 0
	nop
	sw	$t0, 0($a0)
	lui	$a3, 0x2
	nop
	addiu	$a3, $a3, 0
	nop
	lui	$a2, 0x16
	nop
	addiu	$a2, $a2, 20456
	nop
	sw	$a2, 8($a0)
	lui	$t2, 0x4
	nop
	addiu	$t2, $t2, 0
	nop
	lui	$v0, 0x13
	addiu	$t4, $a0, 32
	addiu	$v0, $v0, -5248
	lw	$t1, -32092($gp)
	move	$t3, $v0
	lw	$v1, 64($v0)
	or	$a1, $t4, $t3
	addu	$a3, $t0, $a3
	addu	$v1, $t1, $v1
	addu	$a2, $a2, $t2
	andi	$a1, $a1, 0x7
	sw	$v1, 20($a0)
	sw	$a3, 4($a0)
	sw	$a2, 12($a0)
	sw	$t1, 16($a0)
	beqz	$a1, lbl_00103208
	sw	$t0, 28($a0)
	addiu	$v0, $t3, 64
lbl_001031A8:
	ldl	$v1, 7($t3)
	ldr	$v1, 0($t3)
	ldl	$a0, 15($t3)
	ldr	$a0, 8($t3)
	ldl	$a1, 23($t3)
	ldr	$a1, 16($t3)
	ldl	$a2, 31($t3)
	ldr	$a2, 24($t3)
	sdl	$v1, 7($t4)
	sdr	$v1, 0($t4)
	sdl	$a0, 15($t4)
	sdr	$a0, 8($t4)
	sdl	$a1, 23($t4)
	sdr	$a1, 16($t4)
	sdl	$a2, 31($t4)
	sdr	$a2, 24($t4)
	addiu	$t3, $t3, 32
	nop
	nop
	bne	$t3, $v0, lbl_001031A8
	addiu	$t4, $t4, 32
	b	lbl_00103240
	nop
	nop
lbl_00103208:
	addiu	$v0, $t3, 64
lbl_0010320C:
	ld	$v1, 0($t3)
	ld	$a0, 8($t3)
	ld	$a1, 16($t3)
	ld	$a2, 24($t3)
	sd	$v1, 0($t4)
	sd	$a0, 8($t4)
	sd	$a1, 16($t4)
	sd	$a2, 24($t4)
	addiu	$t3, $t3, 32
	nop
	nop
	bne	$t3, $v0, lbl_0010320C
	addiu	$t4, $t4, 32
lbl_00103240:
	ldl	$v0, 7($t3)
	ldr	$v0, 0($t3)
	sdl	$v0, 7($t4)
	sdr	$v0, 0($t4)
	jr	$ra
	li	$v0, 1
	addiu	$sp, $sp, -48
	lui	$a0, 0x13
	sd	$s3, 24($sp)
	lui	$s3, 0x13
	addiu	$a0, $a0, 14624
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_00102CF8
	move	$s0, $zero
	jal	sub_00102CF8
	addiu	$a0, $s3, 14696
	lw	$v1, -32104($gp)
	blez	$v1, lbl_001032D0
	addiu	$a0, $s3, 14696
	lui	$v0, 0x14
	lui	$s2, 0x13
	addiu	$s1, $v0, -26480
	move	$a1, $s0
lbl_001032A8:
	addiu	$s0, $s0, 1
	move	$a2, $s1
	addiu	$s1, $s1, 16
	jal	sub_00102CF8
	addiu	$a0, $s2, 14768
	lw	$v1, -32104($gp)
	slt	$v1, $s0, $v1
	bnez	$v1, lbl_001032A8
	move	$a1, $s0
	addiu	$a0, $s3, 14696
lbl_001032D0:
	ld	$s3, 24($sp)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 32($sp)
	j	sub_00102CF8
	addiu	$sp, $sp, 48
	nop

sub_001032F0:
	jr	$ra
	nop

sub_001032F8:
	jr	$ra
	nop
	addiu	$sp, $sp, -16
	lui	$a1, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	addiu	$a1, $a1, 27776
	sd	$ra, 8($sp)
	jal	sub_00126140
	li	$a2, 6
	addiu	$s0, $s0, 6
	ld	$ra, 8($sp)
	movn	$s0, $zero, $v0
	move	$v0, $s0
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00103340:
	addiu	$sp, $sp, -32
	lw	$a2, -32104($gp)
	sd	$s1, 8($sp)
	move	$s1, $a0
	lui	$a0, 0x13
	move	$a1, $s1
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00102CF8
	addiu	$a0, $a0, 14464
	addiu	$v1, $gp, -32104
	move	$a0, $s1
	lw	$v0, 0($v1)
	sll	$s0, $v0, 0x4
	addiu	$v0, $v0, 1
	lui	$at, 0x14
	addiu	$at, $at, -26480
	addu	$s0, $at, $s0
	jal	sub_00126004
	sw	$v0, 0($v1)
	move	$a0, $s0
	move	$a1, $s1
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	move	$a2, $v0
	ld	$ra, 16($sp)
	j	sub_001262F8
	addiu	$sp, $sp, 32

sub_001033B0:
	addiu	$sp, $sp, -64
	move	$a0, $zero
	sd	$s0, 0($sp)
	sd	$s3, 24($sp)
	lui	$s3, 0x13
	sd	$s4, 32($sp)
	lui	$s4, 0x13
	sd	$s5, 40($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$ra, 48($sp)
	jal	sub_001088F8
	lui	$s5, 0x13
	jal	sub_0010D5E8
	nop
	lui	$a1, 0x13
	li	$a0, -256
	jal	sub_00105250
	addiu	$a1, $a1, 15000
	lui	$a1, 0x13
	lui	$a2, 0x13
	lui	$a3, 0x13
	lui	$a0, 0x80ff
	addiu	$a2, $a2, 15032
	addiu	$a3, $a3, 15048
	addiu	$a1, $a1, 27832
	jal	sub_00105250
	ori	$a0, $a0, 0xc000
	lui	$a1, 0x13
	addiu	$a1, $a1, 27840
	jal	sub_00105298
	li	$a0, -256
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 15064
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	jal	sub_001173B0
	move	$a0, $zero
	jal	sub_00117B88
	li	$a0, 2
	lui	$a0, 0x80c0
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	addiu	$a1, $s5, 27816
	lui	$v0, 0x13
	lui	$a1, 0x13
	lui	$a0, 0xff
	addiu	$a1, $a1, 14824
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$s0, $v0, 15096
	lui	$a0, 0x40ff
	addiu	$a1, $s4, 27800
	ori	$a0, $a0, 0xff80
	jal	sub_00105250
	move	$a2, $s0
	lui	$a0, 0xff
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	addiu	$a1, $s3, 27808
	nop
lbl_001034A8:
	jal	sub_0010EA68
	move	$a0, $s0
	beqz	$v0, lbl_001034A8
	nop
lbl_001034B8:
	jal	sub_0010EA18
	nop
	beqz	$v0, lbl_001034B8
	addiu	$s2, $s5, 27816
	lui	$a0, 0xff
	move	$a1, $s2
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	jal	sub_001088F8
	move	$a0, $zero
	jal	sub_0010DCC8
	lui	$s1, 0x13
	jal	sub_0010A458
	nop
	jal	sub_001173B0
	move	$a0, $zero
	jal	sub_00117B88
	li	$a0, 2
	jal	sub_00104858
	nop
	jal	sub_0010DCC8
	nop
	jal	sub_0010A458
	nop
	jal	sub_00114240
	li	$a0, 1
	lui	$v1, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $s1, 14848
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$s0, $v1, 15120
	lui	$a0, 0x80c0
	move	$a2, $s0
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$a1, $s4, 27800
	lui	$a0, 0x4080
	addiu	$a1, $s3, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_0010E538
	move	$a2, $zero
	bgezl	$v0, lbl_00103598
	lui	$a0, 0x4080
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a3, $v0
	addiu	$a1, $a1, 14864
	move	$a2, $s0
	jal	sub_00105298
	ori	$a0, $a0, 0x4000
	b	lbl_001035A8
	li	$v0, -1
lbl_00103598:
	move	$a1, $s2
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$v0, $zero
lbl_001035A8:
	bgezl	$v0, lbl_001035D0
	lui	$a0, 0x13
lbl_001035B0:
	nop
	nop
	nop
	nop
	nop
	b	lbl_001035B0
	nop
	nop
lbl_001035D0:
	jal	sub_00103340
	addiu	$a0, $a0, 27848
	lui	$v0, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $s1, 14848
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$s0, $v0, 15152
	lui	$a0, 0x80c0
	move	$a2, $s0
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$a1, $s4, 27800
	lui	$a0, 0x4080
	addiu	$a1, $s3, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_0010E538
	move	$a2, $zero
	bgezl	$v0, lbl_00103650
	lui	$a0, 0x4080
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a3, $v0
	addiu	$a1, $a1, 14864
	move	$a2, $s0
	jal	sub_00105298
	ori	$a0, $a0, 0x4000
	b	lbl_00103660
	li	$v0, -1
lbl_00103650:
	addiu	$a1, $s5, 27816
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$v0, $zero
lbl_00103660:
	bgezl	$v0, lbl_00103688
	lui	$a0, 0x13
lbl_00103668:
	nop
	nop
	nop
	nop
	nop
	b	lbl_00103668
	nop
	nop
lbl_00103688:
	jal	sub_00103340
	addiu	$a0, $a0, 27856
	lui	$v0, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $s1, 14848
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$s0, $v0, 15184
	lui	$a0, 0x80c0
	move	$a2, $s0
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$a1, $s4, 27800
	lui	$a0, 0x4080
	addiu	$a1, $s3, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_0010E538
	move	$a2, $zero
	bgezl	$v0, lbl_00103708
	lui	$a0, 0x4080
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a3, $v0
	addiu	$a1, $a1, 14864
	move	$a2, $s0
	jal	sub_00105298
	ori	$a0, $a0, 0x4000
	b	lbl_00103718
	li	$v0, -1
lbl_00103708:
	addiu	$a1, $s5, 27816
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$v0, $zero
lbl_00103718:
	bgezl	$v0, lbl_00103740
	lui	$a0, 0x13
lbl_00103720:
	nop
	nop
	nop
	nop
	nop
	b	lbl_00103720
	nop
	nop
lbl_00103740:
	jal	sub_00103340
	addiu	$a0, $a0, 27864
	lui	$v0, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $s1, 14848
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	addiu	$s0, $v0, 15216
	lui	$a0, 0x80c0
	move	$a2, $s0
	addiu	$a1, $s4, 27800
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a0, 0x4080
	addiu	$a1, $s3, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_0010E538
	move	$a2, $zero
	bgezl	$v0, lbl_001037C0
	lui	$a0, 0x4080
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a3, $v0
	addiu	$a1, $a1, 14864
	move	$a2, $s0
	jal	sub_00105298
	ori	$a0, $a0, 0x4000
	b	lbl_001037D0
	li	$v0, -1
lbl_001037C0:
	addiu	$a1, $s5, 27816
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$v0, $zero
lbl_001037D0:
	bgezl	$v0, lbl_001037F8
	lui	$a0, 0x13
lbl_001037D8:
	nop
	nop
	nop
	nop
	nop
	b	lbl_001037D8
	nop
	nop
lbl_001037F8:
	jal	sub_00103340
	addiu	$a0, $a0, 27872
	jal	sub_0010DCC8
	nop
	jal	sub_0010A458
	nop
	jal	sub_00114240
	li	$a0, 1
	jal	sub_00115388
	nop
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$ra, 48($sp)
	j	lbl_001046F0
	addiu	$sp, $sp, 64
	nop

sub_00103848:
	addiu	$sp, $sp, -64
	li	$a0, 1
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	move	$s2, $zero
	sd	$s3, 24($sp)
	lui	$s3, 0x14
	sd	$s4, 32($sp)
	lui	$s4, 0x13
	sd	$s5, 40($sp)
	lui	$s5, 0x13
	sd	$s6, 48($sp)
	sd	$ra, 56($sp)
	jal	sub_001246A8
	addiu	$s1, $s3, -25440
	move	$s0, $v0
	move	$s6, $s1
	jal	sub_00124700
	move	$a0, $s0
	lui	$a1, 0x13
	move	$a2, $gp
	addiu	$a1, $a1, 15248
	jal	sub_00105298
	li	$a0, -256
	lui	$a1, 0x13
	move	$a2, $sp
	addiu	$a1, $a1, 15264
	jal	sub_00105298
	li	$a0, -256
	lui	$a1, 0x13
	addiu	$a1, $a1, 15280
	move	$a2, $s0
	jal	sub_00105298
	li	$a0, -256
	lui	$a1, 0x13
	addiu	$a1, $a1, 15296
	lui	$a2, 0x16
	addiu	$a2, $a2, 20456
	jal	sub_00105298
	li	$a0, -256
	lui	$a1, 0x13
	lw	$a2, -32096($gp)
	addiu	$a1, $a1, 15312
	jal	sub_00105298
	li	$a0, -256
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 40
	sw	$zero, -32004($gp)
	lw	$a0, -32096($gp)
lbl_00103918:
	move	$s0, $s6
	jal	sub_00101A30
	li	$s1, 9
	addiu	$a0, $s5, 15392
	jal	sub_00101D90
	li	$a1, 2
	jal	sub_00106800
	sw	$v0, -32092($gp)
	lw	$v0, 0($s0)
	nop
lbl_00103940:
	beqz	$v0, lbl_00103950
	addiu	$s0, $s0, 4
	jalr	$v0
	nop
lbl_00103950:
	addiu	$s1, $s1, -1
	bgezl	$s1, lbl_00103940
	lw	$v0, 0($s0)
	li	$a2, 40
	addiu	$a0, $s3, -25440
	move	$a1, $zero
	jal	sub_00125310
	addiu	$s2, $s2, 1
	jal	sub_00102608
	sw	$zero, -32004($gp)
	lw	$a0, -31996($gp)
	jal	sub_00106770
	li	$a1, 1
	jal	sub_00102438
	nop
	jal	sub_00102B68
	nop
	jal	sub_00102500
	nop
	jal	sub_00102C90
	nop
	jal	sub_001055E8
	nop
	li	$a0, -256
	addiu	$a1, $s4, 15416
	jal	sub_00105298
	move	$a2, $s2
	b	lbl_00103918
	lw	$a0, -32096($gp)
	nop

sub_001039C8:
	addiu	$sp, $sp, -48
	sd	$s1, 8($sp)
	move	$s1, $zero
	sd	$s2, 16($sp)
	move	$s2, $a0
	sd	$s4, 32($sp)
	sd	$s0, 0($sp)
	sd	$s3, 24($sp)
	sd	$ra, 40($sp)
	jal	sub_00122178
	move	$s4, $a1
	lui	$a0, 0x13
	move	$a1, $s2
	jal	sub_00125500
	addiu	$a0, $a0, 15432
	blez	$s2, lbl_00103A38
	move	$s0, $s4
	lui	$s3, 0x13
	lw	$a2, 0($s0)
	nop
lbl_00103A18:
	addiu	$s0, $s0, 4
	move	$a1, $s1
	addiu	$s1, $s1, 1
	jal	sub_00125500
	addiu	$a0, $s3, 15456
	slt	$v1, $s1, $s2
	bnezl	$v1, lbl_00103A18
	lw	$a2, 0($s0)
lbl_00103A38:
	beqz	$s2, lbl_00103A60
	lui	$s0, 0x14
	lw	$a1, 0($s4)
	addiu	$s0, $s0, -25456
	li	$a2, 16
	jal	sub_001262F8
	move	$a0, $s0
	b	lbl_00103A68
	sb	$zero, 15($s0)
	nop
lbl_00103A60:
	lui	$v0, 0x14
	sb	$zero, -25456($v0)
lbl_00103A68:
	jal	sub_001067D0
	nop
	jal	sub_00105DA0
	sw	$v0, -31996($gp)
	lui	$a1, 0x7ff
	lui	$a0, 0x200
	jal	sub_00103F10
	ori	$a1, $a1, 0xff00
	jal	sub_001033B0
	nop
	lui	$v0, 0x16
	nop
	addiu	$v0, $v0, 20456
	nop
	lui	$v1, 0x4
	nop
	addiu	$v1, $v1, 0
	nop
	addu	$v0, $v0, $v1
	li	$a0, -16
	addiu	$v0, $v0, 15
	and	$v0, $v0, $a0
	jal	sub_001020C0
	sw	$v0, -32096($gp)
	jal	sub_001029C8
	nop
	jal	sub_00102A40
	nop
	jal	sub_00102A00
	nop
	jal	sub_00102C58
	nop
	lw	$a0, -31996($gp)
	jal	sub_00106770
	li	$a1, 1
	lui	$a1, 0x13
	addiu	$a1, $a1, 15480
	jal	sub_00105298
	li	$a0, -256
	jal	sub_00103848
	sw	$sp, -32000($gp)
	ld	$s0, 0($sp)
	move	$v0, $zero
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v0, 0x14
	jr	$ra
	addiu	$v0, $v0, -25456
	nop

sub_00103B40:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	lui	$a0, 0x4080
	sd	$s2, 16($sp)
	ori	$a0, $a0, 0xff00
	move	$s2, $a1
	addiu	$a1, $v0, 14848
	sd	$s1, 8($sp)
	sd	$ra, 24($sp)
	jal	sub_00105250
	move	$s1, $a2
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	move	$a2, $s0
	addiu	$a1, $a1, 27800
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a1, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $a1, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$a0, $s0
	move	$a1, $s2
	jal	sub_0010E538
	move	$a2, $s1
	lui	$a1, 0x13
	lui	$a0, 0xff80
	addiu	$a1, $a1, 14864
	move	$a2, $s0
	move	$a3, $v0
	bgez	$v0, lbl_00103BE0
	ori	$a0, $a0, 0x4000
	jal	sub_00105298
	nop
	b	lbl_00103BF8
	li	$v0, -1
	nop
lbl_00103BE0:
	lui	$a0, 0x4080
	lui	$a1, 0x13
	addiu	$a1, $a1, 27816
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	move	$v0, $zero
lbl_00103BF8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00103C10:
	addiu	$sp, $sp, -48
	lui	$a1, 0x13
	sd	$s2, 32($sp)
	move	$s2, $a0
	lui	$a0, 0x4080
	addiu	$a1, $a1, 14920
	ori	$a0, $a0, 0xff00
	sd	$s0, 16($sp)
	sd	$s1, 24($sp)
	sd	$ra, 40($sp)
	jal	sub_00105250
	move	$s0, $a3
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	move	$a2, $s2
	addiu	$a1, $a1, 27800
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a1, 0x13
	lui	$a0, 0x4080
	addiu	$a1, $a1, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	jal	sub_0010E1A0
	move	$a0, $s2
	lui	$a2, 0x13
	move	$s1, $v0
	move	$a3, $sp
	addiu	$a2, $a2, 27824
	movn	$a3, $s0, $s0
	move	$a0, $s1
	bltz	$s1, lbl_00103CB8
	li	$a1, 1
	jal	sub_0010DF08
	nop
	move	$s0, $v0
	bltz	$s0, lbl_00103CC4
	move	$a0, $s1
	jal	sub_0010E110
	nop
	b	lbl_00103CBC
	move	$s0, $v0
lbl_00103CB8:
	move	$s0, $s1
lbl_00103CBC:
	bgezl	$s0, lbl_00103CE8
	lui	$a1, 0x13
lbl_00103CC4:
	lui	$a1, 0x13
	lui	$a0, 0xff80
	move	$a2, $s2
	move	$a3, $s0
	ori	$a0, $a0, 0x4000
	jal	sub_00105298
	addiu	$a1, $a1, 14936
	b	lbl_00103CFC
	li	$v0, -1
lbl_00103CE8:
	lui	$a0, 0x4080
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	addiu	$a1, $a1, 27816
	move	$v0, $s0
lbl_00103CFC:
	ld	$s0, 16($sp)
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	jr	$ra
	nop
	addiu	$sp, $sp, -16
	lui	$a1, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	lui	$a0, 0xff
	addiu	$a1, $a1, 14824
	sd	$ra, 8($sp)
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a1, 0x13
	lui	$a0, 0x40ff
	addiu	$a1, $a1, 27800
	ori	$a0, $a0, 0xff80
	jal	sub_00105250
	move	$a2, $s0
	lui	$a1, 0x13
	lui	$a0, 0xff
	addiu	$a1, $a1, 27808
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
lbl_00103D70:
	jal	sub_0010EA68
	move	$a0, $s0
	beqz	$v0, lbl_00103D70
	nop
lbl_00103D80:
	jal	sub_0010EA18
	nop
	beqz	$v0, lbl_00103D80
	lui	$a1, 0x13
	lui	$a0, 0xff
	ld	$s0, 0($sp)
	addiu	$a1, $a1, 27816
	ld	$ra, 8($sp)
	ori	$a0, $a0, 0xff00
	j	sub_00105298
	addiu	$sp, $sp, 16
	nop

sub_00103DB0:
	addiu	$sp, $sp, -32
	sd	$s2, 16($sp)
	lui	$s2, 0x14
	sd	$ra, 24($sp)
	sd	$s0, 0($sp)
	addiu	$s0, $s2, -25440
	sd	$s1, 8($sp)
	li	$s1, 9
	lw	$v0, 0($s0)
	nop
lbl_00103DD8:
	beqz	$v0, lbl_00103DE8
	addiu	$s0, $s0, 4
	jalr	$v0
	nop
lbl_00103DE8:
	addiu	$s1, $s1, -1
	bgezl	$s1, lbl_00103DD8
	lw	$v0, 0($s0)
	addiu	$a0, $s2, -25440
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 40
	sw	$zero, -32004($gp)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	lw	$v1, -32004($gp)
	addiu	$sp, $sp, -16
	li	$v0, 10
	sd	$s0, 0($sp)
	sd	$ra, 8($sp)
	bne	$v1, $v0, lbl_00103E4C
	move	$s0, $a0
	lui	$a0, 0x13
	jal	sub_00102CF8
	addiu	$a0, $a0, 15344
	sw	$zero, -32004($gp)
lbl_00103E4C:
	addiu	$v0, $gp, -32004
	ld	$ra, 8($sp)
	lw	$v1, 0($v0)
	sll	$a0, $v1, 0x2
	addiu	$v1, $v1, 1
	lui	$at, 0x14
	addu	$at, $at, $a0
	sw	$s0, -25440($at)
	ld	$s0, 0($sp)
	sw	$v1, 0($v0)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -96
	swc1	$f19, 36($sp)
	sd	$a1, 40($sp)
	sd	$a2, 48($sp)
	sd	$a3, 56($sp)
	sd	$t0, 64($sp)
	sd	$t1, 72($sp)
	sd	$t2, 80($sp)
	sd	$t3, 88($sp)
	swc1	$f12, 8($sp)
	swc1	$f13, 12($sp)
	swc1	$f14, 16($sp)
	swc1	$f15, 20($sp)
	swc1	$f16, 24($sp)
	swc1	$f17, 28($sp)
	swc1	$f18, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	addiu	$sp, $sp, -96
	swc1	$f19, 36($sp)
	sd	$a1, 40($sp)
	sd	$a2, 48($sp)
	sd	$a3, 56($sp)
	sd	$t0, 64($sp)
	sd	$t1, 72($sp)
	sd	$t2, 80($sp)
	sd	$t3, 88($sp)
	swc1	$f12, 8($sp)
	swc1	$f13, 12($sp)
	swc1	$f14, 16($sp)
	swc1	$f15, 20($sp)
	swc1	$f16, 24($sp)
	swc1	$f17, 28($sp)
	swc1	$f18, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_00103F10:
	jr	$ra
	nop

sub_00103F18:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $zero
	sd	$ra, 8($sp)
	jal	sub_00103B40
	addiu	$a0, $v0, 15520
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27896
	lui	$a0, 0x13
	lui	$a2, 0x13
	addiu	$a0, $a0, 15552
	addiu	$a2, $a2, 15584
	jal	sub_00103B40
	li	$a1, 70
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27904
	lui	$a0, 0x13
	lui	$a2, 0x13
	addiu	$a0, $a0, 15656
	addiu	$a2, $a2, 15688
	jal	sub_00103B40
	li	$a1, 20
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27912
	sltiu	$v0, $s0, 6
	beqz	$v0, lbl_001040AC
	li	$v0, 2
	sll	$v0, $s0, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 16048($v1)
	jr	$v1
	nop
	nop
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15712
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27920
	lui	$a0, 0x13
	addiu	$a0, $a0, 15744
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27928
	b	lbl_001040AC
	li	$v0, 2
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15712
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27920
	b	lbl_001040AC
	li	$v0, 2
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15776
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27936
	lui	$a0, 0x13
	addiu	$a0, $a0, 15808
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27944
	li	$v0, 2
lbl_001040AC:
	beq	$s0, $v0, lbl_001040E8
	slti	$v0, $s0, 3
	beqzl	$v0, lbl_001040D0
	li	$v0, 4
	beqz	$s0, lbl_001041A0
	lui	$a0, 0x13
	b	lbl_00104220
	move	$a1, $zero
	nop
lbl_001040D0:
	beq	$s0, $v0, lbl_001040E8
	li	$v0, 5
	beq	$s0, $v0, lbl_00104140
	lui	$a0, 0x13
	b	lbl_00104220
	move	$a1, $zero
lbl_001040E8:
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15840
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27952
	lui	$a0, 0x13
	addiu	$a0, $a0, 15872
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27960
	b	lbl_0010421C
	lui	$a0, 0x13
lbl_00104140:
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15840
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27952
	lui	$a0, 0x13
	lui	$v0, 0x13
	addiu	$a0, $a0, 15904
	addiu	$s0, $v0, 27968
	li	$a1, 1
	jal	sub_00103B40
	move	$a2, $s0
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	jal	sub_00103340
	move	$a0, $s0
	b	lbl_0010421C
	lui	$a0, 0x13
	nop
lbl_001041A0:
	lui	$a0, 0x13
	move	$a1, $zero
	addiu	$a0, $a0, 15712
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 15744
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 15776
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 15808
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 15840
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 15872
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
lbl_0010421C:
	move	$a1, $zero
lbl_00104220:
	addiu	$a0, $a0, 15928
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27976
	lui	$a0, 0x13
	addiu	$a0, $a0, 15960
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	bltzl	$v0, lbl_0010429C
	li	$v0, -1
	lui	$a0, 0x13
	jal	sub_00103340
	addiu	$a0, $a0, 27984
	lui	$a0, 0x13
	addiu	$a0, $a0, 15992
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	bgezl	$v0, lbl_00104290
	lui	$a0, 0x13
	b	lbl_0010429C
	li	$v0, -1
	nop
lbl_00104290:
	jal	sub_00103340
	addiu	$a0, $a0, 16024
	move	$v0, $zero
lbl_0010429C:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_001042B0:
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$sp, $sp, -32
	addiu	$a1, $a1, 27992
	ori	$a0, $a0, 0xff00
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_00105298
	move	$s1, $zero
	b	lbl_001042F0
	move	$s0, $zero
lbl_001042E0:
	jal	sub_001054D0
	nop
	jal	sub_00105C18
	nop
lbl_001042F0:
	move	$v0, $s1
	slti	$v0, $v0, 30
	beqz	$v0, lbl_00104314
	addiu	$s1, $s1, 1
	jal	sub_00104790
	nop
	move	$s0, $v0
	beqz	$s0, lbl_001042E0
	nop
lbl_00104314:
	li	$v0, 64
	beq	$s0, $v0, lbl_001043D8
	slti	$v0, $s0, 65
	beqz	$v0, lbl_00104348
	li	$v0, 128
	li	$v0, 16
	beq	$s0, $v0, lbl_00104398
	li	$v0, 32
	beq	$s0, $v0, lbl_00104378
	lui	$a1, 0x13
	b	lbl_001043F8
	nop
	nop
lbl_00104348:
	beq	$s0, $v0, lbl_001043B8
	li	$v0, 2048
	bne	$s0, $v0, lbl_001043F8
	lui	$a1, 0x13
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16152
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	li	$s0, 3
	b	lbl_00104410
	move	$v0, $s0
lbl_00104378:
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16176
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	li	$s0, 1
	b	lbl_00104410
	move	$v0, $s0
lbl_00104398:
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16200
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	li	$s0, 2
	b	lbl_00104410
	move	$v0, $s0
lbl_001043B8:
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16240
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	li	$s0, 4
	b	lbl_00104410
	move	$v0, $s0
lbl_001043D8:
	lui	$a1, 0x13
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16280
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	li	$s0, 5
	b	lbl_00104410
	move	$v0, $s0
lbl_001043F8:
	lui	$a0, 0x80c0
	addiu	$a1, $a1, 16296
	ori	$a0, $a0, 0xff00
	jal	sub_00105298
	move	$s0, $zero
	move	$v0, $s0
lbl_00104410:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	lw	$v0, -31892($gp)
	addiu	$sp, $sp, -288
	sd	$s0, 256($sp)
	sd	$s1, 264($sp)
	sd	$s2, 272($sp)
	bnez	$v0, lbl_00104594
	sd	$ra, 280($sp)
	jal	sub_001042B0
	nop
	jal	sub_00103F18
	move	$a0, $v0
	jal	sub_00117C80
	move	$a0, $zero
	lui	$a0, 0x13
	addiu	$a0, $a0, 16320
	move	$a1, $zero
	jal	sub_00103B40
	move	$a2, $zero
	lui	$a0, 0x13
	move	$a2, $zero
	addiu	$a0, $a0, 16352
	jal	sub_00103B40
	move	$a1, $zero
	lui	$a1, 0x13
	addiu	$a1, $a1, 16384
	jal	sub_00105250
	li	$a0, -256
	lui	$a1, 0x13
	addiu	$a1, $a1, 28000
	jal	sub_00105250
	li	$a0, -256
	lui	$a0, 0x13
	addiu	$a0, $a0, 28008
	move	$a1, $zero
	move	$a2, $zero
	jal	sub_00103C10
	move	$a3, $zero
	lui	$a0, 0x13
	move	$a2, $zero
	move	$a3, $zero
	addiu	$a0, $a0, 28016
	jal	sub_00103C10
	move	$a1, $zero
	lui	$v1, 0x13
	addiu	$s2, $v1, 28024
	li	$a0, -256
	jal	sub_00105250
	move	$a1, $s2
	lui	$v0, 0x13
	addiu	$s1, $v0, 16504
	lui	$a0, 0xff
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	move	$a1, $s1
	lui	$a1, 0x13
	lb	$v0, 0($sp)
	lui	$a0, 0xff
	addiu	$a1, $a1, 16560
	beqz	$v0, lbl_00104540
	ori	$a0, $a0, 0xff00
	jal	sub_00105250
	lui	$s0, 0x13
	lui	$a0, 0x40ff
	move	$a2, $sp
	addiu	$a1, $s0, 28032
	jal	sub_00105250
	ori	$a0, $a0, 0x8000
	b	lbl_00104548
	lui	$a1, 0x13
	nop
lbl_00104540:
	lui	$s0, 0x13
	lui	$a1, 0x13
lbl_00104548:
	lui	$a0, 0xff
	addiu	$a1, $a1, 16576
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a0, 0x40ff
	addiu	$a2, $sp, 128
	addiu	$a1, $s0, 28032
	jal	sub_00105250
	ori	$a0, $a0, 0x8000
	lui	$a0, 0xff
	move	$a1, $s1
	jal	sub_00105250
	ori	$a0, $a0, 0xff00
	lui	$a0, 0xff
	move	$a1, $s2
	jal	sub_00105298
	ori	$a0, $a0, 0xff00
	li	$v0, 1
	sw	$v0, -31892($gp)
lbl_00104594:
	lui	$v0, 0x14
	addiu	$v0, $v0, -25344
	ld	$s0, 256($sp)
	ld	$s1, 264($sp)
	ld	$s2, 272($sp)
	ld	$ra, 280($sp)
	jr	$ra
	addiu	$sp, $sp, 288
	nop
	addiu	$sp, $sp, -64
	lui	$v0, 0x14
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 48($sp)
	sd	$s2, 16($sp)
	li	$s2, 127
	sd	$s3, 24($sp)
	li	$s3, 1
	sd	$s4, 32($sp)
	move	$s4, $zero
	sd	$s5, 40($sp)
	addiu	$s5, $v0, -23232
	addu	$s1, $s4, $s5
lbl_001045F0:
	addiu	$s4, $s4, 320
	jal	sub_00114CB8
	lw	$a0, 284($s1)
	move	$v1, $v0
	li	$v0, 1
	bne	$v1, $v0, lbl_001046A0
	sw	$v1, 280($s1)
	lw	$v0, 288($s1)
	beqzl	$v0, lbl_00104628
	lw	$a0, 284($s1)
	beq	$v0, $v1, lbl_00104658
	addiu	$s0, $s1, 260
	b	lbl_001046C0
	addiu	$s3, $s3, -1
lbl_00104628:
	jal	sub_00114BE8
	addiu	$a1, $s1, 256
	sb	$zero, 261($s1)
	lw	$v0, 288($s1)
	sb	$zero, 260($s1)
	addiu	$v0, $v0, 1
	sb	$s2, 265($s1)
	sw	$v0, 288($s1)
	sb	$s2, 264($s1)
	sb	$s2, 263($s1)
	b	lbl_001046BC
	sb	$s2, 262($s1)
lbl_00104658:
	lw	$a0, 284($s1)
	jal	sub_00114B10
	move	$a1, $s0
	lbu	$v1, 0($s0)
	lbu	$v0, 256($s1)
	nor	$v1, $zero, $v1
	and	$v0, $v0, $v1
	sb	$v0, 0($s0)
	lbu	$v1, 261($s1)
	lbu	$v0, 257($s1)
	nor	$v1, $zero, $v1
	lbu	$a0, 258($s1)
	and	$v0, $v0, $v1
	bnez	$a0, lbl_001046BC
	sb	$v0, 261($s1)
	b	lbl_001046B0
	sb	$s2, 262($s1)
	nop
lbl_001046A0:
	sb	$s2, 262($s1)
	sw	$zero, 288($s1)
	sb	$zero, 261($s1)
	sb	$zero, 260($s1)
lbl_001046B0:
	sb	$s2, 265($s1)
	sb	$s2, 264($s1)
	sb	$s2, 263($s1)
lbl_001046BC:
	addiu	$s3, $s3, -1
lbl_001046C0:
	bgez	$s3, lbl_001045F0
	addu	$s1, $s4, $s5
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$ra, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
lbl_001046F0:
	addiu	$sp, $sp, -64
	move	$a0, $zero
	sd	$s0, 32($sp)
	sd	$s1, 40($sp)
	move	$s1, $zero
	sd	$s2, 48($sp)
	sd	$ra, 56($sp)
	jal	sub_00114908
	li	$s2, 2
	lui	$v1, 0x14
	addiu	$s0, $v1, -23232
	nop
lbl_00104720:
	sltu	$v0, $zero, $s1
	addiu	$s1, $s1, 1
	move	$a1, $s0
	move	$a0, $sp
	sw	$v0, 4($sp)
	sw	$s2, 0($sp)
	jal	sub_001149B0
	sw	$zero, 8($sp)
	slti	$v1, $s1, 2
	sw	$v0, 284($s0)
	sw	$zero, 288($s0)
	bnez	$v1, lbl_00104720
	addiu	$s0, $s0, 320
	ld	$s0, 32($sp)
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	sll	$v0, $a0, 0x2
	addu	$v0, $v0, $a0
	sll	$v0, $v0, 0x6
	lui	$at, 0x14
	addiu	$at, $at, -23232
	addu	$v0, $at, $v0
	jr	$ra
	nop

sub_00104790:
	addiu	$sp, $sp, -32
	lui	$v0, 0x14
	sd	$s0, 0($sp)
	addiu	$s0, $v0, -23232
	sd	$s1, 8($sp)
	addiu	$s1, $s0, 260
	lw	$a0, 284($s0)
	sd	$ra, 16($sp)
	jal	sub_00114B10
	move	$a1, $s1
	bgezl	$v0, lbl_001047C8
	lbu	$v0, 0($s1)
	b	lbl_001047D8
	move	$v0, $zero
lbl_001047C8:
	lbu	$v1, 261($s0)
	sll	$v0, $v0, 0x8
	or	$v0, $v0, $v1
	xori	$v0, $v0, 0xffff
lbl_001047D8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -48
	move	$v0, $a1
	sd	$ra, 32($sp)
	li	$t1, 3
	li	$a1, 1
	addiu	$a2, $sp, 16
	lbu	$t0, 1($v0)
	li	$a3, 2
	lbu	$v1, 0($v0)
	andi	$v0, $t0, 0x7f
	andi	$t0, $t0, 0x80
	sll	$v0, $v0, 0x1
	andi	$v1, $v1, 0x1
	or	$v1, $v1, $v0
	srl	$t0, $t0, 0x7
	sb	$t0, 1($sp)
	move	$t0, $sp
	sb	$v1, 0($sp)
	sb	$t1, 16($sp)
	jal	sub_00115240
	lw	$a0, 284($a0)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	jr	$ra
	sw	$a0, -31804($gp)

sub_00104858:
	addiu	$sp, $sp, -96
	sd	$s0, 80($sp)
	li	$s0, 1
	move	$a0, $sp
	sd	$ra, 88($sp)
	sw	$s0, 4($sp)
	sw	$zero, 8($sp)
	jal	sub_001068E0
	sw	$zero, 20($sp)
	lui	$a2, 0x10
	lui	$a3, 0x14
	addiu	$a2, $a2, 18664
	addiu	$a3, $a3, -22592
	addiu	$a0, $sp, 32
	li	$v1, 4096
	lui	$a1, 0x14
	addiu	$a1, $a1, -5648
	sw	$s0, 52($sp)
	sw	$a1, 48($sp)
	sw	$v1, 44($sp)
	sw	$a2, 36($sp)
	sw	$a3, 40($sp)
	jal	sub_001066E0
	sw	$v0, -31808($gp)
	move	$a0, $v0
	jal	sub_001073D0
	move	$a1, $zero
	lui	$a0, 0x10
	addiu	$a0, $a0, 18840
	jal	sub_00116A38
	move	$a1, $zero
	ld	$s0, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	addiu	$sp, $sp, -48
	sd	$ra, 40($sp)
	sd	$s0, 16($sp)
	lui	$s0, 0x13
	sd	$s1, 24($sp)
	lui	$s1, 0x13
	sd	$s2, 32($sp)
	lui	$s2, 0x13
lbl_00104908:
	jal	sub_00106920
	lw	$a0, -31808($gp)
	lw	$v0, -31804($gp)
	beqzl	$v0, lbl_00104928
	lui	$a0, 0x4080
	jalr	$v0
	nop
	lui	$a0, 0x4080
lbl_00104928:
	addiu	$a1, $s2, 16616
	jal	sub_00105298
	ori	$a0, $a0, 0xff80
	addiu	$a0, $s1, 28088
	li	$a1, 20483
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_0010CF68
	move	$t1, $zero
	addiu	$a0, $s0, 28096
	nop
lbl_00104958:
	li	$a1, 17410
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_0010CF68
	move	$t1, $zero
	bltzl	$v0, lbl_00104958
	addiu	$a0, $s0, 28096
lbl_00104978:
	jal	sub_00117AD0
	move	$a0, $sp
	beqz	$v0, lbl_00104978
	lw	$v0, 0($sp)
	bnez	$v0, lbl_00104978
	nop
	b	lbl_00104908
	nop
	addiu	$sp, $sp, -16
	lw	$a0, -31808($gp)
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	sub_00106910
	addiu	$sp, $sp, 16

sub_001049B0:
	addiu	$sp, $sp, -96
	sd	$s1, 24($sp)
	sd	$s2, 32($sp)
	sd	$s0, 16($sp)
	sd	$s3, 40($sp)
	sd	$s4, 48($sp)
	sd	$s5, 56($sp)
	sd	$s6, 64($sp)
	sd	$s7, 72($sp)
	sd	$ra, 80($sp)
	jal	sub_00126004
	move	$s2, $a0
	move	$s1, $v0
	blez	$s1, lbl_00104B30
	lui	$s5, 0x14
	lui	$s3, 0x14
	lui	$s7, 0x14
	lui	$s6, 0x10
	addiu	$s4, $s3, -18432
	nop
lbl_00104A00:
	slti	$v0, $s1, 64
	beqz	$v0, lbl_00104A28
	li	$s0, 64
	move	$a0, $s4
	jal	sub_00125EF0
	move	$a1, $s2
	sw	$zero, 252($s4)
	b	lbl_00104AAC
	move	$s0, $s1
	nop
lbl_00104A28:
	addiu	$a1, $s3, -18432
	ldl	$v0, 7($s2)
	ldr	$v0, 0($s2)
	ldl	$v1, 15($s2)
	ldr	$v1, 8($s2)
	ldl	$a0, 23($s2)
	ldr	$a0, 16($s2)
	sdl	$v0, 7($a1)
	sdr	$v0, 0($a1)
	sdl	$v1, 15($a1)
	sdr	$v1, 8($a1)
	sdl	$a0, 23($a1)
	sdr	$a0, 16($a1)
	ldl	$v0, 31($s2)
	ldr	$v0, 24($s2)
	ldl	$v1, 39($s2)
	ldr	$v1, 32($s2)
	ldl	$a0, 47($s2)
	ldr	$a0, 40($s2)
	sdl	$v0, 31($a1)
	sdr	$v0, 24($a1)
	sdl	$v1, 39($a1)
	sdr	$v1, 32($a1)
	sdl	$a0, 47($a1)
	sdr	$a0, 40($a1)
	ldl	$v0, 55($s2)
	ldr	$v0, 48($s2)
	ldl	$v1, 63($s2)
	ldr	$v1, 56($s2)
	sdl	$v0, 55($a1)
	sdr	$v0, 48($a1)
	sdl	$v1, 63($a1)
	sdr	$v1, 56($a1)
lbl_00104AAC:
	blez	$s0, lbl_00104AE4
	addiu	$a0, $s3, -18432
	li	$a2, 10
	li	$a1, 13
	move	$v1, $s0
lbl_00104AC0:
	lb	$v0, 0($a0)
	beql	$v0, $a2, lbl_00104ACC
	sb	$a1, 0($a0)
lbl_00104ACC:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	bnez	$v1, lbl_00104AC0
	addiu	$a0, $a0, 1
lbl_00104AE4:
	jal	sub_00106920
	lw	$a0, -31596($gp)
	addiu	$a0, $s7, -18496
	li	$a1, 16
	move	$a2, $zero
	addiu	$a3, $s3, -18432
	li	$t0, 64
	addiu	$t1, $s5, -18368
	li	$t2, 32
	addiu	$t3, $s6, 19688
	jal	sub_00109280
	sw	$zero, 0($sp)
	bnezl	$v0, lbl_00104B38
	ld	$s0, 16($sp)
	subu	$s1, $s1, $s0
	bgtz	$s1, lbl_00104A00
	addu	$s2, $s2, $s0
	b	lbl_00104B34
	lw	$v0, -18368($s5)
lbl_00104B30:
	lw	$v0, -18368($s5)
lbl_00104B34:
	ld	$s0, 16($sp)
lbl_00104B38:
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$ra, 80($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	addiu	$sp, $sp, -368
	move	$v0, $a0
	sd	$a1, 312($sp)
	move	$a1, $v0
	move	$a0, $sp
	sd	$a2, 320($sp)
	addiu	$a2, $sp, 312
	sd	$ra, 256($sp)
	sd	$a3, 328($sp)
	sd	$t0, 336($sp)
	sd	$t1, 344($sp)
	sd	$t2, 352($sp)
	sd	$t3, 360($sp)
	swc1	$f12, 280($sp)
	swc1	$f13, 284($sp)
	swc1	$f14, 288($sp)
	swc1	$f15, 292($sp)
	swc1	$f16, 296($sp)
	swc1	$f17, 300($sp)
	swc1	$f18, 304($sp)
	jal	sub_00128F88
	swc1	$f19, 308($sp)
	jal	sub_001049B0
	move	$a0, $sp
	ld	$ra, 256($sp)
	jr	$ra
	addiu	$sp, $sp, 368
	nop
	addiu	$sp, $sp, -64
	li	$v0, 1
	move	$a0, $sp
	sd	$s0, 32($sp)
	sd	$s1, 40($sp)
	sd	$s2, 48($sp)
	sd	$ra, 56($sp)
	sw	$v0, 4($sp)
	jal	sub_001068E0
	sw	$v0, 8($sp)
	li	$v1, -1
	bne	$v0, $v1, lbl_00104C30
	sw	$v0, -31596($gp)
	lui	$a0, 0x13
	jal	sub_00125500
	addiu	$a0, $a0, 16648
lbl_00104C10:
	nop
	nop
	nop
	nop
	nop
	b	lbl_00104C10
	nop
	nop
lbl_00104C30:
	move	$a0, $zero
	jal	sub_001088F8
	lui	$s0, 0x14
	lui	$s2, 0x13
	addiu	$s1, $s0, -18496
	nop
lbl_00104C48:
	lui	$a1, 0x8000
	addiu	$a0, $s0, -18496
	ori	$a1, $a1, 0x220
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_00104C90
	lw	$v0, 36($s1)
	jal	sub_00125500
	addiu	$a0, $s2, 16672
	nop
lbl_00104C70:
	nop
	nop
	nop
	nop
	nop
	b	lbl_00104C70
	nop
	nop
lbl_00104C90:
	bnezl	$v0, lbl_00104CD0
	ld	$s0, 32($sp)
	li	$v1, -1
	li	$v0, 0xffff
	addiu	$v0, $v0, -4
	nop
lbl_00104CA8:
	nop
	nop
	nop
	nop
	nop
	bnel	$v0, $v1, lbl_00104CA8
	addiu	$v0, $v0, -4
	b	lbl_00104C48
	nop
	nop
lbl_00104CD0:
	move	$v0, $zero
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	lw	$a0, -31596($gp)
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106910
	nop
	sync
	ei
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_00104D10:
	lw	$v0, -31764($gp)
	addiu	$sp, $sp, -160
	sd	$s1, 88($sp)
	addiu	$s1, $sp, 32
	sd	$s6, 128($sp)
	lui	$s6, 0x7000
	sll	$v0, $v0, 0xd
	move	$v1, $a1
	sd	$s4, 112($sp)
	move	$s4, $a0
	or	$a1, $v0, $s6
	sll	$v1, $v1, 0x4
	move	$a0, $s1
	sd	$s0, 80($sp)
	sd	$s2, 96($sp)
	sll	$s4, $s4, 0x3
	sd	$s3, 104($sp)
	move	$s3, $a2
	sd	$s5, 120($sp)
	sll	$s3, $s3, 0x4
	sd	$s7, 136($sp)
	li	$s7, 0x8000
	dsll32	$s7, $s7, 0x8
	sd	$s8, 144($sp)
	move	$s8, $zero
	sw	$v1, 64($sp)
	lui	$at, 0x13
	addiu	$at, $at, 16688
	addu	$s4, $at, $s4
	sd	$ra, 152($sp)
	li	$at, 0x8000
	addu	$s3, $at, $s3
	lw	$s5, -31752($gp)
	lw	$s2, -31748($gp)
	jal	sub_00112978
	lw	$s0, -31744($gp)
	move	$a0, $s1
	jal	sub_00112988
	dsll	$s2, $s2, 0x8
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_001129F0
	dsll	$s0, $s0, 0x10
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_00112AA0
	or	$s0, $s0, $s2
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $s1
	addiu	$v0, $v0, 18736
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	move	$a0, $s1
	jal	sub_00112C68
	li	$a1, 64
	lwu	$a1, -31760($gp)
	li	$v0, 0x8000
	dsll	$v0, $v0, 0x10
	move	$a0, $s1
	dsll32	$a1, $a1, 0x0
	or	$a1, $s5, $a1
	or	$a1, $a1, $s0
	jal	sub_00112C68
	or	$a1, $a1, $v0
	jal	sub_00112B40
	move	$a0, $s1
	jal	sub_00112AF8
	move	$a0, $s1
	move	$a0, $s1
	jal	sub_00112A48
	move	$a1, $zero
	jal	sub_00112998
	move	$a0, $s1
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lui	$a2, 0x8000
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 36($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $a2
	lw	$a1, -31764($gp)
	move	$a0, $sp
	sll	$a1, $a1, 0xd
	jal	sub_00112978
	or	$a1, $a1, $s6
	jal	sub_00112988
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_001129F0
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112AA0
	move	$a0, $sp
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $sp
	addiu	$v0, $v0, -3696
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	nop
lbl_00104ED8:
	addiu	$v0, $s3, -16
	move	$s2, $zero
	dsll	$s6, $v0, 0x10
	lw	$v0, 64($sp)
	dsll	$s5, $s3, 0x10
	li	$s1, 0x8000
	addu	$s1, $s1, $v0
	nop
lbl_00104EF8:
	lbu	$v0, 0($s4)
	srav	$v0, $v0, $s2
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00104F30
	addiu	$s2, $s2, 1
	move	$s0, $s1
	move	$a0, $sp
	or	$a1, $s0, $s5
	or	$s0, $s0, $s6
	jal	sub_00112C68
	or	$a1, $a1, $s7
	or	$a1, $s0, $s7
	jal	sub_00112C68
	move	$a0, $sp
lbl_00104F30:
	slti	$v0, $s2, 8
	bnez	$v0, lbl_00104EF8
	addiu	$s1, $s1, 16
	addiu	$s8, $s8, 1
	addiu	$s4, $s4, 1
	slti	$v0, $s8, 8
	bnez	$v0, lbl_00104ED8
	addiu	$s3, $s3, 16
	jal	sub_00112B40
	move	$a0, $sp
	jal	sub_00112AF8
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112A48
	move	$a0, $sp
	jal	sub_00112998
	move	$a0, $sp
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lui	$a2, 0x8000
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 4($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $a2
	ld	$s0, 80($sp)
	ld	$s1, 88($sp)
	ld	$s2, 96($sp)
	ld	$s3, 104($sp)
	ld	$s4, 112($sp)
	ld	$s5, 120($sp)
	ld	$s6, 128($sp)
	ld	$s7, 136($sp)
	ld	$s8, 144($sp)
	ld	$ra, 152($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop
	addiu	$sp, $sp, -80
	sd	$s2, 16($sp)
	move	$s2, $a1
	sd	$s5, 40($sp)
	move	$s5, $a0
	move	$a0, $s2
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	move	$s0, $zero
	sd	$s3, 24($sp)
	li	$s3, 32
	sd	$s4, 32($sp)
	sd	$s6, 48($sp)
	sd	$s7, 56($sp)
	sd	$ra, 64($sp)
	jal	sub_00102CF8
	li	$s4, -256
	lui	$v1, 0x14
	addiu	$s1, $v1, -17776
	move	$s7, $v1
	b	lbl_0010520C
	move	$s6, $s1
lbl_00105038:
	li	$v0, 9
	lb	$v1, 0($a3)
	bne	$v1, $v0, lbl_00105080
	li	$v0, 10
	lw	$a2, -31720($gp)
	lw	$v1, -31724($gp)
	sll	$v0, $a2, 0x4
	subu	$v0, $v0, $a2
	addiu	$a1, $v1, 2
	sll	$v0, $v0, 0x2
	sw	$a1, -31724($gp)
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 0x3
	addu	$v0, $v0, $s1
	sb	$s3, 4($v0)
	b	lbl_00105160
	sw	$s4, 0($v0)
	nop
lbl_00105080:
	bnel	$v1, $v0, lbl_001050C8
	lw	$a2, -31720($gp)
	lw	$v0, -31720($gp)
	move	$a1, $zero
	lw	$a0, -31724($gp)
	sll	$v1, $v0, 0x4
	addiu	$a2, $v0, 1
	subu	$v1, $v1, $v0
	sw	$a2, -31720($gp)
	sll	$v1, $v1, 0x2
	sw	$zero, -31724($gp)
	addu	$v1, $v1, $a0
	sw	$zero, -31716($gp)
	sll	$v1, $v1, 0x3
	addu	$v1, $v1, $s1
	sb	$s3, 4($v1)
	b	lbl_00105160
	sw	$s4, 0($v1)
lbl_001050C8:
	li	$v0, 39
	lw	$a1, -31724($gp)
	sll	$v1, $a2, 0x4
	subu	$v1, $v1, $a2
	sll	$v1, $v1, 0x2
	addu	$v1, $v1, $a1
	sll	$v1, $v1, 0x3
	addu	$t0, $v1, $s1
	sw	$s5, 0($t0)
	lb	$v1, 0($a3)
	bne	$v1, $v0, lbl_00105108
	lbu	$a0, 0($a3)
	lw	$v0, -31712($gp)
	sltiu	$v0, $v0, 1
	sw	$v0, -31712($gp)
	lbu	$a0, 0($a3)
lbl_00105108:
	sll	$v0, $a0, 0x18
	li	$v1, 34
	sra	$v0, $v0, 0x18
	bne	$v0, $v1, lbl_00105128
	lw	$v0, -31708($gp)
	sltiu	$v0, $v0, 1
	sw	$v0, -31708($gp)
	lbu	$a0, 0($a3)
lbl_00105128:
	bnez	$v0, lbl_00105154
	move	$v1, $a0
	sll	$v0, $a0, 0x18
	sra	$v0, $v0, 0x18
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lbu	$v1, 24401($v1)
	addiu	$a0, $v0, -32
	andi	$v1, $v1, 0x2
	movn	$v0, $a0, $v1
	move	$v1, $v0
lbl_00105154:
	addiu	$a1, $a1, 1
	sb	$v1, 4($t0)
	sw	$a1, -31724($gp)
lbl_00105160:
	slti	$v0, $a1, 60
	bnez	$v0, lbl_00105174
	slti	$v0, $a2, 40
	li	$a1, 59
	sw	$a1, -31724($gp)
lbl_00105174:
	bnezl	$v0, lbl_0010520C
	addiu	$s0, $s0, 1
	li	$a1, 1
	addiu	$a2, $s7, -17776
	li	$a0, 15
lbl_00105188:
	sll	$v0, $a0, 0x5
	li	$v1, 59
	addu	$v0, $v0, $a2
	nop
lbl_00105198:
	addiu	$v1, $v1, -1
	ldl	$a3, 7($v0)
	ldr	$a3, 0($v0)
	sdl	$a3, -473($v0)
	sdr	$a3, -480($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00105198
	addiu	$v0, $v0, 8
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 40
	bnez	$v0, lbl_00105188
	addiu	$a0, $a0, 15
	addiu	$v0, $s6, 18720
	li	$v1, 59
lbl_001051D8:
	addiu	$v1, $v1, -1
	ldl	$a0, -31729($gp)
	ldr	$a0, -31736($gp)
	sdl	$a0, 7($v0)
	sdr	$a0, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_001051D8
	addiu	$v0, $v0, 8
	li	$a2, 39
	sw	$a2, -31720($gp)
	addiu	$s0, $s0, 1
lbl_0010520C:
	jal	sub_00126004
	move	$a0, $s2
	sltu	$v0, $s0, $v0
	bnez	$v0, lbl_00105038
	addu	$a3, $s2, $s0
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$ra, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00105250:
	addiu	$sp, $sp, -80
	swc1	$f19, 28($sp)
	sd	$a2, 32($sp)
	sd	$a3, 40($sp)
	sd	$t0, 48($sp)
	sd	$t1, 56($sp)
	sd	$t2, 64($sp)
	sd	$t3, 72($sp)
	swc1	$f12, 0($sp)
	swc1	$f13, 4($sp)
	swc1	$f14, 8($sp)
	swc1	$f15, 12($sp)
	swc1	$f16, 16($sp)
	swc1	$f17, 20($sp)
	swc1	$f18, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00105298:
	addiu	$sp, $sp, -80
	swc1	$f19, 28($sp)
	sd	$a2, 32($sp)
	sd	$a3, 40($sp)
	sd	$t0, 48($sp)
	sd	$t1, 56($sp)
	sd	$t2, 64($sp)
	sd	$t3, 72($sp)
	swc1	$f12, 0($sp)
	swc1	$f13, 4($sp)
	swc1	$f14, 8($sp)
	swc1	$f15, 12($sp)
	swc1	$f16, 16($sp)
	swc1	$f17, 20($sp)
	swc1	$f18, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
lbl_001052E0:
	addiu	$sp, $sp, -128
	li	$t0, 32
	sd	$s0, 32($sp)
	lui	$t1, 0x14
	addiu	$t1, $t1, -17776
	sd	$s1, 40($sp)
	sd	$s2, 48($sp)
	sd	$s3, 56($sp)
	sd	$ra, 104($sp)
	swc1	$f20, 112($sp)
	sd	$s4, 64($sp)
	move	$s4, $zero
	sd	$s5, 72($sp)
	li	$s5, 60
	sd	$s6, 80($sp)
	move	$s6, $zero
	sd	$s7, 88($sp)
	move	$s7, $zero
	sd	$s8, 96($sp)
	move	$s8, $zero
lbl_00105330:
	li	$a1, 59
	lui	$v1, 0x14
	addu	$v0, $s6, $a1
	addiu	$v1, $v1, -17776
	sll	$v0, $v0, 0x3
	addu	$v0, $v0, $v1
	lb	$v1, 4($v0)
	bnel	$v1, $t0, lbl_00105390
	addiu	$a1, $a1, 1
	sll	$v0, $s4, 0x5
	li	$a0, 32
	addu	$v0, $v0, $t1
	addiu	$v1, $v0, 476
	addiu	$v1, $v1, -8
lbl_00105368:
	lb	$v0, 0($v1)
	bne	$v0, $a0, lbl_0010538C
	addiu	$a1, $a1, -1
	nop
	nop
	nop
	nop
	bgez	$a1, lbl_00105368
	addiu	$v1, $v1, -8
lbl_0010538C:
	addiu	$a1, $a1, 1
lbl_00105390:
	move	$a0, $zero
	slt	$v0, $s5, $a1
	slti	$v1, $a1, 60
	bnez	$v1, lbl_001053BC
	movn	$s5, $a1, $v0
	lw	$v0, -31728($gp)
	addiu	$a0, $a1, -60
	subu	$v1, $a1, $v0
	addiu	$v1, $v1, -60
	slti	$v1, $v1, 0
	movz	$a0, $v0, $v1
lbl_001053BC:
	sll	$v0, $s4, 0x2
	lwc1	$f20, -32752($gp)
	addu	$v0, $v0, $a0
	move	$s3, $s7
	sll	$v0, $v0, 0x3
	li	$s2, -300
	addu	$s0, $v0, $t1
	li	$s1, 59
	nop
lbl_001053E0:
	lb	$v0, 4($s0)
	beq	$v0, $t0, lbl_0010545C
	move	$a0, $v0
	lw	$v1, 0($s0)
	move	$a1, $s2
	sq	$t0, 0($sp)
	sra	$a3, $v1, 0x8
	sra	$v0, $v1, 0x10
	andi	$v0, $v0, 0xff
	andi	$a3, $a3, 0xff
	srl	$v1, $v1, 0x18
	mtc1	$v0, $f0
	cvt.s.w	$f0, $f0
	mtc1	$v1, $f1
	cvt.s.w	$f1, $f1
	sq	$t1, 16($sp)
	mtc1	$a3, $f2
	cvt.s.w	$f2, $f2
	mul.s	$f0, $f0, $f20
	mul.s	$f1, $f1, $f20
	mul.s	$f2, $f2, $f20
	cvt.w.s	$f3, $f0
	swc1	$f3, -31748($gp)
	cvt.w.s	$f0, $f1
	swc1	$f0, -31752($gp)
	cvt.w.s	$f0, $f2
	swc1	$f0, -31744($gp)
	jal	sub_00104D10
	addiu	$a2, $s3, -200
	lq	$t1, 16($sp)
	lq	$t0, 0($sp)
lbl_0010545C:
	addiu	$s1, $s1, -1
	addiu	$s2, $s2, 10
	bgez	$s1, lbl_001053E0
	addiu	$s0, $s0, 8
	addiu	$s8, $s8, 1
	addiu	$s7, $s7, 10
	slti	$v0, $s8, 40
	addiu	$s4, $s4, 15
	bnez	$v0, lbl_00105330
	addiu	$s6, $s6, 60
	lw	$v0, -31728($gp)
	subu	$v0, $s5, $v0
	addiu	$v0, $v0, -60
	bgez	$v0, lbl_001054A0
	ld	$s0, 32($sp)
	addiu	$v0, $s5, -60
	sw	$v0, -31728($gp)
lbl_001054A0:
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$s3, 56($sp)
	ld	$s4, 64($sp)
	ld	$s5, 72($sp)
	ld	$s6, 80($sp)
	ld	$s7, 88($sp)
	ld	$s8, 96($sp)
	ld	$ra, 104($sp)
	lwc1	$f20, 112($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_001054D0:
	addiu	$sp, $sp, -32
	move	$a0, $zero
	sd	$s0, 0($sp)
	lui	$s0, 0x14
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_00106B60
	addiu	$s0, $s0, -18336
	move	$a1, $zero
	jal	sub_001134F8
	li	$a0, 1
	jal	sub_00113460
	move	$a0, $zero
	lw	$v1, -31772($gp)
	sw	$v0, -31768($gp)
	move	$a0, $s0
	addiu	$v1, $v1, 1
	andi	$v0, $v1, 0x1
	sw	$v1, -31772($gp)
	move	$a1, $v0
	jal	sub_00113400
	sw	$v0, -31776($gp)
	lw	$v1, -31776($gp)
	lui	$v0, 0x2000
	li	$a1, 2048
	or	$s0, $s0, $v0
	li	$a2, 2048
	lw	$a3, -31768($gp)
	beqz	$v1, lbl_00105568
	addiu	$a0, $s0, 336
	sll	$a3, $a3, 0x10
	jal	sub_00113980
	sra	$a3, $a3, 0x10
	jal	sub_00113080
	addiu	$a0, $s0, 320
	b	lbl_0010558C
	lui	$s0, 0x13
	nop
lbl_00105568:
	sll	$a3, $a3, 0x10
	addiu	$a0, $s0, 96
	li	$a1, 2048
	li	$a2, 2048
	jal	sub_00113980
	sra	$a3, $a3, 0x10
	jal	sub_00113080
	addiu	$a0, $s0, 80
	lui	$s0, 0x13
lbl_0010558C:
	lui	$v0, 0x2000
	addiu	$s0, $s0, -3856
	move	$a1, $zero
	or	$s0, $s0, $v0
	addiu	$s1, $s0, 32
	jal	sub_00113920
	move	$a0, $s1
	li	$v1, 68
	li	$a2, 71
	lui	$v0, 0x2
	sd	$v1, 0($s1)
	move	$a0, $zero
	sd	$a2, 24($s0)
	move	$a1, $zero
	jal	sub_001134F8
	sd	$v0, 16($s0)
	move	$a0, $s0
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	j	sub_00113080
	addiu	$sp, $sp, 32
	nop

sub_001055E8:
	addiu	$sp, $sp, -32
	move	$a0, $zero
	sd	$s0, 0($sp)
	lui	$s0, 0x14
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_00113460
	lui	$s1, 0x13
	li	$a0, 1
	jal	sub_00114240
	addiu	$s0, $s0, -18336
	jal	sub_00114218
	move	$a0, $zero
	move	$a1, $zero
	li	$a2, 100
	jal	sub_001147E8
	move	$a0, $v0
	jal	sub_00114218
	li	$a0, 1
	move	$a1, $zero
	li	$a2, 100
	jal	sub_001147E8
	move	$a0, $v0
	jal	sub_00114218
	li	$a0, 2
	move	$a1, $zero
	li	$a2, 100
	jal	sub_001147E8
	move	$a0, $v0
	jal	sub_00114218
	move	$a0, $zero
	li	$a0, 1
	lw	$v1, 0($v0)
	ori	$v1, $v1, 0x40
	jal	sub_00114218
	sw	$v1, 0($v0)
	li	$a0, 2
	lw	$v1, 0($v0)
	ori	$v1, $v1, 0x40
	jal	sub_00114218
	sw	$v1, 0($v0)
	lw	$v1, 0($v0)
	ori	$v1, $v1, 0x40
	jal	sub_00112E30
	sw	$v1, 0($v0)
	jal	sub_00113460
	move	$a0, $zero
	li	$v1, 640
	li	$v0, 448
	li	$a1, 1
	li	$a2, 2
	move	$a3, $zero
	move	$a0, $zero
	sw	$v1, -31784($gp)
	jal	sub_00112C90
	sw	$v0, -31780($gp)
	lh	$a2, -31784($gp)
	move	$a1, $zero
	lh	$a3, -31780($gp)
	li	$t0, 2
	move	$t1, $zero
	li	$t2, 1
	jal	sub_00113168
	move	$a0, $s0
	jal	sub_00113460
	move	$a0, $zero
	sw	$zero, -31776($gp)
	jal	sub_00106B60
	move	$a0, $zero
	move	$a0, $s0
	jal	sub_00113400
	lw	$a1, -31776($gp)
	b	lbl_0010571C
	li	$a0, 1
lbl_00105710:
	jal	sub_001087F8
	nop
	li	$a0, 1
lbl_0010571C:
	jal	sub_001134F8
	move	$a1, $zero
	bnez	$v0, lbl_00105710
	addiu	$a0, $s1, 18768
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -176
	sd	$s7, 152($sp)
	move	$s7, $a1
	sd	$s8, 160($sp)
	move	$s8, $a0
	sd	$s0, 96($sp)
	sd	$s1, 104($sp)
	sd	$s2, 112($sp)
	sd	$s3, 120($sp)
	sd	$s4, 128($sp)
	sd	$s5, 136($sp)
	sd	$s6, 144($sp)
	beqz	$t0, lbl_001059D0
	sd	$ra, 168($sp)
	lw	$a1, -31764($gp)
	addiu	$s1, $sp, 32
	lui	$s5, 0x7000
	move	$a0, $s1
	sll	$a1, $a1, 0xd
	lw	$s3, 12($a2)
	or	$a1, $a1, $s5
	lw	$s4, 0($a2)
	lw	$s2, 4($a2)
	dsll	$s3, $s3, 0x18
	jal	sub_00112978
	lw	$s0, 8($a2)
	move	$a0, $s1
	jal	sub_00112988
	dsll	$s2, $s2, 0x8
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_001129F0
	dsll	$s0, $s0, 0x10
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_00112AA0
	or	$s0, $s0, $s2
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $s1
	addiu	$v0, $v0, 18752
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	li	$s6, 0x8000
	dsll32	$s6, $s6, 0x8
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	move	$a0, $s1
	jal	sub_00112C68
	li	$a1, 278
	lwu	$a1, -31756($gp)
	move	$a0, $s1
	dsll32	$a1, $a1, 0x0
	or	$a1, $s4, $a1
	or	$a1, $a1, $s0
	jal	sub_00112C68
	or	$a1, $a1, $s3
	jal	sub_00112B40
	move	$a0, $s1
	jal	sub_00112AF8
	move	$a0, $s1
	move	$a0, $s1
	jal	sub_00112A48
	move	$a1, $zero
	jal	sub_00112998
	move	$a0, $s1
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 36($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	lui	$v0, 0x8000
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $v0
	lw	$a1, -31764($gp)
	move	$a0, $sp
	sll	$a1, $a1, 0xd
	jal	sub_00112978
	or	$a1, $a1, $s5
	jal	sub_00112988
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_001129F0
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112AA0
	move	$a0, $sp
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $sp
	addiu	$v0, $v0, -3680
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	lw	$v0, 0($s7)
	lw	$a1, 4($s7)
	move	$a0, $sp
	dsll	$a1, $a1, 0x10
	jal	sub_00112C68
	or	$a1, $v0, $a1
	lw	$v0, 0($s8)
	lw	$a1, 4($s8)
	move	$a0, $sp
	addiu	$v0, $v0, 2048
	addiu	$a1, $a1, 2048
	sll	$v0, $v0, 0x4
	sll	$a1, $a1, 0x4
	dsll	$a1, $a1, 0x10
	or	$a1, $v0, $a1
	jal	sub_00112C68
	or	$a1, $a1, $s6
	lw	$v0, 8($s7)
	lw	$a1, 12($s7)
	move	$a0, $sp
	sll	$v0, $v0, 0x4
	sll	$a1, $a1, 0x4
	dsll	$a1, $a1, 0x10
	jal	sub_00112C68
	or	$a1, $v0, $a1
	lw	$v0, 8($s8)
	lw	$a1, 12($s8)
	move	$a0, $sp
	addiu	$v0, $v0, 2048
	addiu	$a1, $a1, 2048
	sll	$v0, $v0, 0x4
	sll	$a1, $a1, 0x4
	dsll	$a1, $a1, 0x10
	or	$a1, $v0, $a1
	jal	sub_00112C68
	or	$a1, $a1, $s6
	jal	sub_00112B40
	move	$a0, $sp
	jal	sub_00112AF8
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112A48
	move	$a0, $sp
	jal	sub_00112998
	move	$a0, $sp
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 4($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	lui	$v0, 0x8000
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $v0
	b	lbl_00105BEC
	ld	$s0, 96($sp)
lbl_001059D0:
	lw	$a1, -31764($gp)
	addiu	$s1, $sp, 64
	lui	$s5, 0x7000
	move	$a0, $s1
	sll	$a1, $a1, 0xd
	lw	$s3, 12($a2)
	or	$a1, $a1, $s5
	lw	$s4, 0($a2)
	lw	$s2, 4($a2)
	dsll	$s3, $s3, 0x18
	jal	sub_00112978
	lw	$s0, 8($a2)
	move	$a0, $s1
	jal	sub_00112988
	dsll	$s2, $s2, 0x8
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_001129F0
	dsll	$s0, $s0, 0x10
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_00112AA0
	or	$s0, $s0, $s2
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $s1
	addiu	$v0, $v0, 18752
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	li	$s6, 0x8000
	dsll32	$s6, $s6, 0x8
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	move	$a0, $s1
	jal	sub_00112C68
	li	$a1, 278
	lwu	$a1, -31756($gp)
	move	$a0, $s1
	dsll32	$a1, $a1, 0x0
	or	$a1, $s4, $a1
	or	$a1, $a1, $s0
	jal	sub_00112C68
	or	$a1, $a1, $s3
	jal	sub_00112B40
	move	$a0, $s1
	jal	sub_00112AF8
	move	$a0, $s1
	move	$a0, $s1
	jal	sub_00112A48
	move	$a1, $zero
	jal	sub_00112998
	move	$a0, $s1
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 68($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	lui	$v0, 0x8000
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $v0
	lw	$a1, -31764($gp)
	move	$a0, $sp
	sll	$a1, $a1, 0xd
	jal	sub_00112978
	or	$a1, $a1, $s5
	jal	sub_00112988
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_001129F0
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112AA0
	move	$a0, $sp
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $sp
	addiu	$v0, $v0, -3664
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	lw	$v0, 0($s8)
	lw	$a1, 4($s8)
	move	$a0, $sp
	addiu	$v0, $v0, 2048
	addiu	$a1, $a1, 2048
	sll	$v0, $v0, 0x4
	sll	$a1, $a1, 0x4
	dsll	$a1, $a1, 0x10
	or	$a1, $v0, $a1
	jal	sub_00112C68
	or	$a1, $a1, $s6
	lw	$v0, 8($s8)
	lw	$a1, 12($s8)
	move	$a0, $sp
	addiu	$v0, $v0, 2048
	addiu	$a1, $a1, 2048
	sll	$v0, $v0, 0x4
	sll	$a1, $a1, 0x4
	dsll	$a1, $a1, 0x10
	or	$a1, $v0, $a1
	jal	sub_00112C68
	or	$a1, $a1, $s6
	jal	sub_00112B40
	move	$a0, $sp
	jal	sub_00112AF8
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112A48
	move	$a0, $sp
	jal	sub_00112998
	move	$a0, $sp
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 4($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	lui	$v0, 0x8000
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $v0
	ld	$s0, 96($sp)
lbl_00105BEC:
	ld	$s1, 104($sp)
	ld	$s2, 112($sp)
	ld	$s3, 120($sp)
	ld	$s4, 128($sp)
	ld	$s5, 136($sp)
	ld	$s6, 144($sp)
	ld	$s7, 152($sp)
	ld	$s8, 160($sp)
	ld	$ra, 168($sp)
	jr	$ra
	addiu	$sp, $sp, 176

sub_00105C18:
	addiu	$sp, $sp, -32
	lui	$v0, 0x2000
	sd	$s0, 0($sp)
	lui	$s0, 0x13
	addiu	$s0, $s0, -3856
	sd	$s1, 8($sp)
	or	$s0, $s0, $v0
	move	$a1, $zero
	addiu	$s1, $s0, 32
	sd	$ra, 16($sp)
	jal	sub_00113920
	move	$a0, $s1
	li	$v1, 72
	li	$a2, 71
	lui	$v0, 0x2
	sd	$v1, 0($s1)
	move	$a1, $zero
	sd	$a2, 24($s0)
	move	$a0, $zero
	jal	sub_001134F8
	sd	$v0, 16($s0)
	jal	sub_00113080
	move	$a0, $s0
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	j	lbl_001052E0
	addiu	$sp, $sp, 32
	sw	$a0, -31724($gp)
	jr	$ra
	sw	$a1, -31720($gp)
	nop
	lui	$v0, 0x14
	li	$a1, 1
	addiu	$a2, $v0, -17776
	li	$a0, 15
lbl_00105CA8:
	sll	$v0, $a0, 0x5
	li	$v1, 59
	addu	$v0, $v0, $a2
	nop
lbl_00105CB8:
	addiu	$v1, $v1, -1
	ldl	$a3, 7($v0)
	ldr	$a3, 0($v0)
	sdl	$a3, -473($v0)
	sdr	$a3, -480($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00105CB8
	addiu	$v0, $v0, 8
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 40
	bnez	$v0, lbl_00105CA8
	addiu	$a0, $a0, 15
	lui	$v0, 0x14
	addiu	$a0, $gp, -31736
	addiu	$v0, $v0, -17776
	li	$v1, 59
	addiu	$v0, $v0, 18720
	nop
lbl_00105D08:
	ldl	$a1, 7($a0)
	ldr	$a1, 0($a0)
	sdl	$a1, 7($v0)
	addiu	$v1, $v1, -1
	sdr	$a1, 0($v0)
	nop
	nop
	bgez	$v1, lbl_00105D08
	addiu	$v0, $v0, 8
	jr	$ra
	nop
	nop
	lui	$v0, 0x14
	move	$a1, $zero
	addiu	$a3, $v0, -17776
	addiu	$a2, $gp, -31736
	move	$a0, $zero
	nop
lbl_00105D50:
	sll	$v0, $a0, 0x5
	li	$v1, 59
	addu	$v0, $v0, $a3
	nop
lbl_00105D60:
	ldl	$t0, 7($a2)
	ldr	$t0, 0($a2)
	sdl	$t0, 7($v0)
	addiu	$v1, $v1, -1
	sdr	$t0, 0($v0)
	nop
	nop
	bgez	$v1, lbl_00105D60
	addiu	$v0, $v0, 8
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 40
	bnez	$v0, lbl_00105D50
	addiu	$a0, $a0, 15
	jr	$ra
	nop
	nop

sub_00105DA0:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_001055E8
	nop
	lui	$v0, 0x14
	move	$a1, $zero
	move	$a0, $zero
	addiu	$a2, $v0, -17776
lbl_00105DC0:
	sll	$v0, $a0, 0x5
	li	$v1, 59
	addu	$v0, $v0, $a2
	nop
lbl_00105DD0:
	addiu	$v1, $v1, -1
	ldl	$a3, -31729($gp)
	ldr	$a3, -31736($gp)
	sdl	$a3, 7($v0)
	sdr	$a3, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00105DD0
	addiu	$v0, $v0, 8
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 40
	bnez	$v0, lbl_00105DC0
	addiu	$a0, $a0, 15
	ld	$ra, 0($sp)
	sw	$zero, -31724($gp)
	sw	$zero, -31720($gp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	sll	$a3, $a2, 0x10
	li	$a2, 2048
	addiu	$sp, $sp, -16
	lui	$v0, 0x2000
	sd	$s0, 0($sp)
	or	$s0, $a0, $v0
	move	$v1, $a3
	sra	$a3, $a3, 0x10
	beqz	$a1, lbl_00105E68
	sd	$ra, 8($sp)
	addiu	$a0, $s0, 336
	jal	sub_00113980
	li	$a1, 2048
	addiu	$a0, $s0, 320
	ld	$ra, 8($sp)
	ld	$s0, 0($sp)
	j	sub_00113080
	addiu	$sp, $sp, 16
lbl_00105E68:
	addiu	$a0, $s0, 96
	sra	$a3, $v1, 0x10
	li	$a1, 2048
	jal	sub_00113980
	li	$a2, 2048
	addiu	$a0, $s0, 80
	ld	$ra, 8($sp)
	ld	$s0, 0($sp)
	j	sub_00113080
	addiu	$sp, $sp, 16
	lw	$a3, -31784($gp)
	addiu	$sp, $sp, -64
	sd	$s0, 32($sp)
	lui	$s0, 0x13
	addiu	$v1, $a3, 63
	slti	$v0, $a3, 0
	movn	$a3, $v1, $v0
	li	$v0, 1
	lui	$a1, 0x2000
	addiu	$s0, $s0, -4320
	or	$s0, $s0, $a1
	move	$a1, $zero
	sll	$a2, $a0, 0x10
	addiu	$a0, $s0, 96
	sll	$a3, $a3, 0xa
	sd	$s1, 40($sp)
	sra	$a3, $a3, 0x10
	li	$t0, 1
	li	$t1, 10
	li	$t2, 8
	move	$t3, $zero
	addiu	$s1, $s0, 32
	sra	$a2, $a2, 0x10
	sd	$ra, 48($sp)
	sw	$v0, 24($sp)
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	jal	sub_00113810
	sw	$zero, 16($sp)
	move	$a0, $s1
	jal	sub_00113920
	move	$a1, $zero
	li	$v1, 68
	li	$a2, 97
	lui	$v0, 0x2
	li	$a1, 71
	sd	$v1, 0($s1)
	sd	$a1, 24($s0)
	move	$a1, $zero
	sd	$a2, 112($s0)
	move	$a0, $zero
	sd	$v0, 16($s0)
	jal	sub_001134F8
	sd	$zero, 144($s0)
	move	$a0, $s0
	ld	$s1, 40($sp)
	ld	$s0, 32($sp)
	ld	$ra, 48($sp)
	j	sub_00113080
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -32
	lui	$v0, 0x2000
	sd	$s1, 8($sp)
	lui	$s1, 0x13
	addiu	$s1, $s1, -4160
	sd	$s2, 16($sp)
	or	$s1, $s1, $v0
	lh	$a2, -31784($gp)
	addiu	$s2, $s1, 16
	lh	$a3, -31780($gp)
	sd	$s0, 0($sp)
	move	$s0, $a0
	li	$t0, 1
	li	$t1, 49
	move	$a0, $s2
	sd	$ra, 24($sp)
	jal	sub_00112E98
	move	$a1, $zero
	addiu	$a1, $s0, 31
	slti	$v1, $s0, 0
	ld	$v0, 0($s2)
	movn	$s0, $a1, $v1
	li	$a0, -512
	sra	$s0, $s0, 0x5
	and	$v0, $v0, $a0
	move	$a0, $zero
	andi	$s0, $s0, 0x1ff
	li	$v1, 0x8000
	dsll	$v1, $v1, 0x11
	or	$v0, $v0, $s0
	move	$a1, $zero
	sd	$v0, 0($s2)
	ld	$v0, 32($s1)
	or	$v0, $v0, $v1
	jal	sub_001134F8
	sd	$v0, 32($s1)
	move	$a0, $s1
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	j	sub_00113080
	addiu	$sp, $sp, 32
	nop
	lw	$a3, -31784($gp)
	addiu	$sp, $sp, -64
	sd	$s0, 32($sp)
	lui	$s0, 0x13
	addiu	$v1, $a3, 63
	slti	$v0, $a3, 0
	movn	$a3, $v1, $v0
	li	$v0, 1
	lui	$a1, 0x2000
	addiu	$s0, $s0, -4016
	or	$s0, $s0, $a1
	move	$a1, $zero
	sll	$a2, $a0, 0x10
	addiu	$a0, $s0, 96
	sll	$a3, $a3, 0xa
	sd	$s1, 40($sp)
	sra	$a3, $a3, 0x10
	move	$t0, $zero
	li	$t1, 10
	li	$t2, 8
	move	$t3, $zero
	addiu	$s1, $s0, 32
	sra	$a2, $a2, 0x10
	sd	$ra, 48($sp)
	sw	$v0, 24($sp)
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	jal	sub_00113810
	sw	$zero, 16($sp)
	move	$a0, $s1
	jal	sub_00113920
	move	$a1, $zero
	li	$v1, 68
	li	$a2, 97
	lui	$v0, 0x2
	li	$a1, 71
	sd	$v1, 0($s1)
	sd	$a1, 24($s0)
	move	$a1, $zero
	sd	$a2, 112($s0)
	move	$a0, $zero
	sd	$v0, 16($s0)
	sd	$zero, 144($s0)
	jal	sub_001134F8
	sd	$zero, 80($s0)
	move	$a0, $s0
	ld	$s1, 40($sp)
	ld	$s0, 32($sp)
	ld	$ra, 48($sp)
	j	sub_00113080
	addiu	$sp, $sp, 64
	nop
	lui	$v0, 0x13
	addiu	$sp, $sp, -32
	lui	$v1, 0x2000
	addiu	$v0, $v0, -3856
	sd	$s0, 0($sp)
	or	$s0, $v0, $v1
	sd	$s1, 8($sp)
	move	$s1, $a0
	move	$a1, $zero
	sd	$ra, 16($sp)
	jal	sub_00113920
	addiu	$a0, $s0, 32
	sltiu	$v1, $s1, 5
	beqz	$v1, lbl_0010616C
	li	$v1, 71
	sll	$v0, $s1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 18784($v1)
	jr	$v1
	nop
	nop
	b	lbl_00106164
	li	$v0, 72
	b	lbl_00106164
	li	$v0, 68
	b	lbl_00106164
	li	$v0, 66
	li	$v0, 40
	dsll32	$v0, $v0, 0x0
	ori	$v0, $v0, 0x64
	b	lbl_00106168
	sd	$v0, 32($s0)
	nop
	li	$v0, 104
lbl_00106164:
	sd	$v0, 32($s0)
lbl_00106168:
	li	$v1, 71
lbl_0010616C:
	lui	$v0, 0x2
	sd	$v1, 24($s0)
	move	$a0, $zero
	sd	$v0, 16($s0)
	jal	sub_001134F8
	move	$a1, $zero
	move	$a0, $s0
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	j	sub_00113080
	addiu	$sp, $sp, 32
	nop
	lw	$v0, -31764($gp)
	addiu	$sp, $sp, -80
	lui	$v1, 0x7000
	sd	$s3, 56($sp)
	sll	$v0, $v0, 0xd
	sd	$s4, 64($sp)
	move	$s3, $a0
	move	$a0, $sp
	move	$s4, $a1
	or	$a1, $v0, $v1
	sd	$s0, 32($sp)
	move	$s0, $a3
	sd	$s1, 40($sp)
	move	$s1, $a2
	sd	$s2, 48($sp)
	sd	$ra, 72($sp)
	jal	sub_00112978
	move	$s2, $t0
	move	$a0, $sp
	jal	sub_00112988
	ori	$s3, $s3, 0x40
	move	$a1, $zero
	move	$a0, $sp
	jal	sub_001129F0
	move	$s0, $s0
	move	$a1, $zero
	move	$a0, $sp
	jal	sub_00112AA0
	move	$s1, $s1
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $sp
	addiu	$v0, $v0, 18736
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	sw	$v1, -31764($gp)
	jal	sub_00112B28
	dsll	$s1, $s1, 0x8
	move	$a1, $s3
	move	$a0, $sp
	jal	sub_00112C68
	dsll	$s0, $s0, 0x10
	lwu	$a1, -31760($gp)
	or	$s0, $s0, $s1
	dsll32	$a1, $a1, 0x0
	dsll	$s2, $s2, 0x18
	or	$a1, $s4, $a1
	move	$a0, $sp
	or	$a1, $a1, $s0
	jal	sub_00112C68
	or	$a1, $a1, $s2
	jal	sub_00112B40
	move	$a0, $sp
	jal	sub_00112AF8
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112A48
	move	$a0, $sp
	jal	sub_00112998
	move	$a0, $sp
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lui	$a2, 0x8000
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 4($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $a2
	ld	$s0, 32($sp)
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$s3, 56($sp)
	ld	$s4, 64($sp)
	ld	$ra, 72($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
	lw	$v0, -31764($gp)
	addiu	$sp, $sp, -96
	lui	$v1, 0x7000
	sd	$s0, 32($sp)
	sll	$v0, $v0, 0xd
	sd	$s5, 72($sp)
	move	$s0, $a0
	move	$a0, $sp
	move	$s5, $a1
	or	$a1, $v0, $v1
	sd	$s1, 40($sp)
	move	$s1, $t1
	sd	$s2, 48($sp)
	move	$s2, $a3
	sd	$s3, 56($sp)
	move	$s3, $a2
	sd	$s4, 64($sp)
	sd	$ra, 80($sp)
	jal	sub_00112978
	move	$s4, $t0
	move	$a0, $sp
	jal	sub_00112988
	ori	$s0, $s0, 0x10
	move	$a1, $zero
	jal	sub_001129F0
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112AA0
	move	$a0, $sp
	lw	$v1, -31764($gp)
	lui	$v0, 0x13
	move	$a0, $sp
	addiu	$v0, $v0, 18752
	addiu	$v1, $v1, 1
	lq	$a1, 0($v0)
	andi	$v1, $v1, 0x1
	jal	sub_00112B28
	sw	$v1, -31764($gp)
	move	$a1, $s0
	beqz	$s1, lbl_0010639C
	move	$a0, $sp
	li	$v0, 256
	or	$a1, $a1, $v0
lbl_0010639C:
	jal	sub_00112C68
	nop
	lwu	$v0, -31756($gp)
	move	$a0, $s2
	move	$v1, $s3
	dsll	$v1, $v1, 0x8
	dsll32	$v0, $v0, 0x0
	dsll	$a0, $a0, 0x10
	or	$v0, $s5, $v0
	or	$a0, $a0, $v1
	move	$a1, $s4
	or	$v0, $v0, $a0
	move	$a0, $sp
	dsll	$a1, $a1, 0x18
	jal	sub_00112C68
	or	$a1, $v0, $a1
	jal	sub_00112B40
	move	$a0, $sp
	jal	sub_00112AF8
	move	$a0, $sp
	move	$a1, $zero
	jal	sub_00112A48
	move	$a0, $sp
	jal	sub_00112998
	move	$a0, $sp
	move	$a0, $zero
	jal	sub_001134F8
	move	$a1, $zero
	jal	sub_00114218
	li	$a0, 1
	lui	$a2, 0x8000
	lw	$v1, 0($v0)
	move	$a0, $v0
	lw	$a1, 4($sp)
	ori	$v1, $v1, 0x40
	sw	$v1, 0($v0)
	andi	$a1, $a1, 0x3ff0
	jal	sub_00114548
	or	$a1, $a1, $a2
	ld	$s0, 32($sp)
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$s3, 56($sp)
	ld	$s4, 64($sp)
	ld	$s5, 72($sp)
	ld	$ra, 80($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	lw	$v0, -31720($gp)
	lw	$a2, -31724($gp)
	sll	$v1, $v0, 0x4
	subu	$v1, $v1, $v0
	sll	$v1, $v1, 0x2
	addu	$v1, $v1, $a2
	sll	$v1, $v1, 0x3
	lui	$at, 0x14
	addiu	$at, $at, -17776
	addu	$v1, $at, $v1
	sb	$a1, 4($v1)
	jr	$ra
	sw	$a0, 0($v1)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	li	$v1, 0
	syscall
	jr	$ra
	nop
	li	$v1, 1
	syscall
	jr	$ra
	nop
lbl_001064E0:
	li	$v1, 2
	syscall
	jr	$ra
	nop
	li	$v1, 3
	syscall
	jr	$ra
	nop
lbl_00106500:
	li	$v1, 4
	syscall
	jr	$ra
	nop
	li	$v1, 5
	syscall
	jr	$ra
	nop
lbl_00106520:
	li	$v1, 6
	syscall
	jr	$ra
	nop

sub_00106530:
	li	$v1, 7
	syscall
	jr	$ra
	nop
	li	$v1, 8
	syscall
	jr	$ra
	nop
	li	$v1, 9
	syscall
	jr	$ra
	nop
	li	$v1, 10
	syscall
	jr	$ra
	nop
	li	$v1, 11
	syscall
	jr	$ra
	nop
	li	$v1, 12
	syscall
	jr	$ra
	nop

sub_00106590:
	li	$v1, 13
	syscall
	jr	$ra
	nop

sub_001065A0:
	li	$v1, 14
	syscall
	jr	$ra
	nop
	li	$v1, 15
	syscall
	jr	$ra
	nop
	li	$v1, 16
	syscall
	jr	$ra
	nop

sub_001065D0:
	li	$v1, 16
	syscall
	jr	$ra
	nop

sub_001065E0:
	li	$v1, 17
	syscall
	jr	$ra
	nop

sub_001065F0:
	li	$v1, 18
	syscall
	jr	$ra
	nop
	li	$v1, 18
	syscall
	jr	$ra
	nop

sub_00106610:
	li	$v1, 19
	syscall
	jr	$ra
	nop

sub_00106620:
	li	$v1, 20
	syscall
	jr	$ra
	nop

sub_00106630:
	li	$v1, 21
	syscall
	jr	$ra
	nop

sub_00106640:
	li	$v1, 22
	syscall
	jr	$ra
	nop

sub_00106650:
	li	$v1, 23
	syscall
	jr	$ra
	nop
	li	$v1, 252
	syscall
	jr	$ra
	nop
	li	$v1, 253
	syscall
	jr	$ra
	nop

sub_00106680:
	li	$v1, -26
	syscall
	jr	$ra
	nop

sub_00106690:
	li	$v1, -27
	syscall
	jr	$ra
	nop

sub_001066A0:
	li	$v1, -28
	syscall
	jr	$ra
	nop

sub_001066B0:
	li	$v1, -29
	syscall
	jr	$ra
	nop
	li	$v1, -254
	syscall
	jr	$ra
	nop
	li	$v1, -255
	syscall
	jr	$ra
	nop

sub_001066E0:
	li	$v1, 32
	syscall
	jr	$ra
	nop

sub_001066F0:
	li	$v1, 33
	syscall
	jr	$ra
	nop

sub_00106700:
	li	$v1, 34
	syscall
	jr	$ra
	nop
	li	$v1, 35
	syscall
	jr	$ra
	nop

sub_00106720:
	li	$v1, 36
	syscall
	jr	$ra
	nop

sub_00106730:
	li	$v1, 37
	syscall
	jr	$ra
	nop
	li	$v1, -38
	syscall
	jr	$ra
	nop
	li	$v1, 39
	syscall
	jr	$ra
	nop
	li	$v1, 40
	syscall
	jr	$ra
	nop

sub_00106770:
	li	$v1, 41
	syscall
	jr	$ra
	nop

sub_00106780:
	li	$v1, -42
	syscall
	jr	$ra
	nop

sub_00106790:
	li	$v1, 43
	syscall
	jr	$ra
	nop
	li	$v1, -44
	syscall
	jr	$ra
	nop
	li	$v1, 45
	syscall
	jr	$ra
	nop
	li	$v1, -46
	syscall
	jr	$ra
	nop

sub_001067D0:
	li	$v1, 47
	syscall
	jr	$ra
	nop

sub_001067E0:
	li	$v1, 48
	syscall
	jr	$ra
	nop
	li	$v1, -49
	syscall
	jr	$ra
	nop

sub_00106800:
	li	$v1, 50
	syscall
	jr	$ra
	nop

sub_00106810:
	li	$v1, 51
	syscall
	jr	$ra
	nop

sub_00106820:
	li	$v1, -52
	syscall
	jr	$ra
	nop

sub_00106830:
	li	$v1, 53
	syscall
	jr	$ra
	nop
	li	$v1, -54
	syscall
	jr	$ra
	nop

sub_00106850:
	li	$v1, 55
	syscall
	jr	$ra
	nop

sub_00106860:
	li	$v1, -56
	syscall
	jr	$ra
	nop
	li	$v1, 57
	syscall
	jr	$ra
	nop
	li	$v1, -58
	syscall
	jr	$ra
	nop
	li	$v1, 59
	syscall
	jr	$ra
	nop
	li	$v1, 60
	syscall
	jr	$ra
	nop
	li	$v1, 61
	syscall
	jr	$ra
	nop

sub_001068C0:
	li	$v1, 62
	syscall
	jr	$ra
	nop
	li	$v1, 63
	syscall
	jr	$ra
	nop

sub_001068E0:
	li	$v1, 64
	syscall
	jr	$ra
	nop

sub_001068F0:
	li	$v1, 65
	syscall
	jr	$ra
	nop

sub_00106900:
	li	$v1, 66
	syscall
	jr	$ra
	nop

sub_00106910:
	li	$v1, -67
	syscall
	jr	$ra
	nop

sub_00106920:
	li	$v1, 68
	syscall
	jr	$ra
	nop

sub_00106930:
	li	$v1, 69
	syscall
	jr	$ra
	nop
	li	$v1, -70
	syscall
	jr	$ra
	nop

sub_00106950:
	li	$v1, 71
	syscall
	jr	$ra
	nop
	li	$v1, -72
	syscall
	jr	$ra
	nop
	li	$v1, 73
	syscall
	jr	$ra
	nop

sub_00106980:
	li	$v1, 74
	syscall
	jr	$ra
	nop

sub_00106990:
	li	$v1, 75
	syscall
	jr	$ra
	nop
	li	$v1, 76
	syscall
	jr	$ra
	nop
	li	$v1, 77
	syscall
	jr	$ra
	nop
	li	$v1, 78
	syscall
	jr	$ra
	nop
	li	$v1, 79
	syscall
	jr	$ra
	nop
	li	$v1, 80
	syscall
	jr	$ra
	nop
	li	$v1, 81
	syscall
	jr	$ra
	nop
	li	$v1, 82
	syscall
	jr	$ra
	nop
	li	$v1, -83
	syscall
	jr	$ra
	nop
	li	$v1, 84
	syscall
	jr	$ra
	nop
	li	$v1, -85
	syscall
	jr	$ra
	nop
	li	$v1, 86
	syscall
	jr	$ra
	nop
	li	$v1, 87
	syscall
	jr	$ra
	nop
	li	$v1, -88
	syscall
	jr	$ra
	nop
	li	$v1, 89
	syscall
	jr	$ra
	nop
	li	$v1, -90
	syscall
	jr	$ra
	nop
	li	$v1, 91
	syscall
	jr	$ra
	nop
	li	$v1, 92
	syscall
	jr	$ra
	nop
	li	$v1, -92
	syscall
	jr	$ra
	nop
	li	$v1, 93
	syscall
	jr	$ra
	nop
	li	$v1, -93
	syscall
	jr	$ra
	nop
	li	$v1, 94
	syscall
	jr	$ra
	nop
	li	$v1, -94
	syscall
	jr	$ra
	nop
	li	$v1, 95
	syscall
	jr	$ra
	nop
	li	$v1, -95
	syscall
	jr	$ra
	nop
	li	$v1, 96
	syscall
	jr	$ra
	nop
	li	$v1, 97
	syscall
	jr	$ra
	nop
	li	$v1, 98
	syscall
	jr	$ra
	nop
	li	$v1, 99
	syscall
	jr	$ra
	nop

sub_00106B60:
	li	$v1, 100
	syscall
	jr	$ra
	nop
	li	$v1, 102
	syscall
	jr	$ra
	nop

sub_00106B80:
	li	$v1, -103
	syscall
	jr	$ra
	nop
	li	$v1, -104
	syscall
	jr	$ra
	nop
	li	$v1, -106
	syscall
	jr	$ra
	nop

sub_00106BB0:
	li	$v1, 107
	syscall
	jr	$ra
	nop
	li	$v1, 108
	syscall
	jr	$ra
	nop
	li	$v1, 109
	syscall
	jr	$ra
	nop
	li	$v1, 110
	syscall
	jr	$ra
	nop
	li	$v1, 111
	syscall
	jr	$ra
	nop
	li	$v1, 112
	syscall
	jr	$ra
	nop
	li	$v1, -112
	syscall
	jr	$ra
	nop

sub_00106C20:
	li	$v1, 113
	syscall
	jr	$ra
	nop
	li	$v1, -113
	syscall
	jr	$ra
	nop
	li	$v1, 114
	syscall
	jr	$ra
	nop

sub_00106C50:
	li	$v1, 115
	syscall
	jr	$ra
	nop
	li	$v1, 116
	syscall
	jr	$ra
	nop
	li	$v1, 117
	syscall
	jr	$ra
	nop

sub_00106C80:
	li	$v1, 118
	syscall
	jr	$ra
	nop
	li	$v1, -118
	syscall
	jr	$ra
	nop

sub_00106CA0:
	li	$v1, 119
	syscall
	jr	$ra
	nop

sub_00106CB0:
	li	$v1, -119
	syscall
	jr	$ra
	nop

sub_00106CC0:
	li	$v1, 120
	syscall
	jr	$ra
	nop

sub_00106CD0:
	li	$v1, -120
	syscall
	jr	$ra
	nop

sub_00106CE0:
	li	$v1, 121
	syscall
	jr	$ra
	nop

sub_00106CF0:
	li	$v1, 122
	syscall
	jr	$ra
	nop
lbl_00106D00:
	li	$v1, 123
	syscall
	jr	$ra
	nop

sub_00106D10:
	li	$v1, 124
	syscall
	jr	$ra
	nop
	li	$v1, 125
	syscall
	jr	$ra
	nop
	li	$v1, 126
	syscall
	jr	$ra
	nop

sub_00106D40:
	li	$v1, 127
	syscall
	jr	$ra
	nop

sub_00106D50:
	li	$v1, 130
	syscall
	jr	$ra
	nop

sub_00106D60:
	mfc0	$v0, $12
	xori	$v0, $v0, 0x1
	jr	$ra
	andi	$v0, $v0, 0x1

sub_00106D70:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_00106DA0
	nop
	jal	sub_0010F420
	nop
lbl_00106DA0:
	jal	sub_00106630
	move	$a0, $s1
	move	$s1, $v0
	sync
	beqz	$s0, lbl_00106DC4
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00106DC4:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00106DD8:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_00106E08
	nop
	jal	sub_0010F420
	nop
lbl_00106E08:
	jal	sub_00106620
	move	$a0, $s1
	move	$s1, $v0
	sync
	beqz	$s0, lbl_00106E2C
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00106E2C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00106E40:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_00106E70
	nop
	jal	sub_0010F420
	nop
lbl_00106E70:
	jal	sub_00106650
	move	$a0, $s1
	move	$s1, $v0
	sync
	beqz	$s0, lbl_00106E94
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00106E94:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00106EA8:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_00106ED8
	nop
	jal	sub_0010F420
	nop
lbl_00106ED8:
	jal	sub_00106640
	move	$a0, $s1
	move	$s1, $v0
	sync
	beqz	$s0, lbl_00106EFC
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00106EFC:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106680
	nop
	sync
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106690
	nop
	sync
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_001066A0
	nop
	sync
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_001066B0
	nop
	sync
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -128
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	lui	$s6, 0x14
	sd	$s4, 64($sp)
	lui	$s5, 0x13
	sd	$s3, 48($sp)
	li	$s4, 1
	sd	$s2, 32($sp)
	li	$s3, 2
	sd	$s0, 0($sp)
	addiu	$s2, $s1, 8
	sd	$ra, 112($sp)
	addiu	$s0, $s1, 9
lbl_00106FD0:
	jal	sub_00106920
	lw	$a0, 2448($s6)
	lw	$v1, 0($s1)
	andi	$v1, $v1, 0x1ff
	addiu	$a0, $v1, 1
	sll	$v1, $v1, 0x1
	sw	$a0, 0($s1)
	addu	$v0, $s2, $v1
	addu	$a2, $s0, $v1
	lbu	$v0, 0($v0)
	beq	$v0, $s4, lbl_00107038
	slti	$a1, $v0, 2
	beqz	$a1, lbl_00107018
	addiu	$a0, $s5, 18808
	beqz	$v0, lbl_00107028
	move	$v1, $a2
	b	lbl_00107058
	nop
lbl_00107018:
	beq	$v0, $s3, lbl_00107048
	addu	$v1, $s0, $v1
	b	lbl_00107058
	nop
lbl_00107028:
	jal	sub_00106810
	lbu	$a0, 0($v1)
	b	lbl_00106FD0
	nop
lbl_00107038:
	jal	sub_00106790
	lbu	$a0, 0($a2)
	b	lbl_00106FD0
	nop
lbl_00107048:
	jal	sub_00106850
	lbu	$a0, 0($v1)
	b	lbl_00106FD0
	nop
lbl_00107058:
	jal	sub_00108878
	nop
	b	lbl_00106FD0
	nop

sub_00107068:
	addiu	$sp, $sp, -144
	sd	$s0, 80($sp)
	lui	$s0, 0x13
	sd	$ra, 128($sp)
	lw	$v0, -3632($s0)
	sd	$s2, 112($sp)
	bgtz	$v0, lbl_00107104
	sd	$s1, 96($sp)
	lui	$v0, 0x13
	li	$v1, 255
	addiu	$s1, $v0, 18848
	sw	$v1, 52($sp)
	sw	$zero, 56($sp)
	addiu	$a0, $sp, 48
	sw	$s1, 68($sp)
	jal	sub_001068E0
	lui	$s2, 0x14
	bltz	$v0, lbl_00107104
	sw	$v0, 2448($s2)
	lui	$v0, 0x10
	lui	$v1, 0x14
	lui	$a1, 0x14
	addiu	$v0, $v0, 28560
	addiu	$v1, $v1, 1424
	addiu	$a1, $a1, -5648
	li	$a2, 1024
	sw	$v0, 4($sp)
	sw	$v1, 8($sp)
	move	$a0, $sp
	sw	$a2, 12($sp)
	sw	$a1, 16($sp)
	sw	$s1, 32($sp)
	jal	sub_001066E0
	sw	$zero, 20($sp)
	move	$a0, $v0
	bgez	$a0, lbl_0010710C
	sw	$a0, -3632($s0)
	jal	sub_001068F0
	lw	$a0, 2448($s2)
lbl_00107104:
	b	lbl_0010713C
	li	$v0, -1
lbl_0010710C:
	lui	$v0, 0x14
	addiu	$v1, $v0, 2456
	sw	$zero, 2456($v0)
	move	$a1, $v1
	jal	sub_001073D0
	sw	$zero, 4($v1)
	jal	sub_001067D0
	nop
	move	$a0, $v0
	jal	sub_00106770
	li	$a1, 1
	lw	$v0, -3632($s0)
lbl_0010713C:
	ld	$ra, 128($sp)
	ld	$s2, 112($sp)
	ld	$s1, 96($sp)
	ld	$s0, 80($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop
lbl_00107158:
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	sd	$s0, 0($sp)
	li	$v1, -47
	syscall
	move	$s0, $v0
	beq	$s0, $a0, lbl_00107188
	sltiu	$v0, $s0, 256
	jal	sub_00106820
	nop
	b	lbl_001071E0
	ld	$ra, 16($sp)
lbl_00107188:
	beqz	$v0, lbl_0010719C
	lui	$v0, 0x13
	lw	$v1, -3632($v0)
	bnez	$v1, lbl_001071A4
	lui	$v1, 0x14
lbl_0010719C:
	b	lbl_001071DC
	li	$v0, -1
lbl_001071A4:
	lui	$a1, 0x14
	addiu	$v1, $v1, 2456
	lw	$a0, 2448($a1)
	lw	$v0, 4($v1)
	andi	$v0, $v0, 0x1ff
	sll	$a2, $v0, 0x1
	addiu	$v0, $v0, 1
	addu	$a1, $v1, $a2
	sw	$v0, 4($v1)
	move	$v1, $a1
	sb	$zero, 8($a1)
	jal	sub_00106910
	sb	$s0, 9($v1)
	move	$v0, $s0
lbl_001071DC:
	ld	$ra, 16($sp)
lbl_001071E0:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a0
	sltiu	$v0, $s0, 128
	beqz	$v0, lbl_00107218
	sd	$ra, 16($sp)
	lui	$v0, 0x13
	lw	$v1, -3632($v0)
	bnez	$v1, lbl_00107220
	lui	$v1, 0x14
lbl_00107218:
	b	lbl_0010725C
	li	$v0, -1
lbl_00107220:
	lui	$a1, 0x14
	addiu	$v1, $v1, 2456
	lw	$a0, 2448($a1)
	lw	$v0, 4($v1)
	li	$a3, 1
	andi	$v0, $v0, 0x1ff
	sll	$a2, $v0, 0x1
	addiu	$v0, $v0, 1
	addu	$a1, $v1, $a2
	sw	$v0, 4($v1)
	sb	$a3, 8($a1)
	move	$v1, $a1
	jal	sub_00106910
	sb	$s0, 9($v1)
	move	$v0, $s0
lbl_0010725C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	sd	$s0, 0($sp)
	li	$v1, -47
	syscall
	move	$s0, $v0
	beq	$s0, $a0, lbl_001072A0
	sltiu	$v0, $s0, 256
	jal	sub_00106860
	nop
	b	lbl_001072FC
	ld	$ra, 16($sp)
lbl_001072A0:
	beqz	$v0, lbl_001072B4
	lui	$v0, 0x13
	lw	$v1, -3632($v0)
	bnez	$v1, lbl_001072BC
	lui	$v1, 0x14
lbl_001072B4:
	b	lbl_001072F8
	li	$v0, -1
lbl_001072BC:
	lui	$a1, 0x14
	addiu	$v1, $v1, 2456
	lw	$a0, 2448($a1)
	lw	$v0, 4($v1)
	li	$a3, 2
	andi	$v0, $v0, 0x1ff
	sll	$a2, $v0, 0x1
	addiu	$v0, $v0, 1
	addu	$a1, $v1, $a2
	sw	$v0, 4($v1)
	sb	$a3, 8($a1)
	move	$v1, $a1
	jal	sub_00106910
	sb	$s0, 9($v1)
	move	$v0, $s0
lbl_001072F8:
	ld	$ra, 16($sp)
lbl_001072FC:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00107308:
	addiu	$sp, $sp, -80
	sd	$s1, 48($sp)
	sd	$ra, 64($sp)
	move	$s1, $a0
	sd	$s0, 32($sp)
	mfc0	$v0, $12
	lui	$v1, 0x1
	and	$v0, $v0, $v1
	bnezl	$v0, lbl_0010733C
	lui	$v0, 0x13
	lui	$v0, 0x8000
	b	lbl_001073BC
	ori	$v0, $v0, 0x8008
lbl_0010733C:
	li	$v1, 1
	addiu	$v0, $v0, 18872
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$zero, 8($sp)
	move	$s0, $v0
	bgez	$s0, lbl_00107370
	move	$a1, $s1
	lui	$v0, 0x8000
	b	lbl_001073BC
	ori	$v0, $v0, 0x8003
lbl_00107370:
	jal	sub_00110F00
	move	$a0, $zero
	lui	$a1, 0x10
	move	$a0, $v0
	addiu	$a1, $a1, 30024
	jal	sub_001110B0
	move	$a2, $s0
	move	$s1, $v0
	bgez	$s1, lbl_001073A8
	nop
	jal	sub_001068F0
	move	$a0, $s0
	b	lbl_001073BC
	move	$v0, $s1
lbl_001073A8:
	jal	sub_00106920
	move	$a0, $s0
	jal	sub_001068F0
	move	$a0, $s0
	move	$v0, $zero
lbl_001073BC:
	ld	$ra, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_001073D0:
	addiu	$sp, $sp, -112
	sd	$s2, 80($sp)
	sd	$s1, 64($sp)
	move	$s2, $a1
	sd	$ra, 96($sp)
	move	$s1, $a0
	jal	sub_00106D60
	sd	$s0, 48($sp)
	bnez	$v0, lbl_00107530
	li	$v0, -1
	jal	sub_0010F420
	nop
	beqz	$v0, lbl_00107440
	move	$a0, $s1
	jal	sub_001067E0
	move	$a1, $sp
	move	$s0, $v0
	bgez	$s0, lbl_0010742C
	lw	$v1, 0($sp)
	jal	sub_0010F470
	nop
	b	lbl_00107530
	move	$v0, $s0
lbl_0010742C:
	li	$v0, 16
	beq	$v1, $v0, lbl_00107448
	lw	$v0, 8($sp)
	jal	sub_0010F470
	nop
lbl_00107440:
	b	lbl_00107530
	li	$v0, -1
lbl_00107448:
	lw	$v1, 12($sp)
	addu	$v0, $v0, $v1
	addiu	$v0, $v0, -672
	sq	$zero, 0($v0)
	sq	$zero, 16($v0)
	sq	$zero, 32($v0)
	sq	$zero, 48($v0)
	sq	$zero, 64($v0)
	sq	$zero, 80($v0)
	sq	$zero, 96($v0)
	sq	$zero, 112($v0)
	sq	$zero, 128($v0)
	sq	$zero, 144($v0)
	sq	$zero, 160($v0)
	sq	$zero, 176($v0)
	sq	$zero, 192($v0)
	sq	$zero, 208($v0)
	sq	$zero, 224($v0)
	sq	$zero, 240($v0)
	sq	$zero, 256($v0)
	sq	$zero, 272($v0)
	sq	$zero, 288($v0)
	sq	$zero, 304($v0)
	sq	$zero, 320($v0)
	sq	$zero, 336($v0)
	sq	$zero, 352($v0)
	sq	$zero, 368($v0)
	sq	$zero, 384($v0)
	sq	$zero, 400($v0)
	sq	$zero, 416($v0)
	sq	$zero, 432($v0)
	sq	$zero, 512($v0)
	sq	$zero, 528($v0)
	sq	$zero, 544($v0)
	sq	$zero, 560($v0)
	sq	$zero, 576($v0)
	sq	$zero, 592($v0)
	sq	$zero, 608($v0)
	sq	$zero, 624($v0)
	sll	$t0, $s2, 0x0
	sd	$t0, 64($v0)
	lw	$t0, 448($v0)
	sd	$t0, 448($v0)
	sd	$zero, 456($v0)
	lw	$t0, 464($v0)
	sd	$t0, 464($v0)
	sd	$zero, 472($v0)
	lw	$t0, 480($v0)
	sd	$t0, 480($v0)
	sd	$zero, 488($v0)
	lw	$t0, 496($v0)
	sd	$t0, 496($v0)
	sd	$zero, 504($v0)
	jal	sub_0010F470
	nop
	move	$a0, $s1
	jal	sub_00106700
	move	$a1, $s2
lbl_00107530:
	ld	$ra, 96($sp)
	ld	$s2, 80($sp)
	ld	$s1, 64($sp)
	ld	$s0, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106910
	move	$a0, $a3
	sync
	ei
	ld	$ra, 0($sp)
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16

sub_00107570:
	lui	$v1, 0x1000
	ori	$v1, $v1, 0xf130
lbl_00107578:
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x8000
	nop
	nop
	nop
	bnez	$v0, lbl_00107578
	nop
	lui	$v1, 0x1000
	move	$v0, $a0
	ori	$v1, $v1, 0xf180
	jr	$ra
	sb	$a0, 0($v1)

sub_001075A8:
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	lui	$s1, 0x13
	sd	$s0, 0($sp)
	lw	$a1, -3628($s1)
	move	$s0, $a0
	sd	$ra, 48($sp)
	slti	$v0, $a1, 126
	bnez	$v0, lbl_001075F0
	sd	$s2, 32($sp)
	lui	$s2, 0x14
	sw	$zero, -3628($s1)
	addiu	$v0, $s2, 3488
	move	$a0, $v0
	jal	sub_00111C30
	sb	$zero, 127($v0)
	b	lbl_001075F4
	lw	$a1, -3628($s1)
lbl_001075F0:
	lui	$s2, 0x14
lbl_001075F4:
	li	$v0, 10
	bne	$s0, $v0, lbl_00107630
	addiu	$v0, $s2, 3488
	addiu	$a0, $s2, 3488
	sw	$zero, -3628($s1)
	addu	$v0, $a1, $a0
	ld	$ra, 48($sp)
	sb	$s0, 0($v0)
	move	$v1, $v0
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	sb	$zero, 1($v1)
	j	sub_00111C30
	addiu	$sp, $sp, 64
lbl_00107630:
	addiu	$v1, $a1, 1
	sw	$v1, -3628($s1)
	addu	$v0, $a1, $v0
	sb	$s0, 0($v0)
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00107658:
	addiu	$sp, $sp, -16
	li	$v0, 10
	bne	$a0, $v0, lbl_00107680
	sd	$ra, 0($sp)
	jal	sub_00107570
	li	$a0, 13
	ld	$ra, 0($sp)
	li	$a0, 10
	j	sub_00107570
	addiu	$sp, $sp, 16
lbl_00107680:
	ld	$ra, 0($sp)
	j	sub_00107570
	addiu	$sp, $sp, 16
	nop

sub_00107690:
	move	$a1, $a0
	dsll	$v0, $a1, 0x1
	dsrl32	$a2, $v0, 0x15
	daddiu	$a2, $a2, -1075
	slti	$v0, $a2, -53
	beqz	$v0, lbl_001076B4
	slti	$v0, $a2, 13
	jr	$ra
	move	$v0, $zero
lbl_001076B4:
	bnez	$v0, lbl_001076C4
	dsll	$v0, $a1, 0xc
	jr	$ra
	li	$v0, 9999
lbl_001076C4:
	li	$v1, 0x8000
	dsll32	$v1, $v1, 0x5
	dsrl	$a1, $v0, 0xc
	bgez	$a2, lbl_00107708
	or	$a1, $a1, $v1
	dnegu	$a2, $a2
	li	$v0, 3
	daddiu	$v1, $a2, -2
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	dsrlv	$a1, $a1, $v1
	andi	$a0, $a1, 0x3
	bnel	$a0, $v0, lbl_00107714
	dsrl	$a1, $a1, 0x2
	dsrl	$v0, $a1, 0x2
	b	lbl_00107714
	daddiu	$a1, $v0, 1
lbl_00107708:
	dsll32	$v0, $a2, 0x0
	dsra32	$v0, $v0, 0x0
	dsllv	$a1, $a1, $v0
lbl_00107714:
	dsll32	$v0, $a1, 0x0
	jr	$ra
	dsra32	$v0, $v0, 0x0

sub_00107720:
	addiu	$sp, $sp, -128
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	move	$s6, $a1
	sd	$s4, 64($sp)
	move	$s5, $a0
	sd	$s2, 32($sp)
	move	$s4, $zero
	sd	$s1, 16($sp)
	move	$s2, $zero
	sd	$s0, 0($sp)
	move	$s1, $a2
	sd	$ra, 112($sp)
	sd	$s3, 48($sp)
	lw	$v0, 0($s1)
	bnez	$v0, lbl_0010776C
	move	$s0, $a3
	b	lbl_001078D0
	move	$v0, $zero
lbl_0010776C:
	move	$s3, $zero
	move	$a0, $s0
	jal	sub_001228D8
	move	$a1, $s3
	bgez	$v0, lbl_001077B0
	move	$a1, $s0
	jal	sub_001224A8
	move	$a0, $s3
	li	$s4, 1
	move	$s0, $v0
	move	$a0, $s6
	move	$a1, $s1
	jalr	$s5
	li	$a2, 45
	lw	$v1, 0($s1)
	addiu	$v1, $v1, -1
	sw	$v1, 0($s1)
lbl_001077B0:
	lui	$at, 0x13
	ld	$a1, 18920($at)
	jal	sub_001228D8
	move	$a0, $s0
	bgez	$v0, lbl_00107804
	lui	$s3, 0x13
	b	lbl_001077E4
	nop
lbl_001077D0:
	li	$a1, 0x8048
	dsll32	$a1, $a1, 0xf
	jal	sub_00122510
	addiu	$s2, $s2, -1
	move	$s0, $v0
lbl_001077E4:
	lui	$at, 0x13
	ld	$a1, 18928($at)
	jal	sub_001228D8
	move	$a0, $s0
	bltz	$v0, lbl_001077D0
	move	$a0, $s0
	b	lbl_00107854
	nop
lbl_00107804:
	li	$a1, 0xffc0
	dsll32	$a1, $a1, 0xe
	jal	sub_001228D8
	move	$a0, $s0
	bltz	$v0, lbl_00107854
	lui	$s3, 0x13
	b	lbl_0010783C
	nop
	nop
lbl_00107828:
	li	$a1, 0x8048
	dsll32	$a1, $a1, 0xf
	jal	sub_00122798
	addiu	$s2, $s2, 1
	move	$s0, $v0
lbl_0010783C:
	li	$a1, 0xffc0
	dsll32	$a1, $a1, 0xe
	jal	sub_001228D8
	move	$a0, $s0
	bgez	$v0, lbl_00107828
	move	$a0, $s0
lbl_00107854:
	lui	$at, 0x13
	ld	$a1, 18936($at)
	jal	sub_00122510
	move	$a0, $s0
	jal	sub_00121DE8
	move	$a0, $v0
	jal	sub_00107690
	move	$a0, $v0
	addiu	$a3, $s3, 18896
	move	$t0, $v0
	move	$a0, $s5
	move	$a1, $s6
	jal	sub_001086B8
	move	$a2, $s1
	bltz	$s2, lbl_001078AC
	addu	$s4, $s4, $v0
	lui	$a3, 0x13
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	b	lbl_001078C0
	addiu	$a3, $a3, 18904
lbl_001078AC:
	lui	$a3, 0x13
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s1
	addiu	$a3, $a3, 18912
lbl_001078C0:
	jal	sub_001086B8
	move	$t0, $s2
	addu	$s4, $s4, $v0
	move	$v0, $s4
lbl_001078D0:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_001078F8:
	addiu	$sp, $sp, -288
	sd	$s8, 256($sp)
	addiu	$v0, $sp, 31
	sd	$s6, 224($sp)
	move	$s8, $t0
	sd	$ra, 272($sp)
	move	$s6, $a3
	sd	$s7, 240($sp)
	sd	$s5, 208($sp)
	sd	$s4, 192($sp)
	sd	$s3, 176($sp)
	sd	$s2, 160($sp)
	sd	$s1, 144($sp)
	sd	$s0, 128($sp)
	sw	$a2, 64($sp)
	sw	$a0, 68($sp)
	sw	$a1, 72($sp)
	lbu	$a1, 0($s6)
	sw	$v0, 76($sp)
	move	$v0, $a1
	beqz	$v0, lbl_001085BC
	sw	$zero, 88($sp)
	addiu	$v1, $sp, 64
	sw	$v1, 92($sp)
lbl_00107958:
	sll	$v0, $v0, 0x18
	move	$s5, $zero
	sra	$a2, $v0, 0x18
	sw	$zero, 80($sp)
	move	$t0, $zero
	li	$v0, 37
	bne	$a2, $v0, lbl_00108574
	sw	$zero, 84($sp)
lbl_00107978:
	addiu	$s6, $s6, 1
	lbu	$a1, 0($s6)
	addiu	$v0, $a1, -32
	sll	$v0, $v0, 0x18
	sra	$a0, $v0, 0x18
	sltiu	$v1, $a0, 89
	beqz	$v1, lbl_001080C4
	move	$a2, $a1
	lui	$v0, 0x13
	sll	$v1, $a0, 0x2
	addiu	$v0, $v0, 18992
	addu	$v1, $v1, $v0
	lw	$a0, 0($v1)
	jr	$a0
	nop
	b	lbl_00107978
	ori	$s5, $s5, 0x1
	b	lbl_00107978
	ori	$s5, $s5, 0x2
	b	lbl_00107978
	ori	$s5, $s5, 0x4
	move	$s0, $zero
	li	$a2, 10
	nop
lbl_001079D8:
	mult	$a0, $s0, $a2
	sll	$v1, $a1, 0x18
	addiu	$s6, $s6, 1
	sra	$v1, $v1, 0x18
	lbu	$a1, 0($s6)
	addiu	$a0, $a0, -48
	addiu	$v0, $a1, -48
	sltiu	$v0, $v0, 10
	bnez	$v0, lbl_001079D8
	addu	$s0, $a0, $v1
	sw	$s0, 80($sp)
lbl_00107A04:
	beqz	$a1, lbl_001085A4
	addiu	$s7, $s6, 1
	b	lbl_00107978
	addiu	$s6, $s6, -1
	addiu	$s6, $s6, 1
	ori	$s5, $s5, 0x20
	lb	$v1, 0($s6)
	li	$v0, 42
	bne	$v1, $v0, lbl_00107A48
	lbu	$a1, 0($s6)
	addiu	$s8, $s8, 8
	li	$v0, -2
	lw	$s0, -8($s8)
	li	$t0, -1
	slt	$v0, $v0, $s0
	b	lbl_00107978
	movn	$t0, $s0, $v0
lbl_00107A48:
	addiu	$v0, $a1, -48
	sltiu	$v0, $v0, 10
	beqz	$v0, lbl_00107A88
	move	$s0, $zero
	li	$a2, 10
	nop
lbl_00107A60:
	mult	$a0, $s0, $a2
	sll	$v1, $a1, 0x18
	addiu	$s6, $s6, 1
	sra	$v1, $v1, 0x18
	lbu	$a1, 0($s6)
	addiu	$a0, $a0, -48
	addiu	$v0, $a1, -48
	sltiu	$v0, $v0, 10
	bnez	$v0, lbl_00107A60
	addu	$s0, $a0, $v1
lbl_00107A88:
	li	$v0, -2
	li	$t0, -1
	slt	$v0, $v0, $s0
	b	lbl_00107A04
	movn	$t0, $s0, $v0
	b	lbl_00107978
	ori	$s5, $s5, 0x8
	b	lbl_00107978
	ori	$s5, $s5, 0x10
	b	lbl_00107978
	ori	$s5, $s5, 0x40
	b	lbl_00107978
	ori	$s5, $s5, 0x80
	andi	$v0, $s5, 0x40
	beqz	$v0, lbl_00107AD4
	andi	$v0, $s5, 0x80
	addiu	$s8, $s8, 8
	b	lbl_00107AE8
	ld	$s0, -8($s8)
lbl_00107AD4:
	beqz	$v0, lbl_00107AE4
	addiu	$s8, $s8, 8
	b	lbl_00107AE8
	lhu	$s0, -8($s8)
lbl_00107AE4:
	lwu	$s0, -8($s8)
lbl_00107AE8:
	bnez	$s0, lbl_00107B18
	lw	$s1, 76($sp)
	andi	$v0, $s5, 0x20
	beqz	$v0, lbl_00107B04
	li	$v0, 48
	beqz	$t0, lbl_00107B5C
	addiu	$s7, $s6, 1
lbl_00107B04:
	addiu	$s7, $s6, 1
	sb	$v0, 0($s1)
	andi	$s4, $s5, 0x100
	b	lbl_00107B60
	addiu	$s1, $s1, -1
lbl_00107B18:
	addiu	$s7, $s6, 1
	andi	$v1, $s5, 0x10
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107B28:
	andi	$v0, $s0, 0x7
	daddiu	$v0, $v0, 48
	dsrl	$s0, $s0, 0x3
	andi	$v0, $v0, 0xff
	sb	$v0, 0($s1)
	addiu	$s1, $s1, -1
	bnez	$s0, lbl_00107B28
	nop
	beqz	$v1, lbl_00107B64
	li	$v0, 48
	sb	$v0, 0($s1)
	b	lbl_00107B64
	addiu	$s1, $s1, -1
lbl_00107B5C:
	andi	$s4, $s5, 0x100
lbl_00107B60:
	andi	$s3, $s5, 0x1
lbl_00107B64:
	lw	$a1, 76($sp)
	b	lbl_001080F4
	addiu	$s2, $s1, 1
	lui	$v0, 0x13
	andi	$v1, $s5, 0x10
	beqz	$v1, lbl_00107BC4
	addiu	$a0, $v0, 18944
	li	$v0, 48
	li	$v1, 120
	sb	$v0, 32($sp)
	li	$v0, 2
	sb	$v1, 33($sp)
	b	lbl_00107BC4
	sw	$v0, 84($sp)
	lui	$v0, 0x13
	andi	$v1, $s5, 0x10
	beqz	$v1, lbl_00107BC4
	addiu	$a0, $v0, 18968
	li	$v0, 48
	li	$v1, 88
	li	$a1, 2
	sb	$v0, 32($sp)
	sw	$a1, 84($sp)
	sb	$v1, 33($sp)
lbl_00107BC4:
	andi	$v0, $s5, 0x40
	beqz	$v0, lbl_00107BDC
	andi	$v0, $s5, 0x80
	addiu	$s8, $s8, 8
	b	lbl_00107BF0
	ld	$s0, -8($s8)
lbl_00107BDC:
	beqz	$v0, lbl_00107BEC
	addiu	$s8, $s8, 8
	b	lbl_00107BF0
	lhu	$s0, -8($s8)
lbl_00107BEC:
	lwu	$s0, -8($s8)
lbl_00107BF0:
	bnez	$s0, lbl_00107C24
	lw	$s1, 76($sp)
	andi	$v0, $s5, 0x20
	beqz	$v0, lbl_00107C0C
	sw	$zero, 84($sp)
	beqz	$t0, lbl_00107E20
	addiu	$s7, $s6, 1
lbl_00107C0C:
	li	$v0, 48
	addiu	$s7, $s6, 1
	sb	$v0, 0($s1)
	andi	$s4, $s5, 0x100
	b	lbl_00107E24
	addiu	$s1, $s1, -1
lbl_00107C24:
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107C30:
	andi	$v0, $s0, 0xf
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	dsrl	$s0, $s0, 0x4
	addu	$v0, $a0, $v0
	lbu	$v1, 0($v0)
	sb	$v1, 0($s1)
	bnez	$s0, lbl_00107C30
	addiu	$s1, $s1, -1
	b	lbl_00107E2C
	lw	$v0, 76($sp)
	andi	$v0, $s5, 0x40
	beqz	$v0, lbl_00107C74
	andi	$v0, $s5, 0x80
	addiu	$s8, $s8, 8
	b	lbl_00107C88
	ld	$s0, -8($s8)
lbl_00107C74:
	beqz	$v0, lbl_00107C84
	addiu	$s8, $s8, 8
	b	lbl_00107C88
	lh	$s0, -8($s8)
lbl_00107C84:
	lw	$s0, -8($s8)
lbl_00107C88:
	bltz	$s0, lbl_00107CC0
	lw	$s1, 76($sp)
	andi	$v0, $s5, 0x2
	beqz	$v0, lbl_00107CA8
	li	$v0, 43
	li	$v1, 1
	b	lbl_00107CCC
	sw	$v1, 84($sp)
lbl_00107CA8:
	andi	$v0, $s5, 0x8
	beqz	$v0, lbl_00107CD0
	li	$v0, 32
	li	$a0, 1
	b	lbl_00107CCC
	sw	$a0, 84($sp)
lbl_00107CC0:
	li	$v0, 45
	li	$a1, 1
	sw	$a1, 84($sp)
lbl_00107CCC:
	sb	$v0, 32($sp)
lbl_00107CD0:
	bnez	$s0, lbl_00107D04
	li	$v0, -1
	andi	$v0, $s5, 0x20
	beqz	$v0, lbl_00107CEC
	lw	$v1, 76($sp)
	beqz	$t0, lbl_00107D60
	addiu	$s7, $s6, 1
lbl_00107CEC:
	li	$v0, 48
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	addiu	$s1, $v1, -1
	b	lbl_00107D64
	sb	$v0, 0($v1)
lbl_00107D04:
	dnegu	$v1, $s0
	slt	$v0, $v0, $s0
	movz	$s0, $v1, $v0
	beqz	$s0, lbl_00107D60
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107D20:
	move	$a0, $s0
	li	$a1, 10
	jal	sub_00120B88
	sq	$t0, 112($sp)
	daddiu	$v0, $v0, 48
	move	$a0, $s0
	andi	$v0, $v0, 0xff
	li	$a1, 10
	jal	sub_001204F0
	sb	$v0, 0($s1)
	addiu	$s1, $s1, -1
	move	$s0, $v0
	bnez	$s0, lbl_00107D20
	lq	$t0, 112($sp)
	b	lbl_00107D6C
	lw	$a1, 76($sp)
lbl_00107D60:
	andi	$s4, $s5, 0x100
lbl_00107D64:
	andi	$s3, $s5, 0x1
	lw	$a1, 76($sp)
lbl_00107D6C:
	b	lbl_001080F4
	addiu	$s2, $s1, 1
	andi	$v0, $s5, 0x40
	beqz	$v0, lbl_00107D8C
	andi	$v0, $s5, 0x80
	addiu	$s8, $s8, 8
	b	lbl_00107DA0
	ld	$s0, -8($s8)
lbl_00107D8C:
	beqz	$v0, lbl_00107D9C
	addiu	$s8, $s8, 8
	b	lbl_00107DA0
	lhu	$s0, -8($s8)
lbl_00107D9C:
	lwu	$s0, -8($s8)
lbl_00107DA0:
	bnez	$s0, lbl_00107DD0
	lw	$s1, 76($sp)
	andi	$v0, $s5, 0x20
	beqz	$v0, lbl_00107DBC
	li	$v0, 48
	beqz	$t0, lbl_00107E20
	addiu	$s7, $s6, 1
lbl_00107DBC:
	addiu	$s7, $s6, 1
	sb	$v0, 0($s1)
	andi	$s4, $s5, 0x100
	b	lbl_00107E24
	addiu	$s1, $s1, -1
lbl_00107DD0:
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
	nop
lbl_00107DE0:
	move	$a0, $s0
	li	$a1, 10
	jal	sub_00121798
	sq	$t0, 112($sp)
	daddiu	$v0, $v0, 48
	move	$a0, $s0
	andi	$v0, $v0, 0xff
	li	$a1, 10
	jal	sub_00121218
	sb	$v0, 0($s1)
	addiu	$s1, $s1, -1
	move	$s0, $v0
	bnez	$s0, lbl_00107DE0
	lq	$t0, 112($sp)
	b	lbl_00107E2C
	lw	$v0, 76($sp)
lbl_00107E20:
	andi	$s4, $s5, 0x100
lbl_00107E24:
	andi	$s3, $s5, 0x1
	lw	$v0, 76($sp)
lbl_00107E2C:
	addiu	$s2, $s1, 1
	b	lbl_001080F8
	subu	$a0, $v0, $s1
	addiu	$s8, $s8, 8
	jal	sub_00122A10
	ld	$a0, -8($s8)
	mov.s	$f12, $f0
	mtc1	$zero, $f0
	c.eq.s	$f12, $f0
	nop
	bc1f	lbl_00107E6C
	lw	$a0, 72($sp)
	li	$a2, 48
	lw	$a1, 92($sp)
	b	lbl_00108584
	addiu	$s7, $s6, 1
lbl_00107E6C:
	jal	sub_001221B0
	addiu	$s7, $s6, 1
	lw	$a0, 68($sp)
	move	$a3, $v0
	lw	$a1, 72($sp)
	jal	sub_00107720
	lw	$a2, 92($sp)
	lw	$a1, 88($sp)
	addu	$a1, $a1, $v0
	sw	$a1, 88($sp)
lbl_00107E94:
	b	lbl_001085A4
	lbu	$a1, 0($s6)
	addiu	$s8, $s8, 8
	lw	$v1, -8($s8)
	bnez	$v1, lbl_00107F30
	andi	$v0, $s5, 0x20
	lw	$a0, 72($sp)
	li	$a2, 40
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	addiu	$s7, $s6, 1
	lw	$a0, 72($sp)
	li	$a2, 110
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 72($sp)
	li	$a2, 117
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 72($sp)
	li	$a2, 108
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 72($sp)
	li	$a2, 108
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 72($sp)
	li	$a2, 41
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	b	lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00107F30:
	beqz	$v0, lbl_00107F90
	move	$s1, $v1
	blez	$t0, lbl_00107F7C
	move	$s0, $zero
	lb	$v0, 0($s1)
	beqz	$v0, lbl_00107F7C
	addiu	$s1, $s1, 1
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107F58:
	addiu	$s0, $s0, 1
	slt	$v0, $s0, $t0
	beqz	$v0, lbl_00107FD8
	move	$a0, $s0
	lb	$v0, 0($s1)
	bnez	$v0, lbl_00107F58
	addiu	$s1, $s1, 1
	b	lbl_001080F8
	move	$s2, $v1
lbl_00107F7C:
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
	b	lbl_00107FD8
	move	$a0, $s0
lbl_00107F90:
	lb	$v0, 0($s1)
	beqz	$v0, lbl_00107FCC
	move	$a0, $zero
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107FA8:
	addiu	$s1, $s1, 1
	addiu	$a0, $a0, 1
	lb	$v0, 0($s1)
	nop
	nop
	bnez	$v0, lbl_00107FA8
	nop
	b	lbl_001080F8
	move	$s2, $v1
lbl_00107FCC:
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
lbl_00107FD8:
	b	lbl_001080F8
	move	$s2, $v1
	addiu	$s8, $s8, 8
	lw	$s1, 76($sp)
	lb	$s0, -8($s8)
	ori	$s5, $s5, 0x100
	li	$t0, 1
	addiu	$s7, $s6, 1
	andi	$v0, $s0, 0xff
	andi	$s4, $s5, 0x100
	sb	$v0, 0($s1)
	andi	$s3, $s5, 0x1
	addiu	$s1, $s1, -1
	lw	$a1, 76($sp)
	b	lbl_001080F4
	addiu	$s2, $s1, 1
	addiu	$s8, $s8, 8
	lui	$v0, 0x13
	lwu	$s0, -8($s8)
	addiu	$a0, $v0, 18944
	bnez	$s0, lbl_00108058
	lw	$s1, 76($sp)
	andi	$v0, $s5, 0x20
	beqz	$v0, lbl_00108044
	li	$v0, 48
	beqz	$t0, lbl_00108094
	addiu	$s7, $s6, 1
lbl_00108044:
	addiu	$s7, $s6, 1
	sb	$v0, 0($s1)
	andi	$s4, $s5, 0x100
	b	lbl_00108098
	addiu	$s1, $s1, -1
lbl_00108058:
	addiu	$s7, $s6, 1
	andi	$s4, $s5, 0x100
	andi	$s3, $s5, 0x1
	nop
lbl_00108068:
	andi	$v0, $s0, 0xf
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	dsrl	$s0, $s0, 0x4
	addu	$v0, $a0, $v0
	lbu	$v1, 0($v0)
	sb	$v1, 0($s1)
	bnez	$s0, lbl_00108068
	addiu	$s1, $s1, -1
	b	lbl_001080A0
	li	$v0, 48
lbl_00108094:
	andi	$s4, $s5, 0x100
lbl_00108098:
	andi	$s3, $s5, 0x1
	li	$v0, 48
lbl_001080A0:
	li	$v1, 120
	sb	$v0, 32($sp)
	addiu	$s2, $s1, 1
	lw	$v0, 76($sp)
	sb	$v1, 33($sp)
	li	$v1, 2
	subu	$a0, $v0, $s1
	b	lbl_001080F8
	sw	$v1, 84($sp)
lbl_001080C4:
	sll	$v0, $a2, 0x18
	beqz	$v0, lbl_001085A0
	lw	$s1, 76($sp)
	ori	$s5, $s5, 0x100
	li	$t0, 1
	addiu	$s7, $s6, 1
	sb	$a1, 0($s1)
	andi	$s4, $s5, 0x100
	lw	$a1, 76($sp)
	addiu	$s1, $s1, -1
	addiu	$s2, $s1, 1
	andi	$s3, $s5, 0x1
lbl_001080F4:
	subu	$a0, $a1, $s1
lbl_001080F8:
	move	$v0, $t0
	lw	$a1, 80($sp)
	slt	$v0, $a0, $v0
	subu	$t0, $t0, $a0
	movz	$t0, $zero, $v0
	subu	$v1, $a1, $a0
	lw	$v0, 84($sp)
	addu	$s1, $s2, $a0
	subu	$v1, $v1, $v0
	subu	$v1, $v1, $t0
	beqz	$s4, lbl_00108144
	sw	$v1, 80($sp)
	andi	$v0, $s5, 0x4
	beqz	$v0, lbl_00108164
	li	$a3, 32
	lw	$a0, 80($sp)
	li	$v1, 48
	b	lbl_00108160
	slti	$v0, $a0, 1
lbl_00108144:
	andi	$v1, $s5, 0x24
	li	$v0, 4
	bne	$v1, $v0, lbl_00108164
	li	$a3, 32
	lw	$a1, 80($sp)
	li	$v1, 48
	slti	$v0, $a1, 1
lbl_00108160:
	movz	$a3, $v1, $v0
lbl_00108164:
	beqz	$s3, lbl_00108270
	lw	$v0, 84($sp)
	beqz	$v0, lbl_001081C4
	move	$s0, $zero
	addiu	$s3, $sp, 32
	sltu	$s4, $s2, $s1
	nop
lbl_00108180:
	addu	$v0, $s3, $s0
	lw	$a0, 72($sp)
	lb	$a2, 0($v0)
	addiu	$s0, $s0, 1
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 84($sp)
	addu	$a0, $a0, $v0
	lq	$t0, 112($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_00108180
	sw	$a0, 88($sp)
	b	lbl_001081C8
	nop
lbl_001081C4:
	sltu	$s4, $s2, $s1
lbl_001081C8:
	blez	$t0, lbl_00108200
	nop
	move	$s0, $t0
	nop
lbl_001081D8:
	lw	$a0, 72($sp)
	li	$a2, 48
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	addiu	$s0, $s0, -1
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	bnez	$s0, lbl_001081D8
	sw	$a0, 88($sp)
lbl_00108200:
	beqz	$s4, lbl_00108238
	lw	$a1, 80($sp)
lbl_00108208:
	lb	$a2, 0($s2)
	lw	$a0, 72($sp)
	addiu	$s2, $s2, 1
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	sltu	$v0, $s2, $s1
	bnez	$v0, lbl_00108208
	sw	$a0, 88($sp)
	lw	$a1, 80($sp)
lbl_00108238:
	blez	$a1, lbl_00107E94
	move	$s0, $a1
lbl_00108240:
	lw	$a0, 72($sp)
	li	$a2, 32
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	addiu	$s0, $s0, -1
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	bnez	$s0, lbl_00108240
	sw	$a0, 88($sp)
	b	lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00108270:
	andi	$v0, $s5, 0x4
	beqz	$v0, lbl_00108454
	li	$v0, 48
	bne	$a3, $v0, lbl_00108338
	lw	$a1, 80($sp)
	lw	$a1, 84($sp)
	beqz	$a1, lbl_001082E4
	move	$s0, $zero
	addiu	$s3, $sp, 32
	sltu	$s4, $s2, $s1
lbl_00108298:
	addu	$v0, $s3, $s0
	lw	$a0, 72($sp)
	lb	$a2, 0($v0)
	addiu	$s0, $s0, 1
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	sq	$a3, 96($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 84($sp)
	addu	$a0, $a0, $v0
	lq	$a3, 96($sp)
	sw	$a0, 88($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_00108298
	lq	$t0, 112($sp)
	b	lbl_001082EC
	lw	$v0, 80($sp)
lbl_001082E4:
	sltu	$s4, $s2, $s1
	lw	$v0, 80($sp)
lbl_001082EC:
	blez	$v0, lbl_001083E4
	nop
	move	$s0, $v0
lbl_001082F8:
	lw	$a0, 72($sp)
	move	$a2, $a3
	lw	$a1, 92($sp)
	addiu	$s0, $s0, -1
	lw	$v1, 68($sp)
	sq	$a3, 96($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lq	$a3, 96($sp)
	addu	$a0, $a0, $v0
	lq	$t0, 112($sp)
	bnez	$s0, lbl_001082F8
	sw	$a0, 88($sp)
	b	lbl_001083E4
	nop
lbl_00108338:
	blez	$a1, lbl_00108390
	move	$s0, $zero
	sltu	$s4, $s2, $s1
	nop
lbl_00108348:
	lw	$a0, 72($sp)
	move	$a2, $a3
	lw	$a1, 92($sp)
	addiu	$s0, $s0, 1
	lw	$v1, 68($sp)
	sq	$a3, 96($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 80($sp)
	addu	$a0, $a0, $v0
	lq	$a3, 96($sp)
	sw	$a0, 88($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_00108348
	lq	$t0, 112($sp)
	b	lbl_00108398
	lw	$v0, 84($sp)
lbl_00108390:
	sltu	$s4, $s2, $s1
	lw	$v0, 84($sp)
lbl_00108398:
	beqz	$v0, lbl_001083E4
	move	$s0, $zero
	addiu	$s3, $sp, 32
	nop
lbl_001083A8:
	addu	$v0, $s3, $s0
	lw	$a0, 72($sp)
	lb	$a2, 0($v0)
	addiu	$s0, $s0, 1
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 84($sp)
	addu	$a0, $a0, $v0
	lq	$t0, 112($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_001083A8
	sw	$a0, 88($sp)
lbl_001083E4:
	blez	$t0, lbl_00108418
	nop
	move	$s0, $t0
lbl_001083F0:
	lw	$a0, 72($sp)
	li	$a2, 48
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	addiu	$s0, $s0, -1
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	bnez	$s0, lbl_001083F0
	sw	$a0, 88($sp)
lbl_00108418:
	beqzl	$s4, lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00108420:
	lb	$a2, 0($s2)
	lw	$a0, 72($sp)
	addiu	$s2, $s2, 1
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	sltu	$v0, $s2, $s1
	bnez	$v0, lbl_00108420
	sw	$a0, 88($sp)
	b	lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00108454:
	lw	$a1, 80($sp)
	blez	$a1, lbl_001084B0
	move	$s0, $zero
	sltu	$s4, $s2, $s1
	nop
lbl_00108468:
	lw	$a0, 72($sp)
	move	$a2, $a3
	lw	$a1, 92($sp)
	addiu	$s0, $s0, 1
	lw	$v1, 68($sp)
	sq	$a3, 96($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 80($sp)
	addu	$a0, $a0, $v0
	lq	$a3, 96($sp)
	sw	$a0, 88($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_00108468
	lq	$t0, 112($sp)
	b	lbl_001084B8
	lw	$v0, 84($sp)
lbl_001084B0:
	sltu	$s4, $s2, $s1
	lw	$v0, 84($sp)
lbl_001084B8:
	beqz	$v0, lbl_00108504
	move	$s0, $zero
	addiu	$s3, $sp, 32
	nop
lbl_001084C8:
	addu	$v0, $s3, $s0
	lw	$a0, 72($sp)
	lb	$a2, 0($v0)
	addiu	$s0, $s0, 1
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	sq	$t0, 112($sp)
	lw	$a0, 88($sp)
	lw	$a1, 84($sp)
	addu	$a0, $a0, $v0
	lq	$t0, 112($sp)
	slt	$v0, $s0, $a1
	bnez	$v0, lbl_001084C8
	sw	$a0, 88($sp)
lbl_00108504:
	blez	$t0, lbl_00108538
	nop
	move	$s0, $t0
lbl_00108510:
	lw	$a0, 72($sp)
	li	$a2, 48
	lw	$a1, 92($sp)
	lw	$v1, 68($sp)
	jalr	$v1
	addiu	$s0, $s0, -1
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	bnez	$s0, lbl_00108510
	sw	$a0, 88($sp)
lbl_00108538:
	beqzl	$s4, lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00108540:
	lb	$a2, 0($s2)
	lw	$a0, 72($sp)
	addiu	$s2, $s2, 1
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	sltu	$v0, $s2, $s1
	bnez	$v0, lbl_00108540
	sw	$a0, 88($sp)
	b	lbl_001085A4
	lbu	$a1, 0($s6)
lbl_00108574:
	beqz	$a2, lbl_001085A0
	lw	$a0, 72($sp)
	addiu	$s7, $s6, 1
	lw	$a1, 92($sp)
lbl_00108584:
	lw	$v1, 68($sp)
	jalr	$v1
	nop
	lw	$a0, 88($sp)
	addu	$a0, $a0, $v0
	b	lbl_00107E94
	sw	$a0, 88($sp)
lbl_001085A0:
	addiu	$s7, $s6, 1
lbl_001085A4:
	movn	$s6, $s7, $a1
	lbu	$v0, 0($s6)
	bnez	$v0, lbl_00107958
	move	$a1, $v0
	b	lbl_001085C8
	lw	$a0, 72($sp)
lbl_001085BC:
	addiu	$a1, $sp, 64
	sw	$a1, 92($sp)
	lw	$a0, 72($sp)
lbl_001085C8:
	move	$a2, $zero
	lw	$v1, 68($sp)
	jalr	$v1
	lw	$a1, 92($sp)
	lw	$v0, 88($sp)
	ld	$ra, 272($sp)
	ld	$s8, 256($sp)
	ld	$s7, 240($sp)
	ld	$s6, 224($sp)
	ld	$s5, 208($sp)
	ld	$s4, 192($sp)
	ld	$s3, 176($sp)
	ld	$s2, 160($sp)
	ld	$s1, 144($sp)
	ld	$s0, 128($sp)
	jr	$ra
	addiu	$sp, $sp, 288
	nop
	lw	$v1, 0($a1)
	bnez	$v1, lbl_00108624
	move	$a3, $a0
	jr	$ra
	li	$v0, 1
lbl_00108624:
	slti	$v0, $a2, 256
	beqzl	$v0, lbl_0010865C
	lw	$v1, 0($a3)
	xori	$v0, $v1, 0x1
	lw	$a0, 0($a3)
	movz	$a2, $zero, $v0
	sb	$a2, 0($a0)
	li	$v0, 1
	addiu	$a0, $a0, 1
	lw	$v1, 0($a1)
	sw	$a0, 0($a3)
	addiu	$v1, $v1, -1
	jr	$ra
	sw	$v1, 0($a1)
lbl_0010865C:
	move	$v0, $zero
	jr	$ra
	sb	$zero, 0($v1)
	addiu	$sp, $sp, -16
	move	$a0, $a2
	beqz	$a0, lbl_00108680
	sd	$ra, 0($sp)
	jal	sub_001075A8
	nop
lbl_00108680:
	ld	$ra, 0($sp)
	li	$v0, 1
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	move	$a0, $a2
	beqz	$a0, lbl_001086A8
	sd	$ra, 0($sp)
	jal	sub_00107658
	nop
lbl_001086A8:
	ld	$ra, 0($sp)
	li	$v0, 1
	jr	$ra
	addiu	$sp, $sp, 16

sub_001086B8:
	addiu	$sp, $sp, -128
	sd	$s0, 0($sp)
	sd	$t0, 96($sp)
	move	$s0, $a2
	sd	$ra, 16($sp)
	addiu	$t0, $sp, 96
	lw	$a2, 0($s0)
	sd	$t1, 104($sp)
	sd	$t2, 112($sp)
	jal	sub_001078F8
	sd	$t3, 120($sp)
	lw	$v1, 0($s0)
	move	$a0, $v0
	ld	$ra, 16($sp)
	subu	$v1, $v1, $a0
	sw	$v1, 0($s0)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop
	addiu	$sp, $sp, -32
	move	$v0, $a2
	sw	$a0, 0($sp)
	move	$t0, $a3
	move	$a2, $a1
	lui	$a0, 0x11
	sd	$ra, 16($sp)
	addiu	$a0, $a0, -31216
	move	$a3, $v0
	jal	sub_001078F8
	move	$a1, $sp
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -144
	sd	$a3, 104($sp)
	sw	$a0, 0($sp)
	move	$a3, $a2
	sd	$t0, 112($sp)
	move	$a2, $a1
	lui	$a0, 0x11
	sd	$ra, 16($sp)
	sd	$t1, 120($sp)
	addiu	$a0, $a0, -31216
	sd	$t2, 128($sp)
	move	$a1, $sp
	sd	$t3, 136($sp)
	jal	sub_001078F8
	addiu	$t0, $sp, 104
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s1, 32($sp)
	move	$s2, $a1
	sd	$s0, 16($sp)
	move	$s1, $a0
	sd	$ra, 64($sp)
	jal	sub_0010F420
	sw	$zero, 0($sp)
	lui	$a0, 0x11
	lui	$a2, 0xffff
	move	$s0, $v0
	addiu	$a0, $a0, -31128
	move	$a3, $s1
	move	$t0, $s2
	move	$a1, $sp
	jal	sub_001078F8
	ori	$a2, $a2, 0xffff
	beqz	$s0, lbl_001087E4
	ld	$ra, 64($sp)
	jal	sub_0010F470
	nop
	ld	$ra, 64($sp)
lbl_001087E4:
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_001087F8:
	addiu	$sp, $sp, -192
	sd	$s0, 16($sp)
	sd	$s1, 32($sp)
	move	$s0, $a0
	sd	$ra, 48($sp)
	sd	$a1, 136($sp)
	sd	$a2, 144($sp)
	sd	$a3, 152($sp)
	sd	$t0, 160($sp)
	sd	$t1, 168($sp)
	sd	$t2, 176($sp)
	sd	$t3, 184($sp)
	jal	sub_0010F420
	sw	$zero, 0($sp)
	lui	$a0, 0x11
	lui	$a2, 0xffff
	move	$s1, $v0
	addiu	$a0, $a0, -31128
	move	$a3, $s0
	move	$a1, $sp
	ori	$a2, $a2, 0xffff
	jal	sub_001078F8
	addiu	$t0, $sp, 136
	beqz	$s1, lbl_00108868
	ld	$ra, 48($sp)
	jal	sub_0010F470
	nop
	ld	$ra, 48($sp)
lbl_00108868:
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 192

sub_00108878:
	addiu	$sp, $sp, -192
	sd	$s0, 16($sp)
	sd	$s1, 32($sp)
	move	$s0, $a0
	sd	$ra, 48($sp)
	sd	$a1, 136($sp)
	sd	$a2, 144($sp)
	sd	$a3, 152($sp)
	sd	$t0, 160($sp)
	sd	$t1, 168($sp)
	sd	$t2, 176($sp)
	sd	$t3, 184($sp)
	jal	sub_0010F420
	sw	$zero, 0($sp)
	lui	$a0, 0x11
	lui	$a2, 0xffff
	move	$s1, $v0
	addiu	$a0, $a0, -31088
	move	$a3, $s0
	move	$a1, $sp
	ori	$a2, $a2, 0xffff
	jal	sub_001078F8
	addiu	$t0, $sp, 136
	beqz	$s1, lbl_001088E8
	ld	$ra, 48($sp)
	jal	sub_0010F470
	nop
	ld	$ra, 48($sp)
lbl_001088E8:
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 192

sub_001088F8:
	addiu	$sp, $sp, -64
	sd	$ra, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	jal	sub_0010F420
	sd	$s0, 0($sp)
	lui	$v1, 0x13
	lw	$v0, -3624($v1)
	beqz	$v0, lbl_00108938
	li	$s1, 1
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 64
lbl_00108938:
	jal	sub_0010F470
	sw	$s1, -3624($v1)
	jal	sub_00112218
	nop
	jal	sub_0010F420
	nop
	lui	$v1, 0x14
	lui	$t0, 0x14
	addiu	$s2, $v1, 3648
	lui	$a2, 0x14
	lui	$a3, 0x14
	addiu	$s0, $t0, 9792
	li	$v1, 32
	lui	$v0, 0x2000
	addiu	$a2, $a2, 5696
	addiu	$a3, $a3, 7744
	or	$a2, $a2, $v0
	or	$a3, $a3, $v0
	sw	$v1, 32($s0)
	or	$v0, $s2, $v0
	sw	$s1, 9792($t0)
	lui	$a1, 0x11
	sw	$a2, 20($s0)
	lui	$a0, 0x8000
	sw	$v0, 4($s0)
	addiu	$a1, $a1, -29704
	sw	$a3, 28($s0)
	ori	$a0, $a0, 0x8
	move	$a2, $s0
	sw	$v1, 8($s0)
	sw	$zero, 12($s0)
	sw	$zero, 16($s0)
	sw	$v1, 24($s0)
	jal	sub_00112500
	sw	$zero, 36($s0)
	lui	$a1, 0x11
	lui	$a0, 0x8000
	addiu	$a1, $a1, -28720
	ori	$a0, $a0, 0x9
	jal	sub_00112500
	move	$a2, $s0
	lui	$a1, 0x11
	lui	$a0, 0x8000
	addiu	$a1, $a1, -28176
	ori	$a0, $a0, 0xa
	jal	sub_00112500
	move	$a2, $s0
	lui	$a1, 0x11
	lui	$a0, 0x8000
	addiu	$a1, $a1, -29432
	move	$a2, $s0
	jal	sub_00112500
	ori	$a0, $a0, 0xc
	jal	sub_0010F470
	nop
	lui	$a0, 0x8000
	jal	sub_00106CF0
	ori	$a0, $a0, 0x2
	bnez	$v0, lbl_00108A80
	ld	$ra, 48($sp)
	addiu	$a1, $s2, 64
	lui	$a0, 0x8000
	sw	$s1, 12($a1)
	ori	$a0, $a0, 0x2
	li	$a2, 16
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	nop
lbl_00108A50:
	jal	sub_001121D0
	move	$a0, $zero
	beqz	$v0, lbl_00108A50
	ld	$ra, 48($sp)
	lui	$a0, 0x8000
	ld	$s2, 32($sp)
	li	$a1, 1
	ld	$s1, 16($sp)
	ori	$a0, $a0, 0x2
	ld	$s0, 0($sp)
	j	sub_00106CE0
	addiu	$sp, $sp, 64
lbl_00108A80:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00108A98:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00112498
	nop
	lui	$v0, 0x13
	ld	$ra, 0($sp)
	sw	$zero, -3624($v0)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00108AC0:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s1, $a0
	lw	$a0, 8($s1)
	move	$v1, $zero
	blez	$a0, lbl_00108B48
	lw	$s0, 4($s1)
	li	$a1, 1
	nop
lbl_00108AF0:
	lw	$v0, 16($s0)
	andi	$v0, $v0, 0x1
	bnezl	$v0, lbl_00108B3C
	addiu	$v1, $v1, 1
	sll	$v0, $v1, 0x10
	ori	$v0, $v0, 0x5
	sw	$v0, 16($s0)
	lw	$v0, 0($s1)
	addiu	$v1, $v0, 1
	bne	$v1, $a1, lbl_00108B28
	sw	$v1, 0($s1)
	addiu	$v0, $v0, 2
	li	$v1, 1
	sw	$v0, 0($s1)
lbl_00108B28:
	sw	$s0, 20($s0)
	jal	sub_0010F470
	sw	$v1, 24($s0)
	b	lbl_00108B54
	move	$v0, $s0
lbl_00108B3C:
	slt	$v0, $v1, $a0
	bnez	$v0, lbl_00108AF0
	addiu	$s0, $s0, 64
lbl_00108B48:
	jal	sub_0010F470
	nop
	move	$v0, $zero
lbl_00108B54:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00108B68:
	lw	$v1, 16($a0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffe
	sw	$zero, 24($a0)
	and	$v1, $v1, $v0
	jr	$ra
	sw	$v1, 16($a0)
	nop

sub_00108B88:
	lw	$a1, 36($a0)
	lw	$v1, 24($a0)
	div	$zero, $a1, $v1
	beqzl	$v1, lbl_00108B9C
	break	0x7
lbl_00108B9C:
	lw	$a1, 20($a0)
	mfhi	$v0
	addiu	$v1, $v0, 1
	sll	$v0, $v0, 0x6
	sw	$v1, 36($a0)
	jr	$ra
	addu	$v0, $a1, $v0

sub_00108BB8:
	addiu	$sp, $sp, -16
	bltz	$a1, lbl_00108BD4
	sd	$ra, 0($sp)
	lw	$v0, 32($a0)
	slt	$v0, $a1, $v0
	bnezl	$v0, lbl_00108BE4
	lw	$v1, 28($a0)
lbl_00108BD4:
	jal	sub_00108B88
	nop
	b	lbl_00108BF0
	ld	$ra, 0($sp)
lbl_00108BE4:
	sll	$v0, $a1, 0x6
	addu	$v0, $v1, $v0
	ld	$ra, 0($sp)
lbl_00108BF0:
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -64
	lui	$v0, 0x8000
	sd	$s2, 32($sp)
	ori	$v0, $v0, 0xa
	sd	$ra, 48($sp)
	move	$s2, $a0
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lw	$v1, 32($s2)
	beq	$v1, $v0, lbl_00108C44
	sltu	$v0, $v0, $v1
	bnez	$v0, lbl_00108C8C
	lw	$s1, 28($s2)
	lui	$v0, 0x8000
	ori	$v0, $v0, 0x9
	beq	$v1, $v0, lbl_00108C7C
	nop
	b	lbl_00108C90
	lw	$a0, 8($s1)
lbl_00108C44:
	lw	$s1, 28($s2)
	lw	$v0, 28($s1)
	beqzl	$v0, lbl_00108C90
	lw	$a0, 8($s1)
	lw	$v0, 24($s1)
	move	$s0, $gp
	move	$gp, $v0
	lw	$v0, 28($s1)
	jalr	$v0
	lw	$a0, 32($s1)
	move	$v1, $gp
	move	$gp, $s0
	b	lbl_00108C8C
	lw	$s1, 28($s2)
lbl_00108C7C:
	lw	$v0, 36($s2)
	sw	$v0, 36($s1)
	lw	$v1, 40($s2)
	sw	$v1, 20($s1)
lbl_00108C8C:
	lw	$a0, 8($s1)
lbl_00108C90:
	bltz	$a0, lbl_00108CA0
	nop
	jal	sub_00106910
	nop
lbl_00108CA0:
	jal	sub_00108B68
	lw	$a0, 0($s1)
	sw	$zero, 0($s1)
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -16
	move	$a1, $a3
	sd	$ra, 0($sp)
	lui	$a0, 0x8000
	ori	$a0, $a0, 0x8
	li	$a2, 64
	lw	$a3, 36($a1)
	lw	$t0, 40($a1)
	jal	sub_00112740
	lw	$t1, 44($a1)
	li	$v1, 2048
	ld	$ra, 0($sp)
	movn	$v1, $zero, $v0
	move	$v0, $v1
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$ra, 32($sp)
	sd	$s0, 0($sp)
	move	$a0, $a1
	lw	$a1, 16($s1)
	andi	$v0, $a1, 0x4
	beqz	$v0, lbl_00108D40
	nop
	jal	sub_00108BB8
	srl	$a1, $a1, 0x10
	b	lbl_00108D4C
	move	$s0, $v0
lbl_00108D40:
	jal	sub_00108B88
	nop
	move	$s0, $v0
lbl_00108D4C:
	lw	$v1, 20($s1)
	lui	$v0, 0x8000
	lw	$a1, 28($s1)
	ori	$v0, $v0, 0xc
	sw	$v1, 20($s0)
	lui	$a0, 0x8000
	sw	$a1, 28($s0)
	ori	$a0, $a0, 0x8
	sw	$v0, 32($s0)
	move	$a1, $s0
	li	$a2, 64
	lw	$v0, 32($s1)
	sw	$v0, 36($s0)
	lw	$v1, 36($s1)
	sw	$v1, 40($s0)
	lw	$v0, 40($s1)
	sw	$v0, 44($s0)
	lw	$t1, 40($s1)
	lw	$a3, 32($s1)
	jal	sub_00112740
	lw	$t0, 36($s1)
	bnez	$v0, lbl_00108DC8
	ld	$ra, 32($sp)
	move	$a2, $s0
	lui	$a1, 0x11
	addiu	$a1, $a1, -29496
	ld	$s1, 16($sp)
	li	$a0, 2048
	ld	$s0, 0($sp)
	j	lbl_001111E0
	addiu	$sp, $sp, 48
lbl_00108DC8:
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	addiu	$sp, $sp, -144
	sd	$s1, 48($sp)
	move	$s1, $a0
	sd	$s5, 112($sp)
	sd	$s4, 96($sp)
	lui	$a0, 0x14
	sd	$s3, 80($sp)
	move	$s4, $a2
	sd	$s2, 64($sp)
	move	$s3, $a1
	sd	$s0, 32($sp)
	move	$s5, $a3
	sd	$ra, 128($sp)
	move	$s2, $t0
	jal	sub_00108AC0
	addiu	$a0, $a0, 9792
	move	$s0, $v0
	beqz	$s0, lbl_00108F18
	li	$v0, -1
	lw	$v0, 24($s0)
	andi	$v1, $s2, 0x1
	sw	$s0, 0($s1)
	sw	$v0, 4($s1)
	sw	$s3, 32($s0)
	sw	$s4, 36($s0)
	sw	$s5, 40($s0)
	sw	$s0, 20($s0)
	bnez	$v1, lbl_00108EDC
	sw	$s1, 28($s0)
	lui	$v0, 0x13
	li	$v1, 1
	addiu	$v0, $v0, 19352
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$zero, 8($sp)
	bgez	$v0, lbl_00108E84
	sw	$v0, 8($s1)
	jal	sub_00108B68
	move	$a0, $s0
	b	lbl_00108F18
	li	$v0, -3
lbl_00108E84:
	lui	$a0, 0x8000
	move	$a1, $s0
	ori	$a0, $a0, 0xc
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_00108EC4
	nop
	jal	sub_00108B68
	move	$a0, $s0
	jal	sub_001068F0
	lw	$a0, 8($s1)
	b	lbl_00108F18
	li	$v0, -2
lbl_00108EC4:
	jal	sub_00106920
	lw	$a0, 8($s1)
	jal	sub_001068F0
	lw	$a0, 8($s1)
	b	lbl_00108F18
	move	$v0, $zero
lbl_00108EDC:
	li	$v0, -1
	lui	$a0, 0x8000
	sw	$v0, 8($s1)
	ori	$a0, $a0, 0xc
	move	$a1, $s0
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_00108F18
	move	$v0, $zero
	jal	sub_00108B68
	move	$a0, $s0
	li	$v0, -2
lbl_00108F18:
	ld	$ra, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop

sub_00108F40:
	lw	$a1, 40($a1)
	beqz	$a1, lbl_00108F84
	nop
	lw	$v1, 8($a1)
lbl_00108F50:
	beqzl	$v1, lbl_00108F7C
	lw	$a1, 20($a1)
	lw	$v0, 0($v1)
	nop
lbl_00108F60:
	bnel	$v0, $a0, lbl_00108F70
	lw	$v1, 56($v1)
	jr	$ra
	move	$v0, $v1
lbl_00108F70:
	bnezl	$v1, lbl_00108F60
	lw	$v0, 0($v1)
	lw	$a1, 20($a1)
lbl_00108F7C:
	bnezl	$a1, lbl_00108F50
	lw	$v1, 8($a1)
lbl_00108F84:
	jr	$ra
	move	$v0, $zero
	nop
	addiu	$sp, $sp, -16
	move	$a1, $a3
	lui	$a0, 0x8000
	sd	$ra, 0($sp)
	ori	$a0, $a0, 0x8
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112740
	move	$t1, $zero
	li	$v1, 2048
	ld	$ra, 0($sp)
	movn	$v1, $zero, $v0
	move	$v0, $v1
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a1
	move	$s0, $a0
	sd	$s2, 32($sp)
	sd	$ra, 48($sp)
	jal	sub_00108B88
	move	$a0, $s1
	move	$s2, $v0
	lw	$a0, 28($s0)
	lw	$v1, 20($s0)
	lui	$v0, 0x8000
	ori	$v0, $v0, 0x9
	sw	$a0, 28($s2)
	sw	$v1, 20($s2)
	move	$a1, $s1
	sw	$v0, 32($s2)
	jal	sub_00108F40
	lw	$a0, 32($s0)
	bnezl	$v0, lbl_00109034
	sw	$v0, 36($s2)
	sw	$zero, 36($s2)
	b	lbl_0010903C
	sw	$zero, 40($s2)
lbl_00109034:
	lw	$v0, 8($v0)
	sw	$v0, 40($s2)
lbl_0010903C:
	lui	$a0, 0x8000
	move	$a1, $s2
	ori	$a0, $a0, 0x8
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112740
	move	$t1, $zero
	bnez	$v0, lbl_00109088
	ld	$ra, 48($sp)
	move	$a2, $s2
	lui	$a1, 0x11
	addiu	$a1, $a1, -28784
	ld	$s2, 32($sp)
	li	$a0, 2048
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	lbl_001111E0
	addiu	$sp, $sp, 64
lbl_00109088:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_001090A0:
	addiu	$sp, $sp, -112
	sd	$s1, 48($sp)
	sd	$s3, 80($sp)
	move	$s1, $a0
	sd	$s2, 64($sp)
	lui	$a0, 0x14
	sd	$s0, 32($sp)
	move	$s3, $a1
	sd	$ra, 96($sp)
	move	$s2, $a2
	sw	$zero, 16($s1)
	addiu	$a0, $a0, 9792
	jal	sub_00108AC0
	sw	$zero, 36($s1)
	move	$s0, $v0
	beqz	$s0, lbl_001091D0
	li	$v0, -1
	lw	$v0, 24($s0)
	andi	$v1, $s2, 0x1
	sw	$s0, 0($s1)
	sw	$v0, 4($s1)
	sw	$s3, 32($s0)
	sw	$s0, 20($s0)
	bnez	$v1, lbl_00109194
	sw	$s1, 28($s0)
	lui	$v0, 0x13
	li	$v1, 1
	addiu	$v0, $v0, 19368
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$zero, 8($sp)
	bgez	$v0, lbl_0010913C
	sw	$v0, 8($s1)
	jal	sub_00108B68
	move	$a0, $s0
	b	lbl_001091D0
	li	$v0, -3
lbl_0010913C:
	lui	$a0, 0x8000
	move	$a1, $s0
	ori	$a0, $a0, 0x9
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_0010917C
	nop
	jal	sub_00108B68
	move	$a0, $s0
	jal	sub_001068F0
	lw	$a0, 8($s1)
	b	lbl_001091D0
	li	$v0, -2
lbl_0010917C:
	jal	sub_00106920
	lw	$a0, 8($s1)
	jal	sub_001068F0
	lw	$a0, 8($s1)
	b	lbl_001091D0
	move	$v0, $zero
lbl_00109194:
	li	$v0, -1
	lui	$a0, 0x8000
	sw	$v0, 8($s1)
	ori	$a0, $a0, 0x9
	move	$a1, $s0
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_001091D0
	move	$v0, $zero
	jal	sub_00108B68
	move	$a0, $s0
	li	$v0, -2
lbl_001091D0:
	ld	$ra, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	lw	$a1, 52($a0)
	lw	$a2, 64($a1)
	lw	$v0, 12($a2)
	bnezl	$v0, lbl_0010920C
	lw	$v0, 16($a2)
	b	lbl_00109210
	sw	$a1, 12($a2)
lbl_0010920C:
	sw	$a1, 60($v0)
lbl_00109210:
	sw	$a1, 16($a2)
	lw	$v0, 20($a0)
	lw	$v1, 28($a0)
	sw	$v0, 32($a1)
	sw	$v1, 28($a1)
	lw	$v0, 32($a0)
	sw	$v0, 36($a1)
	lw	$v1, 36($a0)
	sw	$v1, 12($a1)
	lw	$v0, 40($a0)
	sw	$v0, 40($a1)
	lw	$v1, 44($a0)
	sw	$v1, 44($a1)
	lw	$v0, 48($a0)
	sw	$v0, 48($a1)
	lw	$v1, 16($a0)
	sw	$v1, 52($a1)
	lw	$a0, 0($a2)
	bltz	$a0, lbl_00109274
	nop
	lw	$v0, 4($a2)
	bnez	$v0, lbl_00109274
	nop
	j	lbl_00107158
	nop
lbl_00109274:
	jr	$ra
	nop
	nop

sub_00109280:
	addiu	$sp, $sp, -192
	sd	$s1, 48($sp)
	move	$s1, $a0
	sd	$s8, 160($sp)
	sd	$s7, 144($sp)
	lui	$a0, 0x14
	sd	$s6, 128($sp)
	move	$s8, $a2
	sd	$s5, 112($sp)
	move	$s6, $a1
	sd	$s4, 96($sp)
	move	$s5, $a3
	sd	$s3, 80($sp)
	move	$s4, $t1
	sd	$s2, 64($sp)
	move	$s3, $t2
	sd	$s0, 32($sp)
	move	$s2, $t0
	sd	$ra, 176($sp)
	move	$s7, $t3
	jal	sub_00108AC0
	addiu	$a0, $a0, 9792
	move	$s0, $v0
	beqz	$s0, lbl_00109450
	li	$v0, -1
	lw	$v0, 192($sp)
	lw	$v1, 24($s0)
	sw	$v0, 32($s1)
	sw	$v1, 4($s1)
	sw	$s0, 0($s1)
	sw	$s7, 28($s1)
	move	$v0, $gp
	sw	$v0, 24($s1)
	andi	$v1, $s8, 0x2
	sw	$s6, 32($s0)
	sw	$s2, 36($s0)
	sw	$s4, 40($s0)
	sw	$s3, 44($s0)
	sw	$s0, 20($s0)
	lw	$v0, 36($s1)
	sw	$s1, 28($s0)
	bnez	$v1, lbl_0010936C
	sw	$v0, 52($s0)
	bne	$s5, $s4, lbl_0010934C
	slt	$v0, $s2, $s3
	move	$a1, $s3
	move	$a0, $s5
	jal	sub_001128C8
	movz	$a1, $s2, $v0
	b	lbl_00109370
	andi	$v0, $s8, 0x1
lbl_0010934C:
	blez	$s2, lbl_0010935C
	move	$a0, $s5
	jal	sub_001128C8
	move	$a1, $s2
lbl_0010935C:
	blez	$s3, lbl_0010936C
	move	$a0, $s4
	jal	sub_001128C8
	move	$a1, $s3
lbl_0010936C:
	andi	$v0, $s8, 0x1
lbl_00109370:
	beqz	$v0, lbl_001093C4
	lui	$v0, 0x13
	bnez	$s7, lbl_00109388
	li	$v0, 1
	b	lbl_0010938C
	sw	$zero, 48($s0)
lbl_00109388:
	sw	$v0, 48($s0)
lbl_0010938C:
	li	$v0, -1
	lui	$a0, 0x8000
	lw	$t0, 20($s1)
	move	$a3, $s5
	sw	$v0, 8($s1)
	move	$t1, $s2
	ori	$a0, $a0, 0xa
	move	$a1, $s0
	jal	sub_00112700
	li	$a2, 64
	bnez	$v0, lbl_00109450
	move	$v0, $zero
	b	lbl_0010942C
	nop
lbl_001093C4:
	li	$s3, 1
	addiu	$v0, $v0, 19384
	sw	$zero, 8($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$s3, 4($sp)
	bgez	$v0, lbl_001093F8
	sw	$v0, 8($s1)
	jal	sub_00108B68
	move	$a0, $s0
	b	lbl_00109450
	li	$v0, -3
lbl_001093F8:
	sw	$s3, 48($s0)
	lui	$a0, 0x8000
	move	$a3, $s5
	move	$t1, $s2
	lw	$t0, 20($s1)
	ori	$a0, $a0, 0xa
	move	$a1, $s0
	jal	sub_00112700
	li	$a2, 64
	bnez	$v0, lbl_0010943C
	nop
	jal	sub_001068F0
	lw	$a0, 8($s1)
lbl_0010942C:
	jal	sub_00108B68
	move	$a0, $s0
	b	lbl_00109450
	li	$v0, -2
lbl_0010943C:
	jal	sub_00106920
	lw	$a0, 8($s1)
	jal	sub_001068F0
	lw	$a0, 8($s1)
	move	$v0, $zero
lbl_00109450:
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192

sub_00109480:
	lw	$a1, 0($a0)
	beqz	$a1, lbl_001094AC
	nop
	lw	$v1, 4($a0)
	lw	$v0, 24($a1)
	bne	$v1, $v0, lbl_001094AC
	nop
	lw	$v0, 16($a1)
	andi	$v0, $v0, 0x1
	bnez	$v0, lbl_001094B4
	nop
lbl_001094AC:
	jr	$ra
	move	$v0, $zero
lbl_001094B4:
	jr	$ra
	li	$v0, 1
	nop
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a0
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a1
	lui	$v1, 0x14
	sw	$s0, 0($s1)
	addiu	$v1, $v1, 9792
	sw	$zero, 4($s1)
	lw	$v0, 40($v1)
	sw	$zero, 8($s1)
	sw	$zero, 12($s1)
	sw	$zero, 16($s1)
	bnez	$v0, lbl_0010950C
	sw	$zero, 20($s1)
	b	lbl_00109540
	sw	$s1, 40($v1)
lbl_0010950C:
	move	$a0, $v0
	lw	$v1, 20($a0)
	beqzl	$v1, lbl_00109540
	sw	$s1, 20($a0)
	nop
lbl_00109520:
	move	$a0, $v1
	lw	$v0, 20($a0)
	move	$v1, $v0
	nop
	nop
	bnez	$v0, lbl_00109520
	nop
	sw	$s1, 20($a0)
lbl_00109540:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -128
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	move	$s6, $t2
	sd	$s4, 64($sp)
	move	$s5, $a0
	sd	$s3, 48($sp)
	move	$s4, $t1
	sd	$s2, 32($sp)
	move	$s3, $t0
	sd	$s1, 16($sp)
	move	$s2, $a3
	sd	$s0, 0($sp)
	move	$s1, $a2
	sd	$ra, 112($sp)
	jal	sub_0010F420
	move	$s0, $a1
	sw	$zero, 60($s5)
	sw	$zero, 56($s5)
	sw	$s0, 0($s5)
	lw	$v0, 8($s6)
	sw	$s1, 4($s5)
	sw	$s2, 8($s5)
	sw	$s3, 16($s5)
	sw	$s4, 20($s5)
	bnez	$v0, lbl_001095CC
	sw	$s6, 64($s5)
	b	lbl_00109600
	sw	$s5, 8($s6)
lbl_001095CC:
	move	$a0, $v0
	lw	$v1, 56($a0)
	beqzl	$v1, lbl_00109600
	sw	$s5, 56($a0)
	nop
lbl_001095E0:
	move	$a0, $v1
	lw	$v0, 56($a0)
	move	$v1, $v0
	nop
	nop
	bnez	$v0, lbl_001095E0
	nop
	sw	$s5, 56($a0)
lbl_00109600:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 128
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	sd	$ra, 48($sp)
	jal	sub_0010F420
	move	$s1, $a0
	lw	$s0, 8($s2)
	bne	$s0, $s1, lbl_00109660
	nop
	lw	$v0, 56($s0)
	b	lbl_00109698
	sw	$v0, 8($s2)
lbl_00109660:
	beqz	$s0, lbl_00109698
	nop
	lw	$v1, 56($s0)
	beql	$v1, $s1, lbl_00109694
	lw	$v0, 56($s1)
	nop
lbl_00109678:
	move	$s0, $v1
	beqz	$s0, lbl_00109698
	nop
	lw	$v0, 56($s0)
	bne	$v0, $s1, lbl_00109678
	move	$v1, $v0
	lw	$v0, 56($s1)
lbl_00109694:
	sw	$v0, 56($s0)
lbl_00109698:
	jal	sub_0010F470
	nop
	move	$v0, $s0
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s1, $a0
	lui	$v1, 0x14
	addiu	$v1, $v1, 9792
	lw	$s0, 40($v1)
	bne	$s0, $s1, lbl_001096F8
	nop
	lw	$v0, 20($s0)
	b	lbl_00109730
	sw	$v0, 40($v1)
lbl_001096F8:
	beqz	$s0, lbl_00109730
	nop
	lw	$v1, 20($s0)
	beql	$v1, $s1, lbl_0010972C
	lw	$v0, 20($s1)
	nop
lbl_00109710:
	move	$s0, $v1
	beqz	$s0, lbl_00109730
	nop
	lw	$v0, 20($s0)
	bne	$v0, $s1, lbl_00109710
	move	$v1, $v0
	lw	$v0, 20($s1)
lbl_0010972C:
	sw	$v0, 20($s0)
lbl_00109730:
	jal	sub_0010F470
	nop
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00109750:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	lw	$s1, 12($s0)
	bnezl	$s1, lbl_0010977C
	lw	$v1, 60($s1)
	b	lbl_00109788
	sw	$zero, 4($s0)
lbl_0010977C:
	li	$v0, 1
	sw	$v0, 4($s0)
	sw	$v1, 12($s0)
lbl_00109788:
	jal	sub_0010F470
	nop
	move	$v0, $s1
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_001097A8:
	addiu	$sp, $sp, -128
	sd	$s4, 96($sp)
	sd	$s2, 64($sp)
	move	$s4, $zero
	sd	$s1, 48($sp)
	sd	$ra, 112($sp)
	move	$s1, $a0
	sd	$s3, 80($sp)
	sd	$s0, 32($sp)
	lw	$v0, 4($s1)
	lw	$a0, 36($s1)
	lw	$a1, 8($s1)
	jalr	$v0
	lw	$a2, 12($s1)
	move	$s2, $v0
	bnezl	$s2, lbl_001097EC
	lw	$s4, 44($s1)
lbl_001097EC:
	lw	$a1, 12($s1)
	blez	$a1, lbl_00109800
	nop
	jal	sub_001128C8
	lw	$a0, 8($s1)
lbl_00109800:
	blez	$s4, lbl_00109810
	move	$a0, $s2
	jal	sub_001128C8
	move	$a1, $s4
lbl_00109810:
	jal	sub_0010F420
	nop
	lw	$a1, 52($s1)
	andi	$v0, $a1, 0x4
	beqz	$v0, lbl_0010983C
	srl	$a1, $a1, 0x10
	lui	$a0, 0x14
	jal	sub_00108BB8
	addiu	$a0, $a0, 9792
	b	lbl_0010984C
	move	$s0, $v0
lbl_0010983C:
	lui	$a0, 0x14
	jal	sub_00108B88
	addiu	$a0, $a0, 9792
	move	$s0, $v0
lbl_0010984C:
	jal	sub_0010F470
	nop
	lui	$v1, 0x8000
	lw	$a0, 28($s1)
	ori	$v1, $v1, 0xa
	sw	$v1, 32($s0)
	sw	$a0, 28($s0)
	lw	$v0, 48($s1)
	beqzl	$v0, lbl_001098A8
	sw	$zero, 24($s0)
	nop
lbl_00109878:
	lui	$a0, 0x8000
	lw	$t0, 40($s1)
	ori	$a0, $a0, 0x8
	move	$a1, $s0
	li	$a2, 64
	move	$a3, $s2
	jal	sub_00112700
	move	$t1, $s4
	beqz	$v0, lbl_00109878
	ld	$ra, 112($sp)
	b	lbl_00109954
	ld	$s4, 96($sp)
lbl_001098A8:
	move	$s3, $zero
	blez	$s4, lbl_001098CC
	sw	$zero, 16($s0)
	lw	$v0, 40($s1)
	li	$s3, 1
	sw	$s2, 0($sp)
	sw	$v0, 4($sp)
	sw	$s4, 8($sp)
	sw	$zero, 12($sp)
lbl_001098CC:
	sll	$a1, $s3, 0x4
	lw	$a0, 32($s1)
	addu	$v1, $sp, $a1
	addiu	$v0, $sp, 4
	sw	$s0, 0($v1)
	addu	$v0, $v0, $a1
	sw	$a0, 0($v0)
	addiu	$v1, $sp, 8
	addu	$v1, $v1, $a1
	li	$a0, 64
	addiu	$v0, $sp, 12
	sw	$a0, 0($v1)
	addu	$v0, $v0, $a1
	addiu	$s3, $s3, 1
	sw	$zero, 0($v0)
	move	$a0, $sp
	nop
lbl_00109910:
	jal	sub_00106CA0
	move	$a1, $s3
	bnez	$v0, lbl_00109950
	ld	$ra, 112($sp)
	lui	$v1, 0x10
	li	$a0, -1
lbl_00109928:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $a0, lbl_00109928
	nop
	beqzl	$v0, lbl_00109910
	move	$a0, $sp
	ld	$ra, 112($sp)
lbl_00109950:
	ld	$s4, 96($sp)
lbl_00109954:
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	b	lbl_00109990
	move	$s0, $a0
	nop
lbl_00109988:
	jal	sub_001097A8
	nop
lbl_00109990:
	jal	sub_00109750
	move	$a0, $s0
	bnez	$v0, lbl_00109988
	move	$a0, $v0
	jal	sub_00106800
	nop
	b	lbl_00109990
	nop

sub_001099B0:
	addiu	$sp, $sp, -64
	li	$v1, -1
	sd	$s0, 32($sp)
	lui	$s0, 0x13
	sd	$ra, 48($sp)
	lw	$v0, -3472($s0)
	bne	$v0, $v1, lbl_00109A14
	ld	$ra, 48($sp)
	lui	$v0, 0x13
	li	$v1, 1
	addiu	$v0, $v0, 19408
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 8($sp)
	lui	$v1, 0x13
	sw	$v0, -3472($s0)
	addiu	$v1, $v1, 19424
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 20($sp)
	lui	$v1, 0x13
	sw	$v0, -3468($v1)
	ld	$ra, 48($sp)
lbl_00109A14:
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00109A20:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lui	$s1, 0x13
	sd	$ra, 32($sp)
	jal	sub_001099B0
	move	$s0, $zero
	jal	sub_00106920
	lw	$a0, -3472($s1)
	lui	$v1, 0x14
	addiu	$a1, $v1, 15296
	addiu	$v1, $a1, 512
	sltu	$v0, $a1, $v1
	beqz	$v0, lbl_00109A7C
	move	$a2, $v1
	nop
lbl_00109A60:
	lw	$a0, 4($a1)
	addiu	$v1, $s0, 1
	addiu	$a1, $a1, 16
	movn	$s0, $v1, $a0
	sltu	$v0, $a1, $a2
	bnez	$v0, lbl_00109A60
	nop
lbl_00109A7C:
	jal	sub_00106900
	lw	$a0, -3472($s1)
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00109AA0:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_001099B0
	lui	$s1, 0x13
	jal	sub_00106920
	lw	$a0, -3472($s1)
	lui	$v1, 0x14
	addiu	$s0, $v1, 15296
	addiu	$v1, $s0, 512
	sltu	$v0, $s0, $v1
	beqz	$v0, lbl_00109B08
	lui	$a1, 0x1000
	lw	$v0, 4($s0)
	nop
lbl_00109AE0:
	bnezl	$v0, lbl_00109AFC
	addiu	$s0, $s0, 16
	lw	$a0, -3472($s1)
	jal	sub_00106900
	sw	$a1, 4($s0)
	b	lbl_00109B14
	move	$v0, $s0
lbl_00109AFC:
	sltu	$v0, $s0, $v1
	bnezl	$v0, lbl_00109AE0
	lw	$v0, 4($s0)
lbl_00109B08:
	jal	sub_00106900
	lw	$a0, -3472($s1)
	move	$v0, $zero
lbl_00109B14:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00109B28:
	addiu	$sp, $sp, -192
	sd	$s8, 160($sp)
	sd	$s7, 144($sp)
	move	$s8, $a2
	sd	$s6, 128($sp)
	move	$s7, $a3
	sd	$s5, 112($sp)
	move	$s6, $t0
	sd	$s4, 96($sp)
	move	$s5, $t1
	sd	$s3, 80($sp)
	move	$s4, $t2
	sd	$s2, 64($sp)
	move	$s3, $t3
	sd	$s1, 48($sp)
	move	$s2, $zero
	sd	$ra, 176($sp)
	li	$s1, 1
	sd	$s0, 32($sp)
	sw	$a0, 16($sp)
	sw	$a1, 20($sp)
	lw	$v0, 192($sp)
lbl_00109B80:
	move	$a2, $s8
	lw	$a0, 16($sp)
	move	$a3, $s7
	lw	$a1, 20($sp)
	move	$t0, $s6
	sw	$v0, 0($sp)
	move	$t1, $s5
	move	$t2, $s4
	jal	sub_00109280
	move	$t3, $s3
	srl	$s0, $v0, 0x1f
	beqz	$s0, lbl_00109BE0
	lw	$v0, 200($sp)
	bnez	$v0, lbl_00109BE0
	li	$v0, 1000
	jal	sub_00107308
	mult	$a0, $s1, $v0
	slti	$v1, $s1, 127
	bnezl	$v1, lbl_00109BD0
	sll	$s1, $s1, 0x1
lbl_00109BD0:
	addiu	$s2, $s2, 1
	slti	$v0, $s2, 101
	bnez	$v0, lbl_00109B80
	lw	$v0, 192($sp)
lbl_00109BE0:
	move	$v0, $s0
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop

sub_00109C18:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	move	$s0, $a0
	sd	$ra, 32($sp)
	jal	sub_001099B0
	lui	$s1, 0x13
	jal	sub_00106920
	lw	$a0, -3472($s1)
	sltiu	$v1, $s0, 32
	bnez	$v1, lbl_00109C58
	lui	$v0, 0x14
	jal	sub_00106900
	lw	$a0, -3472($s1)
	b	lbl_00109C70
	move	$v0, $zero
lbl_00109C58:
	sll	$s0, $s0, 0x4
	addiu	$v0, $v0, 15296
	lw	$a0, -3472($s1)
	jal	sub_00106900
	addu	$s0, $s0, $v0
	move	$v0, $s0
lbl_00109C70:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lui	$v0, 0x13
	addiu	$sp, $sp, -64
	lw	$v1, -3480($v0)
	move	$a1, $zero
	sd	$ra, 48($sp)
	beqz	$v1, lbl_00109CA8
	sd	$s0, 32($sp)
	lw	$a1, 12($a0)
lbl_00109CA8:
	li	$v1, 1088
	lui	$v0, 0x13
	mult	$v1, $a1, $v1
	lui	$a0, 0x14
	sw	$a1, -3488($v0)
	addiu	$a0, $a0, 13120
	lui	$a1, 0x2000
	addu	$v1, $v1, $a0
	or	$s0, $v1, $a1
	lwl	$v0, 3($s0)
	lwr	$v0, 0($s0)
	swl	$v0, 3($sp)
	swr	$v0, 0($sp)
	lwl	$a2, 7($s0)
	lwr	$a2, 4($s0)
	swl	$a2, 7($sp)
	swr	$a2, 4($sp)
	lwl	$v1, 11($s0)
	lwr	$v1, 8($s0)
	swl	$v1, 11($sp)
	swr	$v1, 8($sp)
	lwl	$a3, 15($s0)
	lwr	$a3, 12($s0)
	swl	$a3, 15($sp)
	swr	$a3, 12($sp)
	lw	$v0, 0($sp)
	bltz	$v0, lbl_00109D24
	lw	$a0, 8($sp)
	addiu	$a1, $s0, 16
	jal	sub_0012515C
	lw	$a2, 12($sp)
lbl_00109D24:
	lw	$v0, 4($sp)
	addiu	$a0, $v0, -2
	sltiu	$v1, $a0, 25
	beqz	$v1, lbl_00109FB8
	lui	$v0, 0x13
	sll	$v1, $a0, 0x2
	addiu	$v0, $v0, 19440
	addu	$v1, $v1, $v0
	lw	$a0, 0($v1)
	jr	$a0
	nop
	lw	$v1, 20($s0)
	blez	$v1, lbl_00109DA0
	addiu	$a3, $s0, 20
	lw	$t0, 8($a3)
	lui	$v0, 0x2000
	move	$a2, $zero
	blez	$v1, lbl_00109DA0
	or	$t2, $t0, $v0
	addiu	$t1, $s0, 36
	addu	$v0, $t1, $a2
lbl_00109D78:
	addu	$a1, $t2, $a2
	lbu	$v1, 0($v0)
	addu	$a0, $t0, $a2
	addiu	$a2, $a2, 1
	sb	$v1, 0($a1)
	sb	$v1, 0($a0)
	lw	$v0, 0($a3)
	slt	$v0, $a2, $v0
	bnez	$v0, lbl_00109D78
	addu	$v0, $t1, $a2
lbl_00109DA0:
	lw	$v1, 4($a3)
	blez	$v1, lbl_00109FB8
	lui	$v0, 0x2000
	lw	$t0, 12($a3)
	move	$a2, $zero
	blez	$v1, lbl_00109FB8
	or	$t2, $t0, $v0
	addiu	$t1, $a3, 80
	addu	$v0, $t1, $a2
	nop
lbl_00109DC8:
	addu	$a1, $t2, $a2
	lbu	$v1, 0($v0)
	addu	$a0, $t0, $a2
	addiu	$a2, $a2, 1
	sb	$v1, 0($a1)
	sb	$v1, 0($a0)
	lw	$v0, 4($a3)
	slt	$v0, $a2, $v0
	bnez	$v0, lbl_00109DC8
	addu	$v0, $t1, $a2
	b	lbl_00109FBC
	lw	$a0, 0($sp)
	lw	$v0, 8($sp)
	lw	$v1, 0($v0)
	blez	$v1, lbl_00109FBC
	lw	$a0, 0($sp)
	lwl	$a0, 23($s0)
	lwr	$a0, 20($s0)
	swl	$a0, 19($sp)
	swr	$a0, 16($sp)
	addiu	$a0, $s0, 24
	lw	$a2, 16($sp)
	or	$v0, $a0, $a2
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_00109E8C
	addiu	$v0, $s0, 344
lbl_00109E30:
	ldl	$t0, 7($a0)
	ldr	$t0, 0($a0)
	ldl	$v1, 15($a0)
	ldr	$v1, 8($a0)
	ldl	$a1, 23($a0)
	ldr	$a1, 16($a0)
	ldl	$a3, 31($a0)
	ldr	$a3, 24($a0)
	sdl	$t0, 7($a2)
	sdr	$t0, 0($a2)
	sdl	$v1, 15($a2)
	sdr	$v1, 8($a2)
	sdl	$a1, 23($a2)
	sdr	$a1, 16($a2)
	sdl	$a3, 31($a2)
	sdr	$a3, 24($a2)
	addiu	$a0, $a0, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a0, $v0, lbl_00109E30
	nop
	b	lbl_00109EC0
	nop
lbl_00109E8C:
	ld	$t0, 0($a0)
	ld	$v1, 8($a0)
	ld	$a1, 16($a0)
	ld	$a3, 24($a0)
	sd	$t0, 0($a2)
	sd	$v1, 8($a2)
	sd	$a1, 16($a2)
	sd	$a3, 24($a2)
	addiu	$a0, $a0, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a0, $v0, lbl_00109E8C
	nop
lbl_00109EC0:
	lwl	$t0, 3($a0)
	lwr	$t0, 0($a0)
	swl	$t0, 3($a2)
	b	lbl_00109FB8
	swr	$t0, 0($a2)
	lwl	$a2, 23($s0)
	lwr	$a2, 20($s0)
	swl	$a2, 19($sp)
	swr	$a2, 16($sp)
	lw	$v0, 16($sp)
	ldl	$v1, 31($s0)
	ldr	$v1, 24($s0)
	ldl	$a0, 39($s0)
	ldr	$a0, 32($s0)
	ldl	$a1, 47($s0)
	ldr	$a1, 40($s0)
	ldl	$a2, 55($s0)
	ldr	$a2, 48($s0)
	sdl	$v1, 7($v0)
	sdr	$v1, 0($v0)
	sdl	$a0, 15($v0)
	sdr	$a0, 8($v0)
	sdl	$a1, 23($v0)
	sdr	$a1, 16($v0)
	sdl	$a2, 31($v0)
	sdr	$a2, 24($v0)
	ldl	$v1, 63($s0)
	ldr	$v1, 56($s0)
	ldl	$a0, 71($s0)
	ldr	$a0, 64($s0)
	ldl	$a1, 79($s0)
	ldr	$a1, 72($s0)
	ldl	$a2, 87($s0)
	ldr	$a2, 80($s0)
	sdl	$v1, 39($v0)
	sdr	$v1, 32($v0)
	sdl	$a0, 47($v0)
	sdr	$a0, 40($v0)
	sdl	$a1, 55($v0)
	sdr	$a1, 48($v0)
	sdl	$a2, 63($v0)
	sdr	$a2, 56($v0)
	b	lbl_00109FBC
	lw	$a0, 0($sp)
	lwl	$a3, 23($s0)
	lwr	$a3, 20($s0)
	swl	$a3, 19($sp)
	swr	$a3, 16($sp)
	lwl	$a0, 27($s0)
	lwr	$a0, 24($s0)
	swl	$a0, 23($sp)
	swr	$a0, 20($sp)
	lw	$a2, 20($sp)
	sltiu	$v0, $a2, 1025
	bnez	$v0, lbl_00109FB0
	lw	$a0, 16($sp)
	li	$v0, 1024
	li	$a2, 1024
	sw	$v0, 20($sp)
	lw	$a0, 16($sp)
lbl_00109FB0:
	jal	sub_0012515C
	addiu	$a1, $s0, 28
lbl_00109FB8:
	lw	$a0, 0($sp)
lbl_00109FBC:
	bgez	$a0, lbl_0010A024
	lui	$a3, 0x13
	negu	$v0, $a0
	lw	$v1, -3616($a3)
	move	$a1, $v0
	sw	$v0, 0($sp)
	bne	$v1, $a1, lbl_00109FF0
	move	$a2, $zero
	li	$v0, -1
	sw	$v0, -3616($a3)
	b	lbl_0010A030
	ld	$ra, 48($sp)
	nop
lbl_00109FF0:
	addiu	$a2, $a2, 1
lbl_00109FF4:
	slti	$v0, $a2, 32
	beqz	$v0, lbl_0010A02C
	addiu	$v0, $a3, -3616
	sll	$v1, $a2, 0x2
	addu	$v1, $v1, $v0
	lw	$a0, 0($v1)
	bne	$a0, $a1, lbl_00109FF4
	addiu	$a2, $a2, 1
	li	$v0, -1
	sw	$v0, 0($v1)
	b	lbl_0010A030
	ld	$ra, 48($sp)
lbl_0010A024:
	jal	sub_00106910
	nop
lbl_0010A02C:
	ld	$ra, 48($sp)
lbl_0010A030:
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0010A040:
	addiu	$sp, $sp, -64
	li	$v1, -1
	sd	$s0, 32($sp)
	lui	$s0, 0x13
	sd	$ra, 48($sp)
	lw	$v0, -3476($s0)
	bne	$v0, $v1, lbl_0010A088
	ld	$ra, 48($sp)
	lui	$v0, 0x13
	li	$v1, 1
	addiu	$v0, $v0, 19544
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 8($sp)
	sw	$v0, -3476($s0)
	ld	$ra, 48($sp)
lbl_0010A088:
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0010A098:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010A040
	nop
	lui	$v0, 0x13
	jal	sub_00106920
	lw	$a0, -3476($v0)
	ld	$ra, 0($sp)
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0010A0C8:
	lui	$v0, 0x13
	j	sub_00106900
	lw	$a0, -3476($v0)
	nop
	addiu	$sp, $sp, -96
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	move	$s3, $a0
	sd	$s4, 64($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	li	$a0, 27
	sd	$ra, 80($sp)
	lui	$s0, 0x14
	sd	$s1, 16($sp)
	jal	sub_0010A098
	addiu	$s4, $s0, 15936
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnez	$v1, lbl_0010A124
	nop
	jal	sub_0010A1C0
	nop
lbl_0010A124:
	jal	sub_0010F420
	nop
	lw	$s1, 15936($s0)
	lui	$v1, 0x14
	sw	$s2, 4($s4)
	sw	$s3, 15936($s0)
	beqz	$v0, lbl_0010A14C
	sw	$gp, 16000($v1)
	jal	sub_0010F470
	nop
lbl_0010A14C:
	jal	sub_0010A0C8
	nop
	move	$v0, $s1
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	addiu	$sp, $sp, -32
	lw	$v1, 0($a1)
	sd	$ra, 16($sp)
	beqz	$v1, lbl_0010A1A4
	sd	$s0, 0($sp)
	lui	$v0, 0x14
	move	$s0, $gp
	lw	$gp, 16000($v0)
	jalr	$v1
	lw	$a0, 4($a1)
	move	$gp, $s0
lbl_0010A1A4:
	sync
	ei
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0010A1C0:
	addiu	$sp, $sp, -128
	move	$a0, $zero
	sd	$s0, 32($sp)
	lui	$s0, 0x14
	sd	$s1, 48($sp)
	sd	$ra, 112($sp)
	addiu	$s1, $s0, 15936
	sd	$s4, 96($sp)
	sd	$s3, 80($sp)
	jal	sub_001088F8
	sd	$s2, 64($sp)
	sw	$zero, 15936($s0)
	jal	sub_0010F420
	sw	$zero, 4($s1)
	lui	$a1, 0x11
	lui	$a2, 0x14
	lui	$a0, 0x8000
	move	$s0, $v0
	addiu	$a1, $a1, -25464
	addiu	$a2, $a2, 15872
	jal	sub_00112500
	ori	$a0, $a0, 0x11
	lui	$a1, 0x11
	lui	$a0, 0x8000
	addiu	$a1, $a1, -24200
	move	$a2, $s1
	jal	sub_00112500
	ori	$a0, $a0, 0x13
	beqz	$s0, lbl_0010A26C
	lui	$s3, 0x14
	jal	sub_0010F470
	addiu	$s0, $s3, 15808
	b	lbl_0010A270
	nop
lbl_0010A248:
	li	$v1, -1
	nop
lbl_0010A250:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_0010A250
	nop
lbl_0010A26C:
	addiu	$s0, $s3, 15808
lbl_0010A270:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x1
	jal	sub_001090A0
	move	$a2, $zero
	bltz	$v0, lbl_0010A3A8
	li	$v0, -22
	lw	$v0, 36($s0)
	beqz	$v0, lbl_0010A248
	lui	$v0, 0x10
	jal	sub_001099B0
	lui	$s4, 0x13
	jal	sub_00106920
	lw	$a0, -3472($s4)
	lui	$v1, 0x14
	addiu	$v1, $v1, 15296
	addiu	$a0, $v1, 512
	sltu	$v0, $v1, $a0
	beqz	$v0, lbl_0010A2EC
	lui	$s2, 0x14
	lui	$s1, 0x14
	lui	$s0, 0x14
lbl_0010A2C8:
	sw	$zero, 4($v1)
	addiu	$v1, $v1, 16
	sltu	$v0, $v1, $a0
	nop
	nop
	bnez	$v0, lbl_0010A2C8
	nop
	b	lbl_0010A2F8
	lw	$a0, -3472($s4)
lbl_0010A2EC:
	lui	$s1, 0x14
	lui	$s0, 0x14
	lw	$a0, -3472($s4)
lbl_0010A2F8:
	jal	sub_00106900
	addiu	$s0, $s0, 13056
	addiu	$v1, $s1, 13120
	addiu	$a3, $s2, 9856
	sw	$v1, 9856($s2)
	addiu	$a0, $s3, 15808
	addiu	$v1, $v1, 1088
	li	$a1, 255
	sw	$v1, 4($a3)
	move	$a2, $zero
	sw	$zero, 0($sp)
	li	$t0, 8
	sw	$zero, 8($sp)
	move	$t1, $s0
	li	$t2, 8
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010A350
	lui	$a0, 0x2000
	lui	$v0, 0xfffe
	b	lbl_0010A3A8
	ori	$v0, $v0, 0xffff
lbl_0010A350:
	addiu	$v0, $s0, 4
	or	$v1, $s0, $a0
	or	$v0, $v0, $a0
	lui	$a1, 0x14
	addiu	$t0, $a1, 15848
	lwl	$a0, 3($v1)
	lwr	$a0, 0($v1)
	swl	$a0, 3($t0)
	swr	$a0, 0($t0)
	lwl	$v1, 3($v0)
	lwr	$v1, 0($v0)
	swl	$v1, 19($sp)
	swr	$v1, 16($sp)
	lui	$a2, 0x13
	lui	$a1, 0x13
	lw	$v1, 16($sp)
	li	$a0, 1
	sw	$a0, -3484($a1)
	move	$v0, $zero
	xori	$v1, $v1, 0x2
	sltiu	$v1, $v1, 1
	sw	$v1, -3480($a2)
lbl_0010A3A8:
	ld	$ra, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_0010A3C8:
	addiu	$sp, $sp, -80
	lui	$v0, 0x13
	sd	$s3, 48($sp)
	lui	$v1, 0x14
	sd	$s1, 16($sp)
	addiu	$s3, $v0, -3636
	sd	$s2, 32($sp)
	addiu	$s1, $v1, 15848
	sd	$ra, 64($sp)
	move	$s2, $zero
	sd	$s0, 0($sp)
	move	$a0, $s1
	move	$a1, $s3
	jal	sub_001250C8
	li	$a2, 4
	beqz	$v0, lbl_0010A434
	lui	$s0, 0x13
	move	$a0, $s1
	lw	$a1, -3464($s0)
	jal	sub_001250C8
	li	$a2, 4
	beqz	$v0, lbl_0010A434
	lw	$a1, -3464($s0)
	move	$a0, $s3
	jal	sub_001250C8
	li	$a2, 4
	sltu	$s2, $zero, $v0
lbl_0010A434:
	move	$v0, $s2
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_0010A458:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	lui	$a0, 0x14
	sd	$ra, 0($sp)
	sw	$zero, -3484($v0)
	addiu	$a0, $a0, 15848
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 4
	ld	$ra, 0($sp)
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -80
	sd	$s0, 16($sp)
	sd	$s1, 32($sp)
	move	$s0, $a0
	sd	$ra, 64($sp)
	move	$s1, $a1
	sd	$s2, 48($sp)
	jal	sub_0010A098
	li	$a0, 254
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnez	$v0, lbl_0010A4CC
	nop
	jal	sub_0010A1C0
	nop
lbl_0010A4CC:
	jal	sub_0010A3C8
	nop
	beqz	$v0, lbl_0010A4F0
	nop
	jal	sub_0010A0C8
	nop
	lui	$v0, 0xfffe
	b	lbl_0010A5B8
	ori	$v0, $v0, 0xfffc
lbl_0010A4F0:
	jal	sub_00109A20
	nop
	beqz	$v0, lbl_0010A510
	andi	$v0, $s0, 0x3fff
	jal	sub_0010A0C8
	nop
	b	lbl_0010A5B8
	li	$v0, -16
lbl_0010A510:
	bnez	$v0, lbl_0010A540
	nop
	beqz	$s0, lbl_0010A540
	lui	$v0, 0xf
	ori	$v0, $v0, 0xffff
	sltu	$v0, $v0, $s0
	bnez	$v0, lbl_0010A540
	nop
	beqz	$s1, lbl_0010A540
	sltiu	$v0, $s1, 33
	bnez	$v0, lbl_0010A550
	lui	$v1, 0x14
lbl_0010A540:
	jal	sub_0010A0C8
	nop
	b	lbl_0010A5B8
	li	$v0, -22
lbl_0010A550:
	lui	$v0, 0x14
	addiu	$a3, $v1, 9920
	sw	$s0, 9920($v1)
	sw	$s1, 4($a3)
	addiu	$s2, $v0, 13056
	lui	$a0, 0x14
	sw	$zero, 0($sp)
	addiu	$a0, $a0, 15808
	sw	$zero, 8($sp)
	li	$a1, 254
	move	$a2, $zero
	li	$t0, 8
	move	$t1, $s2
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010A5A8
	lui	$v0, 0x2000
	jal	sub_0010A0C8
	nop
	b	lbl_0010A5B8
	li	$v0, -11
lbl_0010A5A8:
	or	$v0, $s2, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_0010A5B8:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	addiu	$sp, $sp, -64
	sd	$s0, 16($sp)
	move	$s0, $a0
	sd	$ra, 48($sp)
	sd	$s1, 32($sp)
	jal	sub_0010A098
	li	$a0, 253
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnez	$v0, lbl_0010A604
	nop
	jal	sub_0010A1C0
	nop
lbl_0010A604:
	jal	sub_0010A3C8
	nop
	beqz	$v0, lbl_0010A628
	nop
	jal	sub_0010A0C8
	nop
	lui	$v0, 0xfffe
	b	lbl_0010A6AC
	ori	$v0, $v0, 0xfffc
lbl_0010A628:
	jal	sub_00109A20
	nop
	beqz	$v0, lbl_0010A648
	lui	$a3, 0x14
	jal	sub_0010A0C8
	nop
	b	lbl_0010A6AC
	li	$v0, -16
lbl_0010A648:
	lui	$v0, 0x14
	addiu	$s1, $v0, 13056
	lui	$a0, 0x14
	sw	$s0, 9920($a3)
	addiu	$a0, $a0, 15808
	addiu	$a3, $a3, 9920
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	li	$a1, 253
	move	$a2, $zero
	li	$t0, 8
	move	$t1, $s1
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010A69C
	lui	$v0, 0x2000
	jal	sub_0010A0C8
	nop
	b	lbl_0010A6AC
	li	$v0, -11
lbl_0010A69C:
	or	$v0, $s1, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_0010A6AC:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0010A6C0:
	addiu	$sp, $sp, -336
	sd	$s0, 64($sp)
	sd	$s7, 176($sp)
	move	$s0, $a0
	sd	$s8, 192($sp)
	move	$s7, $a1
	sd	$s1, 80($sp)
	move	$a0, $zero
	sd	$ra, 208($sp)
	lui	$s8, 0x14
	sd	$s6, 160($sp)
	addiu	$s1, $s8, 9920
	sd	$s5, 144($sp)
	sd	$s4, 128($sp)
	sd	$s3, 112($sp)
	sd	$s2, 96($sp)
	sd	$a2, 288($sp)
	sd	$a3, 296($sp)
	sd	$t0, 304($sp)
	sd	$t1, 312($sp)
	sd	$t2, 320($sp)
	jal	sub_0010A098
	sd	$t3, 328($sp)
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnez	$v0, lbl_0010A734
	nop
	jal	sub_0010A1C0
	nop
lbl_0010A734:
	jal	sub_0010A3C8
	nop
	beqz	$v0, lbl_0010A758
	nop
	jal	sub_0010A0C8
	nop
	lui	$v0, 0xfffe
	b	lbl_0010A920
	ori	$v0, $v0, 0xfffc
lbl_0010A758:
	jal	sub_00109AA0
	nop
	move	$s3, $v0
	bnezl	$s3, lbl_0010A77C
	lbu	$v1, 0($s0)
	jal	sub_0010A0C8
	nop
	b	lbl_0010A920
	li	$v0, -19
lbl_0010A77C:
	move	$a2, $zero
	lw	$t0, 288($sp)
	sll	$v0, $v1, 0x18
	beqz	$v0, lbl_0010A7D4
	sb	$v1, 20($s1)
	lui	$a3, 0x14
	lui	$a1, 0x13
	addiu	$s2, $sp, 48
	lui	$s6, 0x14
	lui	$s4, 0x14
	addiu	$a2, $a2, 1
lbl_0010A7A8:
	slti	$v0, $a2, 1024
	beqz	$v0, lbl_0010A7E8
	addu	$v0, $s0, $a2
	addu	$a0, $s1, $a2
	lbu	$v1, 0($v0)
	sb	$v1, 20($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010A7A8
	addiu	$a2, $a2, 1
	b	lbl_0010A7EC
	li	$v0, 1024
lbl_0010A7D4:
	lui	$a3, 0x14
	lui	$a1, 0x13
	addiu	$s2, $sp, 48
	lui	$s6, 0x14
	lui	$s4, 0x14
lbl_0010A7E8:
	li	$v0, 1024
lbl_0010A7EC:
	beql	$a2, $v0, lbl_0010A7F4
	sb	$zero, 1043($s1)
lbl_0010A7F4:
	addiu	$v0, $a3, 15296
	lui	$v1, 0x7fff
	subu	$v0, $s3, $v0
	ori	$v1, $v1, 0xffff
	sra	$s5, $v0, 0x4
	and	$v1, $s7, $v1
	sw	$v1, 12($s1)
	addiu	$a1, $a1, 19568
	sw	$t0, 16($s1)
	li	$v0, 1
	sw	$v0, 20($sp)
	addiu	$a0, $sp, 16
	sw	$a1, 36($sp)
	addiu	$s4, $s4, 13056
	sw	$s5, 1044($s1)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s0, $v0
	sw	$s2, 4($s1)
	li	$v0, 4
	sw	$s0, 0($s1)
	sw	$v0, 8($s1)
	addiu	$a0, $s6, 15808
	addiu	$a3, $s8, 9920
	move	$a1, $zero
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 1048
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010A898
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s0
	jal	sub_0010A0C8
	nop
	b	lbl_0010A920
	li	$v0, -11
lbl_0010A898:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s1, 0($v0)
	bnez	$s1, lbl_0010A8BC
	nop
	jal	sub_001068F0
	move	$a0, $s0
	b	lbl_0010A920
	li	$v0, -11
lbl_0010A8BC:
	jal	sub_00106920
	move	$a0, $s0
	jal	sub_001068F0
	move	$a0, $s0
	lw	$v1, 48($sp)
	bgez	$v1, lbl_0010A8F4
	lui	$s0, 0x13
	jal	sub_00106920
	lw	$a0, -3472($s0)
	sw	$zero, 4($s3)
	jal	sub_00106900
	lw	$a0, -3472($s0)
	b	lbl_0010A920
	lw	$v0, 48($sp)
lbl_0010A8F4:
	move	$s1, $s5
	jal	sub_00106920
	lw	$a0, -3472($s0)
	lw	$v1, 4($s3)
	lw	$v0, 48($sp)
	lw	$a0, -3472($s0)
	or	$v1, $v1, $s7
	sw	$v1, 4($s3)
	jal	sub_00106900
	sw	$v0, 0($s3)
	move	$v0, $s1
lbl_0010A920:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 336

sub_0010A950:
	addiu	$sp, $sp, -160
	sd	$s4, 128($sp)
	sd	$s2, 96($sp)
	lui	$s4, 0x14
	sd	$s0, 64($sp)
	addiu	$s2, $s4, 9920
	sd	$ra, 144($sp)
	sd	$s3, 112($sp)
	jal	sub_00109C18
	sd	$s1, 80($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 1
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010A9A8
	nop
	beqz	$s0, lbl_0010A9A8
	nop
	lw	$v0, 4($s0)
	bnez	$v0, lbl_0010A9B8
	lui	$v0, 0x14
lbl_0010A9A8:
	jal	sub_0010A0C8
	nop
	b	lbl_0010AAA8
	li	$v0, -9
lbl_0010A9B8:
	lw	$a0, 0($s0)
	addiu	$v0, $v0, 15296
	lui	$v1, 0x13
	subu	$v0, $s0, $v0
	sw	$a0, 12($s2)
	sra	$v0, $v0, 0x4
	addiu	$v1, $v1, 19592
	sw	$v0, 16($s2)
	li	$a1, 1
	addiu	$a0, $sp, 16
	sw	$a1, 20($sp)
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	addiu	$v1, $sp, 48
	lui	$v0, 0x14
	sw	$s1, 9920($s4)
	addiu	$s3, $v0, 13056
	sw	$v1, 4($s2)
	li	$v0, 4
	lui	$a0, 0x14
	sw	$v0, 8($s2)
	addiu	$a0, $a0, 15808
	move	$a3, $s2
	li	$a1, 1
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 20
	move	$t1, $s3
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgezl	$v0, lbl_0010AA60
	sw	$zero, 4($s0)
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010AAA8
	li	$v0, -11
lbl_0010AA60:
	lui	$v0, 0x2000
	or	$v0, $s3, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010AA88
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010AAA8
	li	$v0, -11
lbl_0010AA88:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
	li	$v1, -1
	slt	$v1, $v1, $v0
	movn	$v0, $zero, $v1
lbl_0010AAA8:
	ld	$ra, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 160
lbl_0010AAC8:
	addiu	$sp, $sp, -192
	sd	$s5, 144($sp)
	sd	$s3, 112($sp)
	move	$s5, $a2
	sd	$s4, 128($sp)
	move	$s3, $a1
	sd	$s1, 80($sp)
	lui	$s4, 0x14
	sd	$s0, 64($sp)
	addiu	$s1, $s4, 9920
	sd	$ra, 176($sp)
	sd	$s6, 160($sp)
	jal	sub_00109C18
	sd	$s2, 96($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 4
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010AB30
	nop
	beqz	$s0, lbl_0010AB30
	nop
	lw	$s2, 4($s0)
	bnez	$s2, lbl_0010AB40
	lui	$v0, 0x14
lbl_0010AB30:
	jal	sub_0010A0C8
	nop
	b	lbl_0010ACDC
	li	$v0, -9
lbl_0010AB40:
	lw	$a0, 0($s0)
	addiu	$v0, $v0, 15296
	lui	$v1, 0x13
	subu	$v0, $s0, $v0
	sw	$a0, 12($s1)
	sra	$v0, $v0, 0x4
	sw	$s3, 16($s1)
	sw	$s5, 20($s1)
	addiu	$v1, $v1, 19616
	sw	$v0, 24($s1)
	li	$a1, 1
	addiu	$a0, $sp, 16
	sw	$a1, 20($sp)
	sw	$v1, 36($sp)
	andi	$s0, $s2, 0x8000
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s3, $v0
	li	$v1, 4
	addiu	$v0, $sp, 48
	sw	$v1, 8($s1)
	sw	$v0, 4($s1)
	beqz	$s0, lbl_0010AC30
	sw	$s3, 9920($s4)
	lui	$s5, 0x13
	jal	sub_00106920
	lw	$a0, -3468($s5)
	lui	$a3, 0x13
	move	$a2, $zero
	lw	$v1, -3616($a3)
	li	$v0, -1
	bne	$v1, $v0, lbl_0010ABE0
	move	$s2, $s0
	lw	$v1, 9920($s4)
	lui	$s6, 0x14
	lui	$s0, 0x14
	negu	$v0, $v1
	sw	$v1, -3616($a3)
	b	lbl_0010AC20
	sw	$v0, 9920($s4)
lbl_0010ABE0:
	lui	$s6, 0x14
	lui	$s0, 0x14
	addiu	$a2, $a2, 1
lbl_0010ABEC:
	slti	$v0, $a2, 32
	beqz	$v0, lbl_0010AC20
	sll	$v0, $a2, 0x2
	addiu	$v1, $a3, -3616
	addu	$a1, $v0, $v1
	li	$a0, -1
	lw	$v0, 0($a1)
	bne	$v0, $a0, lbl_0010ABEC
	addiu	$a2, $a2, 1
	lw	$v0, 0($s1)
	negu	$v1, $v0
	sw	$v0, 0($a1)
	sw	$v1, 0($s1)
lbl_0010AC20:
	jal	sub_00106900
	lw	$a0, -3468($s5)
	b	lbl_0010AC40
	addiu	$s0, $s0, 13056
lbl_0010AC30:
	lui	$s6, 0x14
	lui	$s0, 0x14
	move	$s2, $zero
	addiu	$s0, $s0, 13056
lbl_0010AC40:
	addiu	$a0, $s6, 15808
	addiu	$a3, $s4, 9920
	sw	$zero, 0($sp)
	sw	$s2, 8($sp)
	li	$a1, 4
	move	$a2, $zero
	li	$t0, 28
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010AC8C
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s3
	jal	sub_0010A0C8
	nop
	b	lbl_0010ACDC
	li	$v0, -11
lbl_0010AC8C:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010ACB0
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010ACDC
	li	$v0, -11
lbl_0010ACB0:
	beqz	$s2, lbl_0010ACC8
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010ACDC
	move	$v0, $zero
lbl_0010ACC8:
	jal	sub_00106920
	move	$a0, $s3
	jal	sub_001068F0
	move	$a0, $s3
	lw	$v0, 48($sp)
lbl_0010ACDC:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop

sub_0010AD08:
	addiu	$sp, $sp, -224
	sd	$s8, 192($sp)
	sd	$s7, 176($sp)
	move	$s8, $a2
	sd	$s5, 144($sp)
	move	$s7, $a1
	sd	$s1, 80($sp)
	lui	$s5, 0x14
	sd	$s0, 64($sp)
	addiu	$s1, $s5, 9920
	sd	$ra, 208($sp)
	sd	$s6, 160($sp)
	sd	$s4, 128($sp)
	sd	$s3, 112($sp)
	jal	sub_00109C18
	sd	$s2, 96($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 2
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010AD78
	nop
	beqz	$s0, lbl_0010AD78
	nop
	lw	$s4, 4($s0)
	bnez	$s4, lbl_0010AD88
	lui	$v0, 0x14
lbl_0010AD78:
	jal	sub_0010A0C8
	nop
	b	lbl_0010AF44
	li	$v0, -9
lbl_0010AD88:
	lw	$a0, 0($s0)
	addiu	$v0, $v0, 15296
	lui	$v1, 0x13
	subu	$v0, $s0, $v0
	sw	$a0, 12($s1)
	sra	$v0, $v0, 0x4
	addiu	$v1, $v1, 19640
	sw	$v0, 28($s1)
	li	$a1, 1
	sw	$a1, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v1, 36($sp)
	andi	$s0, $s4, 0x8000
	sw	$s7, 16($s1)
	sw	$s8, 20($s1)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s3, $v0
	li	$v1, 4
	addiu	$v0, $sp, 48
	sw	$v1, 8($s1)
	sw	$v0, 4($s1)
	beqz	$s0, lbl_0010AE74
	sw	$s3, 9920($s5)
	lui	$s6, 0x13
	jal	sub_00106920
	lw	$a0, -3468($s6)
	lui	$a3, 0x13
	move	$a2, $zero
	lw	$v1, -3616($a3)
	li	$v0, -1
	bne	$v1, $v0, lbl_0010AE28
	move	$s2, $s0
	lw	$v1, 9920($s5)
	lui	$s0, 0x14
	negu	$v0, $v1
	sw	$v1, -3616($a3)
	b	lbl_0010AE64
	sw	$v0, 9920($s5)
	nop
lbl_0010AE28:
	lui	$s0, 0x14
	addiu	$a2, $a2, 1
lbl_0010AE30:
	slti	$v0, $a2, 32
	beqz	$v0, lbl_0010AE64
	sll	$v0, $a2, 0x2
	addiu	$v1, $a3, -3616
	addu	$a1, $v0, $v1
	li	$a0, -1
	lw	$v0, 0($a1)
	bne	$v0, $a0, lbl_0010AE30
	addiu	$a2, $a2, 1
	lw	$v0, 0($s1)
	negu	$v1, $v0
	sw	$v0, 0($a1)
	sw	$v1, 0($s1)
lbl_0010AE64:
	jal	sub_00106900
	lw	$a0, -3468($s6)
	b	lbl_0010AE80
	lui	$s6, 0x2000
lbl_0010AE74:
	lui	$s0, 0x14
	move	$s2, $zero
	lui	$s6, 0x2000
lbl_0010AE80:
	and	$v0, $s4, $s6
	bnez	$v0, lbl_0010AE9C
	move	$a0, $s1
	move	$a0, $s7
	jal	sub_001128C8
	move	$a1, $s8
	move	$a0, $s1
lbl_0010AE9C:
	jal	sub_001128C8
	li	$a1, 32
	addiu	$s0, $s0, 13056
	lui	$v0, 0x14
	addiu	$a3, $s5, 9920
	addiu	$a0, $v0, 15808
	sw	$zero, 0($sp)
	li	$a1, 2
	sw	$s2, 8($sp)
	move	$a2, $zero
	li	$t0, 32
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010AEF8
	or	$v0, $s6, $s0
	jal	sub_001068F0
	move	$a0, $s3
	jal	sub_0010A0C8
	nop
	b	lbl_0010AF44
	li	$v0, -11
lbl_0010AEF8:
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010AF18
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010AF44
	li	$v0, -11
lbl_0010AF18:
	beqz	$s2, lbl_0010AF30
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010AF44
	move	$v0, $zero
lbl_0010AF30:
	jal	sub_00106920
	move	$a0, $s3
	jal	sub_001068F0
	move	$a0, $s3
	lw	$v0, 48($sp)
lbl_0010AF44:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	nop
lbl_0010AF78:
	addiu	$sp, $sp, -224
	sd	$s6, 160($sp)
	sd	$s1, 80($sp)
	move	$s6, $a2
	sd	$s8, 192($sp)
	move	$s1, $a1
	sd	$s2, 96($sp)
	lui	$s8, 0x14
	sd	$s0, 64($sp)
	addiu	$s2, $s8, 9920
	sd	$ra, 208($sp)
	sd	$s7, 176($sp)
	sd	$s5, 144($sp)
	sd	$s4, 128($sp)
	jal	sub_00109C18
	sd	$s3, 112($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 3
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010AFE8
	nop
	beqz	$s0, lbl_0010AFE8
	nop
	lw	$s7, 4($s0)
	bnez	$s7, lbl_0010AFF8
	lui	$v0, 0x14
lbl_0010AFE8:
	jal	sub_0010A0C8
	nop
	b	lbl_0010B208
	li	$v0, -9
lbl_0010AFF8:
	lw	$a0, 0($s0)
	addiu	$v0, $v0, 15296
	lui	$v1, 0x13
	subu	$v0, $s0, $v0
	sw	$a0, 12($s2)
	sra	$v0, $v0, 0x4
	addiu	$v1, $v1, 19664
	sw	$v0, 44($s2)
	li	$a1, 1
	sw	$a1, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v1, 36($sp)
	andi	$s0, $s7, 0x8000
	sw	$s6, 20($s2)
	sw	$s1, 16($s2)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s5, $v0
	li	$v1, 4
	addiu	$v0, $sp, 48
	sw	$v1, 8($s2)
	sw	$v0, 4($s2)
	beqz	$s0, lbl_0010B0E4
	sw	$s5, 9920($s8)
	lui	$s3, 0x13
	jal	sub_00106920
	lw	$a0, -3468($s3)
	lui	$a3, 0x13
	move	$a2, $zero
	lw	$v1, -3616($a3)
	li	$v0, -1
	bne	$v1, $v0, lbl_0010B098
	move	$s4, $s0
	lw	$v1, 9920($s8)
	andi	$s0, $s1, 0xf
	negu	$v0, $v1
	sw	$v1, -3616($a3)
	b	lbl_0010B0D4
	sw	$v0, 9920($s8)
	nop
lbl_0010B098:
	andi	$s0, $s1, 0xf
	addiu	$a2, $a2, 1
lbl_0010B0A0:
	slti	$v0, $a2, 32
	beqz	$v0, lbl_0010B0D4
	sll	$v0, $a2, 0x2
	addiu	$v1, $a3, -3616
	addu	$a1, $v0, $v1
	li	$a0, -1
	lw	$v0, 0($a1)
	bne	$v0, $a0, lbl_0010B0A0
	addiu	$a2, $a2, 1
	lw	$v0, 0($s2)
	negu	$v1, $v0
	sw	$v0, 0($a1)
	sw	$v1, 0($s2)
lbl_0010B0D4:
	jal	sub_00106900
	lw	$a0, -3468($s3)
	b	lbl_0010B0EC
	nop
lbl_0010B0E4:
	andi	$s0, $s1, 0xf
	move	$s4, $zero
lbl_0010B0EC:
	bnez	$s0, lbl_0010B0FC
	srl	$v0, $s1, 0x4
	b	lbl_0010B108
	move	$s0, $zero
lbl_0010B0FC:
	addiu	$v1, $s1, -16
	sll	$v0, $v0, 0x4
	subu	$s0, $v0, $v1
lbl_0010B108:
	slt	$v1, $s6, $s0
	lui	$s3, 0x2000
	and	$v0, $s7, $s3
	bnez	$v0, lbl_0010B128
	movn	$s0, $s6, $v1
	move	$a1, $s6
	jal	sub_001128C8
	move	$a0, $s1
lbl_0010B128:
	or	$s1, $s1, $s3
	sw	$s0, 24($s2)
	blez	$s0, lbl_0010B160
	move	$a1, $zero
	addiu	$a2, $s2, 28
	nop
lbl_0010B140:
	addu	$v0, $s1, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	slt	$v0, $a1, $s0
	sb	$v1, 0($a0)
	bnez	$v0, lbl_0010B140
	nop
lbl_0010B160:
	lui	$v0, 0x14
	addiu	$a3, $s8, 9920
	addiu	$s0, $v0, 13056
	sw	$zero, 0($sp)
	lui	$v0, 0x14
	sw	$s4, 8($sp)
	addiu	$a0, $v0, 15808
	li	$a1, 3
	move	$a2, $zero
	li	$t0, 48
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010B1B8
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s5
	jal	sub_0010A0C8
	nop
	b	lbl_0010B208
	li	$v0, -11
lbl_0010B1B8:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010B1DC
	nop
	jal	sub_001068F0
	move	$a0, $s5
	b	lbl_0010B208
	li	$v0, -11
lbl_0010B1DC:
	beqz	$s4, lbl_0010B1F4
	nop
	jal	sub_001068F0
	move	$a0, $s5
	b	lbl_0010B208
	move	$v0, $zero
lbl_0010B1F4:
	jal	sub_00106920
	move	$a0, $s5
	jal	sub_001068F0
	move	$a0, $s5
	lw	$v0, 48($sp)
lbl_0010B208:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	addiu	$sp, $sp, -192
	sd	$s2, 96($sp)
	sd	$s1, 80($sp)
	move	$s2, $a2
	sd	$s6, 160($sp)
	move	$s1, $a1
	sd	$s5, 144($sp)
	lui	$s6, 0x14
	sd	$s4, 128($sp)
	li	$s5, 1
	sd	$s3, 112($sp)
	lui	$s4, 0x14
	sd	$s0, 64($sp)
	sd	$ra, 176($sp)
	jal	sub_00109C18
	addiu	$s3, $s6, 9920
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 5
	lui	$v0, 0x13
	sw	$s2, 9864($s4)
	lw	$v1, -3484($v0)
	bnez	$v1, lbl_0010B2A0
	nop
	jal	sub_0010A1C0
	nop
lbl_0010B2A0:
	beqz	$s0, lbl_0010B2B4
	nop
	lw	$v0, 4($s0)
	bnezl	$v0, lbl_0010B2C4
	sw	$zero, 1044($s3)
lbl_0010B2B4:
	jal	sub_0010A0C8
	nop
	b	lbl_0010B598
	li	$v0, -9
lbl_0010B2C4:
	li	$v0, 2
	beq	$s1, $v0, lbl_0010B370
	sw	$zero, 1048($s3)
	slti	$v0, $s1, 3
	beqz	$v0, lbl_0010B2EC
	li	$v0, 3
	beql	$s1, $s5, lbl_0010B2FC
	lui	$s0, 0x13
	b	lbl_0010B3D8
	lw	$v0, 0($s0)
lbl_0010B2EC:
	beq	$s1, $v0, lbl_0010B3A0
	lui	$a0, 0x13
	b	lbl_0010B3D8
	lw	$v0, 0($s0)
lbl_0010B2FC:
	jal	sub_00106920
	lw	$a0, -3468($s0)
	lui	$a1, 0x13
	move	$a0, $zero
	lw	$v1, -3616($a1)
	li	$v0, -1
	bne	$v1, $v0, lbl_0010B344
	li	$v0, 32
	addiu	$v1, $a1, -3616
	li	$a1, -1
	addiu	$a0, $a0, 1
lbl_0010B328:
	slti	$v0, $a0, 32
	beqz	$v0, lbl_0010B340
	addiu	$v1, $v1, 4
	lw	$v0, 0($v1)
	beql	$v0, $a1, lbl_0010B328
	addiu	$a0, $a0, 1
lbl_0010B340:
	li	$v0, 32
lbl_0010B344:
	bne	$a0, $v0, lbl_0010B358
	lw	$v1, 9864($s4)
	lw	$v0, 9864($s4)
	b	lbl_0010B360
	sw	$zero, 0($v0)
lbl_0010B358:
	li	$v0, 1
	sw	$v0, 0($v1)
lbl_0010B360:
	jal	sub_00106900
	lw	$a0, -3468($s0)
	b	lbl_0010B3C8
	nop
lbl_0010B370:
	lui	$a0, 0x13
	li	$a1, 1088
	lw	$v0, -3488($a0)
	lui	$v1, 0x14
	addiu	$v1, $v1, 13136
	lui	$a0, 0x2000
	mult	$v0, $v0, $a1
	addu	$v0, $v0, $v1
	or	$v0, $v0, $a0
	lw	$v1, 0($v0)
	b	lbl_0010B3C8
	sw	$v1, 0($s2)
lbl_0010B3A0:
	li	$a1, 1088
	lw	$v0, -3488($a0)
	lui	$v1, 0x14
	addiu	$v1, $v1, 13136
	lui	$a0, 0x2000
	mult	$v0, $v0, $a1
	addu	$v0, $v0, $v1
	or	$v0, $v0, $a0
	ld	$v1, 0($v0)
	sd	$v1, 0($s2)
lbl_0010B3C8:
	jal	sub_0010A0C8
	nop
	b	lbl_0010B598
	move	$v0, $zero
lbl_0010B3D8:
	sw	$s1, 16($s3)
	bnez	$s2, lbl_0010B3FC
	sw	$v0, 12($s3)
	sw	$zero, 1052($s3)
	lui	$v1, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	b	lbl_0010B4D0
	lui	$s1, 0x14
lbl_0010B3FC:
	move	$a2, $s2
	addiu	$a0, $s3, 20
	li	$v1, 1024
	or	$v0, $a2, $a0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0010B488
	sw	$v1, 1052($s3)
	addiu	$v0, $a2, 1024
	lui	$v1, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s1, 0x14
lbl_0010B42C:
	ldl	$a1, 7($a2)
	ldr	$a1, 0($a2)
	ldl	$a3, 15($a2)
	ldr	$a3, 8($a2)
	ldl	$t0, 23($a2)
	ldr	$t0, 16($a2)
	ldl	$t1, 31($a2)
	ldr	$t1, 24($a2)
	sdl	$a1, 7($a0)
	sdr	$a1, 0($a0)
	sdl	$a3, 15($a0)
	sdr	$a3, 8($a0)
	sdl	$t0, 23($a0)
	sdr	$t0, 16($a0)
	sdl	$t1, 31($a0)
	sdr	$t1, 24($a0)
	addiu	$a2, $a2, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a2, $v0, lbl_0010B42C
	nop
	b	lbl_0010B4D4
	addiu	$v1, $v1, 19688
lbl_0010B488:
	addiu	$v0, $a2, 1024
	lui	$v1, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s1, 0x14
lbl_0010B49C:
	ld	$a1, 0($a2)
	ld	$a3, 8($a2)
	ld	$t0, 16($a2)
	ld	$t1, 24($a2)
	sd	$a1, 0($a0)
	sd	$a3, 8($a0)
	sd	$t0, 16($a0)
	sd	$t1, 24($a0)
	addiu	$a2, $a2, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a2, $v0, lbl_0010B49C
	nop
lbl_0010B4D0:
	addiu	$v1, $v1, 19688
lbl_0010B4D4:
	li	$v0, 1
	sw	$v0, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v1, 36($sp)
	addiu	$s4, $s1, 13056
	sw	$zero, 24($sp)
	jal	sub_001068E0
	addiu	$s0, $s6, 9920
	move	$s1, $v0
	move	$a0, $s0
	li	$v0, 4
	sw	$s2, 4($s3)
	sw	$v0, 8($s3)
	li	$a1, 1056
	jal	sub_001128C8
	sw	$s1, 0($s3)
	addiu	$a0, $s5, 15808
	move	$a3, $s0
	sw	$zero, 0($sp)
	li	$a1, 5
	sw	$zero, 8($sp)
	move	$a2, $zero
	li	$t0, 1056
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010B560
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010B598
	li	$v0, -11
lbl_0010B560:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010B584
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010B598
	li	$v0, -11
lbl_0010B584:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010B598:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	addiu	$sp, $sp, -208
	sd	$s7, 176($sp)
	sd	$s5, 144($sp)
	move	$s7, $t0
	sd	$s4, 128($sp)
	move	$s5, $a1
	sd	$s3, 112($sp)
	move	$s4, $t1
	sd	$s0, 64($sp)
	move	$s3, $a3
	sd	$s6, 160($sp)
	move	$s0, $a2
	sd	$s2, 96($sp)
	lui	$s6, 0x14
	sd	$s1, 80($sp)
	sd	$ra, 192($sp)
	jal	sub_00109C18
	addiu	$s1, $s6, 9920
	move	$s2, $v0
	jal	sub_0010A098
	li	$a0, 26
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnez	$v1, lbl_0010B62C
	nop
	jal	sub_0010A1C0
	nop
lbl_0010B62C:
	beqz	$s2, lbl_0010B640
	nop
	lw	$v0, 4($s2)
	bnez	$v0, lbl_0010B650
	sltiu	$v0, $s3, 1025
lbl_0010B640:
	jal	sub_0010A0C8
	nop
	b	lbl_0010B77C
	li	$v0, -9
lbl_0010B650:
	beqz	$v0, lbl_0010B660
	sltiu	$v0, $s4, 1025
	bnez	$v0, lbl_0010B670
	nop
lbl_0010B660:
	jal	sub_0010A0C8
	nop
	b	lbl_0010B77C
	li	$v0, -22
lbl_0010B670:
	bnez	$s0, lbl_0010B680
	move	$a1, $s0
	b	lbl_0010B68C
	sw	$zero, 1052($s1)
lbl_0010B680:
	addiu	$a0, $s1, 20
	jal	sub_0012515C
	move	$a2, $s3
lbl_0010B68C:
	lw	$v1, 0($s2)
	lui	$v0, 0x13
	sw	$s5, 16($s1)
	addiu	$v0, $v0, 19712
	sw	$v1, 12($s1)
	li	$a1, 1
	sw	$s3, 1052($s1)
	addiu	$a0, $sp, 16
	sw	$a1, 20($sp)
	addiu	$s0, $s6, 9920
	sw	$v0, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s2, $v0
	li	$v1, 4
	addiu	$v0, $sp, 48
	sw	$s4, 1048($s1)
	sw	$v0, 4($s1)
	move	$a0, $s0
	sw	$v1, 8($s1)
	li	$a1, 1056
	sw	$s7, 1044($s1)
	jal	sub_001128C8
	sw	$s2, 0($s1)
	lui	$v0, 0x14
	lui	$a0, 0x14
	addiu	$s1, $v0, 13056
	addiu	$a0, $a0, 15808
	move	$a3, $s0
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	li	$a1, 26
	move	$a2, $zero
	li	$t0, 1056
	move	$t1, $s1
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010B744
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s2
	jal	sub_0010A0C8
	nop
	b	lbl_0010B77C
	li	$v0, -11
lbl_0010B744:
	or	$v0, $s1, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010B768
	nop
	jal	sub_001068F0
	move	$a0, $s2
	b	lbl_0010B77C
	li	$v0, -11
lbl_0010B768:
	jal	sub_00106920
	move	$a0, $s2
	jal	sub_001068F0
	move	$a0, $s2
	lw	$v0, 48($sp)
lbl_0010B77C:
	ld	$ra, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 208

sub_0010B7A8:
	addiu	$sp, $sp, -208
	sd	$s6, 160($sp)
	sd	$s1, 80($sp)
	move	$s6, $a1
	move	$s1, $a0
	sd	$s7, 176($sp)
	sd	$s3, 112($sp)
	move	$a0, $s6
	sd	$ra, 192($sp)
	lui	$s7, 0x14
	sd	$s5, 144($sp)
	addiu	$s3, $s7, 9920
	sd	$s4, 128($sp)
	sd	$s2, 96($sp)
	jal	sub_0010A098
	sd	$s0, 64($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010B804
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010B804:
	move	$s0, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010B854
	sb	$v0, 12($s3)
	lui	$a1, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	addiu	$s0, $s0, 1
lbl_0010B828:
	slti	$v0, $s0, 1024
	beqz	$v0, lbl_0010B864
	addu	$v0, $s1, $s0
	addu	$a0, $s3, $s0
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010B828
	addiu	$s0, $s0, 1
	b	lbl_0010B868
	li	$v0, 1024
lbl_0010B854:
	lui	$a1, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
lbl_0010B864:
	li	$v0, 1024
lbl_0010B868:
	bne	$s0, $v0, lbl_0010B878
	addiu	$v0, $a1, 19736
	sb	$zero, 1035($s3)
	li	$s0, 1023
lbl_0010B878:
	li	$v1, 1
	sw	$v1, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v0, 36($sp)
	addiu	$s4, $s4, 13056
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s2, 4($s3)
	li	$v0, 4
	sw	$s1, 0($s3)
	sw	$v0, 8($s3)
	addiu	$a0, $s5, 15808
	move	$a1, $s6
	addiu	$a3, $s7, 9920
	addiu	$t0, $s0, 13
	move	$a2, $zero
	sw	$zero, 0($sp)
	move	$t1, $s4
	sw	$zero, 8($sp)
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010B8F4
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010B92C
	li	$v0, -11
lbl_0010B8F4:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010B918
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010B92C
	li	$v0, -11
lbl_0010B918:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010B92C:
	ld	$ra, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 208
lbl_0010B958:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010B7A8
	li	$a1, 6
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
lbl_0010B978:
	addiu	$sp, $sp, -208
	sd	$s1, 80($sp)
	sd	$s6, 160($sp)
	move	$s1, $a0
	sd	$s7, 176($sp)
	move	$s6, $a1
	sd	$s2, 96($sp)
	li	$a0, 7
	sd	$ra, 192($sp)
	lui	$s7, 0x14
	sd	$s5, 144($sp)
	addiu	$s2, $s7, 9920
	sd	$s4, 128($sp)
	sd	$s3, 112($sp)
	jal	sub_0010A098
	sd	$s0, 64($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010B9D4
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010B9D4:
	move	$s0, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010BA24
	sb	$v0, 16($s2)
	lui	$a1, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	addiu	$s0, $s0, 1
lbl_0010B9F8:
	slti	$v0, $s0, 1024
	beqz	$v0, lbl_0010BA34
	addu	$v0, $s1, $s0
	addu	$a0, $s2, $s0
	lbu	$v1, 0($v0)
	sb	$v1, 16($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010B9F8
	addiu	$s0, $s0, 1
	b	lbl_0010BA38
	li	$v0, 1024
lbl_0010BA24:
	lui	$a1, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
lbl_0010BA34:
	li	$v0, 1024
lbl_0010BA38:
	bnel	$s0, $v0, lbl_0010BA4C
	sw	$s6, 12($s2)
	sb	$zero, 1039($s2)
	li	$s0, 1023
	sw	$s6, 12($s2)
lbl_0010BA4C:
	addiu	$v1, $a1, 19760
	li	$v0, 1
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	addiu	$s4, $s4, 13056
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s3, 4($s2)
	li	$v0, 4
	sw	$s1, 0($s2)
	sw	$v0, 8($s2)
	addiu	$a0, $s5, 15808
	addiu	$a3, $s7, 9920
	addiu	$t0, $s0, 17
	sw	$zero, 0($sp)
	li	$a1, 7
	sw	$zero, 8($sp)
	move	$a2, $zero
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010BACC
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010BB04
	li	$v0, -11
lbl_0010BACC:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010BAF0
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010BB04
	li	$v0, -11
lbl_0010BAF0:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010BB04:
	ld	$ra, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 208
lbl_0010BB30:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010B7A8
	li	$a1, 8
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -208
	sd	$s0, 64($sp)
	sd	$s6, 160($sp)
	move	$s0, $a0
	sd	$s2, 96($sp)
	move	$s6, $a2
	sd	$s1, 80($sp)
	move	$s2, $a1
	sd	$s7, 176($sp)
	move	$s1, $a3
	sd	$s3, 112($sp)
	li	$a0, 14
	sd	$ra, 192($sp)
	lui	$s7, 0x14
	sd	$s5, 144($sp)
	addiu	$s3, $s7, 9920
	jal	sub_0010A098
	sd	$s4, 128($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010BBB4
	lbu	$v0, 0($s0)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s0)
lbl_0010BBB4:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010BBFC
	sb	$v0, 12($s3)
	slti	$a3, $s1, 1025
	addiu	$a1, $a1, 1
	nop
lbl_0010BBD0:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010BC00
	addu	$v0, $s0, $a1
	addu	$a0, $s3, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010BBD0
	addiu	$a1, $a1, 1
	b	lbl_0010BC04
	li	$v0, 1024
lbl_0010BBFC:
	slti	$a3, $s1, 1025
lbl_0010BC00:
	li	$v0, 1024
lbl_0010BC04:
	beql	$a1, $v0, lbl_0010BC0C
	sb	$zero, 1035($s3)
lbl_0010BC0C:
	bnezl	$s2, lbl_0010BC1C
	lbu	$v0, 0($s2)
	b	lbl_0010BC68
	sb	$zero, 1036($s3)
lbl_0010BC1C:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010BC5C
	sb	$v0, 1036($s3)
	addiu	$a2, $s3, 1036
	addiu	$a1, $a1, 1
	nop
lbl_0010BC38:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010BC5C
	addu	$v0, $s2, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 0($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010BC38
	addiu	$a1, $a1, 1
lbl_0010BC5C:
	li	$v0, 1024
	beql	$a1, $v0, lbl_0010BC68
	sb	$zero, 2059($s3)
lbl_0010BC68:
	bnez	$a3, lbl_0010BC80
	nop
	jal	sub_0010A0C8
	nop
	b	lbl_0010BDA4
	li	$v0, -7
lbl_0010BC80:
	blez	$s1, lbl_0010BCC8
	move	$a1, $zero
	addiu	$a2, $s3, 2060
	lui	$a3, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	nop
lbl_0010BCA0:
	addu	$v0, $s6, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	slt	$v0, $a1, $s1
	sb	$v1, 0($a0)
	bnez	$v0, lbl_0010BCA0
	nop
	b	lbl_0010BCDC
	sw	$s1, 3084($s3)
lbl_0010BCC8:
	lui	$a3, 0x13
	addiu	$s2, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	sw	$s1, 3084($s3)
lbl_0010BCDC:
	addiu	$v1, $a3, 19784
	li	$v0, 1
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	addiu	$s0, $s7, 9920
	sw	$v1, 36($sp)
	addiu	$s4, $s4, 13056
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	move	$a0, $s0
	li	$v0, 4
	sw	$s2, 4($s3)
	sw	$v0, 8($s3)
	li	$a1, 3088
	jal	sub_001128C8
	sw	$s1, 0($s3)
	addiu	$a0, $s5, 15808
	move	$a3, $s0
	sw	$zero, 0($sp)
	li	$a1, 14
	sw	$zero, 8($sp)
	move	$a2, $zero
	li	$t0, 3088
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010BD6C
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010BDA4
	li	$v0, -11
lbl_0010BD6C:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010BD90
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010BDA4
	li	$v0, -11
lbl_0010BD90:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010BDA4:
	ld	$ra, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 208
	addiu	$sp, $sp, -144
	sd	$s1, 80($sp)
	move	$s1, $a0
	sd	$s3, 112($sp)
	sd	$s0, 64($sp)
	li	$a0, 15
	sd	$ra, 128($sp)
	lui	$s3, 0x14
	sd	$s2, 96($sp)
	jal	sub_0010A098
	addiu	$s0, $s3, 9920
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnez	$v0, lbl_0010BE18
	lui	$v0, 0x13
	jal	sub_0010A1C0
	nop
	lui	$v0, 0x13
lbl_0010BE18:
	sw	$s1, 12($s0)
	li	$v1, 1
	addiu	$v0, $v0, 19808
	sw	$v1, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v0, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	addiu	$v1, $sp, 48
	lui	$v0, 0x14
	sw	$s1, 9920($s3)
	addiu	$s2, $v0, 13056
	sw	$v1, 4($s0)
	li	$v0, 4
	lui	$a0, 0x14
	sw	$v0, 8($s0)
	addiu	$a0, $a0, 15808
	move	$a3, $s0
	li	$a1, 15
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 16
	move	$t1, $s2
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010BEA8
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010BEE0
	li	$v0, -11
lbl_0010BEA8:
	or	$v0, $s2, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010BECC
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010BEE0
	li	$v0, -11
lbl_0010BECC:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010BEE0:
	ld	$ra, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010B7A8
	li	$a1, 16
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 48($sp)
	sd	$s2, 32($sp)
	li	$a0, 9
	jal	sub_0010A098
	sd	$s1, 16($sp)
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnez	$v0, lbl_0010BF58
	nop
	jal	sub_0010A1C0
	nop
lbl_0010BF58:
	jal	sub_0010A0C8
	nop
	jal	sub_00109AA0
	nop
	move	$s2, $v0
	bnez	$s2, lbl_0010BF7C
	move	$a0, $s0
	b	lbl_0010BFD0
	li	$v0, -19
lbl_0010BF7C:
	jal	sub_0010B7A8
	li	$a1, 9
	move	$s1, $v0
	bgez	$s1, lbl_0010BFA4
	lui	$s0, 0x13
	jal	sub_00106920
	lw	$a0, -3472($s0)
	sw	$zero, 4($s2)
	b	lbl_0010BFC4
	lw	$a0, -3472($s0)
lbl_0010BFA4:
	jal	sub_00106920
	lw	$a0, -3472($s0)
	lui	$v1, 0x14
	sw	$s1, 0($s2)
	addiu	$v1, $v1, 15296
	lw	$a0, -3472($s0)
	subu	$v1, $s2, $v1
	sra	$s1, $v1, 0x4
lbl_0010BFC4:
	jal	sub_00106900
	nop
	move	$v0, $s1
lbl_0010BFD0:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -160
	sd	$s4, 128($sp)
	sd	$s2, 96($sp)
	lui	$s4, 0x14
	sd	$s0, 64($sp)
	addiu	$s2, $s4, 9920
	sd	$ra, 144($sp)
	sd	$s3, 112($sp)
	jal	sub_00109C18
	sd	$s1, 80($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 10
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010C040
	nop
	beqz	$s0, lbl_0010C040
	nop
	lw	$v0, 4($s0)
	bnezl	$v0, lbl_0010C050
	lw	$a0, 0($s0)
lbl_0010C040:
	jal	sub_0010A0C8
	nop
	b	lbl_0010C12C
	li	$v0, -9
lbl_0010C050:
	lui	$v0, 0x13
	addiu	$v0, $v0, 19832
	li	$v1, 1
	sw	$a0, 12($s2)
	addiu	$a0, $sp, 16
	sw	$v1, 20($sp)
	sw	$v0, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	addiu	$v1, $sp, 48
	lui	$v0, 0x14
	sw	$s1, 9920($s4)
	addiu	$s3, $v0, 13056
	sw	$v1, 4($s2)
	li	$v0, 4
	lui	$a0, 0x14
	sw	$v0, 8($s2)
	addiu	$a0, $a0, 15808
	move	$a3, $s2
	li	$a1, 10
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 20
	move	$t1, $s3
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgezl	$v0, lbl_0010C0E4
	sw	$zero, 4($s0)
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010C12C
	li	$v0, -11
lbl_0010C0E4:
	lui	$v0, 0x2000
	or	$v0, $s3, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010C10C
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010C12C
	li	$v0, -11
lbl_0010C10C:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
	li	$v1, -1
	slt	$v1, $v1, $v0
	movn	$v0, $zero, $v1
lbl_0010C12C:
	ld	$ra, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop
	addiu	$sp, $sp, -144
	sd	$s1, 80($sp)
	sd	$s3, 112($sp)
	move	$s1, $a1
	sd	$s2, 96($sp)
	lui	$s3, 0x14
	sd	$s0, 64($sp)
	sd	$ra, 128($sp)
	jal	sub_00109C18
	addiu	$s2, $s3, 9920
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 11
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	beqz	$v1, lbl_0010C1A8
	nop
	beqz	$s0, lbl_0010C1A8
	nop
	lw	$v0, 4($s0)
	bnezl	$v0, lbl_0010C1B8
	lw	$v1, 0($s0)
lbl_0010C1A8:
	jal	sub_0010A0C8
	nop
	b	lbl_0010C288
	li	$v0, -9
lbl_0010C1B8:
	lui	$v0, 0x13
	sw	$s1, 16($s2)
	addiu	$v0, $v0, 19856
	sw	$v1, 12($s2)
	li	$a1, 1
	addiu	$a0, $sp, 16
	sw	$a1, 20($sp)
	sw	$v0, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	addiu	$v1, $sp, 48
	lui	$v0, 0x14
	sw	$s1, 9920($s3)
	addiu	$s0, $v0, 13056
	sw	$v1, 4($s2)
	li	$v0, 4
	lui	$a0, 0x14
	sw	$v0, 8($s2)
	addiu	$a0, $a0, 15808
	move	$a3, $s2
	li	$a1, 11
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 32
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010C250
	lui	$v0, 0x2000
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010C288
	li	$v0, -11
lbl_0010C250:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010C274
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010C288
	li	$v0, -11
lbl_0010C274:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010C288:
	ld	$ra, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop
lbl_0010C2A8:
	addiu	$sp, $sp, -208
	sd	$s1, 80($sp)
	sd	$s6, 160($sp)
	move	$s1, $a0
	sd	$s7, 176($sp)
	move	$s6, $a1
	sd	$s2, 96($sp)
	li	$a0, 12
	sd	$ra, 192($sp)
	lui	$s7, 0x14
	sd	$s5, 144($sp)
	addiu	$s2, $s7, 9920
	sd	$s4, 128($sp)
	sd	$s3, 112($sp)
	jal	sub_0010A098
	sd	$s0, 64($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010C304
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010C304:
	move	$s0, $zero
	move	$v1, $v0
	beqz	$v1, lbl_0010C350
	sb	$v0, 16($s2)
	lui	$a1, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	nop
lbl_0010C328:
	addiu	$s0, $s0, 1
	slti	$v0, $s0, 1024
	beqz	$v0, lbl_0010C360
	addu	$v0, $s1, $s0
	addu	$a0, $s2, $s0
	lbu	$v1, 0($v0)
	bnez	$v1, lbl_0010C328
	sb	$v1, 16($a0)
	b	lbl_0010C364
	li	$v0, 1024
lbl_0010C350:
	lui	$a1, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
lbl_0010C360:
	li	$v0, 1024
lbl_0010C364:
	bnel	$s0, $v0, lbl_0010C378
	sw	$s6, 12($s2)
	sb	$zero, 1039($s2)
	li	$s0, 1023
	sw	$s6, 12($s2)
lbl_0010C378:
	addiu	$v1, $a1, 19880
	li	$v0, 1
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	addiu	$s4, $s4, 13056
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s3, 4($s2)
	li	$v0, 4
	sw	$s1, 0($s2)
	sw	$v0, 8($s2)
	addiu	$a0, $s5, 15808
	addiu	$a3, $s7, 9920
	addiu	$t0, $s0, 17
	sw	$zero, 0($sp)
	li	$a1, 12
	sw	$zero, 8($sp)
	move	$a2, $zero
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010C3F8
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010C430
	li	$v0, -11
lbl_0010C3F8:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010C41C
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010C430
	li	$v0, -11
lbl_0010C41C:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010C430:
	ld	$ra, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 208
	nop
lbl_0010C460:
	addiu	$sp, $sp, -224
	sd	$s2, 96($sp)
	sd	$s7, 176($sp)
	move	$s2, $a0
	sd	$s0, 64($sp)
	move	$s7, $a2
	sd	$s8, 192($sp)
	move	$s0, $a1
	sd	$s3, 112($sp)
	li	$a0, 13
	sd	$ra, 208($sp)
	lui	$s8, 0x14
	sd	$s6, 160($sp)
	addiu	$s3, $s8, 9920
	sd	$s5, 144($sp)
	sd	$s4, 128($sp)
	jal	sub_0010A098
	sd	$s1, 80($sp)
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnezl	$v0, lbl_0010C4C4
	lbu	$v0, 0($s2)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s2)
lbl_0010C4C4:
	move	$s1, $zero
	move	$v1, $v0
	beqz	$v1, lbl_0010C510
	sb	$v0, 80($s3)
	lui	$a1, 0x13
	addiu	$s4, $sp, 48
	lui	$s6, 0x14
	lui	$s5, 0x14
	nop
lbl_0010C4E8:
	addiu	$s1, $s1, 1
	slti	$v0, $s1, 1024
	beqz	$v0, lbl_0010C520
	addu	$v0, $s2, $s1
	addu	$a0, $s3, $s1
	lbu	$v1, 0($v0)
	bnez	$v1, lbl_0010C4E8
	sb	$v1, 80($a0)
	b	lbl_0010C524
	li	$v0, 1024
lbl_0010C510:
	lui	$a1, 0x13
	addiu	$s4, $sp, 48
	lui	$s6, 0x14
	lui	$s5, 0x14
lbl_0010C520:
	li	$v0, 1024
lbl_0010C524:
	bne	$s1, $v0, lbl_0010C534
	addiu	$v1, $a1, 19904
	sb	$zero, 1103($s3)
	li	$s1, 1023
lbl_0010C534:
	li	$v0, 1
	ldl	$a0, 7($s0)
	ldr	$a0, 0($s0)
	ldl	$a1, 15($s0)
	ldr	$a1, 8($s0)
	ldl	$a2, 23($s0)
	ldr	$a2, 16($s0)
	ldl	$a3, 31($s0)
	ldr	$a3, 24($s0)
	sdl	$a0, 23($s3)
	sdr	$a0, 16($s3)
	sdl	$a1, 31($s3)
	sdr	$a1, 24($s3)
	sdl	$a2, 39($s3)
	sdr	$a2, 32($s3)
	sdl	$a3, 47($s3)
	sdr	$a3, 40($s3)
	ldl	$a0, 39($s0)
	ldr	$a0, 32($s0)
	ldl	$a1, 47($s0)
	ldr	$a1, 40($s0)
	ldl	$a2, 55($s0)
	ldr	$a2, 48($s0)
	ldl	$a3, 63($s0)
	ldr	$a3, 56($s0)
	sdl	$a0, 55($s3)
	sdr	$a0, 48($s3)
	sdl	$a1, 63($s3)
	sdr	$a1, 56($s3)
	sdl	$a2, 71($s3)
	sdr	$a2, 64($s3)
	sdl	$a3, 79($s3)
	sdr	$a3, 72($s3)
	addiu	$s5, $s5, 13056
	sw	$s7, 12($s3)
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	addiu	$s0, $s8, 9920
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s2, $v0
	move	$a0, $s0
	li	$v0, 4
	sw	$s4, 4($s3)
	sw	$v0, 8($s3)
	li	$a1, 1104
	jal	sub_001128C8
	sw	$s2, 0($s3)
	addiu	$a0, $s6, 15808
	move	$a3, $s0
	addiu	$t0, $s1, 81
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	li	$a1, 13
	move	$a2, $zero
	move	$t1, $s5
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010C644
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s2
	jal	sub_0010A0C8
	nop
	b	lbl_0010C67C
	li	$v0, -11
lbl_0010C644:
	or	$v0, $s5, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010C668
	nop
	jal	sub_001068F0
	move	$a0, $s2
	b	lbl_0010C67C
	li	$v0, -11
lbl_0010C668:
	jal	sub_00106920
	move	$a0, $s2
	jal	sub_001068F0
	move	$a0, $s2
	lw	$v0, 48($sp)
lbl_0010C67C:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	nop
	addiu	$sp, $sp, -192
	sd	$s1, 80($sp)
	sd	$s0, 64($sp)
	move	$s1, $a0
	sd	$s6, 160($sp)
	move	$s0, $a1
	sd	$s2, 96($sp)
	li	$a0, 17
	sd	$ra, 176($sp)
	lui	$s6, 0x14
	sd	$s5, 144($sp)
	addiu	$s2, $s6, 9920
	sd	$s4, 128($sp)
	jal	sub_0010A098
	sd	$s3, 112($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010C708
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010C708:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010C75C
	sb	$v0, 12($s2)
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	addiu	$a1, $a1, 1
	nop
lbl_0010C730:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010C76C
	addu	$v0, $s1, $a1
	addu	$a0, $s2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010C730
	addiu	$a1, $a1, 1
	b	lbl_0010C770
	li	$v0, 1024
lbl_0010C75C:
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
lbl_0010C76C:
	li	$v0, 1024
lbl_0010C770:
	beql	$a1, $v0, lbl_0010C778
	sb	$zero, 1035($s2)
lbl_0010C778:
	lbu	$v0, 0($s0)
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010C7BC
	sb	$v0, 1036($s2)
	addiu	$a2, $s2, 1036
	addiu	$a1, $a1, 1
	nop
lbl_0010C798:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010C7BC
	addu	$v0, $s0, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 0($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010C798
	addiu	$a1, $a1, 1
lbl_0010C7BC:
	li	$v0, 1024
	beql	$a1, $v0, lbl_0010C7C8
	sb	$zero, 2059($s2)
lbl_0010C7C8:
	addiu	$v1, $a3, 19928
	li	$v0, 1
	sw	$v0, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v1, 36($sp)
	addiu	$s0, $s6, 9920
	sw	$zero, 24($sp)
	jal	sub_001068E0
	addiu	$s4, $s4, 13056
	move	$s1, $v0
	move	$a0, $s0
	li	$v0, 4
	sw	$s3, 4($s2)
	sw	$v0, 8($s2)
	li	$a1, 2060
	jal	sub_001128C8
	sw	$s1, 0($s2)
	addiu	$a0, $s5, 15808
	move	$a3, $s0
	sw	$zero, 0($sp)
	li	$a1, 17
	sw	$zero, 8($sp)
	move	$a2, $zero
	li	$t0, 2060
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010C858
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010C890
	li	$v0, -11
lbl_0010C858:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010C87C
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010C890
	li	$v0, -11
lbl_0010C87C:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010C890:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010B7A8
	li	$a1, 18
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -192
	sd	$s1, 80($sp)
	sd	$s5, 144($sp)
	move	$s1, $a0
	sd	$s6, 160($sp)
	move	$s5, $a1
	sd	$s0, 64($sp)
	li	$a0, 19
	sd	$ra, 176($sp)
	lui	$s6, 0x14
	sd	$s4, 128($sp)
	addiu	$s0, $s6, 9920
	sd	$s3, 112($sp)
	jal	sub_0010A098
	sd	$s2, 96($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010C930
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010C930:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010C984
	sb	$v0, 20($s0)
	lui	$a2, 0x13
	addiu	$s2, $sp, 48
	lui	$s4, 0x14
	lui	$s3, 0x14
	addiu	$a1, $a1, 1
	nop
lbl_0010C958:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010C994
	addu	$v0, $s1, $a1
	addu	$a0, $s0, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 20($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010C958
	addiu	$a1, $a1, 1
	b	lbl_0010C998
	li	$v0, 1024
lbl_0010C984:
	lui	$a2, 0x13
	addiu	$s2, $sp, 48
	lui	$s4, 0x14
	lui	$s3, 0x14
lbl_0010C994:
	li	$v0, 1024
lbl_0010C998:
	beql	$a1, $v0, lbl_0010C9A0
	sb	$zero, 1043($s0)
lbl_0010C9A0:
	sw	$s5, 16($s0)
	addiu	$v1, $a2, 19952
	li	$v0, 1
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	addiu	$s3, $s3, 13056
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s2, 4($s0)
	li	$v0, 4
	sw	$s1, 0($s0)
	sw	$v0, 8($s0)
	addiu	$a0, $s4, 15808
	addiu	$a3, $s6, 9920
	li	$a1, 19
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 1044
	move	$t1, $s3
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010CA24
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010CA5C
	li	$v0, -11
lbl_0010CA24:
	or	$v0, $s3, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010CA48
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010CA5C
	li	$v0, -11
lbl_0010CA48:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010CA5C:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop
	addiu	$sp, $sp, -224
	sd	$s0, 64($sp)
	sd	$s7, 176($sp)
	move	$s0, $a0
	sd	$s6, 160($sp)
	move	$s7, $a2
	sd	$s3, 112($sp)
	move	$s6, $a3
	sd	$s1, 80($sp)
	move	$s3, $a1
	sd	$s8, 192($sp)
	move	$s1, $t0
	sd	$s2, 96($sp)
	li	$a0, 20
	sd	$ra, 208($sp)
	lui	$s8, 0x14
	sd	$s5, 144($sp)
	addiu	$s2, $s8, 9920
	jal	sub_0010A098
	sd	$s4, 128($sp)
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnezl	$v0, lbl_0010CAF4
	lbu	$v0, 0($s0)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s0)
lbl_0010CAF4:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010CB3C
	sb	$v0, 12($s2)
	slti	$a3, $s1, 1025
	addiu	$a1, $a1, 1
	nop
lbl_0010CB10:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010CB40
	addu	$v0, $s0, $a1
	addu	$a0, $s2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010CB10
	addiu	$a1, $a1, 1
	b	lbl_0010CB44
	li	$v0, 1024
lbl_0010CB3C:
	slti	$a3, $s1, 1025
lbl_0010CB40:
	li	$v0, 1024
lbl_0010CB44:
	beql	$a1, $v0, lbl_0010CB4C
	sb	$zero, 1035($s2)
lbl_0010CB4C:
	lbu	$v0, 0($s3)
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010CB8C
	sb	$v0, 1036($s2)
	addiu	$a2, $s2, 1036
	addiu	$a1, $a1, 1
lbl_0010CB68:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010CB8C
	addu	$v0, $s3, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 0($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010CB68
	addiu	$a1, $a1, 1
lbl_0010CB8C:
	li	$v0, 1024
	beql	$a1, $v0, lbl_0010CB98
	sb	$zero, 2059($s2)
lbl_0010CB98:
	bnez	$a3, lbl_0010CBB0
	nop
	jal	sub_0010A0C8
	nop
	b	lbl_0010CCD8
	li	$v0, -7
lbl_0010CBB0:
	blez	$s1, lbl_0010CBF8
	move	$a1, $zero
	addiu	$a2, $s2, 2060
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	nop
lbl_0010CBD0:
	addu	$v0, $s6, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	slt	$v0, $a1, $s1
	sb	$v1, 0($a0)
	bnez	$v0, lbl_0010CBD0
	nop
	b	lbl_0010CC0C
	sw	$s1, 3088($s2)
lbl_0010CBF8:
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	sw	$s1, 3088($s2)
lbl_0010CC0C:
	addiu	$v1, $a3, 19976
	sw	$s7, 3084($s2)
	li	$v0, 1
	addiu	$a0, $sp, 16
	sw	$v0, 20($sp)
	sw	$v1, 36($sp)
	addiu	$s0, $s8, 9920
	sw	$zero, 24($sp)
	jal	sub_001068E0
	addiu	$s4, $s4, 13056
	move	$s1, $v0
	move	$a0, $s0
	li	$v0, 4
	sw	$s3, 4($s2)
	sw	$v0, 8($s2)
	li	$a1, 3092
	jal	sub_001128C8
	sw	$s1, 0($s2)
	addiu	$a0, $s5, 15808
	move	$a3, $s0
	sw	$zero, 0($sp)
	li	$a1, 20
	sw	$zero, 8($sp)
	move	$a2, $zero
	li	$t0, 3092
	move	$t1, $s4
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010CCA0
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010CCD8
	li	$v0, -11
lbl_0010CCA0:
	or	$v0, $s4, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010CCC4
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010CCD8
	li	$v0, -11
lbl_0010CCC4:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010CCD8:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010B7A8
	li	$a1, 21
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
lbl_0010CD28:
	addiu	$sp, $sp, -192
	sd	$s5, 144($sp)
	sd	$s3, 112($sp)
	move	$s5, $a2
	sd	$s4, 128($sp)
	move	$s3, $a1
	sd	$s1, 80($sp)
	lui	$s4, 0x14
	sd	$s0, 64($sp)
	addiu	$s1, $s4, 9920
	sd	$ra, 176($sp)
	sd	$s6, 160($sp)
	jal	sub_00109C18
	sd	$s2, 96($sp)
	move	$s0, $v0
	jal	sub_0010A098
	li	$a0, 22
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	beqz	$v0, lbl_0010CD90
	nop
	beqz	$s0, lbl_0010CD90
	nop
	lw	$s2, 4($s0)
	bnez	$s2, lbl_0010CDA0
	lui	$v0, 0x14
lbl_0010CD90:
	jal	sub_0010A0C8
	nop
	b	lbl_0010CF3C
	li	$v0, -9
lbl_0010CDA0:
	lw	$a0, 0($s0)
	addiu	$v0, $v0, 15296
	lui	$v1, 0x13
	subu	$v0, $s0, $v0
	sw	$a0, 12($s1)
	sra	$v0, $v0, 0x4
	sd	$s3, 16($s1)
	sw	$s5, 24($s1)
	addiu	$v1, $v1, 20000
	sw	$v0, 28($s1)
	li	$a1, 1
	addiu	$a0, $sp, 16
	sw	$a1, 20($sp)
	sw	$v1, 36($sp)
	andi	$s0, $s2, 0x8000
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s3, $v0
	li	$v1, 8
	addiu	$v0, $sp, 48
	sw	$v1, 8($s1)
	sw	$v0, 4($s1)
	beqz	$s0, lbl_0010CE90
	sw	$s3, 9920($s4)
	lui	$s5, 0x13
	jal	sub_00106920
	lw	$a0, -3468($s5)
	lui	$a3, 0x13
	move	$a2, $zero
	lw	$v1, -3616($a3)
	li	$v0, -1
	bne	$v1, $v0, lbl_0010CE40
	move	$s2, $s0
	lw	$v1, 9920($s4)
	lui	$s6, 0x14
	lui	$s0, 0x14
	negu	$v0, $v1
	sw	$v1, -3616($a3)
	b	lbl_0010CE80
	sw	$v0, 9920($s4)
lbl_0010CE40:
	lui	$s6, 0x14
	lui	$s0, 0x14
	addiu	$a2, $a2, 1
lbl_0010CE4C:
	slti	$v0, $a2, 32
	beqz	$v0, lbl_0010CE80
	sll	$v0, $a2, 0x2
	addiu	$v1, $a3, -3616
	addu	$a1, $v0, $v1
	li	$a0, -1
	lw	$v0, 0($a1)
	bne	$v0, $a0, lbl_0010CE4C
	addiu	$a2, $a2, 1
	lw	$v0, 0($s1)
	negu	$v1, $v0
	sw	$v0, 0($a1)
	sw	$v1, 0($s1)
lbl_0010CE80:
	jal	sub_00106900
	lw	$a0, -3468($s5)
	b	lbl_0010CEA0
	addiu	$s0, $s0, 13056
lbl_0010CE90:
	lui	$s6, 0x14
	lui	$s0, 0x14
	move	$s2, $zero
	addiu	$s0, $s0, 13056
lbl_0010CEA0:
	addiu	$a0, $s6, 15808
	addiu	$a3, $s4, 9920
	sw	$zero, 0($sp)
	sw	$s2, 8($sp)
	li	$a1, 22
	move	$a2, $zero
	li	$t0, 32
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010CEEC
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s3
	jal	sub_0010A0C8
	nop
	b	lbl_0010CF3C
	li	$v0, -11
lbl_0010CEEC:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010CF10
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010CF3C
	li	$v0, -11
lbl_0010CF10:
	beqz	$s2, lbl_0010CF28
	nop
	jal	sub_001068F0
	move	$a0, $s3
	b	lbl_0010CF3C
	move	$v0, $zero
lbl_0010CF28:
	jal	sub_00106920
	move	$a0, $s3
	jal	sub_001068F0
	move	$a0, $s3
	ld	$v0, 48($sp)
lbl_0010CF3C:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop

sub_0010CF68:
	addiu	$sp, $sp, -224
	sd	$s3, 112($sp)
	sd	$s8, 192($sp)
	move	$s3, $a0
	sd	$s5, 144($sp)
	move	$s8, $t1
	sd	$s2, 96($sp)
	move	$s5, $a1
	sd	$s0, 64($sp)
	move	$s2, $a2
	sd	$s1, 80($sp)
	move	$s0, $a3
	sd	$ra, 208($sp)
	li	$a0, 23
	sd	$s7, 176($sp)
	sd	$s6, 160($sp)
	sd	$s4, 128($sp)
	jal	sub_0010A098
	sw	$t0, 52($sp)
	lui	$v0, 0x14
	addiu	$s1, $v0, 9920
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010CFD8
	lbu	$v0, 0($s3)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s3)
lbl_0010CFD8:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010D01C
	sb	$v0, 12($s1)
	sltiu	$a2, $s0, 1025
	addiu	$a1, $a1, 1
lbl_0010CFF0:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010D020
	addu	$v0, $s3, $a1
	addu	$a0, $s1, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010CFF0
	addiu	$a1, $a1, 1
	b	lbl_0010D024
	li	$v0, 1024
lbl_0010D01C:
	sltiu	$a2, $s0, 1025
lbl_0010D020:
	li	$v0, 1024
lbl_0010D024:
	beql	$a1, $v0, lbl_0010D02C
	sb	$zero, 1035($s1)
lbl_0010D02C:
	beqz	$a2, lbl_0010D068
	sltiu	$v0, $s8, 1025
	beqz	$v0, lbl_0010D068
	li	$v0, 17921
	bne	$s5, $v0, lbl_0010D078
	nop
	lw	$v0, 4($s2)
	bnezl	$v0, lbl_0010D060
	lw	$v0, 12($s2)
	jal	sub_0010A0C8
	nop
	b	lbl_0010D1E0
	move	$v0, $zero
lbl_0010D060:
	bnez	$v0, lbl_0010D078
	nop
lbl_0010D068:
	jal	sub_0010A0C8
	nop
	b	lbl_0010D1E0
	li	$v0, -22
lbl_0010D078:
	beqz	$s0, lbl_0010D0C0
	move	$a1, $zero
	addiu	$a2, $s1, 1036
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s7, 0x14
	lui	$s6, 0x14
	nop
lbl_0010D098:
	addu	$v0, $s2, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sltu	$v0, $a1, $s0
	sb	$v1, 0($a0)
	bnez	$v0, lbl_0010D098
	nop
	b	lbl_0010D0D4
	sw	$s0, 2064($s1)
lbl_0010D0C0:
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s7, 0x14
	lui	$s6, 0x14
	sw	$s0, 2064($s1)
lbl_0010D0D4:
	addiu	$v1, $a3, 20024
	li	$v0, 1
	sw	$v1, 36($sp)
	sw	$v0, 20($sp)
	addiu	$a0, $sp, 16
	sw	$s5, 2060($s1)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s4, $v0
	sw	$s8, 2072($s1)
	li	$v0, 4
	sw	$s3, 4($s1)
	sw	$v0, 8($s1)
	li	$v1, 17921
	lw	$v0, 52($sp)
	sw	$s4, 0($s1)
	bne	$s5, $v1, lbl_0010D140
	sw	$v0, 2068($s1)
	lw	$a1, 12($s2)
	li	$s1, 28
	lw	$v0, 4($s2)
	mult	$v0, $a1
	mflo	$a1
	jal	sub_001128C8
	lw	$a0, 8($s2)
	b	lbl_0010D148
	lui	$v0, 0x14
lbl_0010D140:
	li	$s1, 23
	lui	$v0, 0x14
lbl_0010D148:
	li	$a1, 2076
	addiu	$s0, $v0, 9920
	addiu	$s2, $s6, 13056
	jal	sub_001128C8
	move	$a0, $s0
	addiu	$a0, $s7, 15808
	move	$a1, $s1
	move	$a3, $s0
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	move	$a2, $zero
	li	$t0, 2076
	move	$t1, $s2
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010D1A8
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s4
	jal	sub_0010A0C8
	nop
	b	lbl_0010D1E0
	li	$v0, -11
lbl_0010D1A8:
	or	$v0, $s2, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010D1CC
	nop
	jal	sub_001068F0
	move	$a0, $s4
	b	lbl_0010D1E0
	li	$v0, -11
lbl_0010D1CC:
	jal	sub_00106920
	move	$a0, $s4
	jal	sub_001068F0
	move	$a0, $s4
	lw	$v0, 48($sp)
lbl_0010D1E0:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	addiu	$sp, $sp, -192
	sd	$s0, 64($sp)
	sd	$s1, 80($sp)
	move	$s0, $a0
	sd	$s6, 160($sp)
	move	$s1, $a1
	sd	$s2, 96($sp)
	li	$a0, 17
	sd	$ra, 176($sp)
	lui	$s6, 0x14
	sd	$s5, 144($sp)
	addiu	$s2, $s6, 9920
	sd	$s4, 128($sp)
	jal	sub_0010A098
	sd	$s3, 112($sp)
	lui	$v0, 0x13
	lw	$v1, -3484($v0)
	bnezl	$v1, lbl_0010D268
	lbu	$v0, 0($s0)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s0)
lbl_0010D268:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010D2BC
	sb	$v0, 12($s2)
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
	addiu	$a1, $a1, 1
	nop
lbl_0010D290:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010D2CC
	addu	$v0, $s0, $a1
	addu	$a0, $s2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 12($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010D290
	addiu	$a1, $a1, 1
	b	lbl_0010D2D0
	li	$v0, 1024
lbl_0010D2BC:
	lui	$a3, 0x13
	addiu	$s3, $sp, 48
	lui	$s5, 0x14
	lui	$s4, 0x14
lbl_0010D2CC:
	li	$v0, 1024
lbl_0010D2D0:
	beql	$a1, $v0, lbl_0010D2D8
	sb	$zero, 1035($s2)
lbl_0010D2D8:
	lbu	$v0, 0($s1)
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010D31C
	sb	$v0, 1036($s2)
	addiu	$a2, $s2, 1036
	addiu	$a1, $a1, 1
	nop
lbl_0010D2F8:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010D31C
	addu	$v0, $s1, $a1
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 0($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010D2F8
	addiu	$a1, $a1, 1
lbl_0010D31C:
	li	$v0, 1024
	beql	$a1, $v0, lbl_0010D328
	sb	$zero, 2059($s2)
lbl_0010D328:
	addiu	$v0, $a3, 20048
	li	$v1, 1
	sw	$v1, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v0, 36($sp)
	addiu	$s0, $s4, 13056
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s3, 4($s2)
	li	$v0, 4
	sw	$s1, 0($s2)
	sw	$v0, 8($s2)
	addiu	$a0, $s5, 15808
	addiu	$a3, $s6, 9920
	li	$a1, 24
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 2060
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010D3A8
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010D3E0
	li	$v0, -11
lbl_0010D3A8:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010D3CC
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010D3E0
	li	$v0, -11
lbl_0010D3CC:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010D3E0:
	ld	$ra, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	addiu	$sp, $sp, -224
	sd	$s1, 80($sp)
	sd	$s5, 144($sp)
	move	$s1, $a0
	sd	$s0, 64($sp)
	move	$s5, $a1
	sd	$s8, 192($sp)
	move	$s0, $a2
	sd	$s2, 96($sp)
	li	$a0, 17
	sd	$ra, 208($sp)
	lui	$s8, 0x14
	sd	$s7, 176($sp)
	addiu	$s2, $s8, 9920
	sd	$s6, 160($sp)
	sd	$s4, 128($sp)
	jal	sub_0010A098
	sd	$s3, 112($sp)
	lui	$v1, 0x13
	lw	$v0, -3484($v1)
	bnezl	$v0, lbl_0010D46C
	lbu	$v0, 0($s1)
	jal	sub_0010A1C0
	nop
	lbu	$v0, 0($s1)
lbl_0010D46C:
	move	$a1, $zero
	sll	$v1, $v0, 0x18
	beqz	$v1, lbl_0010D4C4
	sb	$v0, 20($s2)
	sltiu	$a2, $s0, 1024
	lui	$s6, 0x13
	addiu	$s3, $sp, 48
	lui	$s7, 0x14
	lui	$s4, 0x14
	addiu	$a1, $a1, 1
	nop
lbl_0010D498:
	slti	$v0, $a1, 1024
	beqz	$v0, lbl_0010D4D8
	addu	$v0, $s1, $a1
	addu	$a0, $s2, $a1
	lbu	$v1, 0($v0)
	sb	$v1, 20($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_0010D498
	addiu	$a1, $a1, 1
	b	lbl_0010D4DC
	li	$v0, 1024
lbl_0010D4C4:
	sltiu	$a2, $s0, 1024
	lui	$s6, 0x13
	addiu	$s3, $sp, 48
	lui	$s7, 0x14
	lui	$s4, 0x14
lbl_0010D4D8:
	li	$v0, 1024
lbl_0010D4DC:
	beql	$a1, $v0, lbl_0010D4E4
	sb	$zero, 1043($s2)
lbl_0010D4E4:
	li	$v0, 1023
	move	$a0, $s5
	movz	$s0, $v0, $a2
	sw	$s5, 16($s2)
	move	$a1, $s0
	jal	sub_001128C8
	sw	$s0, 12($s2)
	addiu	$s0, $s4, 13056
	addiu	$v1, $s6, 20072
	li	$v0, 1
	sw	$v0, 20($sp)
	addiu	$a0, $sp, 16
	sw	$v1, 36($sp)
	jal	sub_001068E0
	sw	$zero, 24($sp)
	move	$s1, $v0
	sw	$s3, 4($s2)
	li	$v0, 4
	sw	$s1, 0($s2)
	sw	$v0, 8($s2)
	addiu	$a0, $s7, 15808
	addiu	$a3, $s8, 9920
	li	$a1, 25
	sw	$zero, 0($sp)
	move	$a2, $zero
	sw	$zero, 8($sp)
	li	$t0, 2060
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109B28
	move	$t3, $zero
	bgez	$v0, lbl_0010D580
	lui	$v0, 0x2000
	jal	sub_001068F0
	move	$a0, $s1
	jal	sub_0010A0C8
	nop
	b	lbl_0010D5B8
	li	$v0, -11
lbl_0010D580:
	or	$v0, $s0, $v0
	jal	sub_0010A0C8
	lw	$s0, 0($v0)
	bnez	$s0, lbl_0010D5A4
	nop
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_0010D5B8
	li	$v0, -11
lbl_0010D5A4:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	lw	$v0, 48($sp)
lbl_0010D5B8:
	ld	$ra, 208($sp)
	ld	$s8, 192($sp)
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224

sub_0010D5E8:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	lui	$s1, 0x14
	b	lbl_0010D624
	sd	$s0, 0($sp)
lbl_0010D600:
	lui	$v0, 0x10
	li	$v1, -1
lbl_0010D608:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_0010D608
	nop
lbl_0010D624:
	addiu	$s0, $s1, 16064
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x3
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_0010D64C
	lw	$v0, 36($s0)
	b	lbl_0010D65C
	li	$v0, -1
lbl_0010D64C:
	beqz	$v0, lbl_0010D600
	lui	$v0, 0x13
	sw	$zero, -3460($v0)
	move	$v0, $zero
lbl_0010D65C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v1, 0x13
	addiu	$sp, $sp, -48
	lw	$v0, -3460($v1)
	move	$a1, $a0
	sd	$ra, 32($sp)
	bltz	$v0, lbl_0010D6CC
	sd	$s0, 16($sp)
	lui	$a3, 0x14
	lui	$a0, 0x14
	sw	$a1, 16192($a3)
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	addiu	$a3, $a3, 16192
	sw	$zero, 0($sp)
	li	$a1, 1
	move	$a2, $zero
	li	$t0, 4
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010D6D0
	lw	$v0, 16128($s0)
lbl_0010D6CC:
	move	$v0, $zero
lbl_0010D6D0:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0010D6E0:
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lw	$v1, -3460($v0)
	move	$a3, $a0
	sd	$ra, 32($sp)
	sd	$s0, 16($sp)
	bltz	$v1, lbl_0010D750
	move	$v0, $zero
	lui	$v0, 0x14
	lui	$a0, 0x14
	addiu	$v1, $v0, 16192
	sw	$a1, 16192($v0)
	sw	$a3, 4($v1)
	lui	$s0, 0x14
	sw	$a2, 8($v1)
	addiu	$a0, $a0, 16064
	move	$a3, $v1
	li	$a1, 4
	sw	$zero, 0($sp)
	move	$a2, $zero
	li	$t0, 12
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010D750
	lw	$v0, 16128($s0)
	move	$v0, $zero
lbl_0010D750:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0010D760:
	lui	$v1, 0x13
	addiu	$sp, $sp, -48
	lw	$v0, -3460($v1)
	move	$a1, $a0
	sd	$ra, 32($sp)
	bgez	$v0, lbl_0010D784
	sd	$s0, 16($sp)
	b	lbl_0010D7C8
	move	$v0, $zero
lbl_0010D784:
	lui	$a3, 0x14
	lui	$a0, 0x14
	sw	$a1, 16192($a3)
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	addiu	$a3, $a3, 16192
	sw	$zero, 0($sp)
	li	$a1, 2
	move	$a2, $zero
	li	$t0, 4
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010D7C8
	lw	$v0, 16128($s0)
	li	$v0, -1
lbl_0010D7C8:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0010D7D8:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010D760
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lw	$v1, -3460($v0)
	move	$a2, $a0
	sd	$ra, 32($sp)
	bgez	$v1, lbl_0010D81C
	sd	$s0, 16($sp)
	b	lbl_0010D8D8
	move	$v0, $zero
lbl_0010D81C:
	lbu	$v0, 0($a2)
	lui	$a3, 0x14
	addiu	$v1, $a3, 16256
	sb	$v0, 4($v1)
	sll	$v0, $v0, 0x18
	beqz	$v0, lbl_0010D878
	move	$t0, $zero
	lui	$t1, 0x14
	lui	$s0, 0x14
	addiu	$t0, $t0, 1
	nop
lbl_0010D848:
	slti	$v0, $t0, 252
	beqz	$v0, lbl_0010D880
	addu	$v0, $a2, $t0
	addiu	$v1, $a3, 16256
	lbu	$a0, 0($v0)
	addu	$v1, $v1, $t0
	sb	$a0, 4($v1)
	sll	$a0, $a0, 0x18
	bnezl	$a0, lbl_0010D848
	addiu	$t0, $t0, 1
	b	lbl_0010D884
	li	$v0, 252
lbl_0010D878:
	lui	$t1, 0x14
	lui	$s0, 0x14
lbl_0010D880:
	li	$v0, 252
lbl_0010D884:
	bnel	$t0, $v0, lbl_0010D89C
	sw	$a1, 16256($a3)
	addiu	$v0, $a3, 16256
	li	$t0, 251
	sb	$zero, 255($v0)
	sw	$a1, 16256($a3)
lbl_0010D89C:
	addiu	$v0, $a3, 16256
	addiu	$a0, $t1, 16064
	sb	$zero, 255($v0)
	move	$a3, $v0
	addiu	$t0, $t0, 5
	sw	$zero, 0($sp)
	li	$a1, 3
	move	$a2, $zero
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010D8D8
	lw	$v0, 16128($s0)
	li	$v0, -1
lbl_0010D8D8:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lw	$v1, -3460($v0)
	sd	$ra, 32($sp)
	bgez	$v1, lbl_0010D908
	sd	$s0, 16($sp)
	b	lbl_0010D948
	move	$v0, $zero
lbl_0010D908:
	lui	$a0, 0x14
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	sw	$zero, 0($sp)
	li	$a1, 5
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010D948
	lw	$v0, 16128($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_0010D948:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lw	$v1, -3460($v0)
	sd	$ra, 32($sp)
	bgez	$v1, lbl_0010D978
	sd	$s0, 16($sp)
	b	lbl_0010D9B8
	move	$v0, $zero
lbl_0010D978:
	lui	$a0, 0x14
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	sw	$zero, 0($sp)
	li	$a1, 6
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010D9B8
	lw	$v0, 16128($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_0010D9B8:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lw	$v1, -3460($v0)
	sd	$ra, 32($sp)
	bgez	$v1, lbl_0010D9E8
	sd	$s0, 16($sp)
	b	lbl_0010DA28
	move	$v0, $zero
lbl_0010D9E8:
	lui	$a0, 0x14
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	sw	$zero, 0($sp)
	li	$a1, 7
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010DA28
	lw	$v0, 16128($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_0010DA28:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v1, 0x13
	addiu	$sp, $sp, -48
	lw	$v0, -3460($v1)
	move	$a1, $a0
	sd	$ra, 32($sp)
	bgez	$v0, lbl_0010DA5C
	sd	$s0, 16($sp)
	b	lbl_0010DAA4
	move	$v0, $zero
lbl_0010DA5C:
	lui	$a3, 0x14
	lui	$a0, 0x14
	sw	$a1, 16192($a3)
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	addiu	$a3, $a3, 16192
	sw	$zero, 0($sp)
	li	$a1, 8
	move	$a2, $zero
	li	$t0, 4
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010DAA4
	lw	$v0, 16128($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_0010DAA4:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lui	$v1, 0x13
	addiu	$sp, $sp, -48
	lw	$v0, -3460($v1)
	move	$a1, $a0
	sd	$ra, 32($sp)
	bgez	$v0, lbl_0010DADC
	sd	$s0, 16($sp)
	b	lbl_0010DB24
	move	$v0, $zero
lbl_0010DADC:
	lui	$a3, 0x14
	lui	$a0, 0x14
	sw	$a1, 16192($a3)
	lui	$s0, 0x14
	addiu	$a0, $a0, 16064
	addiu	$a3, $a3, 16192
	sw	$zero, 0($sp)
	li	$a1, 9
	move	$a2, $zero
	li	$t0, 4
	addiu	$t1, $s0, 16128
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010DB24
	lw	$v0, 16128($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_0010DB24:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0010DB38:
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	lui	$s2, 0x13
	sd	$ra, 64($sp)
	lw	$v0, -3456($s2)
	sd	$s1, 32($sp)
	bgez	$v0, lbl_0010DC1C
	sd	$s0, 16($sp)
	lui	$s1, 0x14
	addiu	$s0, $s1, 17024
lbl_0010DB60:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x6
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_0010DB84
	lw	$v0, 36($s0)
	b	lbl_0010DC20
	li	$v0, -1
lbl_0010DB84:
	beqz	$v0, lbl_0010DBEC
	move	$a0, $s0
	lui	$s1, 0x14
	sw	$zero, -3456($s2)
	sw	$zero, 0($sp)
	li	$a1, 255
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	addiu	$t1, $s1, 16512
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010DBCC
	lui	$v1, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010DC20
	ori	$v0, $v0, 0xffff
lbl_0010DBCC:
	addiu	$a3, $s1, 16512
	addiu	$a2, $v1, 17064
	lwl	$a0, 3($a3)
	lwr	$a0, 0($a3)
	swl	$a0, 3($a2)
	swr	$a0, 0($a2)
	b	lbl_0010DC20
	move	$v0, $zero
lbl_0010DBEC:
	lui	$v0, 0x10
	li	$v1, -1
	nop
lbl_0010DBF8:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_0010DBF8
	nop
	b	lbl_0010DB60
	addiu	$s0, $s1, 17024
lbl_0010DC1C:
	move	$v0, $zero
lbl_0010DC20:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0010DC38:
	addiu	$sp, $sp, -80
	lui	$v0, 0x13
	sd	$s3, 48($sp)
	lui	$v1, 0x14
	sd	$s1, 16($sp)
	addiu	$s3, $v0, -3636
	sd	$s2, 32($sp)
	addiu	$s1, $v1, 17064
	sd	$ra, 64($sp)
	move	$s2, $zero
	sd	$s0, 0($sp)
	move	$a0, $s1
	move	$a1, $s3
	jal	sub_001250C8
	li	$a2, 4
	beqz	$v0, lbl_0010DCA4
	lui	$s0, 0x13
	move	$a0, $s1
	lw	$a1, -3452($s0)
	jal	sub_001250C8
	li	$a2, 4
	beqz	$v0, lbl_0010DCA4
	lw	$a1, -3452($s0)
	move	$a0, $s3
	jal	sub_001250C8
	li	$a2, 4
	sltu	$s2, $zero, $v0
lbl_0010DCA4:
	move	$v0, $s2
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_0010DCC8:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	li	$v1, -1
	lui	$a0, 0x14
	sd	$ra, 0($sp)
	addiu	$a0, $a0, 17064
	sw	$v1, -3456($v0)
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 4
	ld	$ra, 0($sp)
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16

sub_0010DD00:
	addiu	$sp, $sp, -144
	sd	$s6, 112($sp)
	sd	$s3, 64($sp)
	move	$s6, $a3
	sd	$s1, 32($sp)
	move	$s3, $a0
	sd	$s0, 16($sp)
	move	$s1, $a1
	sd	$ra, 128($sp)
	move	$s0, $a2
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	jal	sub_0010DB38
	sd	$s2, 48($sp)
	bltz	$v0, lbl_0010DEE0
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqz	$v0, lbl_0010DD5C
	lui	$s4, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010DEE0
	ori	$v0, $v0, 0xfffc
lbl_0010DD5C:
	move	$s5, $s4
	addiu	$s2, $s4, 16512
	beqz	$s0, lbl_0010DE90
	sw	$s3, 16512($s4)
	slti	$v0, $s1, 253
	bnez	$v0, lbl_0010DE7C
	move	$a1, $s0
	addiu	$a0, $s2, 260
	or	$v0, $s0, $a0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0010DDF0
	move	$a3, $s0
	addiu	$v0, $s0, 224
	lui	$a1, 0x14
lbl_0010DD94:
	ldl	$v1, 7($a3)
	ldr	$v1, 0($a3)
	ldl	$a2, 15($a3)
	ldr	$a2, 8($a3)
	ldl	$t0, 23($a3)
	ldr	$t0, 16($a3)
	ldl	$t1, 31($a3)
	ldr	$t1, 24($a3)
	sdl	$v1, 7($a0)
	sdr	$v1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$t0, 23($a0)
	sdr	$t0, 16($a0)
	sdl	$t1, 31($a0)
	sdr	$t1, 24($a0)
	addiu	$a3, $a3, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a3, $v0, lbl_0010DD94
	nop
	b	lbl_0010DE2C
	nop
lbl_0010DDF0:
	addiu	$v0, $s0, 224
	lui	$a1, 0x14
lbl_0010DDF8:
	ld	$t2, 0($a3)
	ld	$v1, 8($a3)
	ld	$a2, 16($a3)
	ld	$t0, 24($a3)
	sd	$t2, 0($a0)
	sd	$v1, 8($a0)
	sd	$a2, 16($a0)
	sd	$t0, 24($a0)
	addiu	$a3, $a3, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a3, $v0, lbl_0010DDF8
	nop
lbl_0010DE2C:
	ldl	$t1, 7($a3)
	ldr	$t1, 0($a3)
	ldl	$t2, 15($a3)
	ldr	$t2, 8($a3)
	ldl	$a2, 23($a3)
	ldr	$a2, 16($a3)
	lwl	$t0, 27($a3)
	lwr	$t0, 24($a3)
	sdl	$t1, 7($a0)
	sdr	$t1, 0($a0)
	sdl	$t2, 15($a0)
	sdr	$t2, 8($a0)
	sdl	$a2, 23($a0)
	sdr	$a2, 16($a0)
	swl	$t0, 27($a0)
	addiu	$v1, $s5, 16512
	li	$v0, 252
	swr	$t0, 24($a0)
	b	lbl_0010DE98
	sw	$v0, 4($v1)
lbl_0010DE7C:
	addiu	$a0, $s2, 260
	jal	sub_0012515C
	move	$a2, $s1
	b	lbl_0010DE94
	sw	$s1, 4($s2)
lbl_0010DE90:
	sw	$zero, 4($s2)
lbl_0010DE94:
	lui	$a1, 0x14
lbl_0010DE98:
	addiu	$s0, $s5, 16512
	addiu	$a0, $a1, 17024
	sw	$zero, 0($sp)
	li	$a1, 6
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 512
	move	$t1, $s0
	li	$t2, 8
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010DED8
	lw	$v1, 4($s0)
	lui	$v0, 0xfffe
	b	lbl_0010DEE0
	ori	$v0, $v0, 0xffff
lbl_0010DED8:
	lw	$v0, 16512($s4)
	sw	$v1, 0($s6)
lbl_0010DEE0:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_0010DF08:
	addiu	$sp, $sp, -144
	sd	$s6, 112($sp)
	sd	$s3, 64($sp)
	move	$s6, $a3
	sd	$s1, 32($sp)
	move	$s3, $a0
	sd	$s0, 16($sp)
	move	$s1, $a1
	sd	$ra, 128($sp)
	move	$s0, $a2
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	jal	sub_0010DB38
	sd	$s2, 48($sp)
	bltz	$v0, lbl_0010E0E8
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqz	$v0, lbl_0010DF64
	lui	$s4, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E0E8
	ori	$v0, $v0, 0xfffc
lbl_0010DF64:
	move	$s5, $s4
	addiu	$s2, $s4, 16512
	beqz	$s0, lbl_0010E098
	sw	$s3, 16512($s4)
	slti	$v0, $s1, 253
	bnez	$v0, lbl_0010E084
	move	$a1, $s0
	addiu	$a0, $s2, 260
	or	$v0, $s0, $a0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0010DFF8
	move	$a3, $s0
	addiu	$v0, $s0, 224
	lui	$a1, 0x14
lbl_0010DF9C:
	ldl	$v1, 7($a3)
	ldr	$v1, 0($a3)
	ldl	$a2, 15($a3)
	ldr	$a2, 8($a3)
	ldl	$t0, 23($a3)
	ldr	$t0, 16($a3)
	ldl	$t1, 31($a3)
	ldr	$t1, 24($a3)
	sdl	$v1, 7($a0)
	sdr	$v1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$t0, 23($a0)
	sdr	$t0, 16($a0)
	sdl	$t1, 31($a0)
	sdr	$t1, 24($a0)
	addiu	$a3, $a3, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a3, $v0, lbl_0010DF9C
	nop
	b	lbl_0010E034
	nop
lbl_0010DFF8:
	addiu	$v0, $s0, 224
	lui	$a1, 0x14
lbl_0010E000:
	ld	$t2, 0($a3)
	ld	$v1, 8($a3)
	ld	$a2, 16($a3)
	ld	$t0, 24($a3)
	sd	$t2, 0($a0)
	sd	$v1, 8($a0)
	sd	$a2, 16($a0)
	sd	$t0, 24($a0)
	addiu	$a3, $a3, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a3, $v0, lbl_0010E000
	nop
lbl_0010E034:
	ldl	$t1, 7($a3)
	ldr	$t1, 0($a3)
	ldl	$t2, 15($a3)
	ldr	$t2, 8($a3)
	ldl	$a2, 23($a3)
	ldr	$a2, 16($a3)
	lwl	$t0, 27($a3)
	lwr	$t0, 24($a3)
	sdl	$t1, 7($a0)
	sdr	$t1, 0($a0)
	sdl	$t2, 15($a0)
	sdr	$t2, 8($a0)
	sdl	$a2, 23($a0)
	sdr	$a2, 16($a0)
	swl	$t0, 27($a0)
	addiu	$v1, $s5, 16512
	li	$v0, 252
	swr	$t0, 24($a0)
	b	lbl_0010E0A0
	sw	$v0, 4($v1)
lbl_0010E084:
	addiu	$a0, $s2, 260
	jal	sub_0012515C
	move	$a2, $s1
	b	lbl_0010E09C
	sw	$s1, 4($s2)
lbl_0010E098:
	sw	$zero, 4($s2)
lbl_0010E09C:
	lui	$a1, 0x14
lbl_0010E0A0:
	addiu	$s0, $s5, 16512
	addiu	$a0, $a1, 17024
	sw	$zero, 0($sp)
	li	$a1, 7
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 512
	move	$t1, $s0
	li	$t2, 8
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E0E0
	lw	$v1, 4($s0)
	lui	$v0, 0xfffe
	b	lbl_0010E0E8
	ori	$v0, $v0, 0xffff
lbl_0010E0E0:
	lw	$v0, 16512($s4)
	sw	$v1, 0($s6)
lbl_0010E0E8:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_0010E110:
	addiu	$sp, $sp, -64
	sd	$s1, 32($sp)
	sd	$ra, 48($sp)
	move	$s1, $a0
	jal	sub_0010DB38
	sd	$s0, 16($sp)
	bltz	$v0, lbl_0010E18C
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqz	$v0, lbl_0010E14C
	lui	$s0, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E18C
	ori	$v0, $v0, 0xfffc
lbl_0010E14C:
	lui	$a0, 0x14
	addiu	$a3, $s0, 16512
	sw	$s1, 16512($s0)
	addiu	$a0, $a0, 17024
	sw	$zero, 0($sp)
	li	$a1, 8
	move	$a2, $zero
	li	$t0, 4
	move	$t1, $a3
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E18C
	lw	$v0, 16512($s0)
	lui	$v0, 0xfffe
	ori	$v0, $v0, 0xffff
lbl_0010E18C:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0010E1A0:
	addiu	$sp, $sp, -48
	sd	$s0, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010DB38
	move	$s0, $a0
	bltz	$v0, lbl_0010E230
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqzl	$v0, lbl_0010E1D8
	lui	$v0, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E230
	ori	$v0, $v0, 0xfffc
lbl_0010E1D8:
	move	$a1, $s0
	addiu	$s0, $v0, 16520
	li	$a2, 252
	jal	sub_001262F8
	move	$a0, $s0
	addiu	$v1, $s0, -8
	lui	$a0, 0x14
	move	$a3, $v1
	sb	$zero, 259($v1)
	addiu	$a0, $a0, 17024
	li	$a1, 9
	sw	$zero, 0($sp)
	move	$a2, $zero
	li	$t0, 512
	move	$t1, $a3
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E230
	lw	$v0, -8($s0)
	lui	$v0, 0xfffe
	ori	$v0, $v0, 0xffff
lbl_0010E230:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	addiu	$sp, $sp, -64
	sd	$s1, 32($sp)
	sd	$ra, 48($sp)
	move	$s1, $a0
	jal	sub_0010DB38
	sd	$s0, 16($sp)
	bltz	$v0, lbl_0010E2BC
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqz	$v0, lbl_0010E27C
	lui	$s0, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E2BC
	ori	$v0, $v0, 0xfffc
lbl_0010E27C:
	lui	$a0, 0x14
	addiu	$a3, $s0, 16512
	sw	$s1, 16512($s0)
	addiu	$a0, $a0, 17024
	sw	$zero, 0($sp)
	li	$a1, 10
	move	$a2, $zero
	li	$t0, 4
	move	$t1, $a3
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E2BC
	lw	$v0, 16512($s0)
	lui	$v0, 0xfffe
	ori	$v0, $v0, 0xffff
lbl_0010E2BC:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0010E2D0:
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_0010DD00
	move	$a3, $sp
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010DD00
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0010E310:
	addiu	$sp, $sp, -128
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	move	$s4, $a3
	sd	$s2, 48($sp)
	move	$s3, $t0
	sd	$s1, 32($sp)
	move	$s2, $a1
	sd	$s0, 16($sp)
	move	$s1, $a0
	sd	$ra, 112($sp)
	move	$s0, $a2
	jal	sub_0010DB38
	sd	$s5, 96($sp)
	bltz	$v0, lbl_0010E510
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqzl	$v0, lbl_0010E36C
	lui	$v0, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E510
	ori	$v0, $v0, 0xfffc
lbl_0010E36C:
	move	$a1, $s1
	addiu	$s1, $v0, 16520
	li	$a2, 252
	jal	sub_001262F8
	move	$a0, $s1
	addiu	$v0, $s1, -8
	beqz	$s0, lbl_0010E4B8
	sb	$zero, 259($v0)
	slti	$v0, $s2, 253
	bnez	$v0, lbl_0010E4A0
	move	$a1, $s0
	addiu	$a0, $s1, 252
	or	$v0, $s0, $a0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0010E414
	move	$v1, $s0
	addiu	$v0, $s0, 224
	lui	$s5, 0x14
	lui	$a1, 0x14
lbl_0010E3B8:
	ldl	$a2, 7($v1)
	ldr	$a2, 0($v1)
	ldl	$a3, 15($v1)
	ldr	$a3, 8($v1)
	ldl	$t0, 23($v1)
	ldr	$t0, 16($v1)
	ldl	$t1, 31($v1)
	ldr	$t1, 24($v1)
	sdl	$a2, 7($a0)
	sdr	$a2, 0($a0)
	sdl	$a3, 15($a0)
	sdr	$a3, 8($a0)
	sdl	$t0, 23($a0)
	sdr	$t0, 16($a0)
	sdl	$t1, 31($a0)
	sdr	$t1, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0010E3B8
	nop
	b	lbl_0010E454
	nop
lbl_0010E414:
	addiu	$v0, $s0, 224
	lui	$s5, 0x14
	lui	$a1, 0x14
lbl_0010E420:
	ld	$a2, 0($v1)
	ld	$a3, 8($v1)
	ld	$t0, 16($v1)
	ld	$t1, 24($v1)
	sd	$a2, 0($a0)
	sd	$a3, 8($a0)
	sd	$t0, 16($a0)
	sd	$t1, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0010E420
	nop
lbl_0010E454:
	ldl	$a2, 7($v1)
	ldr	$a2, 0($v1)
	ldl	$a3, 15($v1)
	ldr	$a3, 8($v1)
	ldl	$t0, 23($v1)
	ldr	$t0, 16($v1)
	lwl	$t1, 27($v1)
	lwr	$t1, 24($v1)
	sdl	$a2, 7($a0)
	sdr	$a2, 0($a0)
	sdl	$a3, 15($a0)
	sdr	$a3, 8($a0)
	sdl	$t0, 23($a0)
	sdr	$t0, 16($a0)
	swl	$t1, 27($a0)
	li	$v0, 252
	swr	$t1, 24($a0)
	b	lbl_0010E4C8
	sw	$v0, 16512($s5)
lbl_0010E4A0:
	addiu	$a0, $s1, 252
	move	$a2, $s2
	jal	sub_0012515C
	lui	$s5, 0x14
	b	lbl_0010E4C4
	sw	$s2, -8($s1)
lbl_0010E4B8:
	sb	$zero, 260($v0)
	lui	$s5, 0x14
	sw	$zero, -8($s1)
lbl_0010E4C4:
	lui	$a1, 0x14
lbl_0010E4C8:
	addiu	$s0, $s5, 16512
	addiu	$a0, $a1, 17024
	move	$a1, $s3
	sw	$zero, 0($sp)
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 512
	move	$t1, $s0
	li	$t2, 8
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E508
	lw	$v1, 4($s0)
	lui	$v0, 0xfffe
	b	lbl_0010E510
	ori	$v0, $v0, 0xffff
lbl_0010E508:
	lw	$v0, 16512($s5)
	sw	$v1, 0($s4)
lbl_0010E510:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_0010E538:
	addiu	$sp, $sp, -32
	move	$t0, $zero
	sd	$ra, 16($sp)
	jal	sub_0010E310
	move	$a3, $sp
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010E310
	move	$t0, $zero
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0010E578:
	addiu	$sp, $sp, -112
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	move	$s4, $a2
	sd	$s2, 48($sp)
	move	$s3, $a3
	sd	$s0, 16($sp)
	move	$s2, $a1
	sd	$ra, 96($sp)
	move	$s0, $a0
	jal	sub_0010DB38
	sd	$s1, 32($sp)
	bltz	$v0, lbl_0010E65C
	lui	$v0, 0xffff
	jal	sub_0010DC38
	nop
	beqzl	$v0, lbl_0010E5CC
	lui	$v0, 0x14
	lui	$v0, 0xfffe
	b	lbl_0010E65C
	ori	$v0, $v0, 0xfffc
lbl_0010E5CC:
	move	$a1, $s0
	addiu	$s1, $v0, 16520
	li	$a2, 252
	move	$a0, $s1
	jal	sub_001262F8
	addiu	$s0, $s1, -8
	move	$a1, $s2
	sb	$zero, 259($s0)
	addiu	$a0, $s1, 252
	jal	sub_001262F8
	li	$a2, 252
	lui	$a0, 0x14
	sb	$zero, 511($s0)
	move	$a1, $s3
	addiu	$a0, $a0, 17024
	sw	$zero, 0($sp)
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 512
	move	$t1, $s0
	li	$t2, 16
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0010E63C
	lw	$v0, -8($s1)
	lui	$v0, 0xfffe
	b	lbl_0010E65C
	ori	$v0, $v0, 0xffff
lbl_0010E63C:
	bnezl	$v0, lbl_0010E650
	sw	$v0, 0($s4)
	lui	$v0, 0xfffe
	b	lbl_0010E65C
	ori	$v0, $v0, 0xfffd
lbl_0010E650:
	move	$v0, $zero
	lw	$v1, 4($s0)
	sw	$v1, 4($s4)
lbl_0010E65C:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010E578
	li	$a3, 1
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	move	$a2, $a1
	addiu	$sp, $sp, -16
	lui	$a1, 0x13
	sd	$ra, 0($sp)
	addiu	$a1, $a1, 20104
	jal	sub_0010E578
	li	$a3, 1
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -96
	sd	$s3, 64($sp)
	sd	$s2, 48($sp)
	move	$s3, $a0
	sd	$s0, 16($sp)
	move	$s2, $a1
	sd	$ra, 80($sp)
	move	$s0, $a2
	jal	sub_0010DB38
	sd	$s1, 32($sp)
	bgez	$v0, lbl_0010E700
	sltiu	$v0, $s0, 3
	b	lbl_0010E798
	lui	$v0, 0xffff
lbl_0010E700:
	beqz	$v0, lbl_0010E784
	lui	$s1, 0x14
	lui	$a0, 0x14
	addiu	$v0, $s1, 16512
	sw	$s3, 16512($s1)
	move	$a3, $v0
	sw	$s0, 4($v0)
	addiu	$a0, $a0, 17024
	li	$a1, 3
	sw	$zero, 0($sp)
	move	$a2, $zero
	li	$t0, 32
	move	$t1, $a3
	li	$t2, 32
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0010E754
	nop
	lui	$v0, 0xfffe
	b	lbl_0010E798
	ori	$v0, $v0, 0xffff
lbl_0010E754:
	bnez	$s0, lbl_0010E768
	li	$v0, 1
	lbu	$v0, 16512($s1)
	b	lbl_0010E794
	sb	$v0, 0($s2)
lbl_0010E768:
	bne	$s0, $v0, lbl_0010E77C
	li	$v0, 2
	lhu	$v0, 16512($s1)
	b	lbl_0010E794
	sh	$v0, 0($s2)
lbl_0010E77C:
	beql	$s0, $v0, lbl_0010E790
	lw	$v0, 16512($s1)
lbl_0010E784:
	lui	$v0, 0xfffe
	b	lbl_0010E798
	ori	$v0, $v0, 0xfffe
lbl_0010E790:
	sw	$v0, 0($s2)
lbl_0010E794:
	move	$v0, $zero
lbl_0010E798:
	ld	$ra, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s1, 32($sp)
	move	$s2, $a0
	sd	$s0, 16($sp)
	move	$s1, $a1
	sd	$ra, 64($sp)
	jal	sub_0010DB38
	move	$s0, $a2
	bgez	$v0, lbl_0010E7EC
	lui	$a3, 0x14
	b	lbl_0010E87C
	lui	$v0, 0xffff
lbl_0010E7EC:
	addiu	$v1, $a3, 16512
	sw	$s2, 16512($a3)
	bnez	$s0, lbl_0010E808
	sw	$s0, 4($v1)
	lbu	$v0, 0($s1)
	b	lbl_0010E838
	sb	$v0, 8($v1)
lbl_0010E808:
	li	$v0, 1
	bne	$s0, $v0, lbl_0010E820
	li	$v0, 2
	lhu	$v0, 0($s1)
	b	lbl_0010E838
	sh	$v0, 8($v1)
lbl_0010E820:
	beql	$s0, $v0, lbl_0010E834
	lw	$v0, 0($s1)
	lui	$v0, 0xfffe
	b	lbl_0010E87C
	ori	$v0, $v0, 0xfffe
lbl_0010E834:
	sw	$v0, 8($v1)
lbl_0010E838:
	addiu	$a3, $a3, 16512
	lui	$a0, 0x14
	addiu	$a0, $a0, 17024
	sw	$zero, 0($sp)
	li	$a1, 2
	move	$a2, $zero
	li	$t0, 32
	move	$t1, $a3
	li	$t2, 16
	jal	sub_00109280
	move	$t3, $zero
	lui	$a0, 0xfffe
	li	$v1, -1
	slt	$v1, $v1, $v0
	ori	$a0, $a0, 0xffff
	move	$v0, $a0
	movn	$v0, $zero, $v1
lbl_0010E87C:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_0010E898:
	addiu	$sp, $sp, -64
	sd	$s1, 32($sp)
	sd	$s0, 16($sp)
	move	$s1, $a0
	move	$s0, $a1
	sd	$ra, 48($sp)
	move	$a0, $zero
	jal	sub_001115A8
	move	$a1, $zero
	li	$a0, 1
	jal	sub_001115A8
	move	$a1, $zero
	jal	sub_00106BB0
	nop
	jal	sub_00106CF0
	lui	$a0, 0x8000
	lui	$t2, 0x14
	move	$t3, $v0
	addiu	$v1, $t2, 17088
	sw	$s0, 20($v1)
	lb	$v0, 0($s1)
	beqz	$v0, lbl_0010E920
	move	$t1, $zero
	move	$v0, $s1
	lbu	$a0, 0($v0)
	nop
lbl_0010E900:
	addiu	$v1, $t2, 17088
	addu	$v1, $v1, $t1
	addiu	$t1, $t1, 1
	sb	$a0, 24($v1)
	addu	$v0, $s1, $t1
	lb	$v1, 0($v0)
	bnezl	$v1, lbl_0010E900
	lbu	$a0, 0($v0)
lbl_0010E920:
	addiu	$a2, $t2, 17088
	lui	$v1, 0x8000
	sw	$zero, 4($a2)
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	ori	$a0, $a0, 0xff
	ori	$v1, $v1, 0x3
	li	$a1, 104
	ld	$v0, 17088($t2)
	li	$a3, 104
	sw	$t1, 16($a2)
	li	$t0, 68
	sw	$v1, 8($a2)
	and	$v0, $v0, $a0
	sd	$v0, 17088($t2)
	move	$a0, $a2
	sb	$a1, 17088($t2)
	li	$a1, 104
	sw	$t3, 4($sp)
	sw	$a3, 8($sp)
	sw	$t0, 12($sp)
	jal	sub_001128C8
	sw	$a2, 0($sp)
	li	$a0, 4
	jal	sub_00106CE0
	lui	$a1, 0x4
	move	$a0, $sp
	jal	sub_00106CA0
	li	$a1, 1
	beqz	$v0, lbl_0010E9D4
	li	$a0, 4
	jal	sub_00106CE0
	lui	$a1, 0x1
	li	$a0, 4
	jal	sub_00106CE0
	lui	$a1, 0x2
	lui	$a0, 0x8000
	move	$a1, $zero
	jal	sub_00106CE0
	ori	$a0, $a0, 0x2
	lui	$a0, 0x8000
	jal	sub_00106CE0
	move	$a1, $zero
	b	lbl_0010E9D8
	li	$v0, 1
lbl_0010E9D4:
	move	$v0, $zero
lbl_0010E9D8:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106CF0
	li	$a0, 4
	lui	$v1, 0x1
	ld	$ra, 0($sp)
	and	$v0, $v0, $v1
	sltu	$v0, $zero, $v0
	jr	$ra
	addiu	$sp, $sp, 16

sub_0010EA18:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106CF0
	li	$a0, 4
	lui	$v1, 0x4
	and	$v0, $v0, $v1
	beqz	$v0, lbl_0010EA5C
	move	$v0, $zero
	jal	sub_00111650
	nop
	li	$a0, 1
	jal	sub_001115A8
	li	$a1, 1
	move	$a0, $zero
	jal	sub_001115A8
	li	$a1, 1
	li	$v0, 1
lbl_0010EA5C:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0010EA68:
	addiu	$sp, $sp, -128
	lui	$v0, 0x13
	sd	$s1, 96($sp)
	sd	$s0, 80($sp)
	sd	$ra, 112($sp)
	move	$s0, $a0
	lb	$v1, 0($s0)
	beqz	$v1, lbl_0010EAB4
	addiu	$s1, $v0, 20112
	addiu	$v1, $s0, -11
lbl_0010EA90:
	addiu	$a0, $a0, 1
	lb	$v0, 0($a0)
	nop
	nop
	nop
	bnez	$v0, lbl_0010EA90
	nop
	b	lbl_0010EABC
	subu	$v0, $a0, $v1
lbl_0010EAB4:
	addiu	$v1, $s0, -11
	subu	$v0, $a0, $v1
lbl_0010EABC:
	sltiu	$v0, $v0, 81
	bnez	$v0, lbl_0010EADC
	lui	$a0, 0x13
	move	$a1, $s0
	jal	sub_001087F8
	addiu	$a0, $a0, 20128
	b	lbl_0010EB64
	move	$v0, $zero
lbl_0010EADC:
	jal	sub_001088F8
	move	$a0, $zero
	jal	sub_00108A98
	nop
	lb	$v0, 0($s1)
	move	$v1, $sp
	beqz	$v0, lbl_0010EB24
	lbu	$a0, 0($s1)
	lbu	$a1, 0($s0)
lbl_0010EB00:
	sb	$a0, 0($v1)
	addiu	$s1, $s1, 1
	addiu	$v1, $v1, 1
	lbu	$a0, 0($s1)
	lb	$v0, 0($s1)
	bnez	$v0, lbl_0010EB00
	nop
	b	lbl_0010EB2C
	move	$a0, $a1
lbl_0010EB24:
	lbu	$a1, 0($s0)
	move	$a0, $a1
lbl_0010EB2C:
	beqzl	$a0, lbl_0010EB58
	sb	$zero, 0($v1)
	nop
lbl_0010EB38:
	sb	$a0, 0($v1)
	addiu	$s0, $s0, 1
	addiu	$v1, $v1, 1
	lb	$v0, 0($s0)
	move	$a0, $v0
	bnez	$v0, lbl_0010EB38
	nop
	sb	$zero, 0($v1)
lbl_0010EB58:
	move	$a0, $sp
	jal	sub_0010E898
	move	$a1, $zero
lbl_0010EB64:
	ld	$ra, 112($sp)
	ld	$s1, 96($sp)
	ld	$s0, 80($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	addiu	$sp, $sp, -48
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	lui	$s0, 0x11
	addiu	$s0, $s0, -3904
	move	$s1, $a0
	sw	$s1, -2632($v0)
	move	$a1, $s0
	sd	$ra, 32($sp)
	jal	sub_00106590
	li	$a0, 1
	move	$a1, $s0
	jal	sub_00106590
	li	$a0, 2
	move	$a1, $s0
	jal	sub_00106590
	li	$a0, 3
	move	$v0, $s1
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0010EBD8:
	move	$a2, $a0
	addiu	$sp, $sp, -32
	addiu	$a0, $a2, -1
	sd	$ra, 16($sp)
	sltiu	$v0, $a0, 13
	bnez	$v0, lbl_0010EC00
	sd	$s0, 0($sp)
	lui	$v0, 0xffff
	b	lbl_0010EC4C
	ori	$v0, $v0, 0xffff
lbl_0010EC00:
	lui	$v0, 0x13
	sll	$v1, $a2, 0x2
	addiu	$v0, $v0, -2624
	sltiu	$a0, $a0, 3
	addu	$v1, $v1, $v0
	lw	$s0, 0($v1)
	beqz	$a0, lbl_0010EC38
	sw	$a1, 0($v1)
	lui	$a1, 0x11
	move	$a0, $a2
	jal	sub_00106590
	addiu	$a1, $a1, -3328
	b	lbl_0010EC4C
	move	$v0, $s0
lbl_0010EC38:
	lui	$a1, 0x11
	move	$a0, $a2
	jal	sub_001065A0
	addiu	$a1, $a1, -3328
	move	$v0, $s0
lbl_0010EC4C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0010EC60:
	li	$v1, 90
	syscall
	jr	$ra
	nop
	srl	$a2, $a2, 0x2
	beqz	$a2, lbl_0010ECA0
	move	$a3, $zero
	nop
lbl_0010EC80:
	lw	$v1, 0($a1)
	addiu	$a3, $a3, 1
	addiu	$a1, $a1, 4
	sltu	$v0, $a3, $a2
	sw	$v1, 0($a0)
	addiu	$a0, $a0, 4
	bnez	$v0, lbl_0010EC80
	nop
lbl_0010ECA0:
	jr	$ra
	move	$v0, $zero

sub_0010ECA8:
	li	$v1, 91
	syscall
	jr	$ra
	nop

sub_0010ECB8:
	li	$v1, 116
	syscall
	jr	$ra
	nop

sub_0010ECC8:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	li	$s2, 3
	sd	$s0, 0($sp)
	sd	$ra, 48($sp)
	addiu	$s0, $v0, -2552
	lw	$a0, -2552($v0)
	addiu	$s1, $s0, 24
	jal	sub_0010ECB8
	lw	$a1, 4($s0)
	lui	$a1, 0x13
	lui	$a0, 0x8007
	li	$a2, 816
	addiu	$a1, $a1, -3448
	jal	sub_0010EC60
	ori	$a0, $a0, 0x5000
	jal	sub_00106B60
	move	$a0, $zero
	jal	sub_00106B60
	li	$a0, 2
	lw	$a0, 8($s0)
	jal	sub_0010ECB8
	lw	$a1, 12($s0)
	lw	$a0, 16($s0)
	jal	sub_0010ECB8
	lw	$a1, 20($s0)
	lw	$a0, 0($s1)
	nop
lbl_0010ED40:
	jal	sub_0010ECA8
	addiu	$s2, $s2, 1
	lw	$a0, 0($s1)
	move	$a1, $v0
	jal	sub_0010ECB8
	addiu	$s1, $s1, 8
	sltiu	$v0, $s2, 8
	bnezl	$v0, lbl_0010ED40
	lw	$a0, 0($s1)
	jal	sub_0010ECA8
	li	$a0, 3
	lui	$v1, 0x13
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	sw	$v0, -2560($v1)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	li	$v1, 85
	syscall
	jr	$ra
	nop
	li	$v1, -85
	syscall
	jr	$ra
	nop

sub_0010EDB0:
	li	$v1, 86
	syscall
	jr	$ra
	nop
	addiu	$sp, $sp, -16
	addiu	$v0, $a0, -13
	sltiu	$v0, $v0, 35
	bnez	$v0, lbl_0010EDDC
	sd	$ra, 0($sp)
	b	lbl_0010EDE4
	li	$v0, -1
lbl_0010EDDC:
	jal	sub_0010EDB0
	nop
lbl_0010EDE4:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	li	$v1, -86
	syscall
	jr	$ra
	nop
	li	$v1, 87
	syscall
	jr	$ra
	nop
	li	$v1, -87
	syscall
	jr	$ra
	nop
	li	$v1, 88
	syscall
	jr	$ra
	nop
	li	$v1, -88
	syscall
	jr	$ra
	nop
	li	$v1, 89
	syscall
	jr	$ra
	nop
lbl_0010EE50:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106D40
	nop
	lui	$v1, 0x200
	bne	$v0, $v1, lbl_0010EE7C
	nop
	jal	sub_0010EE90
	nop
	b	lbl_0010EE88
	ld	$ra, 0($sp)
lbl_0010EE7C:
	jal	sub_00106D50
	nop
	ld	$ra, 0($sp)
lbl_0010EE88:
	jr	$ra
	addiu	$sp, $sp, 16

sub_0010EE90:
	addiu	$sp, $sp, -64
	lui	$a0, 0x13
	sd	$s2, 32($sp)
	addiu	$a0, $a0, 20160
	sd	$s1, 16($sp)
	lui	$s2, 0x13
	sd	$s0, 0($sp)
	sd	$ra, 48($sp)
	addiu	$s0, $s2, -1864
	lw	$a1, -1864($s2)
	lw	$a3, 4($s0)
	lw	$t1, 8($s0)
	move	$a2, $a1
	addu	$a3, $a1, $a3
	addu	$t1, $a3, $t1
	move	$t0, $a3
	addiu	$a1, $a1, -1
	addiu	$t1, $t1, -1
	jal	sub_00108878
	addiu	$a3, $a3, -1
	mtc0	$zero, $6
	sync.p
	lw	$s1, -1864($s2)
	slti	$v0, $s1, 49
	bnez	$v0, lbl_0010EF0C
	move	$t9, $zero
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20216
	jal	sub_0010FAD8
	li	$a0, 1
lbl_0010EF0C:
	slt	$v0, $t9, $s1
	beqz	$v0, lbl_0010EF48
	lw	$s0, 16($s0)
	lw	$a1, 0($s0)
	nop
lbl_0010EF20:
	move	$a0, $t9
	lw	$a2, 4($s0)
	lw	$a3, 8($s0)
	lw	$t0, 12($s0)
	jal	sub_0010EDB0
	addiu	$s0, $s0, 16
	addiu	$t9, $t9, 1
	slt	$v0, $t9, $s1
	bnezl	$v0, lbl_0010EF20
	lw	$a1, 0($s0)
lbl_0010EF48:
	addiu	$s0, $s2, -1864
	lw	$v0, 4($s0)
	addu	$s1, $t9, $v0
	slti	$v1, $s1, 49
	bnez	$v1, lbl_0010EF78
	slt	$v0, $t9, $s1
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20240
	jal	sub_0010FAD8
	li	$a0, 1
	slt	$v0, $t9, $s1
lbl_0010EF78:
	beqz	$v0, lbl_0010EFB0
	lw	$s0, 20($s0)
	lw	$a1, 0($s0)
	nop
lbl_0010EF88:
	move	$a0, $t9
	lw	$a2, 4($s0)
	lw	$a3, 8($s0)
	lw	$t0, 12($s0)
	jal	sub_0010EDB0
	addiu	$s0, $s0, 16
	addiu	$t9, $t9, 1
	slt	$v0, $t9, $s1
	bnezl	$v0, lbl_0010EF88
	lw	$a1, 0($s0)
lbl_0010EFB0:
	addiu	$s0, $s2, -1864
	sw	$t9, 12($s0)
	mtc0	$t9, $6
	sync.p
	lw	$v0, 8($s0)
	blezl	$v0, lbl_0010F02C
	move	$s0, $t9
	addu	$s1, $t9, $v0
	slti	$v0, $s1, 49
	bnez	$v0, lbl_0010EFF4
	slt	$v0, $t9, $s1
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20264
	jal	sub_0010FAD8
	li	$a0, 1
	slt	$v0, $t9, $s1
lbl_0010EFF4:
	beqz	$v0, lbl_0010F028
	lw	$s0, 24($s0)
	lw	$a1, 0($s0)
lbl_0010F000:
	move	$a0, $t9
	lw	$a2, 4($s0)
	lw	$a3, 8($s0)
	lw	$t0, 12($s0)
	jal	sub_0010EDB0
	addiu	$s0, $s0, 16
	addiu	$t9, $t9, 1
	slt	$v0, $t9, $s1
	bnezl	$v0, lbl_0010F000
	lw	$a1, 0($s0)
lbl_0010F028:
	move	$s0, $t9
lbl_0010F02C:
	slti	$v0, $s0, 48
	beqz	$v0, lbl_0010F068
	sll	$t9, $t9, 0xd
	lui	$v0, 0xe000
	addu	$s1, $t9, $v0
lbl_0010F040:
	move	$a0, $s0
	move	$a2, $s1
	move	$a1, $zero
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_0010EDB0
	addiu	$s0, $s0, 1
	slti	$v0, $s0, 48
	bnez	$v0, lbl_0010F040
	addiu	$s1, $s1, 8192
lbl_0010F068:
	ld	$ra, 48($sp)
	move	$v0, $t9
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lui	$k0, 0x14
	addiu	$k0, $k0, 21312
	sq	$at, 16($k0)
	sq	$v0, 32($k0)
	sq	$v1, 48($k0)
	sq	$a0, 64($k0)
	sq	$a1, 80($k0)
	sq	$a2, 96($k0)
	sq	$a3, 112($k0)
	sq	$t0, 128($k0)
	sq	$t1, 144($k0)
	sq	$t2, 160($k0)
	sq	$t3, 176($k0)
	sq	$t4, 192($k0)
	sq	$t5, 208($k0)
	sq	$t6, 224($k0)
	sq	$t7, 240($k0)
	sq	$s0, 256($k0)
	sq	$s1, 272($k0)
	sq	$s2, 288($k0)
	sq	$s3, 304($k0)
	sq	$s4, 320($k0)
	sq	$s5, 336($k0)
	sq	$s6, 352($k0)
	sq	$s7, 368($k0)
	sq	$t8, 384($k0)
	sq	$t9, 400($k0)
	sq	$gp, 448($k0)
	sq	$sp, 464($k0)
	sq	$s8, 480($k0)
	sq	$ra, 496($k0)
	mfhi	$v0
	lui	$at, 0x14
	sd	$v0, 21824($at)
	mfhi1	$v0
	lui	$at, 0x14
	sd	$v0, 21832($at)
	mflo	$v0
	lui	$at, 0x14
	sd	$v0, 21840($at)
	mflo1	$v0
	lui	$at, 0x14
	sd	$v0, 21848($at)
	mfsa	$v0
	lui	$at, 0x14
	sd	$v0, 21856($at)
	mfc0	$a0, $12
	mfc0	$a1, $13
	mfc0	$a2, $14
	mfc0	$a3, $8
	lui	$t0, 0x14
	addiu	$t0, $t0, 21312
	lui	$at, 0x14
	sw	$a2, 21864($at)
	lui	$at, 0x11
	addiu	$at, $at, -3648
	mtc0	$at, $14
	sync.p
	mfc0	$at, $12
	li	$v0, -2
	and	$at, $at, $v0
	mtc0	$at, $12
	sync.p
	eret
	lui	$at, 0x13
	lw	$at, -2632($at)
	lui	$sp, 0x14
	jalr	$at
	addiu	$sp, $sp, 21312
	li	$v1, -84
	syscall
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	mfc0	$at, $12
	li	$k0, -28
	and	$at, $at, $k0
	mtc0	$at, $12
	sync.p
	lui	$v0, 0x14
	lw	$v0, 21864($v0)
	mtc0	$v0, $14
	sync.p
	lui	$v0, 0x14
	ld	$v0, 21824($v0)
	mthi	$v0
	lui	$v0, 0x14
	ld	$v0, 21832($v0)
	mthi1	$v0
	lui	$v0, 0x14
	ld	$v0, 21840($v0)
	mtlo	$v0
	lui	$v0, 0x14
	ld	$v0, 21848($v0)
	mtlo1	$v0
	lui	$v0, 0x14
	ld	$v0, 21856($v0)
	mtsa	$v0
	sync.p
	lui	$k0, 0x14
	addiu	$k0, $k0, 21312
	lq	$at, 16($k0)
	lq	$v0, 32($k0)
	lq	$v1, 48($k0)
	lq	$a0, 64($k0)
	lq	$a1, 80($k0)
	lq	$a2, 96($k0)
	lq	$a3, 112($k0)
	lq	$t0, 128($k0)
	lq	$t1, 144($k0)
	lq	$t2, 160($k0)
	lq	$t3, 176($k0)
	lq	$t4, 192($k0)
	lq	$t5, 208($k0)
	lq	$t6, 224($k0)
	lq	$t7, 240($k0)
	lq	$s0, 256($k0)
	lq	$s1, 272($k0)
	lq	$s2, 288($k0)
	lq	$s3, 304($k0)
	lq	$s4, 320($k0)
	lq	$s5, 336($k0)
	lq	$s6, 352($k0)
	lq	$s7, 368($k0)
	lq	$t8, 384($k0)
	lq	$t9, 400($k0)
	lq	$gp, 448($k0)
	lq	$sp, 464($k0)
	lq	$s8, 480($k0)
	lq	$ra, 496($k0)
	mfc0	$k0, $12
	ori	$k0, $k0, 0x13
	mtc0	$k0, $12
	sync.p
	eret
	nop
	nop
	nop
	lui	$k0, 0x14
	addiu	$k0, $k0, 21312
	sq	$at, 16($k0)
	sq	$v0, 32($k0)
	sq	$v1, 48($k0)
	sq	$a0, 64($k0)
	sq	$a1, 80($k0)
	sq	$a2, 96($k0)
	sq	$a3, 112($k0)
	sq	$t0, 128($k0)
	sq	$t1, 144($k0)
	sq	$t2, 160($k0)
	sq	$t3, 176($k0)
	sq	$t4, 192($k0)
	sq	$t5, 208($k0)
	sq	$t6, 224($k0)
	sq	$t7, 240($k0)
	sq	$s0, 256($k0)
	sq	$s1, 272($k0)
	sq	$s2, 288($k0)
	sq	$s3, 304($k0)
	sq	$s4, 320($k0)
	sq	$s5, 336($k0)
	sq	$s6, 352($k0)
	sq	$s7, 368($k0)
	sq	$t8, 384($k0)
	sq	$t9, 400($k0)
	sq	$gp, 448($k0)
	sq	$sp, 464($k0)
	sq	$s8, 480($k0)
	sq	$ra, 496($k0)
	mfhi	$v0
	lui	$at, 0x14
	sd	$v0, 21824($at)
	mfhi1	$v0
	lui	$at, 0x14
	sd	$v0, 21832($at)
	mflo	$v0
	lui	$at, 0x14
	sd	$v0, 21840($at)
	mflo1	$v0
	lui	$at, 0x14
	sd	$v0, 21848($at)
	mfsa	$v0
	lui	$at, 0x14
	sd	$v0, 21856($at)
	mfc0	$a0, $12
	mfc0	$a1, $13
	mfc0	$a2, $14
	mfc0	$a3, $8
	mfc0	$t0, $23
	lui	$t1, 0x14
	addiu	$t1, $t1, 21312
	lui	$at, 0x11
	addiu	$at, $at, -3076
	mtc0	$at, $14
	sync.p
	mfc0	$at, $12
	li	$v0, -2
	and	$at, $at, $v0
	mtc0	$at, $12
	sync.p
	eret
	andi	$v0, $a1, 0x7c
	lui	$at, 0x13
	addu	$at, $at, $v0
	lw	$at, -2624($at)
	lui	$sp, 0x14
	jalr	$at
	addiu	$sp, $sp, 21312
	break	0xfffff
	nop

sub_0010F420:
	mfc0	$v1, $12
	lui	$v0, 0x1
	and	$v1, $v1, $v0
	beqz	$v1, lbl_0010F464
	sltu	$a0, $zero, $v1
	nop
lbl_0010F438:
	di
	sync.p
	mfc0	$v0, $12
	lui	$v1, 0x1
	and	$v0, $v0, $v1
	nop
	nop
	bnez	$v0, lbl_0010F438
	nop
	jr	$ra
	move	$v0, $a0
lbl_0010F464:
	move	$a0, $zero
	jr	$ra
	move	$v0, $a0

sub_0010F470:
	mfc0	$v0, $12
	lui	$v1, 0x1
	and	$v0, $v0, $v1
	ei
	jr	$ra
	sltu	$v0, $zero, $v0

sub_0010F488:
	lui	$v0, 0x13
	lui	$a1, 0x13
	addiu	$sp, $sp, -80
	li	$v1, 1
	addiu	$v0, $v0, 20288
	addiu	$a1, $a1, 20304
	sd	$ra, 64($sp)
	move	$a0, $sp
	sw	$v0, 20($sp)
	sw	$v1, 40($sp)
	sw	$a1, 52($sp)
	sw	$v1, 4($sp)
	sw	$v1, 8($sp)
	jal	sub_001068E0
	sw	$v1, 36($sp)
	lui	$v1, 0x13
	addiu	$a0, $sp, 32
	jal	sub_001068E0
	sw	$v0, -1808($v1)
	lui	$v1, 0x13
	ld	$ra, 64($sp)
	sw	$v0, -1804($v1)
	jr	$ra
	addiu	$sp, $sp, 80
	lui	$v1, 0x13
	jr	$ra
	lw	$v0, -1804($v1)
	nop

sub_0010F4F8:
	li	$v1, 90
	syscall
	jr	$ra
	nop
	srl	$a2, $a2, 0x2
	beqz	$a2, lbl_0010F538
	move	$a3, $zero
	nop
lbl_0010F518:
	lw	$v1, 0($a1)
	addiu	$a3, $a3, 1
	addiu	$a1, $a1, 4
	sltu	$v0, $a3, $a2
	sw	$v1, 0($a0)
	addiu	$a0, $a0, 4
	bnez	$v0, lbl_0010F518
	nop
lbl_0010F538:
	jr	$ra
	move	$v0, $zero
	lw	$v0, 0($a0)
	beq	$v0, $a2, lbl_0010F574
	sltu	$v0, $a0, $a1
	beqzl	$v0, lbl_0010F578
	movz	$a0, $zero, $v0
	addiu	$a0, $a0, 4
lbl_0010F558:
	lw	$v0, 0($a0)
	beq	$v0, $a2, lbl_0010F574
	sltu	$v0, $a0, $a1
	bnezl	$v0, lbl_0010F558
	addiu	$a0, $a0, 4
	b	lbl_0010F578
	movz	$a0, $zero, $v0
lbl_0010F574:
	movz	$a0, $zero, $v0
lbl_0010F578:
	jr	$ra
	move	$v0, $a0

sub_0010F580:
	li	$v1, 131
	syscall
	jr	$ra
	nop
	lui	$v0, 0x13
	addiu	$sp, $sp, -32
	lw	$a1, -1832($v0)
	sll	$v1, $a0, 0x2
	sd	$ra, 16($sp)
	move	$a0, $sp
	li	$a2, 4
	jal	sub_0010F4F8
	addu	$a1, $a1, $v1
	lw	$v0, 0($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0010F5C8:
	addiu	$sp, $sp, -128
	lui	$v0, 0x13
	sd	$s5, 80($sp)
	sd	$s4, 64($sp)
	lui	$s5, 0x11
	sd	$s3, 48($sp)
	lui	$s4, 0x11
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 112($sp)
	addiu	$s0, $v0, -1824
	sd	$s6, 96($sp)
	lw	$a0, -1824($v0)
	jal	sub_0010F6C8
	lw	$a1, 4($s0)
	lw	$a1, 12($s0)
	jal	sub_0010F6C8
	lw	$a0, 8($s0)
	lui	$a0, 0x8000
	lui	$a1, 0x8008
	jal	sub_0010F580
	addiu	$a2, $s5, -2752
	move	$s3, $v0
	lui	$a0, 0x8000
	lui	$a1, 0x8008
	jal	sub_0010F580
	addiu	$a2, $s4, -2808
	addiu	$s1, $s3, -524
	move	$s2, $v0
	addiu	$s0, $s2, -360
	beq	$s1, $s0, lbl_0010F698
	lui	$s6, 0x13
	sltu	$v0, $s1, $s0
lbl_0010F650:
	beqz	$v0, lbl_0010F670
	addiu	$a0, $s3, 4
	lui	$a1, 0x8008
	jal	sub_0010F580
	addiu	$a2, $s5, -2752
	move	$s3, $v0
	b	lbl_0010F688
	addiu	$s1, $s3, -524
lbl_0010F670:
	addiu	$a0, $s2, 4
	lui	$a1, 0x8008
	jal	sub_0010F580
	addiu	$a2, $s4, -2808
	move	$s2, $v0
	addiu	$s0, $s2, -360
lbl_0010F688:
	bne	$s1, $s0, lbl_0010F650
	sltu	$v0, $s1, $s0
	b	lbl_0010F69C
	sw	$s1, -1832($s6)
lbl_0010F698:
	sw	$s1, -1832($s6)
lbl_0010F69C:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_0010F6C8:
	li	$v1, 116
	syscall
	jr	$ra
	nop

sub_0010F6D8:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010F488
	nop
	jal	sub_0010F5C8
	nop
	jal	sub_0010FBB8
	nop
	jal	sub_0010FD30
	li	$a0, 2
	jal	sub_0010FF70
	nop
	jal	sub_00107068
	nop
	jal	sub_0010F800
	nop
	jal	sub_0010ECC8
	nop
	ld	$ra, 0($sp)
	j	lbl_001113F0
	addiu	$sp, $sp, 16
	nop

sub_0010F730:
	li	$v1, 116
	syscall
	jr	$ra
	nop

sub_0010F740:
	li	$v1, 90
	syscall
	jr	$ra
	nop
	srl	$a2, $a2, 0x2
	beqz	$a2, lbl_0010F780
	move	$a3, $zero
	nop
lbl_0010F760:
	lw	$v1, 0($a1)
	addiu	$a3, $a3, 1
	addiu	$a1, $a1, 4
	sltu	$v0, $a3, $a2
	sw	$v1, 0($a0)
	addiu	$a0, $a0, 4
	bnez	$v0, lbl_0010F760
	nop
lbl_0010F780:
	jr	$ra
	move	$v0, $zero

sub_0010F788:
	li	$v1, 91
	syscall
	jr	$ra
	nop

sub_0010F798:
	addiu	$sp, $sp, -48
	sd	$s0, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_00106990
	move	$a0, $sp
	lw	$v1, 0($sp)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0x1fff
	addiu	$s0, $sp, 4
	and	$v1, $v1, $v0
	move	$a0, $s0
	ori	$v1, $v1, 0x2000
	jal	sub_00106980
	sw	$v1, 4($sp)
	jal	sub_00106990
	move	$a0, $s0
	jal	sub_00106980
	move	$a0, $sp
	lw	$v0, 4($sp)
	ld	$ra, 32($sp)
	srl	$v0, $v0, 0xd
	ld	$s0, 16($sp)
	andi	$v0, $v0, 0x7
	sltiu	$v0, $v0, 1
	jr	$ra
	addiu	$sp, $sp, 48

sub_0010F800:
	addiu	$sp, $sp, -64
	sd	$ra, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	jal	sub_0010F798
	sd	$s0, 0($sp)
	beqz	$v0, lbl_0010F894
	lui	$v0, 0x13
	li	$s2, 2
	addiu	$s0, $v0, 160
	lw	$a0, 160($v0)
	lw	$a1, 4($s0)
	jal	sub_0010F730
	addiu	$s1, $s0, 16
	lui	$a1, 0x13
	lui	$a0, 0x8007
	li	$a2, 1960
	addiu	$a1, $a1, -1800
	jal	sub_0010F740
	ori	$a0, $a0, 0x4000
	jal	sub_00106B60
	move	$a0, $zero
	jal	sub_00106B60
	li	$a0, 2
	lw	$a0, 8($s0)
	jal	sub_0010F730
	lw	$a1, 12($s0)
	lw	$a0, 0($s1)
lbl_0010F870:
	jal	sub_0010F788
	addiu	$s2, $s2, 1
	lw	$a0, 0($s1)
	move	$a1, $v0
	jal	sub_0010F730
	addiu	$s1, $s1, 8
	sltiu	$v0, $s2, 3
	bnezl	$v0, lbl_0010F870
	lw	$a0, 0($s1)
lbl_0010F894:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0010F8B0:
	li	$v1, 90
	syscall
	jr	$ra
	nop
	beqz	$a2, lbl_0010F8E8
	move	$a3, $zero
lbl_0010F8C8:
	lbu	$v1, 0($a1)
	addiu	$a3, $a3, 1
	addiu	$a1, $a1, 1
	sltu	$v0, $a3, $a2
	sb	$v1, 0($a0)
	addiu	$a0, $a0, 1
	bnez	$v0, lbl_0010F8C8
	nop
lbl_0010F8E8:
	jr	$ra
	move	$v0, $zero

sub_0010F8F0:
	li	$v1, 116
	syscall
	jr	$ra
	nop

sub_0010F900:
	addiu	$sp, $sp, -128
	lui	$v0, 0x13
	sd	$s3, 64($sp)
	lui	$v1, 0x13
	lw	$s3, -2560($v0)
	addiu	$a3, $v1, 184
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	addiu	$v0, $s3, 64
	sd	$s2, 48($sp)
	move	$s5, $v0
	sd	$s1, 32($sp)
	move	$s2, $a1
	sd	$s0, 16($sp)
	move	$s4, $a2
	sd	$ra, 112($sp)
	move	$s0, $a0
	lw	$a0, 184($v1)
	lw	$a1, 4($a3)
	jal	sub_0010F8F0
	sw	$v0, 0($sp)
	slti	$v1, $s2, 16
	li	$v0, 15
	move	$a0, $s3
	movz	$s2, $v0, $v1
	move	$a1, $sp
	jal	sub_0010F8B0
	li	$a2, 4
	addiu	$s3, $s3, 4
	jal	sub_00126004
	move	$a0, $s0
	addiu	$s1, $v0, 1
	lw	$a0, 0($sp)
	move	$a1, $s0
	jal	sub_0010F8B0
	move	$a2, $s1
	lw	$v1, 0($sp)
	addu	$v1, $v1, $s1
	blez	$s2, lbl_0010F9F0
	sw	$v1, 0($sp)
	move	$s0, $s4
	nop
lbl_0010F9A8:
	move	$a0, $s3
	move	$a1, $sp
	li	$a2, 4
	jal	sub_0010F8B0
	addiu	$s3, $s3, 4
	addiu	$s2, $s2, -1
	jal	sub_00126004
	lw	$a0, 0($s0)
	addiu	$s1, $v0, 1
	lw	$a1, 0($s0)
	lw	$a0, 0($sp)
	move	$a2, $s1
	jal	sub_0010F8B0
	addiu	$s0, $s0, 4
	lw	$v1, 0($sp)
	addu	$v1, $v1, $s1
	bnez	$s2, lbl_0010F9A8
	sw	$v1, 0($sp)
lbl_0010F9F0:
	move	$v0, $s5
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_0010FA18:
	j	lbl_0010EE50
	nop
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a1
	move	$s0, $a2
	lui	$a0, 0x13
	move	$a1, $s0
	sd	$ra, 48($sp)
	addiu	$a0, $a0, 20320
	jal	sub_0010F900
	move	$a2, $a3
	jal	sub_0010FA18
	nop
	lui	$v0, 0x13
	move	$a0, $s1
	lw	$a3, -2560($v0)
	move	$a1, $s2
	move	$a2, $s0
	jal	sub_00106530
	addiu	$a3, $a3, 4
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F900
	move	$s1, $a1
	jal	sub_0010FA18
	move	$s0, $v0
	lui	$v0, 0x13
	move	$a0, $s0
	lw	$a2, -2560($v0)
	move	$a1, $s1
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	addiu	$a2, $a2, 4
	ld	$s0, 0($sp)
	j	lbl_00106520
	addiu	$sp, $sp, 48

sub_0010FAD8:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0010FA18
	move	$s0, $a0
	move	$a0, $s0
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	j	lbl_00106500
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -32
	move	$a2, $a1
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 16($sp)
	lui	$a0, 0x13
	move	$a1, $s0
	jal	sub_0010F900
	addiu	$a0, $a0, 20320
	jal	sub_0010FA18
	nop
	lui	$v0, 0x13
	move	$a0, $s0
	lw	$a1, -2560($v0)
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	addiu	$a1, $a1, 4
	j	lbl_00106D00
	addiu	$sp, $sp, 32
	nop

sub_0010FB50:
	li	$v1, 116
	syscall
	jr	$ra
	nop

sub_0010FB60:
	li	$v1, 90
	syscall
	jr	$ra
	nop
	srl	$a2, $a2, 0x2
	beqz	$a2, lbl_0010FBA0
	move	$a3, $zero
	nop
lbl_0010FB80:
	lw	$v1, 0($a1)
	addiu	$a3, $a3, 1
	addiu	$a1, $a1, 4
	sltu	$v0, $a3, $a2
	sw	$v1, 0($a0)
	addiu	$a0, $a0, 4
	bnez	$v0, lbl_0010FB80
	nop
lbl_0010FBA0:
	jr	$ra
	move	$v0, $zero

sub_0010FBA8:
	li	$v1, 91
	syscall
	jr	$ra
	nop

sub_0010FBB8:
	addiu	$sp, $sp, -64
	lui	$v0, 0x1000
	sd	$ra, 48($sp)
	ori	$v0, $v0, 0x1810
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0x100
	bnez	$v1, lbl_0010FC78
	ld	$ra, 48($sp)
	lui	$v0, 0x13
	li	$s2, 2
	addiu	$s0, $v0, 2088
	lw	$a0, 2088($v0)
	lw	$a1, 4($s0)
	jal	sub_0010FB50
	addiu	$s1, $s0, 16
	lui	$a1, 0x13
	lui	$a0, 0x8007
	addiu	$a1, $a1, 192
	ori	$a0, $a0, 0x6000
	jal	sub_0010FB60
	li	$a2, 1856
	lui	$a1, 0x13
	lui	$a0, 0x8
	addiu	$a1, $a1, 2048
	ori	$a0, $a0, 0x2000
	jal	sub_0010FB60
	li	$a2, 40
	jal	sub_00106B60
	move	$a0, $zero
	jal	sub_00106B60
	li	$a0, 2
	lw	$a0, 8($s0)
	jal	sub_0010FB50
	lw	$a1, 12($s0)
	lw	$a0, 0($s1)
lbl_0010FC50:
	jal	sub_0010FBA8
	addiu	$s2, $s2, 1
	lw	$a0, 0($s1)
	move	$a1, $v0
	jal	sub_0010FB50
	addiu	$s1, $s1, 8
	sltiu	$v0, $s2, 8
	bnezl	$v0, lbl_0010FC50
	lw	$a0, 0($s1)
	ld	$ra, 48($sp)
lbl_0010FC78:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
lbl_0010FC90:
	mfc0	$v1, $12
	lui	$v0, 0x1
	and	$v1, $v1, $v0
	beqz	$v1, lbl_0010FCCC
	lui	$a2, 0x1
	nop
lbl_0010FCA8:
	di
	sync.p
	mfc0	$v0, $12
	and	$v0, $v0, $a2
	nop
	nop
	nop
	bnez	$v0, lbl_0010FCA8
	nop
lbl_0010FCCC:
	mfc0	$v0, $12
	sync.p
	ori	$v0, $v0, 0x6
	xori	$v0, $v0, 0x2
	or	$v0, $v0, $v1
	mtc0	$v0, $12
	sync.p
	sw	$a1, 0($a0)
	mtc0	$ra, $30
	sync.p
	eret
	jr	$ra
	nop

sub_0010FD00:
	move	$a1, $a0
	lui	$a0, 0xb000
	j	lbl_0010FC90
	ori	$a0, $a0, 0x1000

sub_0010FD10:
	move	$a1, $a0
	lui	$a0, 0xb000
	j	lbl_0010FC90
	ori	$a0, $a0, 0x1010

sub_0010FD20:
	move	$a1, $a0
	lui	$a0, 0xb000
	j	lbl_0010FC90
	ori	$a0, $a0, 0x1020

sub_0010FD30:
	addiu	$sp, $sp, -96
	sd	$s2, 32($sp)
	sd	$s4, 64($sp)
	lui	$s2, 0x13
	sd	$s1, 16($sp)
	sd	$ra, 80($sp)
	addiu	$s1, $s2, 2152
	sd	$s3, 48($sp)
	sd	$s0, 0($sp)
	lw	$v0, 8($s1)
	bltz	$v0, lbl_0010FD6C
	move	$s4, $a0
	lui	$v0, 0x8000
	b	lbl_0010FE64
	ori	$v0, $v0, 0x8001
lbl_0010FD6C:
	lui	$s3, 0x14
	sd	$zero, 2152($s2)
	addiu	$s0, $s3, 21888
	sw	$zero, 16($s1)
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 8192
	sw	$s0, 20($s1)
	addiu	$v1, $s0, 8192
	li	$v0, 127
	addiu	$s0, $s0, 8128
	nop
lbl_0010FDA0:
	sw	$v1, 0($s0)
	addiu	$v0, $v0, -1
	addiu	$s0, $s0, -64
	addiu	$v1, $v1, -64
	nop
	bgez	$v0, lbl_0010FDA0
	nop
	addiu	$v0, $s3, 21888
	jal	sub_00111000
	sw	$zero, 8128($v0)
	lui	$a1, 0x11
	li	$a0, 11
	addiu	$a1, $a1, 720
	move	$a2, $zero
	jal	sub_001065D0
	move	$a3, $zero
	move	$v1, $v0
	bgezl	$v1, lbl_0010FDF8
	addiu	$v0, $s2, 2152
	lui	$v0, 0x8000
	b	lbl_0010FE64
	ori	$v0, $v0, 0x9021
lbl_0010FDF8:
	jal	sub_0010F420
	sw	$v1, 8($v0)
	lui	$v1, 0x1000
	move	$s1, $v0
	ori	$v1, $v1, 0x1010
	lui	$v0, 0xffff
	lw	$s0, 0($v1)
	ori	$v0, $v0, 0xfffc
	and	$v0, $s0, $v0
	or	$s0, $v0, $s4
	ori	$s0, $s0, 0x300
	andi	$v0, $s0, 0x80
	bnez	$v0, lbl_0010FE40
	move	$a0, $zero
	jal	sub_0010FD00
	ori	$s0, $s0, 0xc80
	jal	sub_0010FD20
	li	$a0, 0xffff
lbl_0010FE40:
	jal	sub_0010FD10
	move	$a0, $s0
	jal	sub_00106DD8
	li	$a0, 11
	beqz	$s1, lbl_0010FE64
	move	$v0, $zero
	jal	sub_0010F470
	nop
	move	$v0, $zero
lbl_0010FE64:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	lui	$s2, 0x13
	sd	$ra, 48($sp)
	addiu	$s0, $s2, 2152
	sd	$s1, 16($sp)
	lw	$v0, 8($s0)
	bgez	$v0, lbl_0010FEBC
	nop
	lui	$v0, 0x8000
	b	lbl_0010FF28
	ori	$v0, $v0, 0x8001
lbl_0010FEBC:
	lw	$v0, 16($s0)
	beqz	$v0, lbl_0010FED4
	nop
	lui	$v0, 0x8000
	b	lbl_0010FF28
	ori	$v0, $v0, 0x10
lbl_0010FED4:
	jal	sub_0010F420
	nop
	lw	$a1, 8($s0)
	move	$s1, $v0
	jal	sub_001065E0
	li	$a0, 11
	bnez	$v0, lbl_0010FF10
	li	$v0, -1
	jal	sub_00106D70
	li	$a0, 11
	jal	sub_0010FD10
	li	$a0, 3072
	jal	sub_0010FD00
	move	$a0, $zero
	li	$v0, -1
lbl_0010FF10:
	sd	$zero, 2152($s2)
	beqz	$s1, lbl_0010FF24
	sw	$v0, 8($s0)
	jal	sub_0010F470
	nop
lbl_0010FF24:
	move	$v0, $zero
lbl_0010FF28:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	lui	$v0, 0x13
	lw	$v1, 2160($v0)
	bgez	$v1, lbl_0010FF5C
	lui	$v1, 0x1000
	lui	$v0, 0x8000
	jr	$ra
	ori	$v0, $v0, 0x8001
lbl_0010FF5C:
	ori	$v1, $v1, 0x1010
	lw	$v0, 0($v1)
	jr	$ra
	andi	$v0, $v0, 0x3
	nop

sub_0010FF70:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0010F420
	nop
	move	$s0, $v0
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x1010
	lw	$v0, 0($v0)
	andi	$v1, $v0, 0x80
	beqz	$v1, lbl_0010FFB8
	nop
	beqz	$s0, lbl_0010FFF0
	li	$v0, 1
	jal	sub_0010F470
	nop
	b	lbl_0010FFF0
	li	$v0, 1
lbl_0010FFB8:
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xf3ff
	and	$a0, $v0, $a0
	jal	sub_0010FD10
	ori	$a0, $a0, 0x80
	jal	sub_00110578
	nop
	jal	sub_00110080
	move	$a0, $v0
	beqz	$s0, lbl_0010FFF0
	move	$v0, $zero
	jal	sub_0010F470
	nop
	move	$v0, $zero
lbl_0010FFF0:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0010F420
	nop
	move	$s0, $v0
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x1010
	lw	$v0, 0($v0)
	andi	$v1, $v0, 0x80
	bnez	$v1, lbl_00110048
	nop
	beqz	$s0, lbl_0011006C
	move	$v0, $zero
	jal	sub_0010F470
	nop
	b	lbl_0011006C
	move	$v0, $zero
lbl_00110048:
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xf37f
	jal	sub_0010FD10
	and	$a0, $v0, $a0
	beqz	$s0, lbl_0011006C
	li	$v0, 1
	jal	sub_0010F470
	nop
	li	$v0, 1
lbl_0011006C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00110080:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$ra, 48($sp)
	addiu	$v0, $v0, 2152
	sd	$s2, 32($sp)
	move	$a3, $a0
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lw	$v1, 28($v0)
	bgez	$v1, lbl_001101F8
	lw	$a2, 24($v0)
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x1010
	lw	$s2, 0($v0)
	bnezl	$a2, lbl_001100EC
	ld	$v0, 32($a2)
	jal	sub_0010FD20
	move	$a0, $zero
	lui	$a0, 0xffff
	ld	$ra, 48($sp)
	ori	$a0, $a0, 0xf7ff
	ld	$s1, 16($sp)
	and	$a0, $s2, $a0
	ld	$s0, 0($sp)
	ld	$s2, 32($sp)
	j	sub_0010FD10
	addiu	$sp, $sp, 64
lbl_001100EC:
	ld	$v1, 16($a2)
	ld	$a0, 24($a2)
	daddu	$v0, $v0, $v1
	lw	$a2, 0($a2)
	beqz	$a2, lbl_00110164
	dsubu	$s0, $v0, $a0
	ld	$v0, 32($a2)
	daddiu	$v1, $s0, 29491
	ld	$a0, 16($a2)
	ld	$a1, 24($a2)
	daddu	$v0, $v0, $a0
	dsubu	$v0, $v0, $a1
	sltu	$v1, $v0, $v1
	beqz	$v1, lbl_00110164
	andi	$s1, $s2, 0x3
	move	$s0, $v0
	nop
lbl_00110130:
	lw	$a2, 0($a2)
	beqz	$a2, lbl_00110168
	daddiu	$v1, $s0, 29491
	ld	$v0, 32($a2)
	ld	$a0, 16($a2)
	ld	$a1, 24($a2)
	daddu	$v0, $v0, $a0
	dsubu	$v0, $v0, $a1
	sltu	$v1, $v0, $v1
	beqzl	$v1, lbl_0011016C
	dsubu	$v0, $s0, $a3
	b	lbl_00110130
	move	$s0, $v0
lbl_00110164:
	andi	$s1, $s2, 0x3
lbl_00110168:
	dsubu	$v0, $s0, $a3
lbl_0011016C:
	slti	$v0, $v0, 29491
	beqz	$v0, lbl_001101C0
	lui	$v0, 0x1000
	sll	$a1, $s1, 0x2
	ori	$v0, $v0, 0x1000
	li	$a0, 29491
	dsrlv	$a0, $a0, $a1
	lw	$v1, 0($v0)
	dsll32	$a0, $a0, 0x0
	dsra32	$a0, $a0, 0x0
	jal	sub_0010FD20
	addu	$a0, $v1, $a0
	lui	$a0, 0xffff
	ld	$ra, 48($sp)
	ori	$a0, $a0, 0xf7ff
	ld	$s1, 16($sp)
	and	$a0, $s2, $a0
	ld	$s0, 0($sp)
	ld	$s2, 32($sp)
	j	sub_0010FD10
	addiu	$sp, $sp, 64
lbl_001101C0:
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xf7ff
	jal	sub_0010FD10
	and	$a0, $s2, $a0
	sll	$a0, $s1, 0x2
	ld	$ra, 48($sp)
	dsrlv	$a0, $s0, $a0
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	dsll32	$a0, $a0, 0x0
	dsra32	$a0, $a0, 0x0
	ld	$s0, 0($sp)
	j	sub_0010FD20
	addiu	$sp, $sp, 64
lbl_001101F8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00110210:
	move	$a2, $a0
	lui	$t1, 0x13
	ld	$v0, 32($a2)
	addiu	$a1, $t1, 2152
	ld	$v1, 16($a2)
	move	$t0, $zero
	ld	$a0, 24($a2)
	daddu	$v0, $v0, $v1
	lw	$a1, 24($a1)
	b	lbl_00110244
	dsubu	$a3, $v0, $a0
	nop
lbl_00110240:
	lw	$a1, 0($t0)
lbl_00110244:
	beqzl	$a1, lbl_00110270
	sw	$t0, 4($a2)
	ld	$v0, 32($a1)
	ld	$v1, 16($a1)
	ld	$a0, 24($a1)
	daddu	$v0, $v0, $v1
	dsubu	$v0, $v0, $a0
	sltu	$v0, $a3, $v0
	beqzl	$v0, lbl_00110240
	move	$t0, $a1
	sw	$t0, 4($a2)
lbl_00110270:
	beqz	$a1, lbl_0011027C
	sw	$a1, 0($a2)
	sw	$a2, 4($a1)
lbl_0011027C:
	beqz	$t0, lbl_0011028C
	addiu	$v0, $t1, 2152
	jr	$ra
	sw	$a2, 0($t0)
lbl_0011028C:
	jr	$ra
	sw	$a2, 24($v0)
	nop

sub_00110298:
	lw	$v0, 4($a0)
	beqz	$v0, lbl_001102AC
	lw	$v1, 0($a0)
	b	lbl_001102B4
	sw	$v1, 0($v0)
lbl_001102AC:
	lui	$v0, 0x13
	sw	$v1, 2176($v0)
lbl_001102B4:
	beqzl	$v1, lbl_001102C8
	sw	$zero, 4($a0)
	lw	$v0, 4($a0)
	sw	$v0, 4($v1)
	sw	$zero, 4($a0)
lbl_001102C8:
	jr	$ra
	move	$v0, $v1
	addiu	$sp, $sp, -144
	lui	$v1, 0x1000
	sd	$s6, 96($sp)
	ori	$v1, $v1, 0x1010
	sd	$ra, 128($sp)
	move	$s6, $a2
	sd	$s7, 112($sp)
	sd	$s5, 80($sp)
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x400
	beqz	$v0, lbl_00110480
	lui	$s5, 0x13
	addiu	$v0, $s5, 2152
	lw	$s0, 24($v0)
	beqz	$s0, lbl_00110480
	move	$s4, $s5
	li	$s7, 14745
	lui	$v0, 0x1000
	nop
lbl_00110330:
	lui	$v1, 0x1000
	ori	$v0, $v0, 0x1000
	ori	$v1, $v1, 0x1010
	lw	$a2, 0($v0)
	lw	$s1, 0($v1)
	ld	$a0, 32($s0)
	ld	$v0, 16($s0)
	andi	$a1, $s1, 0x800
	ld	$v1, 24($s0)
	daddu	$a0, $a0, $v0
	beqz	$a1, lbl_00110384
	dsubu	$s3, $a0, $v1
	ld	$v0, 2152($s4)
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xfbff
	daddiu	$v0, $v0, 1
	and	$a0, $s1, $a0
	jal	sub_0010FD10
	sd	$v0, 2152($s4)
	lui	$a2, 0x1000
	lw	$a2, 4096($a2)
lbl_00110384:
	ld	$a0, 2152($s4)
	dsll32	$v0, $a2, 0x0
	dsrl32	$v0, $v0, 0x0
	andi	$v1, $s1, 0x3
	dsll	$a0, $a0, 0x10
	sll	$v1, $v1, 0x2
	or	$a0, $a0, $v0
	dsllv	$s1, $a0, $v1
	sltu	$v0, $s1, $s3
	bnez	$v0, lbl_00110480
	addiu	$s2, $s4, 2152
	jal	sub_00110298
	move	$a0, $s0
	move	$s3, $v0
	ld	$a2, 24($s0)
	lw	$v0, 8($s0)
	sll	$a3, $s0, 0x4
	ld	$v1, 16($s0)
	daddu	$a2, $s1, $a2
	or	$v0, $a3, $v0
	sw	$v0, 28($s2)
	dsubu	$a2, $a2, $v1
	lw	$gp, 44($s0)
	lw	$a0, 8($s0)
	move	$t0, $s6
	lw	$v0, 40($s0)
	or	$a0, $a3, $a0
	ld	$a1, 32($s0)
	jalr	$v0
	lw	$a3, 48($s0)
	move	$a1, $v0
	bnez	$a1, lbl_00110420
	li	$v0, -1
	lw	$v1, 12($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffd
	and	$v1, $v1, $v0
	b	lbl_0011046C
	sw	$v1, 12($s0)
lbl_00110420:
	bne	$a1, $v0, lbl_00110450
	li	$v0, 14744
	sw	$zero, 8($s0)
	sw	$zero, 12($s0)
	lw	$v1, 20($s2)
	lw	$v0, 16($s2)
	sw	$v1, 0($s0)
	addiu	$v0, $v0, -1
	sw	$s0, 20($s2)
	sw	$v0, 16($s2)
	b	lbl_00110470
	move	$s0, $s3
lbl_00110450:
	ld	$v1, 32($s0)
	sltu	$v0, $v0, $a1
	move	$a0, $s0
	movz	$a1, $s7, $v0
	daddu	$v1, $v1, $a1
	jal	sub_00110210
	sd	$v1, 32($s0)
lbl_0011046C:
	move	$s0, $s3
lbl_00110470:
	bnez	$s0, lbl_00110330
	lui	$v0, 0x1000
	b	lbl_00110484
	addiu	$a0, $s5, 2152
lbl_00110480:
	addiu	$a0, $s5, 2152
lbl_00110484:
	li	$v1, -1
	sw	$v1, 28($a0)
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x1000
	lui	$v1, 0x1000
	lw	$a0, 0($v0)
	ori	$v1, $v1, 0x1010
	lw	$s0, 0($v1)
	andi	$v0, $s0, 0x800
	beqz	$v0, lbl_001104D4
	nop
	ld	$v0, 2152($s5)
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xfbff
	daddiu	$v0, $v0, 1
	and	$a0, $s0, $a0
	jal	sub_0010FD10
	sd	$v0, 2152($s5)
	lui	$a0, 0x1000
	lw	$a0, 4096($a0)
lbl_001104D4:
	ld	$v0, 2152($s5)
	dsll32	$v1, $a0, 0x0
	dsrl32	$v1, $v1, 0x0
	andi	$a0, $s0, 0x3
	dsll	$v0, $v0, 0x10
	sll	$a0, $a0, 0x2
	or	$v0, $v0, $v1
	jal	sub_00110080
	dsllv	$a0, $v0, $a0
	lui	$v0, 0x1000
	lw	$v0, 4096($v0)
	lui	$v1, 0x1000
	lw	$v1, 4112($v1)
	andi	$v0, $v1, 0x800
	beqz	$v0, lbl_00110538
	nop
	ld	$v0, 2152($s5)
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xfbff
	daddiu	$v0, $v0, 1
	and	$a0, $v1, $a0
	jal	sub_0010FD10
	sd	$v0, 2152($s5)
	lui	$v0, 0x1000
	lw	$v0, 4096($v0)
lbl_00110538:
	ld	$v0, 2152($s5)
	sync
	ei
	ld	$ra, 128($sp)
	move	$v0, $zero
	ld	$s7, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop

sub_00110578:
	lui	$v1, 0x1000
	lui	$a0, 0x13
	ori	$v1, $v1, 0x1000
	lwu	$v0, 0($v1)
	lw	$t0, 16($v1)
	ld	$t2, 2152($a0)
	andi	$t1, $t0, 0x800
	beqz	$t1, lbl_001105A4
	li	$t1, 2
	lwu	$v0, 0($v1)
	daddiu	$t2, $t2, 1
lbl_001105A4:
	andi	$t0, $t0, 0x3
	dsll	$t2, $t2, 0x10
	movz	$t1, $zero, $t0
	or	$v0, $v0, $t2
	dsllv	$t1, $t1, $t0
	dsllv	$v0, $v0, $t1
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0010F420
	nop
	lui	$v1, 0x1000
	lui	$a0, 0x13
	ori	$v1, $v1, 0x1000
	lwu	$s0, 0($v1)
	lw	$t0, 16($v1)
	ld	$t2, 2152($a0)
	andi	$t1, $t0, 0x800
	beqz	$t1, lbl_00110608
	li	$t1, 2
	lwu	$s0, 0($v1)
	daddiu	$t2, $t2, 1
lbl_00110608:
	andi	$t0, $t0, 0x3
	dsll	$t2, $t2, 0x10
	movz	$t1, $zero, $t0
	or	$s0, $s0, $t2
	dsllv	$t1, $t1, $t0
	dsllv	$s0, $s0, $t1
	beqz	$v0, lbl_00110634
	move	$v0, $s0
	jal	sub_0010F470
	nop
	move	$v0, $s0
lbl_00110634:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00110648:
	lui	$v0, 0x13
	addiu	$a3, $v0, 2152
	lw	$a2, 20($a3)
	bnez	$a2, lbl_00110668
	nop
	lui	$v0, 0x8000
	jr	$ra
	ori	$v0, $v0, 0x8005
lbl_00110668:
	lw	$v0, 16($a3)
	sll	$a1, $a2, 0x4
	lw	$a0, 0($a2)
	addiu	$v0, $v0, 1
	sw	$zero, 40($a2)
	sw	$v0, 16($a3)
	sw	$zero, 12($a2)
	sw	$a0, 20($a3)
	lw	$v1, 12($a3)
	sd	$zero, 24($a2)
	addiu	$v1, $v1, 1
	sw	$v1, 12($a3)
	lw	$v0, 12($a3)
	sll	$v0, $v0, 0x1
	andi	$v0, $v0, 0x3fe
	ori	$v0, $v0, 0x1
	sw	$v0, 8($a2)
	lw	$v0, 8($a2)
	jr	$ra
	or	$v0, $a1, $v0

sub_001106B8:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	nop
	jal	sub_00110648
	move	$s0, $v0
	beqz	$s0, lbl_001106E8
	move	$s1, $v0
	jal	sub_0010F470
	nop
lbl_001106E8:
	move	$v0, $s1
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00110700:
	addiu	$sp, $sp, -48
	srl	$v0, $a0, 0xa
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	sll	$s0, $v0, 0x6
	bltz	$a0, lbl_0011072C
	sd	$s1, 16($sp)
	lw	$v1, 8($s0)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_00110738
	lui	$v0, 0x13
lbl_0011072C:
	lui	$v0, 0x8000
	b	lbl_0011078C
	ori	$v0, $v0, 0x8002
lbl_00110738:
	addiu	$s1, $v0, 2152
	lw	$v1, 28($s1)
	bnel	$v1, $a0, lbl_00110754
	lw	$v0, 12($s0)
	lui	$v0, 0x8000
	b	lbl_0011078C
	ori	$v0, $v0, 0x10
lbl_00110754:
	andi	$v0, $v0, 0x2
	beqz	$v0, lbl_00110768
	nop
	jal	sub_00110298
	move	$a0, $s0
lbl_00110768:
	sw	$zero, 8($s0)
	move	$v0, $zero
	sw	$zero, 12($s0)
	lw	$a0, 20($s1)
	lw	$v1, 16($s1)
	sw	$a0, 0($s0)
	addiu	$v1, $v1, -1
	sw	$s0, 20($s1)
	sw	$v1, 16($s1)
lbl_0011078C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_001107A0:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_00110700
	move	$s1, $v0
	beqz	$s1, lbl_001107D4
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_001107D4:
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_001107F0:
	lui	$v0, 0x13
	addiu	$v1, $v0, 2152
	lw	$v0, 8($v1)
	bgez	$v0, lbl_00110810
	nop
	lui	$v0, 0x8000
	jr	$ra
	ori	$v0, $v0, 0x8001
lbl_00110810:
	beqz	$a0, lbl_00110820
	nop
	lw	$v0, 16($v1)
	sw	$v0, 0($a0)
lbl_00110820:
	beqz	$a1, lbl_00110838
	nop
	lw	$v1, 16($v1)
	li	$v0, 128
	subu	$v0, $v0, $v1
	sw	$v0, 0($a1)
lbl_00110838:
	jr	$ra
	move	$v0, $zero
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$s2, 32($sp)
	sd	$ra, 48($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	move	$s2, $v0
	jal	sub_001107F0
	move	$a1, $s1
	beqz	$s2, lbl_00110880
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110880:
	move	$v0, $s0
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_001108A0:
	addiu	$sp, $sp, -48
	srl	$v0, $a0, 0xa
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	sll	$s0, $v0, 0x6
	bltz	$a0, lbl_001108CC
	sd	$s1, 16($sp)
	lw	$v1, 8($s0)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_001108D8
	lui	$v0, 0x13
lbl_001108CC:
	lui	$v0, 0x8000
	b	lbl_00110938
	ori	$v0, $v0, 0x8002
lbl_001108D8:
	addiu	$v0, $v0, 2152
	lw	$v1, 28($v0)
	bnel	$v1, $a0, lbl_001108F4
	lw	$v0, 12($s0)
	lui	$v0, 0x8000
	b	lbl_00110938
	ori	$v0, $v0, 0x10
lbl_001108F4:
	andi	$v0, $v0, 0x1
	bnez	$v0, lbl_00110938
	li	$v0, 1
	jal	sub_00110578
	nop
	move	$s1, $v0
	lw	$v0, 12($s0)
	sd	$s1, 16($s0)
	ori	$v0, $v0, 0x1
	andi	$v1, $v0, 0x2
	beqz	$v1, lbl_00110934
	sw	$v0, 12($s0)
	jal	sub_00110210
	move	$a0, $s0
	jal	sub_00110080
	move	$a0, $s1
lbl_00110934:
	move	$v0, $zero
lbl_00110938:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00110950:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_001108A0
	move	$s1, $v0
	beqz	$s1, lbl_00110984
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110984:
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_001109A0:
	addiu	$sp, $sp, -48
	srl	$v0, $a0, 0xa
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	sll	$s0, $v0, 0x6
	bltz	$a0, lbl_001109CC
	sd	$s1, 16($sp)
	lw	$v1, 8($s0)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_001109D8
	lui	$v0, 0x13
lbl_001109CC:
	lui	$v0, 0x8000
	b	lbl_00110A50
	ori	$v0, $v0, 0x8002
lbl_001109D8:
	addiu	$v0, $v0, 2152
	lw	$v1, 28($v0)
	bnel	$v1, $a0, lbl_001109F4
	lw	$v0, 12($s0)
	lui	$v0, 0x8000
	b	lbl_00110A50
	ori	$v0, $v0, 0x10
lbl_001109F4:
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00110A50
	move	$v0, $zero
	jal	sub_00110578
	nop
	lw	$a1, 12($s0)
	move	$s1, $v0
	ld	$a0, 16($s0)
	lui	$v0, 0xffff
	ld	$v1, 24($s0)
	ori	$v0, $v0, 0xfffe
	dsubu	$a0, $s1, $a0
	andi	$a2, $a1, 0x2
	daddu	$v1, $v1, $a0
	and	$a1, $a1, $v0
	sd	$v1, 24($s0)
	beqz	$a2, lbl_00110A4C
	sw	$a1, 12($s0)
	jal	sub_00110298
	move	$a0, $s0
	jal	sub_00110080
	move	$a0, $s1
lbl_00110A4C:
	li	$v0, 1
lbl_00110A50:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_001109A0
	move	$s1, $v0
	beqz	$s1, lbl_00110A9C
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110A9C:
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -80
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	srl	$v0, $s1, 0xa
	sd	$s3, 48($sp)
	move	$s2, $a1
	sd	$ra, 64($sp)
	jal	sub_0010F420
	sll	$s0, $v0, 0x6
	bltz	$s1, lbl_00110B0C
	move	$s3, $v0
	lw	$v1, 8($s0)
	andi	$v0, $s1, 0x3ff
	bne	$v0, $v1, lbl_00110B0C
	lui	$v0, 0x13
	addiu	$v0, $v0, 2152
	lw	$v1, 28($v0)
	bnel	$v1, $s1, lbl_00110B24
	lw	$v0, 12($s0)
lbl_00110B0C:
	beqz	$s3, lbl_00110B68
	li	$v0, -1
	jal	sub_0010F470
	nop
	b	lbl_00110B68
	li	$v0, -1
lbl_00110B24:
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00110B50
	ld	$s1, 24($s0)
	jal	sub_00110578
	nop
	ld	$v1, 16($s0)
	sd	$s2, 24($s0)
	dsubu	$v1, $v0, $v1
	sd	$v0, 16($s0)
	b	lbl_00110B54
	daddu	$s1, $s1, $v1
lbl_00110B50:
	sd	$s2, 24($s0)
lbl_00110B54:
	beqz	$s3, lbl_00110B68
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00110B68:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00110B88:
	srl	$v0, $a0, 0xa
	bltz	$a0, lbl_00110BA4
	sll	$a1, $v0, 0x6
	lw	$v1, 8($a1)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_00110BAC
	lw	$v0, 12($a1)
lbl_00110BA4:
	jr	$ra
	li	$v0, -1
lbl_00110BAC:
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00110BC8
	nop
	ld	$v1, 24($a1)
	ld	$v0, 16($a1)
	jr	$ra
	dsubu	$v0, $v0, $v1
lbl_00110BC8:
	jr	$ra
	move	$v0, $zero
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_00110B88
	move	$s1, $v0
	beqz	$s1, lbl_00110C04
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110C04:
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00110C20:
	addiu	$sp, $sp, -48
	srl	$v0, $a0, 0xa
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	sll	$s1, $v0, 0x6
	bltz	$a0, lbl_00110C4C
	sd	$s0, 0($sp)
	lw	$v1, 8($s1)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_00110C54
	lw	$v0, 12($s1)
lbl_00110C4C:
	b	lbl_00110C78
	li	$v0, -1
lbl_00110C54:
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00110C74
	ld	$s0, 24($s1)
	jal	sub_00110578
	nop
	ld	$v1, 16($s1)
	dsubu	$v0, $v0, $v1
	daddu	$s0, $s0, $v0
lbl_00110C74:
	move	$v0, $s0
lbl_00110C78:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	jal	sub_00110C20
	move	$s1, $v0
	beqz	$s1, lbl_00110CC4
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110CC4:
	move	$v0, $s0
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00110CE0:
	addiu	$sp, $sp, -80
	srl	$v0, $a0, 0xa
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	move	$s3, $a3
	sd	$s1, 16($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	move	$s1, $a2
	sd	$ra, 64($sp)
	bltz	$a0, lbl_00110D20
	sll	$s0, $v0, 0x6
	lw	$v1, 8($s0)
	andi	$v0, $a0, 0x3ff
	beql	$v0, $v1, lbl_00110D2C
	lui	$v0, 0x13
lbl_00110D20:
	lui	$v0, 0x8000
	b	lbl_00110DB8
	ori	$v0, $v0, 0x8002
lbl_00110D2C:
	addiu	$v0, $v0, 2152
	lw	$v1, 28($v0)
	bnel	$v1, $a0, lbl_00110D48
	lw	$v1, 12($s0)
	lui	$v0, 0x8000
	b	lbl_00110DB8
	ori	$v0, $v0, 0x10
lbl_00110D48:
	andi	$v0, $v1, 0x2
	beqz	$v0, lbl_00110D60
	nop
	jal	sub_00110298
	move	$a0, $s0
	lw	$v1, 12($s0)
lbl_00110D60:
	bnez	$s1, lbl_00110D7C
	sw	$s1, 40($s0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffd
	and	$v0, $v1, $v0
	b	lbl_00110DA4
	sw	$v0, 12($s0)
lbl_00110D7C:
	ori	$v0, $v1, 0x2
	sd	$s2, 32($s0)
	sw	$v0, 12($s0)
	sw	$gp, 44($s0)
	lw	$v0, 12($s0)
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00110DA4
	sw	$s3, 48($s0)
	jal	sub_00110210
	move	$a0, $s0
lbl_00110DA4:
	jal	sub_00110578
	nop
	jal	sub_00110080
	move	$a0, $v0
	move	$v0, $zero
lbl_00110DB8:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00110DD8:
	addiu	$sp, $sp, -96
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	move	$s3, $a3
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$s4, 64($sp)
	sd	$ra, 80($sp)
	jal	sub_0010F420
	move	$s0, $a0
	move	$a0, $s0
	move	$s4, $v0
	move	$a1, $s1
	move	$a2, $s2
	jal	sub_00110CE0
	move	$a3, $s3
	beqz	$s4, lbl_00110E30
	move	$s0, $v0
	jal	sub_0010F470
	nop
lbl_00110E30:
	move	$v0, $s0
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a0
	sd	$s2, 32($sp)
	move	$s0, $a1
	sd	$ra, 48($sp)
	move	$s2, $a2
	jal	sub_00121218
	lui	$a1, 0x8ca
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	bnezl	$s0, lbl_00110E90
	sw	$v0, 0($s0)
lbl_00110E90:
	beqz	$s2, lbl_00110EE8
	lui	$v1, 0x8ca
	lui	$a1, 0x8ca
	multu	$v0, $v1
	mflo	$a2
	mfhi	$v1
	dsll32	$a2, $a2, 0x0
	dsll32	$v1, $v1, 0x0
	dsrl32	$a2, $a2, 0x0
	or	$v1, $v1, $a2
	dsubu	$v1, $s1, $v1
	dsll	$v0, $v1, 0x5
	dsubu	$v0, $v0, $v1
	dsll	$a0, $v0, 0x6
	dsubu	$a0, $a0, $v0
	dsll	$a0, $a0, 0x3
	daddu	$a0, $a0, $v1
	jal	sub_00121218
	dsll	$a0, $a0, 0x6
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	sw	$v0, 0($s2)
lbl_00110EE8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00110F00:
	addiu	$sp, $sp, -32
	lui	$v0, 0x8ca
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 16($sp)
	move	$a0, $a1
	multu1	$s0, $v0
	multu	$a0, $v0
	lui	$a1, 0xf
	ori	$a1, $a1, 0x4240
	mfhi1	$s0
	mflo	$a2
	dsll32	$s0, $s0, 0x0
	dsll32	$a2, $a2, 0x0
	mfhi	$a0
	dsrl32	$a2, $a2, 0x0
	dsll32	$a0, $a0, 0x0
	or	$a0, $a0, $a2
	mflo1	$a2
	dsll32	$a2, $a2, 0x0
	dsrl32	$a2, $a2, 0x0
	jal	sub_00121218
	or	$s0, $s0, $a2
	daddu	$v0, $s0, $v0
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	bltz	$a0, lbl_00110F8C
	sd	$ra, 0($sp)
	jal	sub_00121D00
	nop
	b	lbl_00110FA0
	mov.s	$f1, $f0
lbl_00110F8C:
	dsrl	$v0, $a0, 0x1
	andi	$a0, $a0, 0x1
	jal	sub_00121D00
	or	$a0, $a0, $v0
	add.s	$f1, $f0, $f0
lbl_00110FA0:
	lui	$at, 0x4d0c
	ori	$at, $at, 0xa000
	mtc1	$at, $f0
	ld	$ra, 0($sp)
	nop
	nop
	div.s	$f0, $f0, $f1
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	lui	$at, 0x4d0c
	ori	$at, $at, 0xa000
	mtc1	$at, $f0
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	nop
	nop
	div.s	$f12, $f0, $f12
	jal	sub_00121F00
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00111000:
	lui	$a1, 0x14
	lui	$v1, 0x14
	addiu	$v0, $a1, 30080
	li	$a0, 63
	sw	$v0, 31104($v1)
	addiu	$v1, $v0, 1024
	addiu	$v0, $v0, 1008
	nop
lbl_00111020:
	sw	$v1, 0($v0)
	addiu	$a0, $a0, -1
	addiu	$v0, $v0, -16
	addiu	$v1, $v1, -16
	nop
	bgez	$a0, lbl_00111020
	nop
	addiu	$v1, $a1, 30080
	move	$v0, $zero
	jr	$ra
	sw	$zero, 1008($v1)
	nop
	addiu	$sp, $sp, -32
	andi	$a0, $a0, 0xfe
	sd	$s0, 0($sp)
	move	$s0, $a3
	sd	$ra, 16($sp)
	sll	$v1, $s0, 0x4
	or	$v1, $v1, $a0
	lw	$v0, 8($s0)
	lw	$a3, 12($s0)
	jalr	$v0
	ori	$a0, $v1, 0x1
	bnez	$v0, lbl_001110A0
	ld	$ra, 16($sp)
	lui	$v1, 0x14
	li	$v0, -1
	lw	$a0, 31104($v1)
	sw	$s0, 31104($v1)
	sw	$a0, 0($s0)
	sw	$zero, 4($s0)
	ld	$ra, 16($sp)
lbl_001110A0:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_001110B0:
	addiu	$sp, $sp, -128
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	move	$s6, $a0
	sd	$s4, 64($sp)
	move	$s5, $a2
	sd	$ra, 112($sp)
	move	$s4, $a1
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	bnez	$s4, lbl_001110F0
	sd	$s0, 0($sp)
	lui	$v0, 0x8000
	b	lbl_001111B4
	ori	$v0, $v0, 0x16
lbl_001110F0:
	jal	sub_0010F420
	lui	$s2, 0x14
	lw	$s0, 31104($s2)
	beqz	$s0, lbl_0011110C
	move	$s3, $v0
	lw	$v0, 0($s0)
	sw	$v0, 31104($s2)
lbl_0011110C:
	bnez	$s0, lbl_00111130
	nop
	beqz	$s3, lbl_00111124
	nop
	jal	sub_0010F470
	nop
lbl_00111124:
	lui	$v0, 0x8000
	b	lbl_001111B4
	ori	$v0, $v0, 0x8005
lbl_00111130:
	jal	sub_001106B8
	nop
	move	$s1, $v0
	bgezl	$s1, lbl_0011116C
	sw	$s4, 8($s0)
	lw	$v0, 31104($s2)
	sw	$s0, 31104($s2)
	sw	$v0, 0($s0)
	sw	$zero, 4($s0)
	beqz	$s3, lbl_001111B4
	move	$v0, $s1
	jal	sub_0010F470
	nop
	b	lbl_001111B4
	move	$v0, $s1
lbl_0011116C:
	lui	$a2, 0x11
	sw	$s5, 12($s0)
	addiu	$a2, $a2, 4176
	sw	$s1, 4($s0)
	move	$a1, $s6
	move	$a0, $s1
	jal	sub_00110DD8
	move	$a3, $s0
	jal	sub_00110950
	move	$a0, $s1
	beqz	$s3, lbl_001111A8
	sll	$v0, $s0, 0x4
	jal	sub_0010F470
	nop
	sll	$v0, $s0, 0x4
lbl_001111A8:
	andi	$v1, $s1, 0xfe
	or	$v0, $v0, $v1
	ori	$v0, $v0, 0x1
lbl_001111B4:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop
lbl_001111E0:
	addiu	$sp, $sp, -112
	sd	$s5, 80($sp)
	sd	$s4, 64($sp)
	move	$s5, $a0
	sd	$s3, 48($sp)
	move	$s4, $a2
	sd	$ra, 96($sp)
	move	$s3, $a1
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	bnez	$s3, lbl_0011121C
	sd	$s0, 0($sp)
	lui	$v0, 0x8000
	b	lbl_001112AC
	ori	$v0, $v0, 0x16
lbl_0011121C:
	lui	$s2, 0x14
	lw	$s0, 31104($s2)
	beqz	$s0, lbl_00111234
	nop
	lw	$v0, 0($s0)
	sw	$v0, 31104($s2)
lbl_00111234:
	bnez	$s0, lbl_00111248
	nop
	lui	$v0, 0x8000
	b	lbl_001112AC
	ori	$v0, $v0, 0x8005
lbl_00111248:
	jal	sub_00110648
	nop
	move	$s1, $v0
	bgezl	$s1, lbl_00111274
	sw	$s3, 8($s0)
	lw	$v1, 31104($s2)
	sw	$s0, 31104($s2)
	sw	$v1, 0($s0)
	sw	$zero, 4($s0)
	b	lbl_001112B0
	ld	$ra, 96($sp)
lbl_00111274:
	lui	$a2, 0x11
	sw	$s4, 12($s0)
	addiu	$a2, $a2, 4176
	sw	$s1, 4($s0)
	move	$a1, $s5
	move	$a0, $s1
	jal	sub_00110CE0
	move	$a3, $s0
	jal	sub_001108A0
	move	$a0, $s1
	sll	$v0, $s0, 0x4
	andi	$v1, $s1, 0xfe
	or	$v0, $v0, $v1
	ori	$v0, $v0, 0x1
lbl_001112AC:
	ld	$ra, 96($sp)
lbl_001112B0:
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 16($sp)
	srl	$v0, $s0, 0x8
	sd	$s2, 32($sp)
	sd	$ra, 48($sp)
	jal	sub_0010F420
	sll	$s1, $v0, 0x4
	bltz	$s0, lbl_00111310
	move	$s2, $v0
	lw	$v0, 4($s1)
	xor	$v0, $s0, $v0
	andi	$v0, $v0, 0xff
	beqz	$v0, lbl_0011132C
	nop
lbl_00111310:
	beqz	$s2, lbl_00111320
	nop
	jal	sub_0010F470
	nop
lbl_00111320:
	lui	$v0, 0x8000
	b	lbl_00111360
	ori	$v0, $v0, 0x8002
lbl_0011132C:
	lw	$a0, 4($s1)
	jal	sub_001107A0
	nop
	lui	$v1, 0x14
	lw	$v0, 31104($v1)
	sw	$s1, 31104($v1)
	sw	$v0, 0($s1)
	sw	$zero, 4($s1)
	beqz	$s2, lbl_00111360
	move	$v0, $zero
	jal	sub_0010F470
	nop
	move	$v0, $zero
lbl_00111360:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -32
	srl	$v0, $a0, 0x8
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	bltz	$a0, lbl_001113A4
	sll	$s0, $v0, 0x4
	lw	$v0, 4($s0)
	xor	$v0, $a0, $v0
	andi	$v0, $v0, 0xff
	beqz	$v0, lbl_001113B0
	nop
lbl_001113A4:
	lui	$v0, 0x8000
	b	lbl_001113E0
	ori	$v0, $v0, 0x8002
lbl_001113B0:
	lw	$a0, 4($s0)
	jal	sub_00110700
	nop
	move	$a0, $v0
	bnez	$a0, lbl_001113E0
	move	$v0, $a0
	lui	$v0, 0x14
	lw	$v1, 31104($v0)
	sw	$s0, 31104($v0)
	sw	$v1, 0($s0)
	sw	$zero, 4($s0)
	move	$v0, $a0
lbl_001113E0:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
lbl_001113F0:
	lui	$v0, 0x13
	lui	$v1, 0x13
	lui	$a0, 0x14
	sw	$zero, 2184($v0)
	sw	$zero, 2188($v1)
	addiu	$a0, $a0, 31112
	move	$a1, $zero
	j	sub_00125310
	li	$a2, 512
	nop
	addiu	$sp, $sp, -80
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	sd	$ra, 64($sp)
	jal	sub_0010F420
	move	$s0, $a0
	lui	$v1, 0x13
	lui	$a1, 0x13
	lw	$s3, 2184($v1)
	move	$s2, $v0
	sw	$s1, 2188($a1)
	move	$a0, $s0
	sw	$s0, 2184($v1)
	sll	$a2, $s1, 0x4
	jal	sub_00125310
	move	$a1, $zero
	beqz	$s2, lbl_00111478
	move	$v0, $s3
	jal	sub_0010F470
	nop
	move	$v0, $s3
lbl_00111478:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
lbl_00111498:
	addiu	$sp, $sp, -80
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	move	$s3, $a2
	sd	$s0, 0($sp)
	move	$s2, $a1
	sd	$ra, 64($sp)
	move	$s0, $a0
	bgez	$s0, lbl_001114DC
	sd	$s1, 16($sp)
	lui	$v0, 0x7fff
	lui	$v1, 0x14
	ori	$v0, $v0, 0xffff
	addiu	$s1, $v1, 31112
	and	$s0, $s0, $v0
	b	lbl_001114EC
	li	$v0, 32
lbl_001114DC:
	lui	$v0, 0x13
	lui	$v1, 0x13
	lw	$s1, 2184($v0)
	lw	$v0, 2188($v1)
lbl_001114EC:
	sltu	$v0, $s0, $v0
	bnez	$v0, lbl_00111504
	nop
	lui	$v0, 0x8000
	b	lbl_00111534
	ori	$v0, $v0, 0x69
lbl_00111504:
	jal	sub_0010F420
	nop
	sll	$v1, $s0, 0x4
	addu	$v1, $v1, $s1
	sw	$s2, 0($v1)
	sw	$s3, 4($v1)
	move	$a0, $gp
	beqz	$v0, lbl_00111530
	sw	$a0, 8($v1)
	jal	sub_0010F470
	nop
lbl_00111530:
	move	$v0, $zero
lbl_00111534:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
lbl_00111550:
	bgezl	$a0, lbl_00111574
	lui	$v0, 0x13
	lui	$v0, 0x7fff
	lui	$v1, 0x14
	ori	$v0, $v0, 0xffff
	addiu	$a1, $v1, 31112
	and	$a0, $a0, $v0
	b	lbl_00111580
	li	$v0, 32
lbl_00111574:
	lui	$v1, 0x13
	lw	$a1, 2184($v0)
	lw	$v0, 2188($v1)
lbl_00111580:
	sltu	$v0, $a0, $v0
	bnez	$v0, lbl_00111594
	sll	$v1, $a0, 0x4
	jr	$ra
	li	$v0, -105
lbl_00111594:
	move	$v0, $zero
	addu	$v1, $v1, $a1
	jr	$ra
	sw	$zero, 0($v1)
	nop

sub_001115A8:
	addiu	$sp, $sp, -80
	sd	$s3, 48($sp)
	sd	$ra, 64($sp)
	move	$s3, $a1
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	beqz	$a0, lbl_001115D8
	sd	$s0, 0($sp)
	lui	$v0, 0x14
	li	$v1, 32
	b	lbl_001115E8
	addiu	$v0, $v0, 31112
lbl_001115D8:
	lui	$v0, 0x13
	lui	$v1, 0x13
	lw	$v0, 2184($v0)
	lw	$v1, 2188($v1)
lbl_001115E8:
	move	$s2, $gp
	blez	$v1, lbl_0011162C
	move	$s0, $v0
	move	$s1, $v1
lbl_001115F8:
	lw	$v0, 0($s0)
	beqzl	$v0, lbl_00111624
	addiu	$s1, $s1, -1
	lw	$v0, 8($s0)
	move	$v1, $gp
	move	$gp, $v0
	lw	$a2, 0($s0)
	move	$a0, $s3
	jalr	$a2
	lw	$a1, 4($s0)
	addiu	$s1, $s1, -1
lbl_00111624:
	bnez	$s1, lbl_001115F8
	addiu	$s0, $s0, 16
lbl_0011162C:
	move	$v0, $gp
	move	$gp, $s2
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_00111650:
	lui	$v0, 0x13
	jr	$ra
	sw	$zero, 2192($v0)
	nop

sub_00111660:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0010F420
	nop
	lui	$v1, 0x1000
	li	$a0, 4
	ori	$v1, $v1, 0xf000
	sw	$a0, 0($v1)
	sync
	beqz	$v0, lbl_00111698
	lui	$v1, 0x1000
	jal	sub_0010F470
	nop
	lui	$v1, 0x1000
lbl_00111698:
	ori	$v1, $v1, 0xf000
	nop
lbl_001116A0:
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x4
	nop
	nop
	nop
	beqz	$v0, lbl_001116A0
	nop
	jal	sub_0010F420
	nop
	lui	$v1, 0x1000
	li	$a0, 4
	ori	$v1, $v1, 0xf000
	sw	$a0, 0($v1)
	sync
	beqz	$v0, lbl_001116E8
	ld	$ra, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 16
lbl_001116E8:
	jr	$ra
	addiu	$sp, $sp, 16

sub_001116F0:
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	move	$a0, $sp
	sw	$zero, 0($sp)
	jal	sub_00106C50
	ori	$a1, $sp, 0x8
	jal	sub_0010F420
	nop
	lui	$v1, 0x1000
	li	$a0, 4
	ori	$v1, $v1, 0xf000
	sw	$a0, 0($v1)
	sync
	beqz	$v0, lbl_00111738
	lui	$v1, 0x1000
	jal	sub_0010F470
	nop
	lui	$v1, 0x1000
lbl_00111738:
	ori	$v1, $v1, 0xf000
	nop
lbl_00111740:
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x4
	bnez	$v0, lbl_0011175C
	nop
	lw	$v0, 0($sp)
	beqz	$v0, lbl_00111740
	nop
lbl_0011175C:
	jal	sub_0010F420
	nop
	li	$v1, 4
	lui	$at, 0x1001
	sw	$v1, -4096($at)
	sync
	beqz	$v0, lbl_00111784
	nop
	jal	sub_0010F470
	nop
lbl_00111784:
	ld	$v0, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111798:
	addiu	$sp, $sp, -64
	addiu	$a0, $a0, -1
	sd	$s2, 32($sp)
	sltiu	$a0, $a0, 2
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	move	$s1, $a1
	beqz	$a0, lbl_001117F8
	sd	$s0, 0($sp)
	lui	$s0, 0x13
	lw	$v0, 2192($s0)
	bnez	$v0, lbl_001117E8
	move	$a0, $s1
	jal	sub_001120E0
	nop
	beqz	$v0, lbl_001117F8
	li	$v0, 1
	sw	$v0, 2192($s0)
	move	$a0, $s1
lbl_001117E8:
	jal	sub_00111E98
	move	$a1, $s2
	b	lbl_00111800
	ld	$ra, 48($sp)
lbl_001117F8:
	li	$v0, -1
	ld	$ra, 48($sp)
lbl_00111800:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00111818:
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	move	$s1, $a1
	bnez	$a0, lbl_00111870
	sd	$s0, 0($sp)
	lui	$s0, 0x13
	lw	$v0, 2192($s0)
	bnez	$v0, lbl_00111860
	move	$a0, $s1
	jal	sub_001120E0
	nop
	beqz	$v0, lbl_00111870
	li	$v0, 1
	sw	$v0, 2192($s0)
	move	$a0, $s1
lbl_00111860:
	jal	sub_00112010
	move	$a1, $s2
	b	lbl_00111878
	ld	$ra, 48($sp)
lbl_00111870:
	li	$v0, -1
	ld	$ra, 48($sp)
lbl_00111878:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00124698
	nop
	li	$v1, 5
	ld	$ra, 0($sp)
	sw	$v1, 0($v0)
	li	$v0, -1
	jr	$ra
	addiu	$sp, $sp, 16

sub_001118B8:
	jr	$ra
	li	$v0, -1
	jr	$ra
	li	$v0, -1

sub_001118C8:
	jr	$ra
	li	$v0, -1

sub_001118D0:
	addiu	$sp, $sp, -64
	sd	$ra, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	mfc0	$s1, $12
	lui	$v0, 0x1
	and	$s1, $s1, $v0
	beqz	$s1, lbl_0011191C
	lui	$s2, 0x13
lbl_001118F8:
	di
	sync.p
	mfc0	$v0, $12
	lui	$v1, 0x1
	and	$v0, $v0, $v1
	bnez	$v0, lbl_001118F8
	nop
	b	lbl_00111920
	lw	$v0, 2196($s2)
lbl_0011191C:
	lw	$v0, 2196($s2)
lbl_00111920:
	jal	sub_001068C0
	addu	$s0, $v0, $a0
	sltu	$v0, $v0, $s0
	beqz	$v0, lbl_00111958
	lw	$v0, 2196($s2)
	jal	sub_00124698
	nop
	li	$v1, 12
	beqz	$s1, lbl_0011194C
	sw	$v1, 0($v0)
	ei
lbl_0011194C:
	lui	$v0, 0xffff
	b	lbl_00111964
	ori	$v0, $v0, 0xffff
lbl_00111958:
	beqz	$s1, lbl_00111964
	sw	$s0, 2196($s2)
	ei
lbl_00111964:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00111980:
	jr	$ra
	li	$v0, 1

sub_00111988:
	li	$v0, 8192
	sd	$zero, 72($a1)
	sw	$v0, 4($a1)
	jr	$ra
	move	$v0, $zero
	nop
lbl_001119A0:
	jr	$ra
	li	$v0, 1

sub_001119A8:
	addiu	$sp, $sp, -16
	li	$v0, 1
	bne	$a0, $v0, lbl_001119C0
	sd	$ra, 0($sp)
	jal	sub_0010FAD8
	move	$a0, $a1
lbl_001119C0:
	ld	$ra, 0($sp)
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00124698
	nop
	li	$v1, 5
	ld	$ra, 0($sp)
	sw	$v1, 0($v0)
	li	$v0, -1
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00124698
	nop
	li	$v1, 5
	ld	$ra, 0($sp)
	sw	$v1, 0($v0)
	li	$v0, -1
	jr	$ra
	addiu	$sp, $sp, 16

sub_00111A20:
	lui	$v0, 0x14
	addiu	$sp, $sp, -32
	lui	$v1, 0x2000
	addiu	$v0, $v0, 31624
	andi	$a0, $a0, 0xffff
	or	$v0, $v0, $v1
	sw	$a1, 4($sp)
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	li	$a0, 1
	sw	$a2, 8($sp)
	jal	sub_00106D10
	sw	$v0, 12($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, 2
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111A90:
	sll	$a1, $a1, 0x18
	addiu	$sp, $sp, -32
	sra	$a1, $a1, 0x18
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	li	$a0, 3
	sd	$ra, 16($sp)
	jal	sub_00106D10
	move	$a1, $sp
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00111AC0:
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, 4
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -48
	andi	$a0, $a0, 0xff
	sw	$a1, 4($sp)
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 32($sp)
	li	$a0, 32
	jal	sub_00106D10
	sw	$a2, 8($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, 33
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111B40:
	addiu	$sp, $sp, -32
	move	$v0, $a1
	andi	$a2, $a2, 0xffff
	sw	$a0, 0($sp)
	sd	$ra, 16($sp)
	move	$a1, $sp
	sw	$v0, 4($sp)
	li	$a0, -5
	jal	sub_00106D10
	sw	$a2, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111B78:
	addiu	$sp, $sp, -32
	move	$v0, $a1
	andi	$a2, $a2, 0xffff
	sw	$a0, 0($sp)
	sd	$ra, 16($sp)
	move	$a1, $sp
	sw	$v0, 4($sp)
	li	$a0, -6
	jal	sub_00106D10
	sw	$a2, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	sll	$a1, $a1, 0x18
	addiu	$sp, $sp, -32
	sra	$a1, $a1, 0x18
	sw	$a0, 0($sp)
	sw	$a1, 4($sp)
	li	$a0, -7
	sd	$ra, 16($sp)
	jal	sub_00106D10
	move	$a1, $sp
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, -8
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, -9
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111C30:
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a1, $sp
	sd	$ra, 16($sp)
	jal	sub_00106D10
	li	$a0, 16
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00111C58:
	lui	$v0, 0x14
	addiu	$v1, $v0, 31680
	sw	$a0, 31680($v0)
	addiu	$a0, $v1, 16
	move	$v0, $v1
	sw	$a0, 8($v1)
	sw	$zero, 4($v1)
	jr	$ra
	sw	$a0, 12($v1)
	nop

sub_00111C80:
	move	$a1, $a0
	lw	$v0, 4($a1)
	lw	$a0, 12($a1)
	lw	$v1, 0($a1)
	addiu	$v0, $v0, 1
	addiu	$a0, $a0, 1
	sw	$v0, 4($a1)
	addiu	$v1, $v1, 16
	addu	$v1, $a1, $v1
	bne	$a0, $v1, lbl_00111CB4
	sw	$a0, 12($a1)
	addiu	$v0, $a1, 16
	sw	$v0, 12($a1)
lbl_00111CB4:
	jr	$ra
	nop
	nop

sub_00111CC0:
	move	$a1, $a0
	lw	$v0, 4($a1)
	lw	$a0, 8($a1)
	lw	$v1, 0($a1)
	addiu	$v0, $v0, -1
	addiu	$a0, $a0, 1
	sw	$v0, 4($a1)
	addiu	$v1, $v1, 16
	addu	$v1, $a1, $v1
	bne	$a0, $v1, lbl_00111CF4
	sw	$a0, 8($a1)
	addiu	$v0, $a1, 16
	sw	$v0, 8($a1)
lbl_00111CF4:
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -64
	li	$v0, 3
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a2
	sd	$ra, 48($sp)
	move	$s0, $a1
	beq	$a0, $v0, lbl_00111E0C
	sd	$s2, 32($sp)
	slti	$v0, $a0, 4
	bnez	$v0, lbl_00111D40
	li	$v0, 4
	beq	$a0, $v0, lbl_00111E5C
	ld	$ra, 48($sp)
	b	lbl_00111E84
	ld	$s2, 32($sp)
lbl_00111D40:
	blez	$a0, lbl_00111E80
	ld	$ra, 48($sp)
	beqzl	$s0, lbl_00111DB0
	lw	$s2, 20($s1)
	lw	$v0, 8($s1)
	addu	$v0, $v0, $s0
	sltiu	$v0, $v0, 321
	bnez	$v0, lbl_00111D6C
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20328
lbl_00111D6C:
	lw	$v0, 8($s1)
	andi	$a2, $s0, 0xffff
	lw	$a1, 20($s1)
	lw	$a0, 0($s1)
	jal	sub_00111B40
	addu	$a1, $a1, $v0
	move	$s0, $v0
	bgez	$s0, lbl_00111D9C
	nop
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20368
lbl_00111D9C:
	lw	$v0, 8($s1)
	addu	$v0, $v0, $s0
	sw	$v0, 8($s1)
	b	lbl_00111E80
	ld	$ra, 48($sp)
lbl_00111DB0:
	li	$s0, 12
	lhu	$v0, 0($s2)
	slt	$v0, $s0, $v0
	beqz	$v0, lbl_00111E00
	move	$v1, $s2
	b	lbl_00111DD4
	lw	$a0, 24($s1)
	nop
lbl_00111DD0:
	lw	$a0, 24($s1)
lbl_00111DD4:
	addu	$v0, $v1, $s0
	lbu	$v1, 0($v0)
	addiu	$s0, $s0, 1
	lw	$v0, 12($a0)
	sb	$v1, 0($v0)
	jal	sub_00111C80
	lw	$a0, 24($s1)
	lhu	$v0, 0($s2)
	slt	$v0, $s0, $v0
	bnezl	$v0, lbl_00111DD0
	lw	$v1, 20($s1)
lbl_00111E00:
	sw	$zero, 8($s1)
	b	lbl_00111E80
	ld	$ra, 48($sp)
lbl_00111E0C:
	lw	$a2, 4($s1)
	lw	$a0, 0($s1)
	lw	$a1, 16($s1)
	jal	sub_00111B78
	andi	$a2, $a2, 0xffff
	move	$a1, $v0
	bgezl	$a1, lbl_00111E40
	lw	$v0, 16($s1)
	lui	$a0, 0x13
	jal	sub_00108878
	addiu	$a0, $a0, 20392
	b	lbl_00111E78
	nop
lbl_00111E40:
	lw	$v1, 4($s1)
	addu	$v0, $v0, $a1
	subu	$v1, $v1, $a1
	sw	$v0, 16($s1)
	sw	$v1, 4($s1)
	b	lbl_00111E80
	ld	$ra, 48($sp)
lbl_00111E5C:
	lw	$v0, 4($s1)
	beqz	$v0, lbl_00111E78
	nop
	lui	$a0, 0x13
	lw	$a1, 4($s1)
	jal	sub_00108878
	addiu	$a0, $a0, 20416
lbl_00111E78:
	sw	$zero, 12($s1)
	ld	$ra, 48($sp)
lbl_00111E80:
	ld	$s2, 32($sp)
lbl_00111E84:
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00111E98:
	addiu	$sp, $sp, -128
	sd	$s5, 80($sp)
	sd	$s4, 64($sp)
	lui	$s5, 0x14
	sd	$s3, 48($sp)
	move	$s4, $zero
	sd	$s2, 32($sp)
	addiu	$s3, $s5, 31952
	sd	$s1, 16($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	move	$s1, $zero
	sd	$ra, 112($sp)
	move	$s0, $a0
	sd	$s6, 96($sp)
	lw	$v0, 12($s3)
	bnez	$v0, lbl_00111FE4
	li	$v0, -1
	jal	sub_0010F420
	nop
	move	$s6, $v0
	lui	$a0, 0x2000
	lui	$v0, 0x14
	li	$v1, 1
	addiu	$v0, $v0, 32000
	sw	$v1, 12($s3)
	or	$a2, $v0, $a0
	li	$t0, -1
	sw	$a2, 16($s3)
	li	$a3, 10
	li	$a1, 13
	addiu	$a0, $a2, 12
lbl_00111F18:
	addiu	$s2, $s2, -1
	beql	$s2, $t0, lbl_00111F68
	addiu	$s0, $s5, 31952
	lb	$v0, 0($s0)
	bne	$v0, $a3, lbl_00111F48
	lbu	$v1, 0($s0)
	sb	$a1, 0($a0)
	addiu	$s1, $s1, 1
	slti	$v0, $s1, 256
	beqz	$v0, lbl_00111F64
	addiu	$a0, $a0, 1
	lbu	$v1, 0($s0)
lbl_00111F48:
	sb	$v1, 0($a0)
	addiu	$s1, $s1, 1
	addiu	$s0, $s0, 1
	addiu	$a0, $a0, 1
	slti	$v0, $s1, 256
	bnez	$v0, lbl_00111F18
	addiu	$s4, $s4, 1
lbl_00111F64:
	addiu	$s0, $s5, 31952
lbl_00111F68:
	addiu	$v0, $s1, 12
	sw	$v0, 4($s0)
	lw	$v1, 4($s0)
	lb	$a1, 7($a2)
	lw	$a0, 31952($s5)
	jal	sub_00111A90
	sh	$v1, 0($a2)
	bgez	$v0, lbl_00111FA8
	nop
	sw	$zero, 12($s0)
	beqz	$s6, lbl_00111FE4
	li	$v0, -1
	jal	sub_0010F470
	nop
	b	lbl_00111FE4
	li	$v0, -1
lbl_00111FA8:
	lw	$v0, 12($s0)
	beqz	$v0, lbl_00111FD0
	move	$s1, $s5
	nop
lbl_00111FB8:
	lw	$a0, 31952($s1)
	jal	sub_00111AC0
	nop
	lw	$v0, 12($s0)
	bnez	$v0, lbl_00111FB8
	nop
lbl_00111FD0:
	beqz	$s6, lbl_00111FE4
	move	$v0, $s4
	jal	sub_0010F470
	nop
	move	$v0, $s4
lbl_00111FE4:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00112010:
	addiu	$sp, $sp, -96
	move	$v1, $zero
	sd	$s4, 64($sp)
	sd	$s2, 32($sp)
	move	$s4, $a0
	sd	$ra, 80($sp)
	move	$s2, $a1
	sd	$s3, 48($sp)
	sd	$s1, 16($sp)
	blez	$s2, lbl_001120BC
	sd	$s0, 0($sp)
	lui	$s3, 0x14
	lui	$v0, 0x14
	nop
lbl_00112048:
	addiu	$s1, $v1, 1
	lw	$a0, 31976($v0)
	addu	$s0, $s4, $v1
	nop
lbl_00112058:
	lw	$v0, 4($a0)
	nop
	nop
	nop
	nop
	beqz	$v0, lbl_00112058
	nop
	addiu	$a1, $s3, 31952
	lw	$v0, 24($a1)
	lw	$v1, 8($v0)
	lbu	$a0, 0($v1)
	sb	$a0, 0($s0)
	jal	sub_00111CC0
	lw	$a0, 24($a1)
	lb	$v1, 0($s0)
	li	$v0, 10
	beq	$v1, $v0, lbl_001120A8
	li	$v0, 13
	bne	$v1, $v0, lbl_001120B0
	move	$v1, $s1
lbl_001120A8:
	b	lbl_001120C0
	move	$v0, $s1
lbl_001120B0:
	slt	$v0, $v1, $s2
	bnez	$v0, lbl_00112048
	lui	$v0, 0x14
lbl_001120BC:
	move	$v0, $v1
lbl_001120C0:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_001120E0:
	addiu	$sp, $sp, -48
	move	$a0, $zero
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_00106B60
	lui	$s0, 0x14
	addiu	$s1, $s0, 31952
	lui	$a2, 0x11
	li	$a0, 528
	addiu	$a2, $a2, 7424
	jal	sub_00111A20
	move	$a1, $s1
	sw	$v0, 31952($s0)
	lw	$v0, 31952($s0)
	bgez	$v0, lbl_0011212C
	lui	$a0, 0x14
	b	lbl_00112188
	move	$v0, $zero
lbl_0011212C:
	lui	$v0, 0x14
	sw	$zero, 12($s1)
	lui	$v1, 0x2000
	addiu	$a0, $a0, 32320
	addiu	$v0, $v0, 32000
	or	$v0, $v0, $v1
	sw	$zero, 4($s1)
	or	$a0, $a0, $v1
	sw	$zero, 8($s1)
	sw	$a0, 20($s1)
	li	$a2, 528
	sw	$v0, 16($s1)
	li	$a1, 69
	li	$v1, 72
	li	$a0, 256
	sh	$a2, 4($v0)
	sb	$a1, 6($v0)
	sb	$v1, 7($v0)
	sw	$zero, 8($v0)
	jal	sub_00111C58
	sh	$zero, 2($v0)
	sw	$v0, 24($s1)
	li	$v0, 1
lbl_00112188:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lw	$v0, 16($a0)
	lw	$a2, 28($a1)
	lw	$v1, 20($a0)
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $a2
	jr	$ra
	sw	$v1, 0($v0)
	nop
	lw	$v0, 16($a0)
	jr	$ra
	sw	$v0, 8($a1)
	nop

sub_001121D0:
	lui	$v0, 0x15
	sll	$a0, $a0, 0x2
	addiu	$v0, $v0, -32256
	addu	$a0, $a0, $v0
	jr	$ra
	lw	$v0, 0($a0)
lbl_001121E8:
	lui	$v0, 0x15
	sll	$a0, $a0, 0x2
	addiu	$v0, $v0, -32256
	addu	$a0, $a0, $v0
	move	$v0, $a1
	jr	$ra
	sw	$a1, 0($a0)
	nop
	lui	$v0, 0x15
	jr	$ra
	addiu	$v0, $v0, -32680
	nop

sub_00112218:
	addiu	$sp, $sp, -96
	sd	$ra, 80($sp)
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	jal	sub_0010F420
	sd	$s0, 0($sp)
	lui	$t2, 0x13
	lw	$v0, 2200($t2)
	beqz	$v0, lbl_00112268
	lui	$s3, 0x14
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 96
lbl_00112268:
	lui	$a1, 0x15
	lui	$v0, 0x2000
	addiu	$a1, $a1, -32768
	addiu	$a2, $s3, 32640
	lui	$s2, 0x15
	or	$a1, $a1, $v0
	or	$a2, $a2, $v0
	li	$v1, 1
	lui	$t1, 0x15
	lui	$a0, 0x15
	addiu	$v0, $s2, -32680
	sw	$v1, 2200($t2)
	addiu	$a0, $a0, -32256
	addiu	$t0, $t1, -32640
	sw	$a2, -32680($s2)
	li	$a3, 32
	sw	$a0, 28($v0)
	move	$v1, $t0
	sw	$a1, 4($v0)
	sw	$a3, 16($v0)
	addiu	$a0, $v1, 384
	sw	$zero, 8($v0)
	lui	$s4, 0x15
	sw	$t0, 12($v0)
	sw	$zero, 20($v0)
	sw	$zero, 24($v0)
lbl_001122D0:
	sw	$zero, 0($v1)
	sw	$zero, 4($v1)
	addiu	$v1, $v1, 12
	slt	$v0, $v1, $a0
	nop
	bnez	$v0, lbl_001122D0
	nop
	lui	$v0, 0x15
	li	$s0, 31
	addiu	$v0, $v0, -32256
	addiu	$v0, $v0, 124
	nop
lbl_00112300:
	sw	$zero, 0($v0)
	addiu	$s0, $s0, -1
	addiu	$v0, $v0, -4
	nop
	nop
	bgez	$s0, lbl_00112300
	nop
	lui	$v0, 0x11
	lui	$v1, 0x11
	addiu	$v0, $v0, 8640
	addiu	$a0, $t1, -32640
	addiu	$v1, $v1, 8608
	addiu	$s1, $s2, -32680
	sw	$v0, -32640($t1)
	li	$s0, 32
	sw	$v1, 12($a0)
	sw	$s1, 16($a0)
	jal	sub_0010F470
	sw	$s1, 4($a0)
	jal	sub_00106B60
	move	$a0, $zero
	lui	$v0, 0x1000
	ori	$v0, $v0, 0xe010
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0x20
	beqz	$v1, lbl_00112378
	lui	$v0, 0x1000
	lui	$at, 0x1001
	sw	$s0, -8176($at)
	lui	$v0, 0x1000
lbl_00112378:
	ori	$v0, $v0, 0xc000
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0x100
	bnez	$v1, lbl_00112398
	lui	$a1, 0x11
	jal	sub_00106CC0
	nop
	lui	$a1, 0x11
lbl_00112398:
	li	$a0, 5
	addiu	$a1, $a1, 10112
	jal	sub_001065F0
	move	$a2, $zero
	lui	$v1, 0x15
	li	$a0, 5
	jal	sub_00106EA8
	sw	$v0, -32684($v1)
	lui	$a0, 0x8000
	jal	sub_00106CF0
	nop
	beqz	$v0, lbl_0011240C
	sw	$v0, 8($s1)
	addiu	$a1, $s4, -32704
	addiu	$v0, $s3, 32640
	ld	$ra, 80($sp)
	lui	$a0, 0x8000
	ld	$s4, 64($sp)
	li	$a2, 20
	ld	$s3, 48($sp)
	move	$a3, $zero
	ld	$s2, 32($sp)
	move	$t0, $zero
	ld	$s1, 16($sp)
	move	$t1, $zero
	ld	$s0, 0($sp)
	sw	$v0, 16($a1)
	j	sub_00112700
	addiu	$sp, $sp, 96
lbl_0011240C:
	lui	$s0, 0x2
lbl_00112410:
	jal	sub_00106CF0
	li	$a0, 4
	and	$v0, $v0, $s0
	beqz	$v0, lbl_00112410
	li	$a0, 2
	jal	sub_00106CF0
	addiu	$s0, $s2, -32680
	sw	$v0, 8($s0)
	lui	$a0, 0x8000
	jal	sub_00106CE0
	move	$a1, $v0
	lui	$a0, 0x8000
	move	$a1, $s0
	jal	sub_00106CE0
	ori	$a0, $a0, 0x1
	addiu	$v1, $s4, -32704
	addiu	$v0, $s3, 32640
	lui	$a0, 0x8000
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	move	$a1, $v1
	ld	$s3, 48($sp)
	ori	$a0, $a0, 0x2
	ld	$s2, 32($sp)
	li	$a2, 20
	ld	$s1, 16($sp)
	move	$a3, $zero
	ld	$s0, 0($sp)
	move	$t0, $zero
	sw	$v0, 16($v1)
	move	$t1, $zero
	sw	$zero, 12($v1)
	j	sub_00112700
	addiu	$sp, $sp, 96

sub_00112498:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00106E40
	li	$a0, 5
	lui	$v1, 0x15
	li	$a0, 5
	jal	sub_00106610
	lw	$a1, -32684($v1)
	lui	$v1, 0x13
	ld	$ra, 0($sp)
	sw	$zero, 2200($v1)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	lui	$v1, 0x15
	addiu	$v1, $v1, -32680
	lw	$v0, 20($v1)
	sw	$a1, 24($v1)
	jr	$ra
	sw	$a0, 20($v1)
	lui	$v1, 0x15
	addiu	$v1, $v1, -32680
	lw	$v0, 12($v1)
	sw	$a1, 16($v1)
	jr	$ra
	sw	$a0, 12($v1)

sub_00112500:
	move	$v0, $a0
	bgez	$v0, lbl_00112544
	move	$a3, $a1
	lui	$v1, 0x7fff
	li	$a1, 12
	ori	$v1, $v1, 0xffff
	lui	$a0, 0x15
	and	$v1, $v0, $v1
	addiu	$a0, $a0, -32680
	mult	$v1, $v1, $a1
	lw	$v0, 12($a0)
	addu	$v0, $v1, $v0
	sw	$a2, 4($v0)
	sw	$a3, 0($v0)
	move	$a1, $gp
	b	lbl_0011256C
	lw	$v0, 12($a0)
lbl_00112544:
	li	$v1, 12
	lui	$a0, 0x15
	mult	$v1, $v0, $v1
	addiu	$a0, $a0, -32680
	lw	$v0, 20($a0)
	addu	$v0, $v1, $v0
	sw	$a2, 4($v0)
	sw	$a3, 0($v0)
	move	$a1, $gp
	lw	$v0, 20($a0)
lbl_0011256C:
	addu	$v1, $v1, $v0
	jr	$ra
	sw	$a1, 8($v1)

sub_00112578:
	move	$a2, $a0
	bgez	$a2, lbl_001125AC
	li	$v0, 12
	lui	$v0, 0x7fff
	li	$a1, 12
	ori	$v0, $v0, 0xffff
	lui	$v1, 0x15
	and	$v0, $a2, $v0
	lw	$a0, -32668($v1)
	mult	$v0, $v0, $a1
	addu	$v0, $v0, $a0
	jr	$ra
	sw	$zero, 0($v0)
lbl_001125AC:
	lui	$a0, 0x15
	mult	$v0, $a2, $v0
	lw	$v1, -32660($a0)
	addu	$v0, $v0, $v1
	jr	$ra
	sw	$zero, 0($v0)
	nop

sub_001125C8:
	addiu	$sp, $sp, -128
	sd	$s1, 48($sp)
	sd	$s4, 96($sp)
	move	$s1, $a3
	sd	$s3, 80($sp)
	move	$s4, $a0
	sd	$s0, 32($sp)
	addiu	$v0, $s1, -16
	move	$s3, $a1
	sd	$ra, 112($sp)
	sd	$s2, 64($sp)
	move	$s0, $a2
	move	$a0, $t0
	sltiu	$v0, $v0, 97
	bnez	$v0, lbl_00112610
	move	$a1, $t2
	b	lbl_001126DC
	move	$v0, $zero
lbl_00112610:
	blez	$a1, lbl_00112658
	move	$s2, $zero
	lbu	$v0, 0($s0)
	sll	$v1, $a1, 0x8
	sw	$t1, 4($s0)
	li	$s2, 1
	or	$v0, $v0, $v1
	sw	$a0, 0($sp)
	sw	$v0, 0($s0)
	andi	$v1, $s3, 0x4
	sw	$t1, 4($sp)
	sw	$a1, 8($sp)
	beqz	$v1, lbl_00112664
	sw	$zero, 12($sp)
	jal	sub_001128C8
	nop
	b	lbl_00112668
	sll	$a1, $s2, 0x4
lbl_00112658:
	lbu	$v0, 0($s0)
	sw	$zero, 4($s0)
	sw	$v0, 0($s0)
lbl_00112664:
	sll	$a1, $s2, 0x4
lbl_00112668:
	lui	$v0, 0x15
	lw	$a0, -32672($v0)
	addu	$v1, $sp, $a1
	sw	$s0, 0($v1)
	addiu	$v0, $sp, 4
	addu	$v0, $v0, $a1
	addiu	$v1, $sp, 8
	sw	$a0, 0($v0)
	addu	$v1, $v1, $a1
	sw	$s1, 0($v1)
	addiu	$a0, $sp, 12
	addu	$a0, $a0, $a1
	sw	$s4, 8($s0)
	sb	$s1, 0($s0)
	li	$v0, 68
	sw	$v0, 0($a0)
	move	$a1, $s1
	move	$a0, $s0
	jal	sub_001128C8
	addiu	$s2, $s2, 1
	andi	$v0, $s3, 0x1
	beqz	$v0, lbl_001126D4
	move	$a1, $s2
	jal	sub_00106CB0
	move	$a0, $sp
	b	lbl_001126E0
	ld	$ra, 112($sp)
lbl_001126D4:
	jal	sub_00106CA0
	move	$a0, $sp
lbl_001126DC:
	ld	$ra, 112($sp)
lbl_001126E0:
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00112700:
	move	$v0, $a2
	move	$v1, $a3
	move	$t3, $t0
	addiu	$sp, $sp, -16
	move	$t2, $t1
	move	$a2, $a1
	sd	$ra, 0($sp)
	move	$a3, $v0
	move	$t0, $v1
	move	$t1, $t3
	jal	sub_001125C8
	move	$a1, $zero
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00112740:
	move	$v0, $a2
	move	$v1, $a3
	move	$t3, $t0
	addiu	$sp, $sp, -16
	move	$t2, $t1
	move	$a2, $a1
	sd	$ra, 0($sp)
	move	$a3, $v0
	move	$t0, $v1
	move	$t1, $t3
	jal	sub_001125C8
	li	$a1, 1
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -160
	lui	$v1, 0x15
	sd	$s1, 128($sp)
	sd	$ra, 144($sp)
	addiu	$s1, $v1, -32680
	sd	$s0, 112($sp)
	lw	$a3, -32680($v1)
	lbu	$v0, 0($a3)
	andi	$a1, $v0, 0xff
	beqz	$a1, lbl_001128B4
	move	$v0, $zero
	addiu	$v0, $a1, 15
	li	$v1, -1
	addiu	$a0, $a1, 30
	slt	$v1, $v1, $v0
	movn	$a0, $v0, $v1
	move	$a2, $a3
	sra	$a1, $a0, 0x4
	sb	$zero, 0($a3)
	blez	$a1, lbl_001127F4
	move	$a0, $a1
	move	$v1, $sp
lbl_001127D8:
	lq	$v0, 0($a2)
	addiu	$a0, $a0, -1
	addiu	$a2, $a2, 16
	sq	$v0, 0($v1)
	addiu	$v1, $v1, 16
	bnez	$a0, lbl_001127D8
	nop
lbl_001127F4:
	jal	sub_00106CD0
	nop
	lw	$v1, 8($sp)
	bgez	$v1, lbl_00112854
	nop
	lw	$v0, 8($sp)
	lui	$v1, 0x7fff
	ori	$v1, $v1, 0xffff
	lw	$a0, 16($s1)
	and	$a1, $v0, $v1
	slt	$a0, $a1, $a0
	beqz	$a0, lbl_001128A8
	li	$v0, 12
	lw	$v1, 12($s1)
	mult	$a1, $a1, $v0
	addu	$v0, $a1, $v1
	lw	$a2, 0($v0)
	beqz	$a2, lbl_001128A8
	nop
	lw	$v1, 8($v0)
	move	$s0, $gp
	move	$gp, $v1
	b	lbl_00112890
	lw	$v0, 12($s1)
lbl_00112854:
	lw	$a1, 8($sp)
	lw	$v0, 24($s1)
	slt	$v0, $a1, $v0
	beqz	$v0, lbl_001128A8
	li	$v0, 12
	lw	$v1, 20($s1)
	mult	$a1, $a1, $v0
	addu	$v0, $a1, $v1
	lw	$a2, 0($v0)
	beqz	$a2, lbl_001128A8
	nop
	lw	$v1, 8($v0)
	move	$s0, $gp
	move	$gp, $v1
	lw	$v0, 20($s1)
lbl_00112890:
	move	$a0, $sp
	addu	$v0, $a1, $v0
	jalr	$a2
	lw	$a1, 4($v0)
	move	$v0, $gp
	move	$gp, $s0
lbl_001128A8:
	sync
	ei
	move	$v0, $zero
lbl_001128B4:
	ld	$ra, 144($sp)
	ld	$s1, 128($sp)
	ld	$s0, 112($sp)
	jr	$ra
	addiu	$sp, $sp, 160

sub_001128C8:
	lui	$t9, 0xffff
	ori	$t9, $t9, 0xffc0
	blez	$a1, lbl_0011296C
	addu	$t2, $a0, $a1
	and	$t0, $a0, $t9
	addiu	$t2, $t2, -1
	and	$t1, $t2, $t9
	subu	$t2, $t1, $t0
	srl	$t3, $t2, 0x6
	addiu	$t3, $t3, 1
	andi	$t1, $t3, 0x7
	beqz	$t1, lbl_00112918
	srl	$t2, $t3, 0x3
lbl_001128FC:
	sync
	cache	0x18, 0($t0)
	sync
	nop
	addiu	$t1, $t1, -1
	bgtz	$t1, lbl_001128FC
	addiu	$t0, $t0, 64
lbl_00112918:
	beqz	$t2, lbl_0011296C
lbl_0011291C:
	addiu	$t2, $t2, -1
	sync
	cache	0x18, 0($t0)
	sync
	cache	0x18, 64($t0)
	sync
	cache	0x18, 128($t0)
	sync
	cache	0x18, 192($t0)
	sync
	cache	0x18, 256($t0)
	sync
	cache	0x18, 320($t0)
	sync
	cache	0x18, 384($t0)
	sync
	cache	0x18, 448($t0)
	sync
	bgtz	$t2, lbl_0011291C
	addiu	$t0, $t0, 512
lbl_0011296C:
	jr	$ra
	nop
	jr	$ra

sub_00112978:
	sw	$a1, 0($a0)
	sw	$zero, 8($a0)
	jr	$ra
	sw	$a1, 4($a0)

sub_00112988:
	lw	$v0, 4($a0)
	sw	$zero, 8($a0)
	jr	$ra
	sw	$v0, 0($a0)

sub_00112998:
	lw	$a1, 0($a0)
	andi	$v0, $a1, 0xc
	beqz	$v0, lbl_001129C4
	lw	$a2, 8($a0)
lbl_001129A8:
	sw	$zero, 0($a1)
	addiu	$a1, $a1, 4
	andi	$v0, $a1, 0xc
	nop
	nop
	bnez	$v0, lbl_001129A8
	nop
lbl_001129C4:
	beqz	$a2, lbl_001129E0
	subu	$v0, $a1, $a2
	lw	$v1, 0($a2)
	sra	$v0, $v0, 0x4
	addiu	$v0, $v0, -1
	addu	$v1, $v1, $v0
	sw	$v1, 0($a2)
lbl_001129E0:
	sw	$zero, 8($a0)
	move	$v0, $a1
	jr	$ra
	sw	$a1, 0($a0)

sub_001129F0:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_00112998
	move	$s0, $a1
	lw	$a0, 0($s1)
	lui	$v1, 0x1000
	or	$s0, $s0, $v1
	sw	$v0, 8($s1)
	sw	$s0, 0($a0)
	addiu	$a0, $a0, 4
	sw	$zero, 12($s1)
	addiu	$v0, $a0, 4
	ld	$ra, 32($sp)
	sw	$v0, 0($s1)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	sw	$zero, 0($a0)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00112A48:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_00112998
	move	$s0, $a1
	lw	$a0, 0($s1)
	lui	$v1, 0x7000
	or	$s0, $s0, $v1
	sw	$v0, 8($s1)
	sw	$s0, 0($a0)
	addiu	$a0, $a0, 4
	sw	$zero, 12($s1)
	addiu	$v0, $a0, 4
	ld	$ra, 32($sp)
	sw	$v0, 0($s1)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	sw	$zero, 0($a0)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00112AA0:
	addiu	$sp, $sp, -48
	li	$a2, 3
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a1
	move	$s0, $a0
	sd	$ra, 32($sp)
	jal	sub_00112BE8
	li	$a1, 2
	lw	$a1, 0($s0)
	lui	$v0, 0xd000
	lui	$a0, 0x5000
	ld	$ra, 32($sp)
	addiu	$v1, $a1, 4
	movn	$a0, $v0, $s1
	sw	$v1, 0($s0)
	sw	$a1, 12($s0)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	sw	$a0, 0($a1)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00112AF8:
	lw	$v0, 0($a0)
	lw	$a1, 12($a0)
	addiu	$v0, $v0, -4
	sw	$zero, 12($a0)
	subu	$v0, $v0, $a1
	lw	$v1, 0($a1)
	sra	$v0, $v0, 0x2
	srl	$v0, $v0, 0x2
	addu	$v1, $v1, $v0
	jr	$ra
	sw	$v1, 0($a1)
	nop

sub_00112B28:
	lw	$v0, 0($a0)
	addiu	$v1, $v0, 16
	sq	$a1, 0($v0)
	sw	$v1, 0($a0)
	jr	$ra
	sw	$v0, 20($a0)

sub_00112B40:
	move	$t1, $a0
	li	$a1, 2
	lw	$t0, 20($t1)
	lw	$t2, 0($t1)
	ld	$a3, 0($t0)
	subu	$v0, $t2, $t0
	sra	$v0, $v0, 0x3
	dsrl32	$v1, $a3, 0x1a
	addiu	$a2, $v0, -2
	andi	$v1, $v1, 0x3
	srl	$a0, $a2, 0x1
	xori	$v0, $v1, 0x1
	beq	$v1, $a1, lbl_00112BA0
	movn	$a2, $a0, $v0
	dsrl32	$v0, $a3, 0x1c
	li	$a0, 16
	movz	$v0, $a0, $v0
	addu	$v1, $a2, $v0
	beqzl	$v0, lbl_00112B90
	break	0x7
lbl_00112B90:
	addiu	$v1, $v1, -1
	divu	$zero, $v1, $v0
	mflo	$v1
	move	$a2, $v1
lbl_00112BA0:
	dsll32	$v0, $a2, 0x0
	move	$a1, $t2
	dsrl32	$v0, $v0, 0x0
	sw	$zero, 20($t1)
	daddu	$v0, $a3, $v0
	andi	$v1, $a1, 0xc
	beqz	$v1, lbl_00112BDC
	sd	$v0, 0($t0)
lbl_00112BC0:
	sw	$zero, 0($a1)
	addiu	$a1, $a1, 4
	andi	$v0, $a1, 0xc
	nop
	nop
	bnez	$v0, lbl_00112BC0
	nop
lbl_00112BDC:
	jr	$ra
	sw	$a1, 0($t1)
	nop

sub_00112BE8:
	addiu	$a1, $a1, 2
	li	$v1, 32
	andi	$a1, $a1, 0x1f
	lui	$v0, 0xffff
	subu	$v1, $v1, $a1
	ori	$v0, $v0, 0xffff
	lw	$a1, 0($a0)
	srlv	$a3, $v0, $v1
	nor	$v0, $zero, $a3
	sll	$a2, $a2, 0x2
	and	$v0, $a1, $v0
	addu	$a2, $v0, $a2
	sltu	$v1, $a2, $a1
	beqz	$v1, lbl_00112C28
	addiu	$v0, $a2, 1
	addu	$a2, $v0, $a3
lbl_00112C28:
	sltu	$v0, $a1, $a2
	beqz	$v0, lbl_00112C5C
	addiu	$v1, $a1, 4
	b	lbl_00112C4C
	sw	$zero, 0($a1)
	nop
lbl_00112C40:
	move	$a1, $v1
	addiu	$v1, $a1, 4
	sw	$zero, 0($a1)
lbl_00112C4C:
	sw	$v1, 0($a0)
	sltu	$v0, $v1, $a2
	bnez	$v0, lbl_00112C40
	nop
lbl_00112C5C:
	jr	$ra
	nop
	nop

sub_00112C68:
	lw	$v0, 0($a0)
	dsll32	$v1, $a1, 0x0
	dsra32	$v1, $v1, 0x0
	dsra32	$a1, $a1, 0x0
	sw	$v1, 0($v0)
	addiu	$v0, $v0, 4
	addiu	$v1, $v0, 4
	sw	$a1, 0($v0)
	jr	$ra
	sw	$v1, 0($a0)

sub_00112C90:
	addiu	$sp, $sp, -80
	sll	$a0, $a0, 0x10
	sd	$s3, 48($sp)
	sll	$a1, $a1, 0x10
	sd	$s2, 32($sp)
	sll	$a2, $a2, 0x10
	sd	$s1, 16($sp)
	sll	$a3, $a3, 0x10
	sd	$ra, 64($sp)
	sra	$a0, $a0, 0x10
	sd	$s0, 0($sp)
	sra	$s1, $a1, 0x10
	sra	$s2, $a2, 0x10
	li	$v0, 1
	beq	$a0, $v0, lbl_00112D90
	sra	$s3, $a3, 0x10
	slti	$v0, $a0, 2
	beqzl	$v0, lbl_00112CEC
	li	$v0, 5
	beqz	$a0, lbl_00112CFC
	ld	$ra, 64($sp)
	b	lbl_00112E0C
	ld	$s3, 48($sp)
lbl_00112CEC:
	beq	$a0, $v0, lbl_00112DA8
	ld	$ra, 64($sp)
	b	lbl_00112E0C
	ld	$s3, 48($sp)
lbl_00112CFC:
	jal	sub_00112E20
	nop
	lui	$v1, 0x1200
	li	$a0, 512
	ori	$v1, $v1, 0x1000
	move	$s0, $v0
	sd	$a0, 0($v1)
	sh	$s1, 0($s0)
	li	$a0, 0xff00
	ld	$v0, 0($v1)
	sh	$s2, 2($s0)
	dsrl	$v0, $v0, 0x10
	andi	$v0, $v0, 0xff
	andi	$v0, $v0, 0xffff
	jal	sub_00106C20
	sh	$v0, 6($s0)
	sltu	$v1, $zero, $s3
	lw	$v0, 8($s0)
	beqz	$v0, lbl_00112D68
	sh	$v1, 4($s0)
	jal	sub_00106D70
	li	$a0, 2
	lw	$a1, 12($s0)
	jal	sub_001065E0
	li	$a0, 2
	sw	$zero, 12($s0)
	sw	$zero, 8($s0)
lbl_00112D68:
	andi	$a0, $s1, 0x1
	andi	$a1, $s2, 0xff
	andi	$a2, $s3, 0x1
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	lbl_001064E0
	addiu	$sp, $sp, 80
lbl_00112D90:
	lui	$v0, 0x1200
	li	$v1, 256
	ori	$v0, $v0, 0x1000
	sd	$v1, 0($v0)
	b	lbl_00112E08
	ld	$ra, 64($sp)
lbl_00112DA8:
	jal	sub_00112E20
	nop
	lui	$v1, 0x1200
	move	$s0, $v0
	ori	$v1, $v1, 0x1000
	sltu	$a2, $zero, $s3
	ld	$v0, 0($v1)
	andi	$a0, $s1, 0x1
	sh	$a2, 4($s0)
	andi	$a1, $s2, 0xff
	dsrl	$v0, $v0, 0x10
	sh	$s1, 0($s0)
	andi	$v0, $v0, 0xff
	sh	$s2, 2($s0)
	andi	$v0, $v0, 0xffff
	andi	$a2, $s3, 0x1
	sh	$v0, 6($s0)
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	lbl_001064E0
	addiu	$sp, $sp, 80
lbl_00112E08:
	ld	$s3, 48($sp)
lbl_00112E0C:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_00112E20:
	lui	$v0, 0x13
	jr	$ra
	addiu	$v0, $v0, 2240
	nop

sub_00112E30:
	lui	$v0, 0x1000
	li	$a3, 1
	ori	$v0, $v0, 0x3c10
	lui	$v1, 0x1000
	sw	$a3, 0($v0)
	ori	$v1, $v1, 0x3c20
	li	$v0, 2
	move	$a0, $zero
	sw	$v0, 0($v1)
	sync
	cfc2.ni	$a0, $28
	ori	$a0, $a0, 0x200
	ctc2.ni	$a0, $28
	sync.p
	lui	$a1, 0x13
	lui	$a2, 0x1000
	addiu	$a1, $a1, 2256
	ori	$a2, $a2, 0x5000
	lq	$a0, 0($a1)
	lui	$v1, 0x1000
	ori	$v1, $v1, 0x3000
	sq	$a0, 0($a2)
	lq	$v0, 16($a1)
	sq	$v0, 0($a2)
	jr	$ra
	sw	$a3, 0($v1)

sub_00112E98:
	addiu	$sp, $sp, -112
	sll	$a2, $a2, 0x10
	sd	$s2, 32($sp)
	sll	$a1, $a1, 0x10
	sra	$s2, $a2, 0x10
	sd	$s4, 64($sp)
	addiu	$v0, $s2, 63
	sra	$s4, $a1, 0x10
	sra	$v0, $v0, 0x6
	andi	$v1, $s4, 0xf
	andi	$v0, $v0, 0x3f
	sd	$s0, 0($sp)
	dsll	$v1, $v1, 0x18
	dsll	$v0, $v0, 0x10
	move	$s0, $a0
	or	$v0, $v0, $v1
	sd	$s5, 80($sp)
	sll	$a3, $a3, 0x10
	sd	$s3, 48($sp)
	sll	$t0, $t0, 0x10
	sd	$s1, 16($sp)
	sll	$t1, $t1, 0x10
	sd	$ra, 96($sp)
	li	$v1, 76
	li	$a0, 78
	sra	$s1, $a3, 0x10
	sra	$s5, $t0, 0x10
	sra	$s3, $t1, 0x10
	sd	$v1, 8($s0)
	sd	$v0, 0($s0)
	bnez	$s5, lbl_00112F4C
	sd	$a0, 24($s0)
	move	$a0, $s4
	move	$a1, $s2
	jal	sub_00113EF0
	move	$a2, $s1
	dsll32	$v0, $v0, 0x10
	andi	$v1, $s3, 0xf
	dsra32	$v0, $v0, 0x10
	dsll	$v1, $v1, 0x18
	or	$v0, $v0, $v1
	li	$a0, 0x8000
	dsll	$a0, $a0, 0x11
	b	lbl_00112F70
	or	$v0, $v0, $a0
lbl_00112F4C:
	move	$a0, $s4
	move	$a1, $s2
	jal	sub_00113EF0
	move	$a2, $s1
	dsll32	$v0, $v0, 0x10
	andi	$v1, $s3, 0xf
	dsra32	$v0, $v0, 0x10
	dsll	$v1, $v1, 0x18
	or	$v0, $v0, $v1
lbl_00112F70:
	sd	$v0, 16($s0)
	sra	$v0, $s1, 0x1
	sra	$v1, $s2, 0x1
	dsll32	$v0, $v0, 0x10
	li	$a0, 2048
	dsll32	$v1, $v1, 0x10
	dsra32	$v0, $v0, 0x10
	dsra32	$v1, $v1, 0x10
	dsubu	$v0, $a0, $v0
	dsubu	$a0, $a0, $v1
	dsll32	$v0, $v0, 0x4
	addiu	$a2, $s2, -1
	addiu	$a1, $s1, -1
	dsll	$a0, $a0, 0x4
	ld	$v1, 64($s0)
	ld	$a3, 80($s0)
	dsll32	$a1, $a1, 0x10
	or	$a0, $a0, $v0
	dsll	$a2, $a2, 0x10
	li	$t3, 1
	or	$a2, $a2, $a1
	li	$v0, 24
	or	$v1, $v1, $t3
	or	$a3, $a3, $t3
	li	$a1, 64
	li	$t0, 26
	li	$t1, 70
	li	$t2, 69
	sd	$v0, 40($s0)
	sd	$a0, 32($s0)
	andi	$v0, $s4, 0x2
	sd	$a1, 56($s0)
	sd	$a2, 48($s0)
	sd	$t0, 72($s0)
	sd	$v1, 64($s0)
	sd	$t1, 88($s0)
	sd	$a3, 80($s0)
	beqz	$v0, lbl_00113018
	sd	$t2, 104($s0)
	ld	$v0, 96($s0)
	b	lbl_00113024
	or	$v0, $v0, $t3
lbl_00113018:
	ld	$v0, 96($s0)
	li	$v1, -2
	and	$v0, $v0, $v1
lbl_00113024:
	sd	$v0, 96($s0)
	li	$v0, 71
	beqz	$s5, lbl_00113048
	sd	$v0, 120($s0)
	andi	$v0, $s5, 0x3
	lui	$v1, 0x1
	dsll	$v0, $v0, 0x11
	b	lbl_0011304C
	or	$v0, $v0, $v1
lbl_00113048:
	lui	$v0, 0x3
lbl_0011304C:
	sd	$v0, 112($s0)
	sync
	ld	$ra, 96($sp)
	li	$v0, 8
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop

sub_00113080:
	addiu	$sp, $sp, -16
	lui	$v1, 0x1000
	sd	$ra, 0($sp)
	ori	$v1, $v1, 0xa000
	move	$a2, $a0
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x100
	beqz	$v0, lbl_001130D4
	move	$a0, $zero
	lui	$v1, 0x1000
	lui	$a1, 0x100
	ori	$v1, $v1, 0xa000
	move	$v0, $a0
	nop
lbl_001130B8:
	sltu	$v0, $a1, $v0
	bnez	$v0, lbl_00113120
	addiu	$a0, $a0, 1
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x100
	bnez	$v0, lbl_001130B8
	move	$v0, $a0
lbl_001130D4:
	ld	$v0, 0($a2)
	lui	$v1, 0x1000
	ori	$v1, $v1, 0xa020
	lui	$a0, 0x7000
	andi	$v0, $v0, 0x7fff
	and	$a1, $a2, $a0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	addiu	$v0, $v0, 1
	sw	$v0, 0($v1)
	bne	$a1, $a0, lbl_00113134
	lui	$v0, 0xfff
	lui	$v1, 0x1000
	ori	$v0, $v0, 0xffff
	lui	$a0, 0x8000
	and	$v0, $a2, $v0
	ori	$v1, $v1, 0xa010
	b	lbl_00113144
	or	$v0, $v0, $a0
lbl_00113120:
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 20440
	b	lbl_0011315C
	li	$v0, -1
lbl_00113134:
	lui	$v1, 0x1000
	ori	$v0, $v0, 0xffff
	ori	$v1, $v1, 0xa010
	and	$v0, $a2, $v0
lbl_00113144:
	sw	$v0, 0($v1)
	lui	$v1, 0x1000
	li	$a0, 257
	ori	$v1, $v1, 0xa000
	move	$v0, $zero
	sw	$a0, 0($v1)
lbl_0011315C:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_00113168:
	addiu	$sp, $sp, -208
	sll	$a1, $a1, 0x10
	sd	$s0, 48($sp)
	sll	$t0, $t0, 0x10
	sd	$s8, 176($sp)
	sll	$s0, $t1, 0x10
	sd	$s7, 160($sp)
	sll	$t2, $t2, 0x10
	sd	$s6, 144($sp)
	sra	$s0, $s0, 0x10
	sd	$s5, 128($sp)
	sra	$s6, $a1, 0x10
	sd	$s2, 80($sp)
	sra	$s5, $t0, 0x10
	sd	$s1, 64($sp)
	move	$s2, $a0
	sd	$s4, 112($sp)
	sra	$s7, $t2, 0x10
	sd	$s3, 96($sp)
	sll	$s1, $a2, 0x10
	sd	$ra, 192($sp)
	jal	sub_00112E20
	sll	$s8, $a3, 0x10
	sra	$s3, $s1, 0x10
	sra	$s4, $s8, 0x10
	sw	$v0, 32($sp)
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s4
	move	$t0, $zero
	jal	sub_00113AB8
	move	$t1, $zero
	addiu	$a0, $s2, 40
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s4
	move	$t0, $zero
	jal	sub_00113AB8
	move	$t1, $zero
	addiu	$a0, $s2, 96
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s4
	move	$t0, $s5
	jal	sub_00112E98
	move	$t1, $s0
	move	$t1, $s0
	addiu	$a0, $s2, 336
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $s4
	jal	sub_00112E98
	move	$t0, $s5
	beqz	$s7, lbl_001132B8
	sra	$v0, $s1, 0x11
	li	$s0, 2048
	sra	$s1, $s8, 0x11
	sw	$zero, 0($sp)
	subu	$s1, $s0, $s1
	sw	$zero, 8($sp)
	subu	$s0, $s0, $v0
	addiu	$a0, $s2, 224
	sw	$zero, 16($sp)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s1
	move	$t0, $s3
	move	$t1, $s4
	move	$t2, $zero
	jal	sub_00113FB8
	move	$t3, $zero
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s1
	sw	$zero, 0($sp)
	sw	$zero, 8($sp)
	addiu	$a0, $s2, 464
	sw	$zero, 16($sp)
	move	$t0, $s3
	move	$t1, $s4
	move	$t2, $zero
	jal	sub_00113FB8
	move	$t3, $zero
lbl_001132B8:
	por	$v0, $zero, $zero
	li	$t1, 14
	sq	$v0, 80($s2)
	li	$a1, -32768
	sq	$v0, 320($s2)
	li	$v1, 8
	ld	$a0, 80($s2)
	li	$v0, 8
	ld	$a2, 320($s2)
	movn	$v0, $t1, $s7
	and	$a0, $a0, $a1
	movn	$v1, $t1, $s7
	and	$a2, $a2, $a1
	or	$a0, $a0, $v0
	or	$a2, $a2, $v1
	li	$v0, 0x8000
	ld	$a3, 88($s2)
	or	$a2, $a2, $v0
	ld	$t0, 328($s2)
	or	$a0, $a0, $v0
	li	$v1, -1
	dsrl	$v1, $v1, 0x4
	li	$a1, -16
	li	$v0, 0x8000
	dsll32	$v0, $v0, 0xd
	and	$a2, $a2, $v1
	and	$a0, $a0, $v1
	and	$t0, $t0, $a1
	and	$a3, $a3, $a1
	or	$a2, $a2, $v0
	or	$a0, $a0, $v0
	or	$t0, $t0, $t1
	or	$a3, $a3, $t1
	sd	$a0, 80($s2)
	sd	$a2, 320($s2)
	move	$a0, $s6
	sd	$a3, 88($s2)
	move	$a1, $s3
	move	$a2, $s4
	jal	sub_00113EF0
	sd	$t0, 328($s2)
	lw	$v1, 32($sp)
	move	$a2, $v0
	li	$a0, 1
	dsll32	$a0, $a0, 0x0
	ori	$a0, $a0, 0x1
	ld	$v0, 0($v1)
	li	$v1, 0xffff
	dsll32	$v1, $v1, 0x0
	ori	$v1, $v1, 0xffff
	and	$v0, $v0, $v1
	beq	$v0, $a0, lbl_00113398
	lw	$v1, 32($sp)
	lh	$v0, 0($v1)
	bnez	$v0, lbl_001133D4
	ld	$ra, 192($sp)
lbl_00113398:
	sra	$a2, $a2, 0x1
	ld	$a0, 56($s2)
	ld	$v1, 96($s2)
	sll	$v0, $a2, 0x10
	li	$a1, -512
	sra	$v0, $v0, 0x10
	and	$v1, $v1, $a1
	andi	$v0, $v0, 0x1ff
	and	$a0, $a0, $a1
	andi	$a2, $a2, 0x1ff
	or	$a0, $a0, $v0
	or	$v1, $v1, $a2
	sd	$v1, 96($s2)
	sd	$a0, 56($s2)
	ld	$ra, 192($sp)
lbl_001133D4:
	ld	$s8, 176($sp)
	ld	$s7, 160($sp)
	ld	$s6, 144($sp)
	ld	$s5, 128($sp)
	ld	$s4, 112($sp)
	ld	$s3, 96($sp)
	ld	$s2, 80($sp)
	ld	$s1, 64($sp)
	ld	$s0, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 208

sub_00113400:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	andi	$s0, $a1, 0x1
	li	$a0, 40
	mult	$v0, $s0, $a0
	sd	$ra, 32($sp)
	jal	sub_00113E30
	addu	$a0, $v0, $s1
	beqz	$s0, lbl_00113440
	nop
	jal	sub_00113080
	addiu	$a0, $s1, 320
	b	lbl_0011344C
	ld	$ra, 32($sp)
lbl_00113440:
	jal	sub_00113080
	addiu	$a0, $s1, 80
	ld	$ra, 32($sp)
lbl_0011344C:
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00113460:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00112E20
	nop
	move	$s0, $v0
	lw	$v0, 8($s0)
	bnez	$v0, lbl_001134C0
	nop
	jal	sub_00111660
	nop
	lh	$v1, 0($s0)
	li	$v0, 1
	bne	$v1, $v0, lbl_001134E8
	ld	$ra, 16($sp)
	lui	$v1, 0x1200
	ori	$v1, $v1, 0x1000
	ld	$v0, 0($v1)
	dsrl	$v0, $v0, 0xd
	andi	$v0, $v0, 0x1
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	b	lbl_001134EC
	ld	$s0, 0($sp)
lbl_001134C0:
	jal	sub_001116F0
	nop
	dsra	$v0, $v0, 0xd
	lh	$v1, 0($s0)
	andi	$a0, $v0, 0x1
	li	$v0, 1
	bne	$v1, $v0, lbl_001134E8
	ld	$ra, 16($sp)
	dsll32	$v0, $a0, 0x0
	dsra32	$v0, $v0, 0x0
lbl_001134E8:
	ld	$s0, 0($sp)
lbl_001134EC:
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_001134F8:
	addiu	$sp, $sp, -16
	move	$a1, $zero
	bnez	$a0, lbl_0011378C
	sd	$ra, 0($sp)
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x9000
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0x100
	beqz	$v1, lbl_0011354C
	lui	$v1, 0x1000
	lui	$a0, 0x100
	ori	$v1, $v1, 0x9000
	move	$v0, $a1
	nop
lbl_00113530:
	sltu	$v0, $a0, $v0
	bnez	$v0, lbl_00113654
	addiu	$a1, $a1, 1
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x100
	bnez	$v0, lbl_00113530
	move	$v0, $a1
lbl_0011354C:
	lui	$v0, 0x1000
	ori	$v0, $v0, 0xa000
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0x100
	beqz	$v1, lbl_0011358C
	lui	$v1, 0x1000
	lui	$a0, 0x100
	ori	$v1, $v1, 0xa000
	move	$v0, $a1
lbl_00113570:
	sltu	$v0, $a0, $v0
	bnez	$v0, lbl_00113660
	addiu	$a1, $a1, 1
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0x100
	bnez	$v0, lbl_00113570
	move	$v0, $a1
lbl_0011358C:
	lui	$v0, 0x1000
	lui	$a0, 0x1f00
	ori	$v0, $v0, 0x3c00
	ori	$a0, $a0, 0x3
	lw	$v1, 0($v0)
	and	$v1, $v1, $a0
	beqz	$v1, lbl_001135DC
	lui	$v1, 0x1f00
	lui	$a0, 0x1000
	lui	$a2, 0x100
	ori	$a0, $a0, 0x3c00
	ori	$v1, $v1, 0x3
	move	$v0, $a1
lbl_001135C0:
	sltu	$v0, $a2, $v0
	bnez	$v0, lbl_0011366C
	addiu	$a1, $a1, 1
	lw	$v0, 0($a0)
	and	$v0, $v0, $v1
	bnez	$v0, lbl_001135C0
	move	$v0, $a1
lbl_001135DC:
	cfc2.ni	$a2, $29
	andi	$v0, $a2, 0x100
	beqz	$v0, lbl_0011360C
	lui	$v1, 0x100
	move	$v0, $a1
lbl_001135F0:
	sltu	$v0, $v1, $v0
	bnez	$v0, lbl_00113678
	addiu	$a1, $a1, 1
	cfc2.ni	$a2, $29
	andi	$v0, $a2, 0x100
	bnez	$v0, lbl_001135F0
	move	$v0, $a1
lbl_0011360C:
	lui	$v0, 0x1000
	ori	$v0, $v0, 0x3020
	lw	$v1, 0($v0)
	andi	$v1, $v1, 0xc00
	beqz	$v1, lbl_0011364C
	lui	$v1, 0x1000
	lui	$a0, 0x100
	ori	$v1, $v1, 0x3020
	move	$v0, $a1
lbl_00113630:
	sltu	$v0, $a0, $v0
	bnez	$v0, lbl_00113684
	addiu	$a1, $a1, 1
	lw	$v0, 0($v1)
	andi	$v0, $v0, 0xc00
	bnez	$v0, lbl_00113630
	move	$v0, $a1
lbl_0011364C:
	b	lbl_00113800
	move	$v0, $zero
lbl_00113654:
	lui	$a0, 0x13
	b	lbl_0011368C
	addiu	$a0, $a0, 20488
lbl_00113660:
	lui	$a0, 0x13
	b	lbl_0011368C
	addiu	$a0, $a0, 20712
lbl_0011366C:
	lui	$a0, 0x13
	b	lbl_0011368C
	addiu	$a0, $a0, 20760
lbl_00113678:
	lui	$a0, 0x13
	b	lbl_0011368C
	addiu	$a0, $a0, 20808
lbl_00113684:
	lui	$a0, 0x13
	addiu	$a0, $a0, 20848
lbl_0011368C:
	jal	sub_001087F8
	nop
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x9000
	addiu	$a0, $a0, 20536
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x9030
	addiu	$a0, $a0, 20552
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x9010
	addiu	$a0, $a0, 20568
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x9020
	addiu	$a0, $a0, 20584
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0xa000
	addiu	$a0, $a0, 20600
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0xa030
	addiu	$a0, $a0, 20616
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0xa010
	addiu	$a0, $a0, 20632
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0xa020
	addiu	$a0, $a0, 20648
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x3c00
	addiu	$a0, $a0, 20664
	jal	sub_001087F8
	lw	$a1, 0($v0)
	lui	$v0, 0x1000
	lui	$a0, 0x13
	ori	$v0, $v0, 0x3020
	addiu	$a0, $a0, 20688
	jal	sub_001087F8
	lw	$a1, 0($v0)
	b	lbl_00113800
	li	$v0, -1
lbl_0011378C:
	lui	$v1, 0x1000
	lui	$a1, 0x1000
	ori	$v1, $v1, 0x9000
	ori	$a1, $a1, 0xa000
	lw	$v0, 0($v1)
	lui	$a0, 0x1000
	lw	$a2, 0($a1)
	ori	$a0, $a0, 0x3c00
	andi	$v0, $v0, 0x100
	lw	$a1, 0($a0)
	sltu	$v0, $zero, $v0
	andi	$a2, $a2, 0x100
	ori	$a0, $v0, 0x2
	lui	$v1, 0x1f00
	movn	$v0, $a0, $a2
	ori	$v1, $v1, 0x3
	and	$a1, $a1, $v1
	ori	$a0, $v0, 0x4
	movn	$v0, $a0, $a1
	cfc2.ni	$a2, $29
	lui	$v1, 0x1000
	andi	$a2, $a2, 0x100
	ori	$v1, $v1, 0x3020
	ori	$a1, $v0, 0x8
	lw	$a0, 0($v1)
	movn	$v0, $a1, $a2
	ori	$v1, $v0, 0x10
	andi	$a0, $a0, 0xc00
	movn	$v0, $v1, $a0
lbl_00113800:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00113810:
	sll	$a2, $a2, 0x10
	sll	$a3, $a3, 0x10
	sll	$t1, $t1, 0x10
	sll	$t3, $t3, 0x10
	sra	$v1, $a2, 0x10
	sra	$t5, $a3, 0x10
	sll	$t0, $t0, 0x10
	sll	$t2, $t2, 0x10
	sra	$a2, $t1, 0x10
	sra	$a3, $t3, 0x10
	sra	$t0, $t0, 0x10
	sra	$t2, $t2, 0x10
	move	$t4, $a0
	sll	$a1, $a1, 0x10
	lh	$t1, 0($sp)
	lh	$t6, 8($sp)
	lh	$t7, 16($sp)
	beqz	$a1, lbl_00113864
	lh	$t3, 24($sp)
	b	lbl_00113868
	li	$v0, 63
lbl_00113864:
	li	$v0, 127
lbl_00113868:
	sd	$v0, 8($t4)
	dsll32	$v1, $v1, 0x10
	dsll32	$a2, $a2, 0x10
	dsll32	$v0, $t5, 0x10
	dsll32	$t0, $t0, 0x10
	dsll32	$a1, $t2, 0x10
	dsll32	$a3, $a3, 0x10
	dsra	$a3, $a3, 0xd
	li	$a0, 0x8000
	dsll	$a0, $a0, 0x13
	dsra32	$v1, $v1, 0x10
	dsll32	$t1, $t1, 0x5
	dsra	$a2, $a2, 0x16
	dsra32	$v0, $v0, 0x2
	dsra	$t0, $t0, 0x1c
	dsra	$a1, $a1, 0x12
	or	$a2, $a2, $a0
	or	$a1, $a1, $a3
	or	$v1, $v1, $t1
	or	$v0, $v0, $t0
	or	$v0, $v0, $a1
	or	$v1, $v1, $a2
	or	$v1, $v1, $v0
	dsll32	$a0, $t6, 0x13
	andi	$a1, $t3, 0x1
	or	$v1, $v1, $a0
	dsll32	$a2, $t7, 0x1d
	dsll	$v0, $t3, 0x6
	dsll	$a1, $a1, 0x5
	or	$v1, $v1, $a2
	or	$a1, $a1, $v0
	li	$a0, 6
	li	$a2, 20
	li	$a3, 8
	li	$v0, 5
	sd	$a0, 40($t4)
	sd	$v0, 48($t4)
	sd	$v1, 32($t4)
	sd	$a2, 24($t4)
	sd	$a1, 16($t4)
	sd	$a3, 56($t4)
	sd	$zero, 0($t4)
	sync
	jr	$ra
	li	$v0, 4
	nop

sub_00113920:
	sll	$a1, $a1, 0x10
	li	$t1, 66
	sra	$a1, $a1, 0x10
	li	$v1, 68
	dsll32	$a1, $a1, 0x10
	li	$v0, 73
	dsra32	$a1, $a1, 0x10
	li	$a2, 59
	li	$a3, 129
	dsll32	$a3, $a3, 0x0
	ori	$a3, $a3, 0x807f
	li	$t0, 74
	sd	$t1, 8($a0)
	sd	$v1, 0($a0)
	sd	$v0, 24($a0)
	sd	$a1, 16($a0)
	sd	$a2, 40($a0)
	sd	$a3, 32($a0)
	sd	$t0, 56($a0)
	sd	$zero, 48($a0)
	sync
	jr	$ra
	li	$v0, 4
	nop

sub_00113980:
	ld	$v0, 48($a0)
	sll	$a1, $a1, 0x10
	sll	$a2, $a2, 0x10
	sra	$a1, $a1, 0x10
	dsrl	$v1, $v0, 0x10
	sra	$a2, $a2, 0x10
	dsrl32	$v0, $v0, 0x10
	andi	$v1, $v1, 0x7ff
	andi	$v0, $v0, 0x7ff
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	dsll32	$a2, $a2, 0x10
	addiu	$v0, $v0, 1
	dsll32	$a1, $a1, 0x10
	addiu	$v1, $v1, 1
	dsrl	$v0, $v0, 0x1
	dsra32	$a2, $a2, 0x10
	dsra32	$a1, $a1, 0x10
	dsrl	$v1, $v1, 0x1
	dsubu	$a2, $a2, $v0
	dsubu	$a1, $a1, $v1
	dsll	$v0, $a2, 0x4
	sll	$a3, $a3, 0x10
	beqz	$a3, lbl_001139F8
	dsll	$a1, $a1, 0x4
	daddiu	$v0, $v0, 8
	b	lbl_001139FC
	dsll32	$v0, $v0, 0x0
lbl_001139F8:
	dsll32	$v0, $a2, 0x4
lbl_001139FC:
	or	$v0, $a1, $v0
	jr	$ra
	sd	$v0, 32($a0)

sub_00113A08:
	addiu	$sp, $sp, -320
	lui	$a0, 0x13
	sd	$s2, 288($sp)
	li	$a1, 1
	sd	$ra, 304($sp)
	addiu	$a0, $a0, 20888
	sd	$s1, 272($sp)
	jal	sub_0010A6C0
	sd	$s0, 256($sp)
	move	$s2, $v0
	bgez	$s2, lbl_00113A40
	move	$s1, $zero
	b	lbl_00113A90
	li	$v0, -1
lbl_00113A40:
	b	lbl_00113A4C
	move	$s0, $sp
lbl_00113A48:
	addiu	$s1, $s1, 1
lbl_00113A4C:
	sltiu	$v0, $s1, 256
	beqz	$v0, lbl_00113A70
	move	$a1, $s0
	move	$a0, $s2
	jal	sub_0010AD08
	li	$a2, 1
	lb	$v1, 0($s0)
	bnez	$v1, lbl_00113A48
	addiu	$s0, $s0, 1
lbl_00113A70:
	jal	sub_0010A950
	move	$a0, $s2
	addiu	$a0, $s1, -9
	jal	sub_00124670
	addu	$a0, $sp, $a0
	lui	$v1, 0x131
	ori	$v1, $v1, 0x5670
	slt	$v0, $v1, $v0
lbl_00113A90:
	ld	$ra, 304($sp)
	ld	$s2, 288($sp)
	ld	$s1, 272($sp)
	ld	$s0, 256($sp)
	jr	$ra
	addiu	$sp, $sp, 320

sub_00113AA8:
	li	$v1, 128
	syscall
	jr	$ra
	nop

sub_00113AB8:
	addiu	$sp, $sp, -144
	sll	$a1, $a1, 0x10
	sd	$s6, 112($sp)
	sll	$a2, $a2, 0x10
	sd	$s5, 96($sp)
	sll	$a3, $a3, 0x10
	sd	$s4, 80($sp)
	sll	$t0, $t0, 0x10
	sd	$s3, 64($sp)
	sll	$t1, $t1, 0x10
	sd	$s2, 48($sp)
	sra	$s6, $a1, 0x10
	sd	$s0, 16($sp)
	sra	$s2, $a3, 0x10
	sd	$s1, 32($sp)
	sra	$s0, $a2, 0x10
	sd	$ra, 128($sp)
	sra	$s5, $t0, 0x10
	sra	$s4, $t1, 0x10
	jal	sub_00112E20
	move	$s3, $a0
	move	$s1, $v0
	lhu	$a0, 2($s1)
	addiu	$v0, $a0, -2
	sltiu	$v0, $v0, 2
	bnezl	$v0, lbl_00113B58
	sw	$zero, 12($sp)
	jal	sub_00113A08
	nop
	beqz	$v0, lbl_00113B50
	move	$a1, $sp
	lh	$a0, 2($s1)
	ori	$a2, $sp, 0x4
	ori	$a3, $sp, 0x8
	jal	sub_00113AA8
	ori	$t0, $sp, 0xc
	b	lbl_00113B64
	lhu	$a0, 2($s1)
lbl_00113B50:
	lhu	$a0, 2($s1)
	sw	$zero, 12($sp)
lbl_00113B58:
	sw	$zero, 8($sp)
	sw	$zero, 4($sp)
	sw	$zero, 0($sp)
lbl_00113B64:
	li	$v1, 102
	lhu	$a2, 0($s1)
	sd	$v1, 0($s3)
	lh	$v0, 0($s1)
	beqz	$v0, lbl_00113B8C
	li	$v0, 2
	lh	$v0, 4($s1)
	bnez	$v0, lbl_00113B8C
	li	$v0, 3
	li	$v0, 1
lbl_00113B8C:
	sd	$v0, 8($s3)
	addiu	$v0, $s0, 63
	andi	$v1, $s6, 0xf
	sra	$v0, $v0, 0x6
	sll	$a0, $a0, 0x10
	andi	$v0, $v0, 0x3f
	dsll	$v1, $v1, 0xf
	dsll	$v0, $v0, 0x9
	sra	$a1, $a0, 0x10
	or	$v1, $v1, $v0
	li	$a0, 2
	bne	$a1, $a0, lbl_00113C68
	sd	$v1, 16($s3)
	sll	$v0, $a2, 0x10
	li	$v1, 1
	sra	$v0, $v0, 0x10
	bne	$v0, $v1, lbl_00113C3C
	addiu	$v0, $s0, 2559
	addiu	$v1, $s0, 2559
	beqzl	$s0, lbl_00113BE0
	break	0x7
lbl_00113BE0:
	div	$zero, $v1, $s0
	lw	$v0, 4($sp)
	lw	$a1, 0($sp)
	addu	$v0, $s4, $v0
	lh	$a2, 4($s1)
	addiu	$v0, $v0, 50
	daddiu	$a1, $a1, 636
	andi	$v0, $v0, 0xfff
	dsll	$a3, $v0, 0xc
	mflo	$v1
	mult	$a0, $v1, $s0
	mult1	$v0, $s5, $v1
	addiu	$v1, $v1, -1
	dsll	$t2, $v1, 0x17
	addiu	$a0, $a0, -1
	dsll32	$v1, $a0, 0x0
	daddu	$a1, $v0, $a1
	beqz	$a2, lbl_00113CF0
	andi	$a1, $a1, 0xfff
	sll	$v0, $s2, 0x1
	or	$v1, $t2, $v1
	b	lbl_00113CF8
	addiu	$v0, $v0, -1
lbl_00113C3C:
	beqzl	$s0, lbl_00113C44
	break	0x7
lbl_00113C44:
	div	$zero, $v0, $s0
	addiu	$a3, $s2, -1
	lw	$a1, 0($sp)
	dsll32	$a3, $a3, 0xc
	lw	$v1, 4($sp)
	daddiu	$a1, $a1, 636
	addu	$v1, $s4, $v1
	b	lbl_00113D38
	addiu	$v1, $v1, 25
lbl_00113C68:
	li	$v0, 3
	bne	$a1, $v0, lbl_00113D7C
	li	$v0, 80
	sll	$v0, $a2, 0x10
	li	$v1, 1
	sra	$v0, $v0, 0x10
	bne	$v0, $v1, lbl_00113D10
	addiu	$v0, $s0, 2559
	addiu	$v1, $s0, 2559
	beqzl	$s0, lbl_00113C94
	break	0x7
lbl_00113C94:
	div	$zero, $v1, $s0
	lw	$v0, 4($sp)
	lw	$a1, 0($sp)
	addu	$v0, $s4, $v0
	lh	$a2, 4($s1)
	addiu	$v0, $v0, 72
	daddiu	$a1, $a1, 656
	andi	$v0, $v0, 0xfff
	dsll	$a3, $v0, 0xc
	mflo	$v1
	mult	$a0, $v1, $s0
	mult1	$v0, $s5, $v1
	addiu	$v1, $v1, -1
	dsll	$t2, $v1, 0x17
	addiu	$a0, $a0, -1
	dsll32	$v1, $a0, 0x0
	daddu	$a1, $v0, $a1
	beqz	$a2, lbl_00113CF0
	andi	$a1, $a1, 0xfff
	sll	$v0, $s2, 0x1
	or	$v1, $t2, $v1
	b	lbl_00113CF8
	addiu	$v0, $v0, -1
lbl_00113CF0:
	addiu	$v0, $s2, -1
	or	$v1, $t2, $v1
lbl_00113CF8:
	dsll32	$v0, $v0, 0xc
	or	$v0, $a1, $v0
	or	$v1, $v1, $v0
	or	$v0, $v1, $a3
	b	lbl_00113E00
	sd	$v0, 24($s3)
lbl_00113D10:
	beqzl	$s0, lbl_00113D18
	break	0x7
lbl_00113D18:
	div	$zero, $v0, $s0
	addiu	$a3, $s2, -1
	lw	$a1, 0($sp)
	dsll32	$a3, $a3, 0xc
	lw	$v1, 4($sp)
	daddiu	$a1, $a1, 656
	addu	$v1, $s4, $v1
	addiu	$v1, $v1, 36
lbl_00113D38:
	andi	$v1, $v1, 0xfff
	dsll	$v1, $v1, 0xc
	mflo	$v0
	mult	$a2, $s5, $v0
	mult1	$a0, $v0, $s0
	addiu	$v0, $v0, -1
	daddu	$a1, $a2, $a1
	dsll	$v0, $v0, 0x17
	andi	$a1, $a1, 0xfff
	addiu	$a0, $a0, -1
	or	$a1, $a1, $a3
	dsll32	$a0, $a0, 0x0
	or	$v0, $v0, $a0
	or	$v0, $v0, $a1
	or	$v0, $v0, $v1
	b	lbl_00113E00
	sd	$v0, 24($s3)
lbl_00113D7C:
	bne	$a1, $v0, lbl_00113DF8
	lui	$a0, 0x13
	li	$v0, 720
	lw	$a1, 0($sp)
	subu	$v0, $v0, $s0
	sll	$a2, $s5, 0x1
	srl	$v1, $v0, 0x1f
	lw	$a0, 4($sp)
	addu	$v0, $v0, $v1
	daddiu	$a3, $a2, 232
	sra	$v0, $v0, 0x1
	sll	$a2, $s0, 0x1
	sll	$v0, $v0, 0x1
	addu	$a0, $s4, $a0
	daddu	$a1, $v0, $a1
	addiu	$v1, $s2, -1
	daddu	$a1, $a1, $a3
	addiu	$a2, $a2, -1
	dsll32	$v1, $v1, 0xc
	dsll32	$a2, $a2, 0x0
	andi	$a1, $a1, 0xfff
	addiu	$a0, $a0, 35
	lui	$v0, 0x80
	or	$v1, $v1, $a2
	or	$a1, $a1, $v0
	andi	$a0, $a0, 0xfff
	or	$v1, $v1, $a1
	dsll	$a0, $a0, 0xc
	or	$v1, $v1, $a0
	b	lbl_00113E00
	sd	$v1, 24($s3)
lbl_00113DF8:
	jal	sub_001087F8
	addiu	$a0, $a0, 20904
lbl_00113E00:
	sd	$zero, 32($s3)
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop

sub_00113E30:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00112E20
	move	$s0, $a0
	lh	$v1, 6($v0)
	li	$v0, 1
	bne	$v1, $v0, lbl_00113E94
	ld	$a0, 0($s0)
	lui	$v0, 0x1200
	lui	$v1, 0x1200
	lui	$a2, 0x1200
	sd	$a0, 0($v0)
	ori	$v1, $v1, 0x70
	ori	$a2, $a2, 0x80
	lui	$a0, 0x1200
	ld	$a1, 16($s0)
	ori	$a0, $a0, 0xc0
	sd	$a1, 0($v1)
	ld	$v0, 24($s0)
	sd	$v0, 0($a2)
	ld	$v1, 32($s0)
	sd	$v1, 0($a0)
	b	lbl_00113EE0
	ld	$ra, 16($sp)
lbl_00113E94:
	lui	$v1, 0x1200
	lui	$v0, 0x1200
	lui	$a2, 0x1200
	sd	$a0, 0($v1)
	ori	$v0, $v0, 0x20
	ori	$a2, $a2, 0x90
	lui	$a1, 0x1200
	ld	$v1, 8($s0)
	ori	$a1, $a1, 0xa0
	lui	$a0, 0x1200
	sd	$v1, 0($v0)
	ori	$a0, $a0, 0xe0
	ld	$v0, 16($s0)
	sd	$v0, 0($a2)
	ld	$v1, 24($s0)
	sd	$v1, 0($a1)
	ld	$v0, 32($s0)
	sd	$v0, 0($a0)
	ld	$ra, 16($sp)
lbl_00113EE0:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00113EF0:
	addiu	$sp, $sp, -64
	sll	$a2, $a2, 0x10
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sll	$s1, $a0, 0x10
	sd	$s2, 32($sp)
	sll	$s0, $a1, 0x10
	sra	$s0, $s0, 0x10
	sra	$s1, $s1, 0x10
	sd	$ra, 48($sp)
	jal	sub_00112E20
	sra	$s2, $a2, 0x10
	addiu	$v1, $s0, 63
	move	$a1, $v0
	li	$a0, -1
	addiu	$s0, $s0, 126
	slt	$v0, $a0, $v1
	andi	$s1, $s1, 0x2
	movn	$s0, $v1, $v0
	beqz	$s1, lbl_00113F5C
	sra	$s0, $s0, 0x6
	addiu	$v0, $s2, 63
	addiu	$v1, $s2, 126
	slt	$a0, $a0, $v0
	movn	$v1, $v0, $a0
	b	lbl_00113F70
	sra	$a2, $v1, 0x6
lbl_00113F5C:
	addiu	$v0, $s2, 31
	addiu	$v1, $s2, 62
	slt	$a0, $a0, $v0
	movn	$v1, $v0, $a0
	sra	$a2, $v1, 0x5
lbl_00113F70:
	ld	$v0, 0($a1)
	li	$v1, 0xffff
	dsll32	$v1, $v1, 0x0
	ori	$v1, $v1, 0xffff
	li	$a0, 1
	and	$v0, $v0, $v1
	bne	$v0, $a0, lbl_00113F98
	mult	$v0, $s0, $a2
	b	lbl_00113F9C
	sll	$v0, $v0, 0x10
lbl_00113F98:
	sll	$v0, $v0, 0x11
lbl_00113F9C:
	sra	$v0, $v0, 0x10
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00113FB8:
	sll	$a3, $a3, 0x10
	sll	$t1, $t1, 0x10
	sra	$a3, $a3, 0x10
	sra	$t1, $t1, 0x10
	addu	$t1, $a3, $t1
	sll	$a2, $a2, 0x10
	sll	$t0, $t0, 0x10
	lbu	$t4, 0($sp)
	sra	$a2, $a2, 0x10
	sra	$t0, $t0, 0x10
	sll	$t1, $t1, 0x4
	sll	$a3, $a3, 0x4
	lwu	$v1, 16($sp)
	addu	$t0, $a2, $t0
	andi	$t3, $t3, 0xff
	lbu	$t5, 8($sp)
	dsll	$t3, $t3, 0x8
	li	$v0, 0xfe00
	dsll32	$v0, $v0, 0xe
	sll	$t0, $t0, 0x4
	sll	$a2, $a2, 0x4
	andi	$t2, $t2, 0xff
	dsll	$t4, $t4, 0x10
	dsll	$a3, $a3, 0x10
	dsll	$t1, $t1, 0x10
	dsll32	$v1, $v1, 0x0
	or	$t2, $t2, $v0
	or	$t4, $t4, $t3
	or	$a3, $a2, $a3
	or	$t1, $t0, $t1
	sll	$a1, $a1, 0x10
	move	$a2, $a0
	or	$t1, $t1, $v1
	or	$a3, $a3, $v1
	or	$t2, $t2, $t4
	dsll	$t5, $t5, 0x18
	sra	$t0, $a1, 0x10
	li	$a0, 71
	li	$a1, 5
	or	$t2, $t2, $t5
	lui	$t3, 0x3
	li	$v0, 6
	li	$v1, 1
	sd	$v0, 16($a2)
	sd	$v1, 40($a2)
	sd	$t2, 32($a2)
	sd	$a3, 48($a2)
	sd	$a1, 72($a2)
	sd	$t1, 64($a2)
	sd	$a0, 88($a2)
	sd	$a0, 8($a2)
	sd	$t3, 0($a2)
	sd	$zero, 24($a2)
	beqz	$t0, lbl_001140AC
	sd	$a1, 56($a2)
	andi	$v0, $t0, 0x3
	lui	$v1, 0x1
	dsll	$v0, $v0, 0x11
	or	$v0, $v0, $v1
	b	lbl_001140B0
	sd	$v0, 80($a2)
lbl_001140AC:
	sd	$t3, 80($a2)
lbl_001140B0:
	sync
	jr	$ra
	li	$v0, 6
	nop

sub_001140C0:
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lui	$s1, 0x100
	sd	$ra, 48($sp)
	move	$s0, $a0
	sd	$s2, 32($sp)
	lw	$v0, 0($s0)
	andi	$v0, $v0, 0x100
	beqz	$v0, lbl_00114118
	lui	$s2, 0x13
	addiu	$s1, $s1, -1
lbl_001140F0:
	bgez	$s1, lbl_00114108
	nop
	jal	sub_001087F8
	addiu	$a0, $s2, 20960
	jal	sub_00114858
	move	$a0, $s0
lbl_00114108:
	lw	$v0, 0($s0)
	andi	$v0, $v0, 0x100
	bnez	$v0, lbl_001140F0
	addiu	$s1, $s1, -1
lbl_00114118:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00114130:
	addiu	$sp, $sp, -80
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	move	$s1, $a0
	sd	$ra, 64($sp)
	lui	$s0, 0x100
	sd	$s3, 48($sp)
	movn	$s0, $a2, $a2
	lw	$v0, 16($s1)
	sltu	$v0, $v0, $s2
	beqz	$v0, lbl_00114198
	lui	$s3, 0x13
	addiu	$s0, $s0, -1
	nop
lbl_00114170:
	bgez	$s0, lbl_00114188
	nop
	jal	sub_001087F8
	addiu	$a0, $s3, 20960
	jal	sub_00114858
	move	$a0, $s1
lbl_00114188:
	lw	$v0, 16($s1)
	sltu	$v0, $v0, $s2
	bnez	$v0, lbl_00114170
	addiu	$s0, $s0, -1
lbl_00114198:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_001141B8:
	li	$v1, 7
	srl	$v0, $a0, 0x1c
	bne	$v0, $v1, lbl_001141D8
	lui	$v0, 0xfff
	lui	$v1, 0x8000
	ori	$v0, $v0, 0xffff
	and	$a0, $a0, $v0
	or	$a0, $a0, $v1
lbl_001141D8:
	jr	$ra
	move	$v0, $a0

sub_001141E0:
	beqz	$a1, lbl_0011420C
	addiu	$v0, $a1, -1
	li	$v1, -1
	nop
lbl_001141F0:
	sb	$zero, 0($a0)
	addiu	$v0, $v0, -1
	addiu	$a0, $a0, 1
	nop
	nop
	bne	$v0, $v1, lbl_001141F0
	nop
lbl_0011420C:
	jr	$ra
	nop
	nop

sub_00114218:
	sltiu	$v0, $a0, 10
	beqz	$v0, lbl_00114238
	lui	$v0, 0x13
	sll	$v1, $a0, 0x2
	addiu	$v0, $v0, 2304
	addu	$v1, $v1, $v0
	jr	$ra
	lw	$v0, 0($v1)
lbl_00114238:
	jr	$ra
	move	$v0, $zero

sub_00114240:
	addiu	$sp, $sp, -80
	lui	$v0, 0x1000
	sd	$s1, 48($sp)
	ori	$v0, $v0, 0xe000
	sd	$s0, 32($sp)
	lui	$a2, 0x13
	sd	$ra, 64($sp)
	lui	$v1, 0x13
	move	$s0, $a0
	addiu	$v1, $v1, 2304
	lw	$a1, 0($v0)
	addiu	$a2, $a2, 20984
	li	$a0, 9
	andi	$s1, $a1, 0x1
lbl_00114278:
	lw	$v0, 0($a2)
	beqzl	$v0, lbl_001142A4
	addiu	$v1, $v1, 4
	lw	$v0, 0($v1)
	sw	$zero, 128($v0)
	sw	$zero, 0($v0)
	sw	$zero, 48($v0)
	sw	$zero, 16($v0)
	sw	$zero, 80($v0)
	sw	$zero, 64($v0)
	addiu	$v1, $v1, 4
lbl_001142A4:
	addiu	$a0, $a0, -1
	bgez	$a0, lbl_00114278
	addiu	$a2, $a2, 4
	lui	$v1, 0x1000
	li	$v0, 0xff1f
	ori	$v1, $v1, 0xe010
	lui	$a2, 0xff1f
	sw	$v0, 0($v1)
	move	$a0, $sp
	li	$a1, 20
	lw	$v0, 0($v1)
	and	$v0, $v0, $a2
	jal	sub_001141E0
	sw	$v0, 0($v1)
	jal	sub_00114320
	move	$a0, $sp
	li	$v1, 1
	bne	$s0, $v1, lbl_00114308
	move	$v0, $s1
	lui	$v1, 0x1000
	ori	$v1, $v1, 0xe000
	lw	$v0, 0($v1)
	ori	$v0, $v0, 0x1
	sw	$v0, 0($v1)
	move	$v0, $s1
lbl_00114308:
	ld	$ra, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00114320:
	lui	$v0, 0x1000
	lui	$v1, 0x1000
	ori	$v0, $v0, 0xe000
	ori	$v1, $v1, 0xe020
	lw	$t2, 0($v0)
	lui	$a1, 0x1000
	lw	$a2, 0($v1)
	move	$t1, $a0
	ori	$a1, $a1, 0xe030
	lui	$v1, 0x1000
	lw	$a1, 0($a1)
	ori	$v1, $v1, 0xe050
	lui	$v0, 0x1000
	lbu	$a0, 0($t1)
	lw	$a2, 0($v1)
	ori	$v0, $v0, 0xe040
	lw	$t0, 0($v0)
	sltiu	$a0, $a0, 10
	bnezl	$a0, lbl_00114378
	lbu	$v0, 1($t1)
	jr	$ra
	li	$v0, -1
lbl_00114378:
	sltiu	$v0, $v0, 10
	bnezl	$v0, lbl_0011438C
	lbu	$v0, 2($t1)
	jr	$ra
	li	$v0, -2
lbl_0011438C:
	sltiu	$v0, $v0, 10
	bnezl	$v0, lbl_001143A0
	lbu	$t3, 3($t1)
	jr	$ra
	li	$v0, -3
lbl_001143A0:
	sltiu	$v0, $t3, 7
	bnez	$v0, lbl_001143B4
	lui	$v0, 0x13
	jr	$ra
	li	$v0, -4
lbl_001143B4:
	lbu	$v1, 0($t1)
	addiu	$v0, $v0, 21024
	lui	$a0, 0x13
	lbu	$a1, 1($t1)
	addu	$v1, $v1, $v0
	addiu	$a0, $a0, 21040
	lbu	$t0, 0($v1)
	addu	$a1, $a1, $a0
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffcf
	lui	$a0, 0x13
	lbu	$a3, 2($t1)
	and	$v0, $t2, $v0
	addiu	$a0, $a0, 21056
	sll	$t0, $t0, 0x4
	lbu	$a2, 0($a1)
	lui	$v1, 0xffff
	or	$t2, $v0, $t0
	addu	$a3, $a3, $a0
	ori	$v1, $v1, 0xff3f
	sll	$a2, $a2, 0x6
	and	$v1, $t2, $v1
	lbu	$a0, 0($a3)
	lui	$v0, 0xffff
	or	$t2, $v1, $a2
	ori	$v0, $v0, 0xfff3
	sll	$a0, $a0, 0x2
	and	$v0, $t2, $v0
	beqz	$t3, lbl_00114450
	or	$t2, $v0, $a0
	lbu	$v1, 3($t1)
	lui	$v0, 0xffff
	ori	$t2, $t2, 0x2
	ori	$v0, $v0, 0xfcff
	addiu	$v1, $v1, -1
	and	$v0, $t2, $v0
	sll	$v1, $v1, 0x8
	b	lbl_0011445C
	or	$t2, $v0, $v1
lbl_00114450:
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffd
	and	$t2, $t2, $v0
lbl_0011445C:
	lhu	$v0, 4($t1)
	lui	$a0, 0x1000
	lhu	$a2, 6($t1)
	ori	$a0, $a0, 0xe000
	lhu	$a1, 10($t1)
	sll	$v0, $v0, 0x10
	lw	$t0, 16($t1)
	or	$a2, $v0, $a2
	lhu	$a3, 8($t1)
	lui	$v1, 0x1000
	sw	$t2, 0($a0)
	ori	$v1, $v1, 0xe020
	sll	$a1, $a1, 0x10
	lui	$v0, 0x1000
	sw	$a2, 0($v1)
	or	$a1, $a1, $a3
	ori	$v0, $v0, 0xe030
	lw	$a2, 12($t1)
	sw	$a1, 0($v0)
	lui	$v1, 0x1000
	ori	$v1, $v1, 0xe050
	lui	$v0, 0x1000
	sw	$a2, 0($v1)
	ori	$v0, $v0, 0xe040
	sw	$t0, 0($v0)
	lui	$v1, 0x15
	addiu	$a2, $v1, -32128
	ldl	$v0, 7($t1)
	ldr	$v0, 0($t1)
	ldl	$a0, 15($t1)
	ldr	$a0, 8($t1)
	lw	$a1, 16($t1)
	sdl	$v0, 7($a2)
	sdr	$v0, 0($a2)
	sdl	$a0, 15($a2)
	sdr	$a0, 8($a2)
	sw	$a1, 16($a2)
	jr	$ra
	move	$v0, $zero
	lui	$v1, 0x15
	addiu	$t0, $v1, -32128
	ldl	$a1, 7($t0)
	ldr	$a1, 0($t0)
	ldl	$a2, 15($t0)
	ldr	$a2, 8($t0)
	lw	$a3, 16($t0)
	sdl	$a1, 7($a0)
	sdr	$a1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sw	$a3, 16($a0)
	jr	$ra
	move	$v0, $a0
	lui	$v1, 0x1000
	ori	$v1, $v1, 0xe060
	lw	$v0, 0($v1)
	jr	$ra
	sw	$a0, 0($v1)
	nop

sub_00114548:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_001141B8
	move	$a0, $a1
	move	$s1, $v0
	jal	sub_001140C0
	move	$a0, $s0
	lui	$v0, 0xffff
	lw	$v1, 48($s0)
	ori	$v0, $v0, 0xffff
	bnel	$v1, $v0, lbl_00114584
	sw	$s1, 48($s0)
lbl_00114584:
	lw	$v0, 0($s0)
	li	$v1, -13
	sw	$zero, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 32($sp)
	ori	$v0, $v0, 0x105
	ld	$s1, 16($sp)
	sw	$v0, 0($s0)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	jal	sub_001141B8
	move	$a0, $a1
	move	$s1, $v0
	jal	sub_001140C0
	move	$a0, $s0
	lui	$v0, 0xffff
	lw	$v1, 16($s0)
	ori	$v0, $v0, 0xffff
	bnel	$v1, $v0, lbl_001145F4
	sw	$s1, 16($s0)
lbl_001145F4:
	lw	$v0, 0($s0)
	li	$v1, -13
	sw	$s2, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 48($sp)
	ori	$v0, $v0, 0x101
	ld	$s2, 32($sp)
	sw	$v0, 0($s0)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	jal	sub_001141B8
	move	$a0, $a1
	move	$s1, $v0
	jal	sub_001140C0
	move	$a0, $s0
	lui	$v0, 0xffff
	lw	$v1, 16($s0)
	ori	$v0, $v0, 0xffff
	bnel	$v1, $v0, lbl_0011466C
	sw	$s1, 16($s0)
lbl_0011466C:
	lw	$v0, 0($s0)
	li	$v1, -13
	sw	$s2, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 48($sp)
	ori	$v0, $v0, 0x109
	ld	$s2, 32($sp)
	sw	$v0, 0($s0)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_001140C0
	move	$s0, $a0
	lw	$v0, 0($s0)
	li	$v1, -13
	li	$a0, -2
	sw	$zero, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 16($sp)
	ori	$v0, $v0, 0x4
	and	$v0, $v0, $a0
	ori	$v0, $v0, 0x100
	sw	$v0, 0($s0)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	jal	sub_001141B8
	move	$a0, $a1
	move	$s1, $v0
	jal	sub_001140C0
	move	$a0, $s0
	lui	$v0, 0xffff
	lw	$v1, 16($s0)
	ori	$v0, $v0, 0xffff
	bnel	$v1, $v0, lbl_0011472C
	sw	$s1, 16($s0)
lbl_0011472C:
	lw	$v0, 0($s0)
	li	$v1, -13
	li	$a0, -2
	sw	$s2, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 48($sp)
	and	$v0, $v0, $a0
	ld	$s2, 32($sp)
	ori	$v0, $v0, 0x100
	ld	$s1, 16($sp)
	sw	$v0, 0($s0)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$ra, 48($sp)
	jal	sub_001141B8
	move	$a0, $a1
	move	$s1, $v0
	jal	sub_001140C0
	move	$a0, $s0
	lui	$v0, 0xffff
	lw	$v1, 16($s0)
	ori	$v0, $v0, 0xffff
	bnel	$v1, $v0, lbl_001147AC
	sw	$s1, 16($s0)
lbl_001147AC:
	lw	$v0, 0($s0)
	li	$v1, -13
	li	$a0, -2
	sw	$s2, 32($s0)
	and	$v0, $v0, $v1
	ld	$ra, 48($sp)
	ori	$v0, $v0, 0x8
	ld	$s2, 32($sp)
	and	$v0, $v0, $a0
	ld	$s1, 16($sp)
	ori	$v0, $v0, 0x100
	sw	$v0, 0($s0)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_001147E8:
	addiu	$sp, $sp, -16
	li	$v0, 1
	bne	$a1, $v0, lbl_00114808
	sd	$ra, 0($sp)
	lw	$v0, 0($a0)
	srl	$v0, $v0, 0x8
	b	lbl_00114814
	andi	$v0, $v0, 0x1
lbl_00114808:
	jal	sub_001140C0
	nop
	move	$v0, $zero
lbl_00114814:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	li	$v0, 1
	bne	$a2, $v0, lbl_0011483C
	sd	$ra, 0($sp)
	lw	$v0, 16($a0)
	b	lbl_00114848
	sltu	$v0, $v0, $a1
lbl_0011483C:
	jal	sub_00114130
	move	$a2, $a3
	move	$v0, $zero
lbl_00114848:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00114858:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	move	$s1, $a0
	jal	sub_0010F420
	sd	$s0, 0($sp)
	move	$a3, $v0
	lui	$a0, 0x1
	lui	$v0, 0x1000
	ori	$v0, $v0, 0xf520
	lw	$a2, 0($v0)
	and	$v1, $a2, $a0
	bnez	$v1, lbl_001148A0
	lui	$v0, 0x1000
	or	$v1, $a2, $a0
	ori	$v0, $v0, 0xf590
	sw	$v1, 0($v0)
	lui	$v0, 0x1000
lbl_001148A0:
	lui	$a0, 0xffff
	ori	$v0, $v0, 0xe000
	ori	$a0, $a0, 0xfeff
	lw	$a1, 0($v0)
	lui	$v1, 0x1000
	lw	$s0, 0($s1)
	ori	$v1, $v1, 0xf590
	and	$a0, $s0, $a0
	sw	$a0, 0($s1)
	sw	$a2, 0($v1)
	beqz	$a3, lbl_001148DC
	move	$v0, $s0
	jal	sub_0010F470
	nop
	move	$v0, $s0
lbl_001148DC:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lw	$v0, 0($a0)
	sw	$a1, 0($a0)
	srl	$v0, $v0, 0x8
	jr	$ra
	andi	$v0, $v0, 0x1
	nop

sub_00114908:
	li	$v1, 1
	lui	$v0, 0x13
	lui	$a0, 0x15
	sw	$v1, 2360($v0)
	addiu	$a0, $a0, -32104
	addiu	$v1, $a0, 13120
lbl_00114920:
	sw	$zero, 0($a0)
	sw	$zero, 4($a0)
	sw	$zero, 8($a0)
	sw	$zero, 12($a0)
	addiu	$a0, $a0, 820
	slt	$v0, $a0, $v1
	bnez	$v0, lbl_00114920
	nop
	jr	$ra
	li	$v0, 1
	addiu	$sp, $sp, -48
	lui	$v0, 0x13
	sd	$s1, 16($sp)
	lui	$v1, 0x15
	sd	$s0, 0($sp)
	addiu	$s1, $v1, -32104
	sd	$ra, 32($sp)
	move	$s0, $zero
	sw	$zero, 2360($v0)
	nop
lbl_00114970:
	lw	$v0, 0($s1)
	beqzl	$v0, lbl_0011498C
	addiu	$s0, $s0, 1
	jal	sub_00114AB8
	move	$a0, $s0
	bltz	$v0, lbl_0011499C
	addiu	$s0, $s0, 1
lbl_0011498C:
	slti	$v0, $s0, 16
	bnez	$v0, lbl_00114970
	addiu	$s1, $s1, 820
	li	$v0, 1
lbl_0011499C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_001149B0:
	addiu	$sp, $sp, -112
	move	$a2, $a0
	sd	$s1, 64($sp)
	move	$s1, $a1
	sd	$ra, 96($sp)
	sd	$s2, 80($sp)
	andi	$v0, $s1, 0x3f
	beqz	$v0, lbl_001149E8
	sd	$s0, 48($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 21072
	b	lbl_00114AA0
	li	$v0, -1
lbl_001149E8:
	beqzl	$a2, lbl_00114A38
	sw	$zero, 0($sp)
	lw	$v0, 0($a2)
	lw	$v1, 4($a2)
	lw	$a0, 8($a2)
	lw	$a1, 12($a2)
	sw	$v0, 0($sp)
	sw	$v1, 8($sp)
	sw	$a0, 12($sp)
	sw	$a1, 16($sp)
	ldl	$v0, 23($a2)
	ldr	$v0, 16($a2)
	ldl	$v1, 31($a2)
	ldr	$v1, 24($a2)
	sdl	$v0, 27($sp)
	sdr	$v0, 20($sp)
	sdl	$v1, 35($sp)
	sdr	$v1, 28($sp)
	b	lbl_00114A4C
	lw	$v0, 0($sp)
lbl_00114A38:
	sw	$zero, 8($sp)
	sw	$zero, 12($sp)
	sw	$zero, 16($sp)
	sb	$zero, 20($sp)
	lw	$v0, 0($sp)
lbl_00114A4C:
	li	$s2, 1
	sw	$s2, 4($sp)
	move	$a0, $sp
	ori	$v0, $v0, 0x1
	move	$a1, $s1
	sw	$v0, 0($sp)
	jal	sub_00115740
	addiu	$a2, $s1, 128
	move	$s0, $v0
	bltz	$s0, lbl_00114AA0
	lui	$v1, 0x15
	li	$v0, 820
	mult	$v0, $s0, $v0
	addiu	$v1, $v1, -32104
	move	$a0, $s0
	addu	$a1, $v1, $v0
	addu	$v0, $v0, $v1
	sw	$s1, 16($a1)
	jal	sub_00114ED8
	sw	$s2, 0($v0)
	move	$v0, $s0
lbl_00114AA0:
	ld	$ra, 96($sp)
	ld	$s2, 80($sp)
	ld	$s1, 64($sp)
	ld	$s0, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_00114AB8:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00115870
	move	$s0, $a0
	bltz	$v0, lbl_00114AFC
	li	$a0, 820
	lui	$v1, 0x15
	mult	$a0, $s0, $a0
	addiu	$v1, $v1, -32104
	li	$v0, 1
	addu	$a1, $a0, $v1
	addu	$a2, $v1, $a0
	sw	$zero, 0($a1)
	move	$v1, $a2
	sw	$zero, 4($a2)
	sw	$zero, 12($v1)
lbl_00114AFC:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00114B10:
	addiu	$sp, $sp, -64
	li	$v0, 820
	sd	$s1, 16($sp)
	lui	$v1, 0x15
	move	$s1, $a0
	sd	$s2, 32($sp)
	mult	$a0, $s1, $v0
	addiu	$a2, $v1, -32104
	sd	$ra, 48($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	addu	$v0, $a0, $a2
	lw	$v1, 0($v0)
	beqz	$v1, lbl_00114BCC
	li	$v0, -1
	addu	$v0, $a2, $a0
	lw	$v1, 4($v0)
	bnez	$v1, lbl_00114B6C
	nop
	jal	sub_00114F50
	move	$a0, $s1
	bltz	$v0, lbl_00114BCC
	li	$v0, -1
lbl_00114B6C:
	jal	sub_00114FA8
	move	$a0, $s1
	move	$s0, $v0
	lbu	$a2, 2($s0)
	beqzl	$a2, lbl_00114BC0
	lw	$v0, 4($s0)
	addiu	$a1, $s0, 28
	beqzl	$a1, lbl_00114BC0
	lw	$v0, 4($s0)
	jal	sub_0012515C
	move	$a0, $s2
	li	$v1, 820
	lbu	$a0, 2($s0)
	mult	$v1, $s1, $v1
	lui	$a1, 0x15
	addiu	$a0, $a0, 28
	addiu	$a1, $a1, -32084
	addu	$a0, $s0, $a0
	jal	sub_001150D8
	addu	$a1, $v1, $a1
	lw	$v0, 4($s0)
lbl_00114BC0:
	bnezl	$v0, lbl_00114BCC
	lbu	$v0, 2($s0)
	li	$v0, -1
lbl_00114BCC:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00114BE8:
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s2, 32($sp)
	move	$s1, $a0
	sd	$ra, 48($sp)
	move	$s2, $a1
	jal	sub_00114CB8
	sd	$s0, 0($sp)
	li	$v1, 820
	lui	$v0, 0x15
	mult	$v1, $s1, $v1
	addiu	$v0, $v0, -32104
	addu	$v0, $v0, $v1
	lw	$a0, 4($v0)
	bnez	$a0, lbl_00114C38
	nop
	jal	sub_00114F50
	move	$a0, $s1
	bltz	$v0, lbl_00114C9C
	li	$v0, -1
lbl_00114C38:
	jal	sub_00115010
	move	$a0, $s1
	move	$s0, $v0
	lbu	$a2, 3($s0)
	beqz	$a2, lbl_00114C8C
	addiu	$v0, $s0, 28
	beqz	$v0, lbl_00114C8C
	move	$a0, $s2
	lbu	$a1, 2($s0)
	addu	$a1, $a1, $s0
	jal	sub_0012515C
	addiu	$a1, $a1, 28
	li	$v1, 820
	lbu	$a0, 2($s0)
	mult	$v1, $s1, $v1
	lui	$a1, 0x15
	addiu	$a0, $a0, 28
	addiu	$a1, $a1, -32084
	addu	$a0, $s0, $a0
	jal	sub_001150D8
	addu	$a1, $v1, $a1
lbl_00114C8C:
	lw	$v0, 4($s0)
	bnezl	$v0, lbl_00114C9C
	lbu	$v0, 3($s0)
	li	$v0, -1
lbl_00114C9C:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00114CB8:
	addiu	$sp, $sp, -80
	li	$v1, 820
	sd	$s1, 32($sp)
	move	$s1, $a0
	sd	$s2, 48($sp)
	mult	$v1, $s1, $v1
	lui	$s2, 0x15
	sd	$ra, 64($sp)
	addiu	$v0, $s2, -32104
	sd	$s0, 16($sp)
	addu	$v0, $v0, $v1
	lw	$a0, 4($v0)
	bnez	$a0, lbl_00114D00
	nop
	jal	sub_00114F50
	move	$a0, $s1
	bltz	$v0, lbl_00114DE0
	move	$v0, $zero
lbl_00114D00:
	jal	sub_00115078
	move	$a0, $s1
	beqz	$v0, lbl_00114D44
	li	$v0, -16384
	jal	sub_00115010
	move	$a0, $s1
	move	$s0, $v0
	lw	$v0, 4($s0)
	bnezl	$v0, lbl_00114D3C
	lbu	$v0, 0($s0)
	jal	sub_00114F50
	move	$a0, $s1
	bltz	$v0, lbl_00114DBC
	li	$v0, 820
	lbu	$v0, 0($s0)
lbl_00114D3C:
	b	lbl_00114DDC
	sb	$v0, 0($sp)
lbl_00114D44:
	li	$v1, 12
	and	$s0, $s0, $v0
	lui	$a0, 0xffff
	ori	$a0, $a0, 0x3fff
	or	$s0, $s0, $v1
	li	$v0, 0x8000
	and	$s0, $s0, $a0
	lui	$v1, 0xff00
	ori	$v1, $v1, 0xffff
	or	$s0, $s0, $v0
	lui	$a0, 0x1
	and	$s0, $s0, $v1
	li	$v0, -1
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	or	$s0, $s0, $a0
	lui	$v1, 0x100
	and	$s0, $s0, $v0
	move	$a0, $s1
	or	$s0, $s0, $v1
	ori	$a2, $sp, 0x4
	dsll32	$a1, $s0, 0x0
	dsra32	$a1, $a1, 0x0
	jal	sub_00116430
	move	$a3, $sp
	bgezl	$v0, lbl_00114DE0
	lbu	$v0, 0($sp)
	li	$v0, 820
lbl_00114DBC:
	addiu	$v1, $s2, -32104
	mult	$v0, $s1, $v0
	move	$a0, $s1
	addu	$v1, $v1, $v0
	jal	sub_00114ED8
	sw	$zero, 4($v1)
	b	lbl_00114DE0
	move	$v0, $zero
lbl_00114DDC:
	lbu	$v0, 0($sp)
lbl_00114DE0:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	li	$v1, 820
	sll	$a2, $a2, 0x4
	mult	$a0, $a0, $v1
	lui	$v0, 0x15
	addiu	$v0, $v0, -32104
	addiu	$sp, $sp, -16
	move	$t0, $a1
	addu	$a2, $a2, $a0
	addu	$a2, $a2, $v0
	ldl	$v0, 27($a2)
	ldr	$v0, 20($a2)
	ldl	$v1, 35($a2)
	ldr	$v1, 28($a2)
	sdl	$v0, 7($sp)
	sdr	$v0, 0($sp)
	sdl	$v1, 15($sp)
	sdr	$v1, 8($sp)
	lw	$v0, 0($sp)
	beqz	$v0, lbl_00114ECC
	lw	$a3, 4($sp)
	li	$v0, 1
	beq	$a3, $v0, lbl_00114E68
	lw	$v0, 8($sp)
	li	$v0, 8
	beq	$a3, $v0, lbl_00114E88
	li	$v0, -1
	b	lbl_00114ED0
	nop
lbl_00114E68:
	lw	$a0, 12($sp)
	addu	$v0, $t0, $v0
	lbu	$v1, 0($v0)
	move	$v0, $a3
	srav	$v1, $v1, $a0
	andi	$v1, $v1, 0x1
	b	lbl_00114ED0
	movn	$v0, $zero, $v1
lbl_00114E88:
	lw	$a0, 8($sp)
	lw	$a1, 12($sp)
	addu	$v1, $t0, $a0
	lbu	$v0, 0($v1)
	srav	$v0, $v0, $a1
	beqz	$a1, lbl_00114EC4
	andi	$a2, $v0, 0xff
	addiu	$v1, $a0, 1
	subu	$a1, $a3, $a1
	sw	$v1, 8($sp)
	addu	$a0, $t0, $v1
	lbu	$v0, 0($a0)
	sllv	$v0, $v0, $a1
	or	$v0, $a2, $v0
	andi	$a2, $v0, 0xff
lbl_00114EC4:
	b	lbl_00114ED0
	move	$v0, $a2
lbl_00114ECC:
	li	$v0, -1
lbl_00114ED0:
	jr	$ra
	addiu	$sp, $sp, 16

sub_00114ED8:
	li	$v1, 820
	addiu	$sp, $sp, -48
	mult	$a0, $a0, $v1
	lui	$v0, 0x15
	sd	$s1, 16($sp)
	addiu	$v0, $v0, -32104
	sd	$ra, 32($sp)
	li	$s1, 1
	sd	$s0, 0($sp)
	addu	$v0, $v0, $a0
	lw	$s0, 16($v0)
	sb	$zero, 0($s0)
lbl_00114F08:
	addiu	$a0, $s0, 28
	sw	$zero, 124($s0)
	li	$a1, 255
	sb	$zero, 1($s0)
	li	$a2, 32
	sb	$zero, 3($s0)
	addiu	$s1, $s1, -1
	sb	$zero, 2($s0)
	sw	$zero, 4($s0)
	jal	sub_00125310
	addiu	$s0, $s0, 128
	bgezl	$s1, lbl_00114F08
	sb	$zero, 0($s0)
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00114F50:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00115930
	move	$s0, $a0
	move	$a3, $v0
	bltz	$a3, lbl_00114F94
	li	$a0, 820
	lui	$v1, 0x15
	mult	$a0, $s0, $a0
	addiu	$v1, $v1, -32104
	li	$a2, 1
	move	$v0, $a3
	addu	$a1, $v1, $a0
	move	$v1, $a1
	sw	$a3, 12($a1)
	sw	$a2, 4($v1)
lbl_00114F94:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00114FA8:
	li	$v1, 820
	addiu	$sp, $sp, -32
	mult	$a0, $a0, $v1
	lui	$v0, 0x15
	sd	$ra, 16($sp)
	addiu	$v0, $v0, -32104
	addu	$v0, $v0, $a0
	lw	$v1, 16($v0)
	move	$a0, $v1
	addiu	$v0, $v1, 128
	sw	$v0, 4($sp)
	addiu	$a1, $a0, 255
	jal	sub_0012E800
	sw	$v1, 0($sp)
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	lw	$v0, 124($a0)
	lw	$v1, 124($a1)
	ld	$ra, 16($sp)
	slt	$v0, $v0, $v1
	sll	$v0, $v0, 0x2
	addu	$v1, $sp, $v0
	lw	$v0, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00115010:
	li	$v1, 820
	addiu	$sp, $sp, -32
	mult	$a0, $a0, $v1
	lui	$v0, 0x15
	sd	$ra, 16($sp)
	addiu	$v0, $v0, -32104
	addu	$v0, $v0, $a0
	lw	$v1, 16($v0)
	move	$a0, $v1
	addiu	$v0, $v1, 128
	sw	$v0, 4($sp)
	addiu	$a1, $a0, 256
	jal	sub_0012E800
	sw	$v1, 0($sp)
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	lw	$v0, 124($a0)
	lw	$v1, 124($a1)
	ld	$ra, 16($sp)
	slt	$v0, $v0, $v1
	sll	$v0, $v0, 0x2
	addu	$v1, $sp, $v0
	lw	$v0, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00115078:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00114FA8
	move	$s0, $a0
	lw	$a1, 124($v0)
	beqz	$a1, lbl_001150B8
	li	$a0, 820
	lui	$v0, 0x15
	mult	$a0, $s0, $a0
	addiu	$v0, $v0, -32104
	addiu	$v0, $v0, 8
	addu	$a0, $a0, $v0
	lw	$v1, 0($a0)
	bnel	$a1, $v1, lbl_001150C0
	sw	$a1, 0($a0)
lbl_001150B8:
	b	lbl_001150C4
	move	$v0, $zero
lbl_001150C0:
	li	$v0, 1
lbl_001150C4:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_001150D8:
	move	$t0, $zero
	move	$t1, $zero
	move	$a3, $zero
	move	$a2, $zero
	li	$t2, 8
	nop
lbl_001150F0:
	lbu	$v0, 0($a0)
	srav	$v0, $v0, $t0
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_00115150
	li	$v1, 1
	addiu	$v0, $a2, -16
	sltiu	$v0, $v0, 16
	sw	$v1, 0($a1)
	sw	$t1, 8($a1)
	bnez	$v0, lbl_0011512C
	sw	$a3, 12($a1)
	addiu	$v0, $a2, -35
	sltiu	$v0, $v0, 4
	beqzl	$v0, lbl_00115138
	addiu	$a3, $a3, 1
lbl_0011512C:
	sw	$t2, 4($a1)
	b	lbl_0011515C
	addiu	$t1, $t1, 1
lbl_00115138:
	andi	$v0, $a3, 0x7
	bnez	$v0, lbl_0011515C
	sw	$v1, 4($a1)
	addiu	$t1, $t1, 1
	b	lbl_0011515C
	move	$a3, $zero
lbl_00115150:
	sw	$zero, 0($a1)
	sw	$zero, 8($a1)
	sw	$zero, 12($a1)
lbl_0011515C:
	addiu	$t0, $t0, 1
	andi	$v0, $t0, 0x7
	bnez	$v0, lbl_00115174
	addiu	$a2, $a2, 1
	addiu	$a0, $a0, 1
	move	$t0, $zero
lbl_00115174:
	slti	$v0, $a2, 40
	bnez	$v0, lbl_001150F0
	addiu	$a1, $a1, 16
	jr	$ra
	li	$v0, 1
	sltiu	$v0, $a0, 4
	beqz	$v0, lbl_001151B0
	lui	$v0, 0x13
	lui	$v0, 0x13
	sll	$v1, $a0, 0x2
	addiu	$v0, $v0, 2376
	move	$a0, $a1
	addu	$v1, $v1, $v0
	j	sub_00125EF0
	lw	$a1, 0($v1)
lbl_001151B0:
	lbu	$v1, 21160($v0)
	jr	$ra
	sb	$v1, 0($a1)
	nop
	li	$v0, -16384
	li	$v1, 2
	and	$v0, $v0, $v0
	lui	$a2, 0xffff
	ori	$a2, $a2, 0x3fff
	or	$v0, $v0, $v1
	li	$a3, 0x8000
	and	$v0, $v0, $a2
	lui	$v1, 0xff00
	ori	$v1, $v1, 0xffff
	or	$v0, $v0, $a3
	lui	$a2, 0x3
	and	$v0, $v0, $v1
	move	$a3, $a1
	or	$v0, $v0, $a2
	li	$t0, -1
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0xff
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0xffff
	addiu	$sp, $sp, -32
	and	$v0, $v0, $t0
	lui	$a1, 0x100
	move	$a2, $sp
	sd	$ra, 16($sp)
	jal	sub_00116430
	or	$a1, $v0, $a1
	bgezl	$v0, lbl_00115234
	lw	$v0, 0($sp)
lbl_00115234:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00115240:
	addiu	$sp, $sp, -160
	li	$v0, -16384
	sd	$s4, 128($sp)
	li	$v1, 11
	and	$s4, $s4, $v0
	lui	$t1, 0xffff
	ori	$t1, $t1, 0x3fff
	or	$s4, $s4, $v1
	li	$v0, 16384
	and	$s4, $s4, $t1
	lui	$v1, 0xff00
	ori	$v1, $v1, 0xffff
	or	$s4, $s4, $v0
	lui	$t1, 0x3
	and	$s4, $s4, $v1
	li	$v0, -1
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	or	$s4, $s4, $t1
	sd	$s3, 112($sp)
	and	$s4, $s4, $v0
	sd	$s2, 96($sp)
	sd	$s1, 80($sp)
	move	$s3, $a0
	sd	$s0, 64($sp)
	move	$s1, $a1
	move	$s0, $a3
	move	$s2, $a2
	li	$v1, 40
	lui	$v0, 0x100
	or	$s4, $s4, $v0
	sw	$s0, 4($sp)
	move	$a2, $s0
	sd	$ra, 144($sp)
	sw	$v1, 48($sp)
	move	$a1, $t0
	jal	sub_0012515C
	ori	$a0, $sp, 0x8
	addu	$s0, $s0, $sp
	move	$a1, $s2
	addiu	$a0, $s0, 8
	move	$a2, $s1
	jal	sub_0012515C
	sw	$s1, 0($sp)
	move	$a0, $s3
	move	$a1, $s4
	addiu	$a2, $sp, 48
	jal	sub_00116128
	move	$a3, $sp
	ld	$ra, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop

sub_00115330:
	addiu	$sp, $sp, -48
	lui	$a0, 0x15
	sd	$s0, 16($sp)
	lui	$a1, 0x8000
	lui	$s0, 0x15
	sd	$ra, 32($sp)
	addiu	$a3, $s0, -18688
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1363
	move	$a2, $zero
	li	$t0, 144
	move	$t1, $a3
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	lw	$v0, -18688($s0)
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00115388:
	addiu	$sp, $sp, -192
	li	$v1, 1
	sd	$s8, 160($sp)
	sd	$ra, 176($sp)
	lui	$s8, 0x13
	sd	$s7, 144($sp)
	sd	$s6, 128($sp)
	sd	$s5, 112($sp)
	sd	$s4, 96($sp)
	sd	$s3, 80($sp)
	sd	$s2, 64($sp)
	sd	$s1, 48($sp)
	sd	$s0, 32($sp)
	lw	$v0, 2424($s8)
	bne	$v0, $v1, lbl_001153D0
	lui	$s7, 0x15
	b	lbl_001155F8
	li	$v0, 1
lbl_001153D0:
	move	$a0, $zero
	jal	sub_001088F8
	sw	$zero, -9536($s7)
	b	lbl_0011540C
	lui	$s1, 0x15
	nop
lbl_001153E8:
	li	$v0, -1
	nop
lbl_001153F0:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $v0, lbl_001153F0
	nop
lbl_0011540C:
	addiu	$s0, $s1, -18944
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x1300
	jal	sub_001090A0
	move	$a2, $zero
	bltz	$v0, lbl_00115590
	lui	$a0, 0x13
	lw	$v0, 36($s0)
	beqz	$v0, lbl_001153E8
	lui	$v1, 0x1
	jal	sub_00115330
	nop
	move	$s0, $v0
	li	$v1, 49
	sra	$v0, $s0, 0x4
	beq	$v0, $v1, lbl_00115480
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 21192
	lui	$a0, 0x13
	andi	$t0, $s0, 0xff
	addiu	$a0, $a0, 21232
	li	$a1, 3
	li	$a2, 16
	jal	sub_001087F8
	sra	$a3, $s0, 0x8
	b	lbl_001155F8
	move	$v0, $zero
lbl_00115480:
	b	lbl_001154AC
	lui	$s1, 0x15
lbl_00115488:
	lui	$v1, 0x1
	li	$v0, -1
lbl_00115490:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $v0, lbl_00115490
	nop
lbl_001154AC:
	addiu	$s0, $s1, -18864
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x131c
	jal	sub_001090A0
	move	$a2, $zero
	bltz	$v0, lbl_00115590
	lui	$a0, 0x13
	lw	$v0, 36($s0)
	beqz	$v0, lbl_00115488
	lui	$v0, 0x15
	lui	$s3, 0x8000
	addiu	$s6, $v0, -18824
	move	$s2, $zero
	ori	$s3, $s3, 0x131e
	addiu	$s5, $s6, 36
	move	$s4, $zero
lbl_001154F0:
	move	$s1, $s4
	b	lbl_00115524
	move	$s0, $s5
	nop
lbl_00115500:
	li	$v0, -1
	nop
lbl_00115508:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $v0, lbl_00115508
	nop
lbl_00115524:
	addu	$a0, $s1, $s6
	addu	$a1, $s2, $s3
	jal	sub_001090A0
	move	$a2, $zero
	bltz	$v0, lbl_00115590
	lui	$a0, 0x13
	lw	$v0, 0($s0)
	beqz	$v0, lbl_00115500
	lui	$v1, 0x1
	addiu	$s2, $s2, 1
	addiu	$s5, $s5, 40
	slti	$v0, $s2, 2
	bnez	$v0, lbl_001154F0
	addiu	$s4, $s4, 40
	lui	$v0, 0x13
	li	$v1, 1
	addiu	$v0, $v0, 21280
	li	$a1, 127
	sw	$v1, 8($sp)
	move	$a0, $sp
	sw	$a1, 4($sp)
	jal	sub_001068E0
	sw	$v0, 20($sp)
	bgez	$v0, lbl_001155A0
	sw	$v0, -9536($s7)
	b	lbl_001155F8
	move	$v0, $zero
lbl_00115590:
	jal	sub_00116558
	addiu	$a0, $a0, 21168
	b	lbl_001155F8
	move	$v0, $zero
lbl_001155A0:
	lui	$v0, 0x15
	li	$v1, 15
	addiu	$v0, $v0, -9600
	addiu	$v0, $v0, 60
lbl_001155B0:
	sw	$zero, 0($v0)
	addiu	$v1, $v1, -1
	addiu	$v0, $v0, -4
	nop
	nop
	bgez	$v1, lbl_001155B0
	nop
	lui	$s0, 0x15
	lui	$a0, 0x13
	addiu	$s0, $s0, -9728
	addiu	$a0, $a0, 21296
	jal	sub_00116558
	move	$a1, $s0
	jal	sub_001156D0
	move	$a0, $s0
	li	$v1, 1
	li	$v0, 1
	sw	$v1, 2424($s8)
lbl_001155F8:
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	lui	$v1, 0x13
	addiu	$sp, $sp, -16
	lw	$v0, 2424($v1)
	bnez	$v0, lbl_00115644
	sd	$ra, 0($sp)
	b	lbl_00115664
	move	$v0, $zero
lbl_00115644:
	lui	$v0, 0x15
	sw	$zero, 2424($v1)
	lw	$a0, -9536($v0)
	bltz	$a0, lbl_00115664
	li	$v0, 1
	jal	sub_001068F0
	nop
	li	$v0, 1
lbl_00115664:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -48
	lui	$v0, 0x15
	sd	$s0, 16($sp)
	lui	$a0, 0x15
	addiu	$s0, $v0, -18688
	lui	$a1, 0x8000
	sd	$ra, 32($sp)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1305
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 144
	move	$t1, $s0
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_001156C0
	lw	$v0, 4($s0)
	move	$v0, $zero
lbl_001156C0:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_001156D0:
	addiu	$sp, $sp, -48
	lui	$v0, 0x15
	sd	$s0, 16($sp)
	lui	$a1, 0x8000
	lui	$s0, 0x15
	sd	$ra, 32($sp)
	addiu	$a3, $s0, -18688
	ori	$a1, $a1, 0x1304
	sw	$a0, 4($a3)
	move	$a2, $zero
	addiu	$a0, $v0, -18944
	sw	$zero, 0($sp)
	li	$t0, 144
	move	$t1, $a3
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0011572C
	lw	$v0, -18688($s0)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21328
	move	$v0, $zero
lbl_0011572C:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00115740:
	addiu	$sp, $sp, -112
	lui	$v0, 0x13
	sd	$s3, 64($sp)
	sd	$s2, 48($sp)
	move	$s3, $a2
	sd	$s0, 16($sp)
	move	$s2, $a1
	lw	$v1, 2424($v0)
	move	$s0, $a0
	sd	$ra, 96($sp)
	sd	$s4, 80($sp)
	bnez	$v1, lbl_0011577C
	sd	$s1, 32($sp)
	b	lbl_00115850
	move	$v0, $zero
lbl_0011577C:
	lui	$s4, 0x15
	jal	sub_00106920
	lw	$a0, -9536($s4)
	lw	$v0, 0($s0)
	lui	$a3, 0x15
	addiu	$s1, $a3, -18688
	addiu	$a2, $s0, 20
	sw	$v0, -18688($a3)
	addiu	$t0, $s1, 20
	sw	$s2, 40($s1)
	move	$a1, $zero
	lw	$v0, 4($s0)
	sw	$s3, 44($s1)
	sw	$v0, 4($s1)
	lw	$v1, 8($s0)
	sw	$v1, 8($s1)
	lw	$v0, 12($s0)
	sw	$v0, 12($s1)
	lw	$v1, 16($s0)
	sw	$v1, 16($s1)
	nop
lbl_001157D0:
	addu	$v0, $a2, $a1
	addu	$a0, $t0, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 16
	sb	$v1, 0($a0)
	bnez	$v0, lbl_001157D0
	nop
	addiu	$a3, $a3, -18688
	lui	$a1, 0x8000
	lui	$a0, 0x15
	sw	$zero, 0($sp)
	addiu	$a0, $a0, -18944
	ori	$a1, $a1, 0x1301
	move	$a2, $zero
	li	$t0, 144
	move	$t1, $a3
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115844
	lw	$a0, -9536($s4)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21360
	jal	sub_00106900
	lw	$a0, -9536($s4)
	b	lbl_00115850
	move	$v0, $zero
lbl_00115844:
	jal	sub_00106900
	lw	$s0, 36($s1)
	move	$v0, $s0
lbl_00115850:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_00115870:
	addiu	$sp, $sp, -80
	lui	$v1, 0x13
	sd	$s1, 32($sp)
	lw	$v0, 2424($v1)
	move	$s1, $a0
	sd	$ra, 64($sp)
	sd	$s2, 48($sp)
	bnez	$v0, lbl_0011589C
	sd	$s0, 16($sp)
	b	lbl_00115914
	move	$v0, $zero
lbl_0011589C:
	lui	$s2, 0x15
	jal	sub_00106920
	lw	$a0, -9536($s2)
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s0, $v1, -18688
	lui	$a1, 0x8000
	sw	$s1, -18688($v1)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1302
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 144
	move	$t1, $s0
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115908
	lw	$a0, -9536($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21392
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00115914
	move	$v0, $zero
lbl_00115908:
	jal	sub_00106900
	lw	$s0, 4($s0)
	move	$v0, $s0
lbl_00115914:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00115930:
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s1, 32($sp)
	move	$s2, $a0
	lui	$s1, 0x15
	sd	$s0, 16($sp)
	addiu	$a0, $s1, -9728
	sd	$ra, 64($sp)
	jal	sub_0012E800
	addiu	$a1, $a0, 128
	jal	sub_0010F420
	nop
	lui	$v1, 0x15
	addiu	$a2, $s1, -9728
	addiu	$a1, $v1, -9600
	ldl	$v0, 7($a2)
	ldr	$v0, 0($a2)
	ldl	$a0, 15($a2)
	ldr	$a0, 8($a2)
	sdl	$v0, 7($a1)
	sdr	$v0, 0($a1)
	sdl	$a0, 15($a1)
	sdr	$a0, 8($a1)
	ldl	$v0, 23($a2)
	ldr	$v0, 16($a2)
	ldl	$a0, 31($a2)
	ldr	$a0, 24($a2)
	sdl	$v0, 23($a1)
	sdr	$v0, 16($a1)
	sdl	$a0, 31($a1)
	sdr	$a0, 24($a1)
	ldl	$v0, 39($a2)
	ldr	$v0, 32($a2)
	ldl	$a0, 47($a2)
	ldr	$a0, 40($a2)
	sdl	$v0, 39($a1)
	sdr	$v0, 32($a1)
	sdl	$a0, 47($a1)
	sdr	$a0, 40($a1)
	ldl	$v0, 55($a2)
	ldr	$v0, 48($a2)
	ldl	$a0, 63($a2)
	ldr	$a0, 56($a2)
	sdl	$v0, 55($a1)
	sdr	$v0, 48($a1)
	sdl	$a0, 63($a1)
	sdr	$a0, 56($a1)
	jal	sub_0010F470
	addiu	$s0, $v1, -9600
	sll	$v1, $s2, 0x2
	li	$a0, 1
	addu	$v1, $v1, $s0
	lw	$v0, 0($v1)
	bne	$v0, $a0, lbl_00115A84
	li	$v0, -12
	lui	$s1, 0x15
	jal	sub_00106920
	lw	$a0, -9536($s1)
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s0, $v1, -18688
	lui	$a1, 0x8000
	sw	$s2, -18688($v1)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1303
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 144
	move	$t1, $s0
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115A78
	lw	$a0, -9536($s1)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21424
	jal	sub_00106900
	lw	$a0, -9536($s1)
	b	lbl_00115A84
	move	$v0, $zero
lbl_00115A78:
	jal	sub_00106900
	lw	$s0, 4($s0)
	move	$v0, $s0
lbl_00115A84:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00115AA0:
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	lui	$s2, 0x15
	move	$s0, $a0
	sd	$s1, 16($sp)
	addiu	$a0, $s2, -9728
	sd	$ra, 48($sp)
	jal	sub_0012E800
	addiu	$a1, $a0, 128
	jal	sub_0010F420
	sll	$s0, $s0, 0x2
	lui	$v1, 0x15
	addiu	$a2, $s2, -9728
	addiu	$a1, $v1, -9600
	ldl	$v0, 7($a2)
	ldr	$v0, 0($a2)
	ldl	$a0, 15($a2)
	ldr	$a0, 8($a2)
	sdl	$v0, 7($a1)
	sdr	$v0, 0($a1)
	sdl	$a0, 15($a1)
	sdr	$a0, 8($a1)
	ldl	$v0, 23($a2)
	ldr	$v0, 16($a2)
	ldl	$a0, 31($a2)
	ldr	$a0, 24($a2)
	sdl	$v0, 23($a1)
	sdr	$v0, 16($a1)
	sdl	$a0, 31($a1)
	sdr	$a0, 24($a1)
	ldl	$v0, 39($a2)
	ldr	$v0, 32($a2)
	ldl	$a0, 47($a2)
	ldr	$a0, 40($a2)
	sdl	$v0, 39($a1)
	sdr	$v0, 32($a1)
	sdl	$a0, 47($a1)
	sdr	$a0, 40($a1)
	ldl	$v0, 55($a2)
	ldr	$v0, 48($a2)
	ldl	$a0, 63($a2)
	ldr	$a0, 56($a2)
	sdl	$v0, 55($a1)
	sdr	$v0, 48($a1)
	sdl	$a0, 63($a1)
	sdr	$a0, 56($a1)
	jal	sub_0010F470
	addiu	$s1, $v1, -9600
	li	$a0, 1
	addu	$s0, $s0, $s1
	li	$v0, 3
	lw	$v1, 0($s0)
	ld	$ra, 48($sp)
	xori	$v1, $v1, 0x1
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	movz	$v0, $a0, $v1
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	lui	$s2, 0x15
	move	$s0, $a0
	sd	$s1, 32($sp)
	lw	$a0, -9536($s2)
	sd	$ra, 64($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s1, $v1, -18688
	lui	$a1, 0x8000
	sw	$s0, -18688($v1)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1315
	move	$a2, $zero
	move	$a3, $s1
	li	$t0, 144
	move	$t1, $s1
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115C20
	lw	$a0, -9536($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21456
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00115C2C
	move	$v0, $zero
lbl_00115C20:
	jal	sub_00106900
	lw	$s0, 4($s1)
	move	$v0, $s0
lbl_00115C2C:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	lui	$s2, 0x15
	move	$s0, $a0
	sd	$s1, 32($sp)
	lw	$a0, -9536($s2)
	sd	$ra, 64($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s1, $v1, -18688
	lui	$a1, 0x8000
	sw	$s0, -18688($v1)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1316
	move	$a2, $zero
	move	$a3, $s1
	li	$t0, 144
	move	$t1, $s1
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115CD0
	lw	$a0, -9536($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21488
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00115CDC
	move	$v0, $zero
lbl_00115CD0:
	jal	sub_00106900
	lw	$s0, 4($s1)
	move	$v0, $s0
lbl_00115CDC:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	lui	$s2, 0x15
	move	$s0, $a0
	sd	$s1, 32($sp)
	lw	$a0, -9536($s2)
	sd	$ra, 64($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s1, $v1, -18688
	lui	$a1, 0x8000
	sw	$s0, -18688($v1)
	addiu	$a0, $a0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1317
	move	$a2, $zero
	move	$a3, $s1
	li	$t0, 144
	move	$t1, $s1
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00115D80
	lw	$a0, -9536($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21520
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00115D8C
	move	$v0, $zero
lbl_00115D80:
	jal	sub_00106900
	lw	$s0, 4($s1)
	move	$v0, $s0
lbl_00115D8C:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_00115DA8:
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	lui	$s2, 0x15
	move	$s0, $a0
	sd	$s1, 32($sp)
	lw	$a0, -9536($s2)
	sd	$ra, 64($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x15
	li	$v0, 2
	addiu	$s1, $v1, -18688
	lui	$a0, 0x15
	sw	$v0, 8($s1)
	lui	$a1, 0x8000
	sw	$zero, 0($sp)
	addiu	$a0, $a0, -18944
	ori	$a1, $a1, 0x131d
	move	$a2, $zero
	lw	$v0, 8($s0)
	move	$a3, $s1
	li	$t0, 144
	move	$t1, $s1
	sw	$v0, 16($s1)
	li	$t2, 144
	move	$t3, $zero
	lw	$v0, 12($s0)
	jal	sub_00109280
	sw	$v0, 20($s1)
	bgez	$v0, lbl_00115E44
	lw	$a0, -9536($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21520
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00115E50
	li	$v0, -1
lbl_00115E44:
	jal	sub_00106900
	lw	$s0, 4($s1)
	move	$v0, $s0
lbl_00115E50:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	addiu	$sp, $sp, -160
	sd	$s6, 112($sp)
	sd	$s1, 32($sp)
	lui	$s6, 0x15
	move	$s1, $a0
	sd	$s7, 128($sp)
	sd	$s5, 96($sp)
	move	$s7, $t1
	sd	$s4, 80($sp)
	move	$s5, $t0
	sd	$s3, 64($sp)
	move	$s4, $a3
	sd	$s0, 16($sp)
	move	$s3, $a2
	lw	$a0, -9536($s6)
	sd	$s2, 48($sp)
	sd	$ra, 144($sp)
	jal	sub_00106920
	move	$s0, $a1
	lui	$a3, 0x15
	sw	$s1, -18688($a3)
	addiu	$s2, $a3, -18688
	sw	$s0, 4($s2)
	lw	$v0, 0($s3)
	sw	$v0, 8($s2)
	lw	$v1, 0($s5)
	sw	$v1, 12($s2)
	lw	$v0, 0($s3)
	blez	$v0, lbl_00115F18
	move	$a1, $zero
	addiu	$a2, $s2, 16
	lui	$t0, 0x15
	addu	$v0, $s4, $a1
	nop
lbl_00115EF0:
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 0($s3)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_00115EF0
	addu	$v0, $s4, $a1
	b	lbl_00115F20
	addiu	$a3, $a3, -18688
lbl_00115F18:
	lui	$t0, 0x15
	addiu	$a3, $a3, -18688
lbl_00115F20:
	lui	$a1, 0x8000
	addiu	$a0, $t0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1318
	move	$a2, $zero
	li	$t0, 144
	move	$t1, $a3
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_00115F6C
	lw	$s0, 272($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21560
	jal	sub_00106900
	lw	$a0, -9536($s6)
	b	lbl_00115FC8
	move	$v0, $zero
lbl_00115F6C:
	bltz	$s0, lbl_00115FBC
	nop
	lw	$v0, 8($s2)
	sw	$v0, 0($s3)
	lw	$v1, 12($s2)
	sw	$v1, 0($s5)
	lw	$v0, 12($s2)
	blez	$v0, lbl_00115FB8
	move	$a1, $zero
	addiu	$a2, $s2, 144
	addu	$v0, $a2, $a1
lbl_00115F98:
	addu	$a0, $s7, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 12($s2)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_00115F98
	addu	$v0, $a2, $a1
lbl_00115FB8:
	lw	$s0, 272($s2)
lbl_00115FBC:
	jal	sub_00106900
	lw	$a0, -9536($s6)
	move	$v0, $s0
lbl_00115FC8:
	ld	$ra, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop
	addiu	$sp, $sp, -128
	sd	$s5, 96($sp)
	sd	$s1, 32($sp)
	lui	$s5, 0x15
	move	$s1, $a0
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	move	$s4, $a3
	sd	$s0, 16($sp)
	move	$s3, $a2
	lw	$a0, -9536($s5)
	sd	$s2, 48($sp)
	sd	$ra, 112($sp)
	jal	sub_00106920
	move	$s0, $a1
	lui	$a3, 0x15
	sw	$s1, -18688($a3)
	addiu	$s2, $a3, -18688
	sw	$s0, 4($s2)
	lw	$v0, 0($s3)
	sw	$v0, 8($s2)
	lw	$v1, 0($s3)
	blez	$v1, lbl_00116090
	move	$a1, $zero
	addiu	$a2, $s2, 12
	lui	$t0, 0x15
	addu	$v0, $s4, $a1
	nop
lbl_00116068:
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 0($s3)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_00116068
	addu	$v0, $s4, $a1
	b	lbl_00116098
	addiu	$a3, $a3, -18688
lbl_00116090:
	lui	$t0, 0x15
	addiu	$a3, $a3, -18688
lbl_00116098:
	lui	$a1, 0x8000
	addiu	$a0, $t0, -18944
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x1319
	move	$a2, $zero
	li	$t0, 144
	move	$t1, $a3
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_001160E4
	lw	$s0, 140($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21592
	jal	sub_00106900
	lw	$a0, -9536($s5)
	b	lbl_00116104
	move	$v0, $zero
lbl_001160E4:
	bltz	$s0, lbl_001160F8
	nop
	lw	$v0, 8($s2)
	sw	$v0, 0($s3)
	lw	$s0, 140($s2)
lbl_001160F8:
	jal	sub_00106900
	lw	$a0, -9536($s5)
	move	$v0, $s0
lbl_00116104:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_00116128:
	addiu	$sp, $sp, -144
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	move	$s4, $a0
	sd	$s2, 48($sp)
	move	$s3, $a3
	sd	$s0, 16($sp)
	sd	$ra, 128($sp)
	move	$s0, $a2
	sd	$s6, 112($sp)
	sd	$s5, 96($sp)
	sd	$s1, 32($sp)
	lw	$v1, 0($s0)
	slti	$v0, $v1, 129
	bnez	$v0, lbl_00116180
	move	$s2, $a1
	lui	$a0, 0x13
	move	$a1, $v1
	jal	sub_00116558
	addiu	$a0, $a0, 21624
	b	lbl_001162B0
	move	$v0, $zero
lbl_00116180:
	lui	$s5, 0x15
	lui	$s1, 0x13
	jal	sub_00106920
	lw	$a0, -9536($s5)
	lw	$v0, 2428($s1)
	move	$t0, $s1
	addiu	$v0, $v0, 1
	slti	$v1, $v0, 2
	bnez	$v1, lbl_001161AC
	sw	$v0, 2428($s1)
	sw	$zero, 2428($s1)
lbl_001161AC:
	lw	$v1, 2428($s1)
	li	$a0, 192
	lui	$s6, 0x15
	mult	$v1, $v1, $a0
	addiu	$v0, $s6, -10112
	addu	$a0, $v1, $v0
	sw	$s4, 0($a0)
	sw	$s2, 4($a0)
	lw	$v0, 0($s0)
	sw	$v0, 8($a0)
	lw	$v1, 0($s0)
	blez	$v1, lbl_00116218
	move	$a1, $zero
	addiu	$a2, $a0, 12
	lui	$a3, 0x15
	addu	$v0, $s3, $a1
	nop
lbl_001161F0:
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 0($s0)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_001161F0
	addu	$v0, $s3, $a1
	b	lbl_00116220
	lw	$a0, 2428($t0)
lbl_00116218:
	lui	$a3, 0x15
	lw	$a0, 2428($t0)
lbl_00116220:
	li	$s2, 40
	addiu	$s0, $a3, -18824
	mult	$a0, $a0, $s2
	jal	sub_00109480
	addu	$a0, $a0, $s0
	li	$v1, 1
	bne	$v0, $v1, lbl_0011624C
	lw	$a1, 2428($s1)
	lui	$a0, 0x13
	b	lbl_0011628C
	addiu	$a0, $a0, 21672
lbl_0011624C:
	li	$a3, 192
	addiu	$v0, $s6, -10112
	sw	$zero, 0($sp)
	mult	$a3, $a1, $a3
	mult	$v1, $a1, $s2
	li	$a2, 1
	li	$t0, 144
	li	$t2, 144
	move	$t3, $zero
	addu	$a3, $a3, $v0
	addu	$a0, $v1, $s0
	jal	sub_00109280
	move	$t1, $a3
	bgez	$v0, lbl_001162A4
	lui	$a0, 0x13
	addiu	$a0, $a0, 21704
lbl_0011628C:
	jal	sub_00116558
	nop
	jal	sub_00106900
	lw	$a0, -9536($s5)
	b	lbl_001162B0
	move	$v0, $zero
lbl_001162A4:
	jal	sub_00106900
	lw	$a0, -9536($s5)
	li	$v0, 1
lbl_001162B0:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_001162D8:
	addiu	$sp, $sp, -144
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	move	$s5, $t0
	sd	$s3, 64($sp)
	move	$s4, $a3
	sd	$s1, 32($sp)
	move	$s3, $a0
	sd	$s0, 16($sp)
	sd	$ra, 128($sp)
	move	$s0, $a2
	sd	$s6, 112($sp)
	sd	$s2, 48($sp)
	lw	$v1, 0($s0)
	slti	$v0, $v1, 8321
	bnez	$v0, lbl_00116334
	move	$s1, $a1
	lui	$a0, 0x13
	move	$a1, $v1
	jal	sub_00116558
	addiu	$a0, $a0, 21736
	b	lbl_00116408
	move	$v0, $zero
lbl_00116334:
	lui	$s2, 0x15
	lui	$s6, 0x15
	jal	sub_00106920
	lw	$a0, -9536($s2)
	jal	sub_00109480
	addiu	$a0, $s6, -18864
	li	$v1, 1
	bne	$v0, $v1, lbl_0011636C
	lui	$a3, 0x15
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21784
	b	lbl_001163EC
	nop
lbl_0011636C:
	sw	$s3, -18496($a3)
	addiu	$a0, $a3, -18496
	sw	$s1, 4($a0)
	lw	$v0, 0($s0)
	sw	$v0, 8($a0)
	lw	$v1, 0($s0)
	blez	$v1, lbl_001163B8
	move	$a1, $zero
	addiu	$a2, $a0, 12
	addu	$v0, $s4, $a1
	nop
lbl_00116398:
	addu	$a0, $a2, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 0($s0)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_00116398
	addu	$v0, $s4, $a1
lbl_001163B8:
	addiu	$a3, $a3, -18496
	lui	$a1, 0x8000
	addiu	$a0, $s6, -18864
	move	$t3, $s5
	sw	$zero, 0($sp)
	ori	$a1, $a1, 0x131c
	li	$a2, 1
	li	$t0, 8336
	move	$t1, $a3
	jal	sub_00109280
	li	$t2, 8336
	bgez	$v0, lbl_001163FC
	nop
lbl_001163EC:
	jal	sub_00106900
	lw	$a0, -9536($s2)
	b	lbl_00116408
	move	$v0, $zero
lbl_001163FC:
	jal	sub_00106900
	lw	$a0, -9536($s2)
	li	$v0, 1
lbl_00116408:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_00116430:
	addiu	$sp, $sp, -128
	sd	$s4, 80($sp)
	sd	$s1, 32($sp)
	lui	$s4, 0x15
	move	$s1, $a0
	sd	$s5, 96($sp)
	sd	$s3, 64($sp)
	move	$s5, $a3
	sd	$s0, 16($sp)
	move	$s3, $a2
	lw	$a0, -9536($s4)
	sd	$s2, 48($sp)
	sd	$ra, 112($sp)
	jal	sub_00106920
	move	$s0, $a1
	lui	$v1, 0x15
	lui	$a0, 0x15
	addiu	$s2, $v1, -18688
	sw	$s1, -18688($v1)
	sw	$s0, 4($s2)
	lui	$a1, 0x8000
	sw	$zero, 0($sp)
	addiu	$a0, $a0, -18944
	ori	$a1, $a1, 0x131a
	move	$a2, $zero
	lw	$v0, 0($s3)
	move	$a3, $s2
	li	$t0, 144
	move	$t1, $s2
	sw	$v0, 8($s2)
	li	$t2, 144
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_001164D8
	lw	$s0, 140($s2)
	lui	$a0, 0x13
	jal	sub_00116558
	addiu	$a0, $a0, 21816
	jal	sub_00106900
	lw	$a0, -9536($s4)
	b	lbl_00116530
	move	$v0, $zero
lbl_001164D8:
	bltz	$s0, lbl_00116524
	nop
	lw	$v1, 8($s2)
	sw	$v1, 0($s3)
	lw	$v0, 8($s2)
	blez	$v0, lbl_00116520
	move	$a1, $zero
	addiu	$a2, $s2, 12
	addu	$v0, $a2, $a1
	nop
lbl_00116500:
	addu	$a0, $s5, $a1
	lbu	$v1, 0($v0)
	addiu	$a1, $a1, 1
	sb	$v1, 0($a0)
	lw	$v0, 8($s2)
	slt	$v0, $a1, $v0
	bnez	$v0, lbl_00116500
	addu	$v0, $a2, $a1
lbl_00116520:
	lw	$s0, 140($s2)
lbl_00116524:
	jal	sub_00106900
	lw	$a0, -9536($s4)
	move	$v0, $s0
lbl_00116530:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00116558:
	addiu	$sp, $sp, -128
	sd	$a1, 72($sp)
	sd	$a2, 80($sp)
	sd	$a3, 88($sp)
	sd	$t0, 96($sp)
	sd	$t1, 104($sp)
	sd	$t2, 112($sp)
	sd	$t3, 120($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	move	$s1, $a0
	sd	$ra, 32($sp)
	sd	$s0, 0($sp)
	jal	sub_00117098
	li	$a0, 1
	bnez	$v0, lbl_001165D4
	move	$v0, $zero
	jal	sub_0010F420
	nop
	lui	$v1, 0x15
	lui	$a0, 0x15
	lw	$s0, -9472($v1)
	sw	$s1, -9472($v1)
	sw	$gp, -9468($a0)
	beqz	$v0, lbl_001165D4
	move	$v0, $s0
	jal	sub_0010F470
	nop
	move	$v0, $s0
lbl_001165D4:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
lbl_001165E8:
	addiu	$sp, $sp, -32
	li	$a1, 11
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	lui	$s0, 0x13
	lw	$v1, 0($a0)
	lui	$a0, 0x13
	sw	$v1, 2528($s0)
	lw	$v0, 2528($s0)
	sw	$v0, 2532($a0)
	lw	$v1, 2528($s0)
	bne	$v1, $a1, lbl_00116630
	lui	$v0, 0x13
	sw	$zero, 2528($s0)
	lui	$v0, 0x13
	sw	$zero, 2484($v0)
	b	lbl_0011667C
	ld	$ra, 16($sp)
lbl_00116630:
	lw	$a0, 2472($v0)
	jal	sub_00106910
	nop
	lui	$v1, 0x13
	lw	$v0, 2452($v1)
	beqz	$v0, lbl_0011666C
	lui	$v0, 0x15
	lw	$v1, -9472($v0)
	beqz	$v1, lbl_0011666C
	lui	$v0, 0x13
	lw	$a0, 2464($v0)
	jal	sub_00106910
	nop
	b	lbl_00116674
	nop
lbl_0011666C:
	lui	$v0, 0x13
	sw	$zero, 2484($v0)
lbl_00116674:
	sw	$zero, 2528($s0)
	ld	$ra, 16($sp)
lbl_0011667C:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -160
	sd	$s8, 128($sp)
	sd	$s7, 112($sp)
	lui	$s8, 0x15
	sd	$s6, 96($sp)
	lui	$s7, 0x13
	sd	$s5, 80($sp)
	lui	$s6, 0x13
	sd	$s4, 64($sp)
	lui	$s5, 0x15
	sd	$s3, 48($sp)
	lui	$s4, 0x13
	sd	$s2, 32($sp)
	lui	$s3, 0x13
	sd	$s1, 16($sp)
	lui	$s2, 0x15
	sd	$ra, 144($sp)
	lui	$s1, 0x13
	sd	$s0, 0($sp)
	lui	$v0, 0x13
lbl_001166D8:
	jal	sub_00106920
	lw	$a0, 2464($v0)
	lw	$v1, 2528($s4)
	li	$v0, -1
	bne	$v1, $v0, lbl_0011670C
	lw	$v0, 2448($s7)
	sw	$zero, 2484($s3)
	lui	$v0, 0x13
	sw	$zero, 2528($s4)
	sw	$zero, 2452($v0)
	jal	sub_00106720
	sw	$zero, -9452($s8)
	lw	$v0, 2448($s7)
lbl_0011670C:
	blez	$v0, lbl_00116720
	addiu	$a0, $s6, 21848
	lw	$a1, -9472($s2)
	jal	sub_001087F8
	lw	$a2, 2532($s1)
lbl_00116720:
	lw	$v1, -9472($s2)
	beqz	$v1, lbl_0011674C
	nop
	lw	$v0, 2532($s1)
	beqz	$v0, lbl_0011674C
	nop
	move	$s0, $gp
	lw	$gp, -9468($s5)
	jalr	$v1
	lw	$a0, 2532($s1)
	move	$gp, $s0
lbl_0011674C:
	sw	$zero, 2484($s3)
	b	lbl_001166D8
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	move	$a3, $a0
	sd	$s1, 16($sp)
	move	$t0, $a1
	lui	$s1, 0x13
	sd	$s0, 0($sp)
	lw	$a0, 2452($s1)
	li	$s0, 1
	bnez	$a0, lbl_001167D0
	sd	$ra, 32($sp)
	lui	$v0, 0x15
	lui	$v1, 0x11
	lui	$a1, 0x13
	addiu	$v0, $v0, -9448
	addiu	$v1, $v1, 26248
	addiu	$a1, $a1, 21888
	sw	$a2, 12($v0)
	move	$a0, $v0
	sw	$v1, 4($v0)
	sw	$t0, 8($v0)
	sw	$a3, 20($v0)
	sw	$a1, 32($v0)
	jal	sub_001066E0
	sw	$zero, 16($v0)
	move	$a1, $zero
	sw	$v0, 2452($s1)
	jal	sub_001073D0
	move	$a0, $v0
	b	lbl_001167E0
	move	$v0, $s0
lbl_001167D0:
	move	$a1, $a3
	jal	sub_00106770
	move	$s0, $zero
	move	$v0, $s0
lbl_001167E0:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lui	$a1, 0x2000
	or	$a3, $a0, $a1
	lw	$v0, 0($a3)
	blez	$v0, lbl_00116858
	move	$a2, $zero
	lw	$t1, 8($a3)
	blez	$v0, lbl_00116858
	or	$t2, $t1, $a1
	addiu	$t0, $a3, 16
	lui	$t3, 0x13
	addu	$v0, $t0, $a2
	nop
lbl_00116828:
	addu	$a1, $t2, $a2
	lbu	$v1, 0($v0)
	addu	$a0, $t1, $a2
	addiu	$a2, $a2, 1
	sb	$v1, 0($a1)
	sb	$v1, 0($a0)
	lw	$v0, 0($a3)
	slt	$v0, $a2, $v0
	bnez	$v0, lbl_00116828
	addu	$v0, $t0, $a2
	b	lbl_00116860
	lw	$v1, 4($a3)
lbl_00116858:
	lui	$t3, 0x13
	lw	$v1, 4($a3)
lbl_00116860:
	blez	$v1, lbl_001168A8
	lui	$v0, 0x2000
	lw	$t1, 12($a3)
	move	$a2, $zero
	blez	$v1, lbl_001168A8
	or	$t2, $t1, $v0
	addiu	$t0, $a3, 80
	addu	$v0, $t0, $a2
lbl_00116880:
	addu	$a1, $t2, $a2
	lbu	$v1, 0($v0)
	addu	$a0, $t1, $a2
	addiu	$a2, $a2, 1
	sb	$v1, 0($a1)
	sb	$v1, 0($a0)
	lw	$v0, 4($a3)
	slt	$v0, $a2, $v0
	bnez	$v0, lbl_00116880
	addu	$v0, $t0, $a2
lbl_001168A8:
	j	lbl_001165E8
	addiu	$a0, $t3, 2528

sub_001168B0:
	addiu	$sp, $sp, -96
	li	$v1, -1
	sd	$s1, 48($sp)
	lui	$s1, 0x13
	sd	$ra, 80($sp)
	lw	$v0, 2472($s1)
	sd	$s2, 64($sp)
	beq	$v0, $v1, lbl_001168F8
	sd	$s0, 32($sp)
	lui	$s0, 0x13
	lw	$v0, 2476($s0)
	beq	$v0, $v1, lbl_001168FC
	lui	$s2, 0x13
	lw	$v0, 2480($s2)
	bne	$v0, $v1, lbl_00116980
	ld	$ra, 80($sp)
	b	lbl_00116904
	lui	$v0, 0x13
lbl_001168F8:
	lui	$s0, 0x13
lbl_001168FC:
	lui	$s2, 0x13
	lui	$v0, 0x13
lbl_00116904:
	li	$v1, 1
	addiu	$v0, $v0, 21912
	sw	$v1, 4($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 8($sp)
	lui	$v1, 0x13
	sw	$v0, 2472($s1)
	addiu	$v1, $v1, 21928
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 20($sp)
	lui	$v1, 0x13
	sw	$v0, 2476($s0)
	addiu	$v1, $v1, 21944
	move	$a0, $sp
	jal	sub_001068E0
	sw	$v1, 20($sp)
	lui	$v1, 0x13
	sw	$v0, 2480($s2)
	addiu	$v1, $v1, 21960
	move	$a0, $sp
	sw	$v1, 20($sp)
	jal	sub_001068E0
	sw	$zero, 8($sp)
	lui	$v1, 0x13
	sw	$v0, 2464($v1)
	lui	$v0, 0x13
	sw	$zero, 2484($v0)
	ld	$ra, 80($sp)
lbl_00116980:
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_00116998:
	lui	$v0, 0x13
	addiu	$sp, $sp, -32
	lw	$v1, 2452($v0)
	sd	$ra, 16($sp)
	beqz	$v1, lbl_001169D0
	sd	$s0, 0($sp)
	lui	$v1, 0x13
	li	$v0, -1
	sw	$v0, 2528($v1)
	lui	$s0, 0x13
	jal	sub_00106900
	lw	$a0, 2464($s0)
	b	lbl_001169D8
	lui	$v0, 0x13
lbl_001169D0:
	lui	$s0, 0x13
	lui	$v0, 0x13
lbl_001169D8:
	jal	sub_001068F0
	lw	$a0, 2472($v0)
	lui	$v1, 0x13
	jal	sub_001068F0
	lw	$a0, 2476($v1)
	lui	$v1, 0x13
	jal	sub_001068F0
	lw	$a0, 2480($v1)
	jal	sub_001068F0
	lw	$a0, 2464($s0)
	jal	sub_0010F420
	nop
	lui	$a0, 0x8000
	move	$s0, $v0
	jal	sub_00112578
	ori	$a0, $a0, 0x12
	beqz	$s0, lbl_00116A2C
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 32
lbl_00116A2C:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00116A38:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a0
	lw	$v1, 2504($v0)
	move	$s0, $a1
	sd	$ra, 48($sp)
	bgez	$v1, lbl_00116A68
	sd	$s1, 16($sp)
	jal	sub_00116B10
	nop
lbl_00116A68:
	jal	sub_0010F420
	nop
	lui	$a1, 0x15
	lui	$a0, 0x15
	lw	$s1, -9464($a1)
	lui	$v1, 0x15
	sw	$s0, -9456($a0)
	sw	$s2, -9464($a1)
	sw	$gp, -9460($v1)
	beqz	$v0, lbl_00116AA0
	move	$v0, $s1
	jal	sub_0010F470
	nop
	move	$v0, $s1
lbl_00116AA0:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	lui	$v0, 0x15
	addiu	$sp, $sp, -32
	lw	$a1, -9464($v0)
	sd	$ra, 16($sp)
	beqz	$a1, lbl_00116AFC
	sd	$s0, 0($sp)
	lui	$v0, 0x13
	lw	$v1, 2468($v0)
	bnez	$v1, lbl_00116B00
	ld	$ra, 16($sp)
	lui	$v0, 0x15
	move	$s0, $gp
	lw	$gp, -9460($v0)
	lui	$v1, 0x15
	jalr	$a1
	lw	$a0, -9456($v1)
	move	$gp, $s0
lbl_00116AFC:
	ld	$ra, 16($sp)
lbl_00116B00:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00116B10:
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	li	$s2, 1
	lui	$s1, 0x13
	sd	$s0, 0($sp)
	sd	$ra, 48($sp)
	jal	sub_0010F420
	sw	$s2, 2468($s1)
	lui	$a1, 0x11
	lui	$a0, 0x8000
	move	$s0, $v0
	addiu	$a1, $a1, 27320
	ori	$a0, $a0, 0x12
	jal	sub_00112500
	move	$a2, $zero
	beqz	$s0, lbl_00116B64
	lui	$v0, 0x13
	jal	sub_0010F470
	nop
	lui	$v0, 0x13
lbl_00116B64:
	sw	$zero, 2468($s1)
	sw	$s2, 2504($v0)
	ld	$ra, 48($sp)
	li	$v0, 1
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00116B88:
	addiu	$sp, $sp, -192
	sd	$s3, 80($sp)
	sd	$s2, 64($sp)
	move	$s3, $a0
	sd	$s6, 128($sp)
	move	$s2, $a1
	sd	$ra, 176($sp)
	lui	$s6, 0x13
	sd	$s8, 160($sp)
	sd	$s7, 144($sp)
	sd	$s5, 112($sp)
	sd	$s4, 96($sp)
	sd	$s1, 48($sp)
	sd	$s0, 32($sp)
	jal	sub_001168B0
	sw	$a2, 16($sp)
	lw	$a0, 2472($s6)
	jal	sub_00106930
	nop
	lw	$v1, 2472($s6)
	bne	$v1, $v0, lbl_00116E54
	move	$v0, $zero
	lui	$v1, 0x13
	li	$v0, 1
	sw	$v0, 2460($v1)
	jal	sub_00117098
	li	$a0, 1
	bnez	$v0, lbl_00116D88
	move	$a0, $zero
	jal	sub_001088F8
	lui	$s1, 0x13
	lw	$v0, 2508($s1)
	bgez	$v0, lbl_00116CBC
	lui	$s7, 0x15
	lui	$s4, 0x13
	lui	$s5, 0x15
	b	lbl_00116C44
	lui	$s8, 0x15
lbl_00116C20:
	li	$v1, -1
	nop
lbl_00116C28:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00116C28
	nop
lbl_00116C44:
	addiu	$s0, $s7, -8960
lbl_00116C48:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x597
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_00116CAC
	lw	$v0, 36($s0)
	lw	$v0, 2448($s4)
	blez	$v0, lbl_00116C80
	lui	$v0, 0x10
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 21984
	lui	$v0, 0x10
lbl_00116C80:
	li	$v1, -1
	nop
lbl_00116C88:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00116C88
	nop
	b	lbl_00116C48
	addiu	$s0, $s7, -8960
lbl_00116CAC:
	beqz	$v0, lbl_00116C20
	lui	$v0, 0x10
	b	lbl_00116CC8
	sw	$zero, 2508($s1)
lbl_00116CBC:
	lui	$s4, 0x13
	lui	$s5, 0x15
	lui	$s8, 0x15
lbl_00116CC8:
	lbu	$v1, 0($s2)
	addiu	$a0, $s5, -9344
	move	$a1, $zero
	sll	$v0, $v1, 0x18
	beqz	$v0, lbl_00116D0C
	sb	$v1, 36($a0)
	addiu	$a2, $a0, 36
	addiu	$a1, $a1, 1
lbl_00116CE8:
	slti	$v0, $a1, 256
	beqz	$v0, lbl_00116D0C
	addu	$v0, $s2, $a1
	addu	$a0, $a1, $a2
	lbu	$v1, 0($v0)
	sb	$v1, 0($a0)
	sll	$v1, $v1, 0x18
	bnezl	$v1, lbl_00116CE8
	addiu	$a1, $a1, 1
lbl_00116D0C:
	li	$v0, 256
	bne	$a1, $v0, lbl_00116D24
	lw	$v0, 2448($s4)
	addiu	$v0, $s5, -9344
	sb	$zero, 291($v0)
	lw	$v0, 2448($s4)
lbl_00116D24:
	blez	$v0, lbl_00116D3C
	lui	$a0, 0x13
	lui	$a1, 0x15
	addiu	$a0, $a0, 22016
	jal	sub_001087F8
	addiu	$a1, $a1, -9308
lbl_00116D3C:
	lw	$v0, 16($sp)
	addiu	$s0, $s5, -9344
	li	$a1, 300
	move	$a0, $s0
	sw	$v0, 296($s0)
	jal	sub_001128C8
	sw	$s0, 292($s0)
	addiu	$a0, $s7, -8960
	sw	$zero, 0($sp)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s0
	li	$t0, 300
	addiu	$t1, $s8, -9024
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00116D9C
	lui	$v0, 0x2000
lbl_00116D88:
	lw	$a0, 2472($s6)
	jal	sub_00106900
	nop
	b	lbl_00116E54
	move	$v0, $zero
lbl_00116D9C:
	or	$v0, $s0, $v0
	ldl	$v1, 7($v0)
	ldr	$v1, 0($v0)
	ldl	$a0, 15($v0)
	ldr	$a0, 8($v0)
	ldl	$a1, 23($v0)
	ldr	$a1, 16($v0)
	ldl	$a2, 31($v0)
	ldr	$a2, 24($v0)
	sdl	$v1, 7($s3)
	sdr	$v1, 0($s3)
	sdl	$a0, 15($s3)
	sdr	$a0, 8($s3)
	sdl	$a1, 23($s3)
	sdr	$a1, 16($s3)
	sdl	$a2, 31($s3)
	sdr	$a2, 24($s3)
	lwl	$v1, 35($v0)
	lwr	$v1, 32($v0)
	swl	$v1, 35($s3)
	swr	$v1, 32($s3)
	lw	$v1, 2448($s4)
	blez	$v1, lbl_00116E38
	lui	$a0, 0x13
	addiu	$a1, $s3, 8
	jal	sub_001087F8
	addiu	$a0, $a0, 22040
	lw	$v0, 2448($s4)
	blez	$v0, lbl_00116E38
	lui	$a0, 0x13
	lw	$a1, 4($s3)
	jal	sub_001087F8
	addiu	$a0, $a0, 22056
	lw	$v0, 2448($s4)
	blez	$v0, lbl_00116E38
	lui	$a0, 0x13
	lw	$a1, 0($s3)
	jal	sub_001087F8
	addiu	$a0, $a0, 22072
lbl_00116E38:
	lui	$v1, 0x2000
	addiu	$v0, $s8, -9024
	or	$v0, $v0, $v1
	lw	$a0, 2472($s6)
	jal	sub_00106900
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_00116E54:
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00116B88
	move	$a2, $zero
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00116EA8:
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a0
	sd	$ra, 48($sp)
	lui	$s0, 0x13
	jal	sub_001168B0
	sd	$s2, 32($sp)
	lw	$a0, 2472($s0)
	jal	sub_00106930
	nop
	lw	$v1, 2472($s0)
	beq	$v1, $v0, lbl_00116F08
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_00116F2C
	lui	$v0, 0x13
	lui	$a0, 0x13
	lw	$a2, 2460($v0)
	addiu	$a0, $a0, 22096
	jal	sub_001087F8
	move	$a1, $s1
	b	lbl_00116FE8
	move	$v0, $zero
lbl_00116F08:
	lui	$v0, 0x13
	li	$a0, 1
	jal	sub_00117098
	sw	$s1, 2460($v0)
	beqz	$v0, lbl_00116F34
	move	$a0, $zero
	lw	$a0, 2472($s0)
	jal	sub_00106900
	nop
lbl_00116F2C:
	b	lbl_00116FE8
	move	$v0, $zero
lbl_00116F34:
	jal	sub_001088F8
	lui	$s2, 0x13
	lw	$v0, 2492($s2)
	bgez	$v0, lbl_00116FE8
	li	$v0, 1
	b	lbl_00116F74
	lui	$s1, 0x13
lbl_00116F50:
	lui	$v0, 0x10
	li	$v1, -1
lbl_00116F58:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00116F58
	nop
lbl_00116F74:
	addiu	$s0, $s1, 6992
lbl_00116F78:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x595
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_00116FDC
	lw	$v0, 36($s0)
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_00116FB4
	lui	$v0, 0x10
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22136
	lui	$v0, 0x10
lbl_00116FB4:
	li	$v1, -1
lbl_00116FB8:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00116FB8
	nop
	b	lbl_00116F78
	addiu	$s0, $s1, 6992
lbl_00116FDC:
	beqz	$v0, lbl_00116F50
	li	$v0, 1
	sw	$zero, 2492($s2)
lbl_00116FE8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -48
	li	$a0, 2
	sd	$ra, 32($sp)
	jal	sub_00116EA8
	sd	$s0, 16($sp)
	bnez	$v0, lbl_00117024
	lui	$v0, 0x13
	b	lbl_00117088
	move	$v0, $zero
lbl_00117024:
	lui	$a0, 0x13
	addiu	$s0, $v0, 2560
	addiu	$a0, $a0, 6992
	sw	$zero, 0($sp)
	li	$a1, 14
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	move	$t1, $s0
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00117070
	lui	$v1, 0x13
	lui	$v0, 0x13
	jal	sub_00106900
	lw	$a0, 2472($v0)
	b	lbl_00117088
	move	$v0, $zero
lbl_00117070:
	lui	$v0, 0x2000
	or	$v0, $s0, $v0
	lw	$a0, 2472($v1)
	jal	sub_00106900
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_00117088:
	ld	$ra, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00117098:
	addiu	$sp, $sp, -48
	sd	$ra, 32($sp)
	sd	$s1, 16($sp)
	bnez	$a0, lbl_001170FC
	sd	$s0, 0($sp)
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_001170C4
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22160
lbl_001170C4:
	lui	$s1, 0x13
	b	lbl_001170D8
	lui	$s0, 0x13
lbl_001170D0:
	jal	sub_00107308
	li	$a0, 4000
lbl_001170D8:
	lw	$v0, 2484($s1)
	bnez	$v0, lbl_001170D0
	nop
	jal	sub_00109480
	addiu	$a0, $s0, 6992
	bnez	$v0, lbl_001170D0
	move	$v0, $zero
	b	lbl_00117128
	ld	$ra, 32($sp)
lbl_001170FC:
	lui	$v0, 0x13
	lw	$v1, 2484($v0)
	bnez	$v1, lbl_00117124
	li	$v0, 1
	lui	$a0, 0x13
	jal	sub_00109480
	addiu	$a0, $a0, 6992
	bnez	$v0, lbl_00117124
	li	$v0, 1
	move	$v0, $zero
lbl_00117124:
	ld	$ra, 32($sp)
lbl_00117128:
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00117138:
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	bnez	$a0, lbl_00117188
	sd	$s0, 0($sp)
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_00117160
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22176
lbl_00117160:
	b	lbl_00117170
	lui	$s0, 0x13
lbl_00117168:
	jal	sub_00107308
	li	$a0, 4000
lbl_00117170:
	jal	sub_00109480
	addiu	$a0, $s0, 9472
	bnez	$v0, lbl_00117168
	move	$v0, $zero
	b	lbl_00117198
	ld	$ra, 16($sp)
lbl_00117188:
	lui	$a0, 0x13
	jal	sub_00109480
	addiu	$a0, $a0, 9472
	ld	$ra, 16($sp)
lbl_00117198:
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_001171A8:
	addiu	$sp, $sp, -64
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a0
	sd	$ra, 48($sp)
	lui	$s0, 0x13
	jal	sub_001168B0
	sd	$s2, 32($sp)
	lw	$a0, 2476($s0)
	jal	sub_00106930
	nop
	lw	$v1, 2476($s0)
	beq	$v1, $v0, lbl_00117208
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_0011722C
	lui	$v0, 0x13
	lui	$a0, 0x13
	lw	$a2, 2456($v0)
	addiu	$a0, $a0, 22192
	jal	sub_001087F8
	move	$a1, $s1
	b	lbl_001172E8
	move	$v0, $zero
lbl_00117208:
	lui	$v0, 0x13
	li	$a0, 1
	jal	sub_00117138
	sw	$s1, 2456($v0)
	beqz	$v0, lbl_00117234
	move	$a0, $zero
	lw	$a0, 2476($s0)
	jal	sub_00106900
	nop
lbl_0011722C:
	b	lbl_001172E8
	move	$v0, $zero
lbl_00117234:
	jal	sub_001088F8
	lui	$s2, 0x13
	lw	$v0, 2516($s2)
	bgez	$v0, lbl_001172E8
	li	$v0, 1
	b	lbl_00117274
	lui	$s1, 0x13
lbl_00117250:
	lui	$v0, 0x10
	li	$v1, -1
lbl_00117258:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00117258
	nop
lbl_00117274:
	addiu	$s0, $s1, 9472
lbl_00117278:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x593
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_001172DC
	lw	$v0, 36($s0)
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_001172B4
	lui	$v0, 0x10
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22232
	lui	$v0, 0x10
lbl_001172B4:
	li	$v1, -1
lbl_001172B8:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_001172B8
	nop
	b	lbl_00117278
	addiu	$s0, $s1, 9472
lbl_001172DC:
	beqz	$v0, lbl_00117250
	li	$v0, 1
	sw	$zero, 2516($s2)
lbl_001172E8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	li	$v0, 0x8001
	beq	$a0, $v0, lbl_001173A0
	lui	$v0, 0x13
	li	$v0, 0x8003
	beq	$a0, $v0, lbl_00117398
	lui	$v0, 0x13
	li	$v0, 0x8002
	beq	$a0, $v0, lbl_00117390
	lui	$v0, 0x13
	li	$v0, 0x8004
	beq	$a0, $v0, lbl_00117388
	lui	$v0, 0x13
	li	$v0, 0x8011
	beq	$a0, $v0, lbl_00117378
	li	$v0, 0x8013
	beq	$a0, $v0, lbl_00117370
	lui	$v0, 0x13
	li	$v0, 0x8012
	beq	$a0, $v0, lbl_00117368
	lui	$v0, 0x13
	li	$v0, 0x8014
	bnel	$a0, $v0, lbl_001173A4
	move	$v0, $zero
	lui	$v0, 0x13
	b	lbl_001173A4
	addiu	$v0, $v0, 9472
lbl_00117368:
	b	lbl_001173A4
	addiu	$v0, $v0, 8128
lbl_00117370:
	b	lbl_001173A4
	addiu	$v0, $v0, 7040
lbl_00117378:
	lui	$v0, 0x13
	lw	$v0, 2476($v0)
	b	lbl_001173A8
	sw	$v0, 0($a1)
lbl_00117388:
	b	lbl_001173A4
	addiu	$v0, $v0, 6992
lbl_00117390:
	b	lbl_001173A4
	addiu	$v0, $v0, 2688
lbl_00117398:
	b	lbl_001173A4
	addiu	$v0, $v0, 2560
lbl_001173A0:
	lw	$v0, 2472($v0)
lbl_001173A4:
	sw	$v0, 0($a1)
lbl_001173A8:
	jr	$ra
	li	$v0, 1

sub_001173B0:
	addiu	$sp, $sp, -176
	sd	$s3, 64($sp)
	move	$s3, $a0
	sd	$ra, 160($sp)
	sd	$s8, 144($sp)
	li	$a0, 1
	sd	$s7, 128($sp)
	sd	$s6, 112($sp)
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	sd	$s2, 48($sp)
	sd	$s1, 32($sp)
	jal	sub_00117138
	sd	$s0, 16($sp)
	bnez	$v0, lbl_00117668
	move	$v0, $zero
	move	$a0, $zero
	jal	sub_001088F8
	lui	$s5, 0x13
	lui	$s4, 0x13
	li	$v0, 1
	lui	$v1, 0x13
	sw	$v0, 2468($v1)
	lui	$a1, 0x13
	lw	$a0, 2524($s5)
	li	$v1, -1
	lui	$v0, 0x13
	lui	$a2, 0x13
	addiu	$a0, $a0, 1
	lui	$a3, 0x13
	lui	$t1, 0x13
	lui	$t0, 0x13
	sw	$v1, 2504($v0)
	lui	$s0, 0x15
	lui	$v0, 0x15
	sw	$v1, 2508($a1)
	sw	$v1, 2492($a2)
	addiu	$s1, $v0, -8920
	sw	$v1, 2516($a3)
	addiu	$s2, $s0, -8832
	sw	$v1, 2512($t1)
	lui	$s8, 0x13
	sw	$zero, 2488($t0)
	lui	$s7, 0x13
	sw	$a0, 2524($s5)
	lui	$s6, 0x13
	sw	$v1, 2520($s4)
	nop
lbl_00117470:
	lui	$a1, 0x8000
	move	$a0, $s1
	ori	$a1, $a1, 0x592
	jal	sub_001090A0
	move	$a2, $zero
	move	$a1, $v0
	bgezl	$a1, lbl_001174D4
	lw	$v0, 36($s1)
	lw	$v0, 2448($s7)
	blez	$v0, lbl_001174A4
	lw	$a2, 2524($s5)
	jal	sub_001087F8
	addiu	$a0, $s6, 22256
lbl_001174A4:
	lui	$v0, 0x10
	li	$v1, -1
	nop
lbl_001174B0:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_001174B0
	nop
	b	lbl_00117470
	nop
lbl_001174D4:
	beqz	$v0, lbl_0011752C
	move	$a0, $s2
	sw	$s3, -8832($s0)
	sw	$zero, 2520($s4)
	jal	sub_001128C8
	li	$a1, 4
	addiu	$s0, $s8, 7040
	move	$a0, $s1
	move	$a3, $s2
	sw	$zero, 0($sp)
	move	$a1, $zero
	move	$a2, $zero
	li	$t0, 4
	move	$t1, $s0
	li	$t2, 16
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_0011755C
	lui	$v0, 0x13
	sw	$zero, 2468($v0)
	b	lbl_00117668
	move	$v0, $zero
lbl_0011752C:
	lui	$v0, 0x10
	li	$v1, -1
	nop
lbl_00117538:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00117538
	nop
	b	lbl_00117470
	nop
lbl_0011755C:
	lui	$a1, 0x2000
	addiu	$v0, $s0, 12
	or	$v0, $v0, $a1
	addiu	$v1, $s0, 4
	addiu	$a0, $s0, 8
	lw	$a2, 0($v0)
	or	$a0, $a0, $a1
	or	$v1, $v1, $a1
	lw	$a1, 0($v1)
	li	$s0, 1
	li	$v0, 255
	beq	$a2, $v0, lbl_001175E4
	lw	$a0, 0($a0)
	li	$v0, 254
	bne	$a2, $v0, lbl_001175A8
	li	$a2, -1
	lui	$v0, 0x13
	b	lbl_001175E4
	sw	$s0, 2448($v0)
lbl_001175A8:
	addiu	$v0, $a1, 255
	slt	$v1, $a2, $a1
	movn	$v0, $a1, $v1
	sra	$v0, $v0, 0x8
	slti	$v0, $v0, 2
	bnezl	$v0, lbl_001175E4
	li	$s0, 2
	slt	$v1, $a2, $a0
	addiu	$v0, $a0, 255
	movn	$v0, $a0, $v1
	sra	$v0, $v0, 0x8
	slti	$v0, $v0, 2
	beqz	$v0, lbl_001175E8
	lui	$v1, 0x13
	li	$s0, 2
lbl_001175E4:
	lui	$v1, 0x13
lbl_001175E8:
	sw	$zero, 2468($v1)
	bltz	$s3, lbl_00117648
	slti	$v0, $s3, 2
	bnez	$v0, lbl_00117648
	li	$v0, 5
	bne	$s3, $v0, lbl_00117648
	lui	$v0, 0x13
	lw	$v1, 2448($v0)
	blez	$v1, lbl_00117618
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22288
lbl_00117618:
	jal	sub_00116998
	nop
	li	$a0, -1
	lui	$v0, 0x13
	sw	$a0, 2472($v0)
	lui	$v1, 0x13
	sw	$a0, 2476($v1)
	lui	$v0, 0x13
	lui	$v1, 0x13
	sw	$a0, 2464($v0)
	b	lbl_00117664
	sw	$zero, 2500($v1)
lbl_00117648:
	jal	sub_001168B0
	nop
	jal	sub_00116B10
	nop
	lui	$v1, 0x13
	li	$v0, 1
	sw	$v0, 2500($v1)
lbl_00117664:
	move	$v0, $s0
lbl_00117668:
	ld	$ra, 160($sp)
	ld	$s8, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 176

sub_00117698:
	addiu	$sp, $sp, -160
	sd	$s6, 112($sp)
	lui	$s6, 0x13
	sd	$s2, 48($sp)
	lw	$v0, 2448($s6)
	move	$s2, $a0
	sd	$ra, 144($sp)
	sd	$s7, 128($sp)
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	sd	$s1, 32($sp)
	blez	$v0, lbl_001176DC
	sd	$s0, 16($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22304
lbl_001176DC:
	jal	sub_0010F420
	nop
	lui	$a0, 0x13
	li	$v1, 1
	beqz	$v0, lbl_001176FC
	sw	$v1, 2496($a0)
	jal	sub_0010F470
	nop
lbl_001176FC:
	jal	sub_001168B0
	lui	$s3, 0x13
	lw	$a0, 2476($s3)
	jal	sub_00106930
	nop
	lw	$v1, 2476($s3)
	bne	$v1, $v0, lbl_00117884
	li	$v0, 6
	jal	sub_00117138
	li	$a0, 1
	bnez	$v0, lbl_0011783C
	move	$a0, $zero
	jal	sub_001088F8
	lui	$s1, 0x13
	lw	$v0, 2512($s1)
	bgez	$v0, lbl_001177EC
	lui	$s5, 0x15
	lui	$s4, 0x15
	b	lbl_00117774
	lui	$s7, 0x13
	nop
lbl_00117750:
	li	$v1, -1
	nop
lbl_00117758:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_00117758
	nop
lbl_00117774:
	addiu	$s0, $s5, -8880
lbl_00117778:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x59a
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_001177DC
	lw	$v0, 36($s0)
	lw	$v0, 2448($s6)
	blez	$v0, lbl_001177B0
	lui	$v0, 0x10
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22328
	lui	$v0, 0x10
lbl_001177B0:
	li	$v1, -1
	nop
lbl_001177B8:
	addiu	$v0, $v0, -1
	nop
	nop
	nop
	nop
	bne	$v0, $v1, lbl_001177B8
	nop
	b	lbl_00117778
	addiu	$s0, $s5, -8880
lbl_001177DC:
	beqz	$v0, lbl_00117750
	lui	$v0, 0x10
	b	lbl_001177F4
	sw	$zero, 2512($s1)
lbl_001177EC:
	lui	$s4, 0x15
	lui	$s7, 0x13
lbl_001177F4:
	addiu	$s0, $s4, -8816
	sw	$s2, -8816($s4)
	move	$a0, $s0
	jal	sub_001128C8
	li	$a1, 4
	addiu	$s1, $s7, 7040
	addiu	$a0, $s5, -8880
	move	$a3, $s0
	sw	$zero, 0($sp)
	move	$a1, $zero
	move	$a2, $zero
	li	$t0, 4
	move	$t1, $s1
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_0011785C
	lw	$v0, 2448($s6)
lbl_0011783C:
	lw	$a0, 2476($s3)
	jal	sub_00106900
	nop
	xori	$a0, $s2, 0x8
	li	$v1, -1
	li	$v0, 6
	b	lbl_00117884
	movz	$v0, $v1, $a0
lbl_0011785C:
	blez	$v0, lbl_0011786C
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22360
lbl_0011786C:
	lui	$v0, 0x2000
	lw	$a0, 2476($s3)
	or	$v0, $s1, $v0
	jal	sub_00106900
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_00117884:
	ld	$ra, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	addiu	$sp, $sp, -144
	sd	$s6, 112($sp)
	lui	$s6, 0x13
	sd	$s2, 48($sp)
	lw	$v0, 2448($s6)
	move	$s2, $a0
	sd	$ra, 128($sp)
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	sd	$s1, 32($sp)
	blez	$v0, lbl_001178F0
	sd	$s0, 16($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22384
lbl_001178F0:
	jal	sub_001168B0
	lui	$s4, 0x13
	lw	$a0, 2480($s4)
	jal	sub_00106930
	nop
	lw	$v1, 2480($s4)
	bne	$v1, $v0, lbl_00117A54
	xori	$a0, $s2, 0x8
	move	$a0, $zero
	jal	sub_001088F8
	lui	$s3, 0x13
	lw	$v0, 2512($s3)
	bgez	$v0, lbl_001179D4
	move	$s1, $zero
	b	lbl_00117960
	lui	$s5, 0x15
lbl_00117930:
	beqz	$v0, lbl_00117A64
	addiu	$v0, $s1, 1
	lui	$v1, 0x10
	li	$a0, -1
lbl_00117940:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $a0, lbl_00117940
	nop
	move	$s1, $v0
lbl_00117960:
	addiu	$s0, $s5, -8880
lbl_00117964:
	lui	$a1, 0x8000
	move	$a0, $s0
	ori	$a1, $a1, 0x59c
	jal	sub_001090A0
	move	$a2, $zero
	bgezl	$v0, lbl_001179C4
	lw	$v0, 36($s0)
	lw	$v0, 2448($s6)
	blez	$v0, lbl_0011799C
	lui	$v1, 0x10
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22328
	lui	$v1, 0x10
lbl_0011799C:
	li	$v0, -1
lbl_001179A0:
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bne	$v1, $v0, lbl_001179A0
	nop
	b	lbl_00117964
	addiu	$s0, $s5, -8880
lbl_001179C4:
	beqz	$v0, lbl_00117930
	slti	$v0, $s1, 17
	b	lbl_001179D8
	sw	$zero, 2512($s3)
lbl_001179D4:
	lui	$s5, 0x15
lbl_001179D8:
	jal	sub_0010F420
	nop
	lui	$v1, 0x13
	beqz	$v0, lbl_001179F4
	sw	$zero, 2496($v1)
	jal	sub_0010F470
	nop
lbl_001179F4:
	lui	$v0, 0x15
	li	$a1, 4
	addiu	$s0, $v0, -8816
	sw	$s2, -8816($v0)
	jal	sub_001128C8
	move	$a0, $s0
	lui	$v0, 0x13
	addiu	$a0, $s5, -8880
	addiu	$s1, $v0, 9216
	move	$a3, $s0
	sw	$zero, 0($sp)
	move	$a1, $zero
	move	$a2, $zero
	li	$t0, 4
	move	$t1, $s1
	li	$t2, 4
	jal	sub_00109280
	move	$t3, $zero
	bgezl	$v0, lbl_00117A80
	lw	$v0, 2448($s6)
	lw	$a0, 2480($s4)
	jal	sub_00106900
	nop
	xori	$a0, $s2, 0x8
lbl_00117A54:
	li	$v1, -1
	li	$v0, 6
	b	lbl_00117AA8
	movz	$v0, $v1, $a0
lbl_00117A64:
	lw	$a0, 2480($s4)
	jal	sub_00106900
	nop
	jal	sub_00117698
	move	$a0, $s2
	b	lbl_00117AAC
	ld	$ra, 128($sp)
lbl_00117A80:
	blez	$v0, lbl_00117A90
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22360
lbl_00117A90:
	lui	$v0, 0x2000
	lw	$a0, 2480($s4)
	or	$v0, $s1, $v0
	jal	sub_00106900
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_00117AA8:
	ld	$ra, 128($sp)
lbl_00117AAC:
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_00117AD0:
	addiu	$sp, $sp, -64
	sd	$s1, 32($sp)
	move	$s1, $a0
	sd	$ra, 48($sp)
	sd	$s0, 16($sp)
	jal	sub_001171A8
	li	$a0, 33
	bnez	$v0, lbl_00117AFC
	lui	$v0, 0x13
	b	lbl_00117B70
	move	$v0, $zero
lbl_00117AFC:
	lui	$a0, 0x13
	addiu	$s0, $v0, 7040
	addiu	$a0, $a0, 9472
	sw	$zero, 0($sp)
	li	$a1, 33
	move	$a2, $zero
	move	$a3, $zero
	move	$t0, $zero
	move	$t1, $s0
	li	$t2, 8
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00117B48
	lui	$v1, 0x2000
	lui	$v0, 0x13
	jal	sub_00106900
	lw	$a0, 2476($v0)
	b	lbl_00117B70
	move	$v0, $zero
lbl_00117B48:
	addiu	$v0, $s0, 4
	or	$v0, $v0, $v1
	lui	$a1, 0x13
	lw	$a0, 0($v0)
	or	$v1, $s0, $v1
	sw	$a0, 0($s1)
	lw	$a0, 2476($a1)
	jal	sub_00106900
	lw	$s0, 0($v1)
	move	$v0, $s0
lbl_00117B70:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00117B88:
	addiu	$sp, $sp, -80
	sd	$s1, 32($sp)
	sd	$s0, 16($sp)
	lui	$s1, 0x13
	sd	$s2, 48($sp)
	move	$s0, $a0
	sd	$ra, 64($sp)
	addiu	$s2, $s1, 8128
	jal	sub_001171A8
	li	$a0, 34
	bnezl	$v0, lbl_00117BC0
	sw	$s0, 8128($s1)
	b	lbl_00117C40
	move	$v0, $zero
lbl_00117BC0:
	move	$a0, $s2
	jal	sub_001128C8
	li	$a1, 4
	lui	$a0, 0x13
	lui	$a2, 0x13
	lui	$v1, 0x13
	lui	$v0, 0x13
	lw	$t0, 9516($a0)
	addiu	$s0, $v0, 7040
	lui	$a0, 0x13
	lw	$t2, 9520($a2)
	lw	$a1, 9512($v1)
	addiu	$a0, $a0, 9472
	move	$a3, $s2
	sw	$zero, 0($sp)
	move	$a2, $zero
	move	$t1, $s0
	jal	sub_00109280
	move	$t3, $zero
	bgez	$v0, lbl_00117C28
	lui	$v1, 0x13
	lui	$v0, 0x13
	jal	sub_00106900
	lw	$a0, 2476($v0)
	b	lbl_00117C40
	move	$v0, $zero
lbl_00117C28:
	lui	$v0, 0x2000
	or	$v0, $s0, $v0
	lw	$a0, 2476($v1)
	jal	sub_00106900
	lw	$s0, 0($v0)
	move	$v0, $s0
lbl_00117C40:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	addiu	$sp, $sp, -16
	lui	$a0, 0x13
	sd	$ra, 0($sp)
	jal	sub_001087F8
	addiu	$a0, $a0, 22408
	ld	$ra, 0($sp)
	li	$v0, 2
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00117C80:
	lui	$v1, 0x13
	addiu	$sp, $sp, -48
	lw	$v0, 9544($v1)
	sd	$ra, 32($sp)
	sd	$s1, 16($sp)
	bnez	$v0, lbl_00117D54
	sd	$s0, 0($sp)
	li	$s1, 1
	jal	sub_0010F420
	sw	$s1, 9544($v1)
	lui	$a3, 0x15
	li	$a2, 32
	addiu	$v1, $a3, -6720
	lui	$s0, 0x15
	addiu	$s0, $s0, -8768
	sw	$a2, 8($v1)
	lui	$v0, 0x2000
	sw	$s1, -6720($a3)
	or	$v0, $s0, $v0
	lui	$a1, 0x11
	lui	$a0, 0x8000
	sw	$v0, 4($v1)
	addiu	$a1, $a1, 32392
	move	$a2, $v1
	sw	$zero, 12($v1)
	ori	$a0, $a0, 0x18
	jal	sub_00112500
	sw	$zero, 16($v1)
	jal	sub_0010F470
	addiu	$s0, $s0, 64
	lui	$a0, 0x8000
	sw	$s1, 20($s0)
	move	$a1, $s0
	sw	$s1, 16($s0)
	ori	$a0, $a0, 0x1
	li	$a2, 24
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
lbl_00117D20:
	jal	sub_001121D0
	li	$a0, 1
	beqz	$v0, lbl_00117D20
	lui	$a1, 0x11
	lui	$a0, 0x8000
	ld	$ra, 32($sp)
	addiu	$a1, $a1, 32104
	ld	$s1, 16($sp)
	ori	$a0, $a0, 0x14
	ld	$s0, 0($sp)
	move	$a2, $zero
	j	lbl_00111498
	addiu	$sp, $sp, 48
lbl_00117D54:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	li	$v0, 1
	bne	$a0, $v0, lbl_00117D84
	lui	$v0, 0x13
	li	$a0, 1
	sw	$zero, 9544($v0)
	j	lbl_001121E8
	move	$a1, $zero
lbl_00117D84:
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	lui	$a0, 0x8000
	sd	$ra, 0($sp)
	sw	$zero, 9544($v0)
	jal	sub_00112578
	ori	$a0, $a0, 0x18
	lui	$a0, 0x8000
	ld	$ra, 0($sp)
	ori	$a0, $a0, 0x14
	j	lbl_00111550
	addiu	$sp, $sp, 16

sub_00117DC0:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0010F420
	move	$s1, $a0
	lw	$a0, 8($s1)
	move	$v1, $zero
	blez	$a0, lbl_00117E48
	lw	$s0, 4($s1)
	li	$a1, 1
	nop
lbl_00117DF0:
	lw	$v0, 16($s0)
	andi	$v0, $v0, 0x1
	bnezl	$v0, lbl_00117E3C
	addiu	$v1, $v1, 1
	sll	$v0, $v1, 0x10
	ori	$v0, $v0, 0x5
	sw	$v0, 16($s0)
	lw	$v0, 0($s1)
	addiu	$v1, $v0, 1
	bne	$v1, $a1, lbl_00117E28
	sw	$v1, 0($s1)
	addiu	$v0, $v0, 2
	li	$v1, 1
	sw	$v0, 0($s1)
lbl_00117E28:
	sw	$s0, 20($s0)
	jal	sub_0010F470
	sw	$v1, 24($s0)
	b	lbl_00117E54
	move	$v0, $s0
lbl_00117E3C:
	slt	$v0, $v1, $a0
	bnez	$v0, lbl_00117DF0
	addiu	$s0, $s0, 64
lbl_00117E48:
	jal	sub_0010F470
	nop
	move	$v0, $zero
lbl_00117E54:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00117E68:
	lw	$v1, 16($a0)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffe
	sw	$zero, 24($a0)
	and	$v1, $v1, $v0
	jr	$ra
	sw	$v1, 16($a0)
	nop
	addiu	$sp, $sp, -64
	lui	$v0, 0x8000
	sd	$s2, 32($sp)
	ori	$v0, $v0, 0x1a
	sd	$ra, 48($sp)
	move	$s2, $a0
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	lw	$v1, 32($s2)
	beq	$v1, $v0, lbl_00117EFC
	sltu	$v0, $v0, $v1
	bnez	$v0, lbl_00117ED4
	nop
	lui	$v0, 0x8000
	ori	$v0, $v0, 0x19
	beql	$v1, $v0, lbl_00117F3C
	lw	$s1, 28($s2)
	b	lbl_00117F70
	lw	$s0, 28($s2)
lbl_00117ED4:
	lui	$v0, 0x8000
	ori	$v0, $v0, 0x1c
	beql	$v1, $v0, lbl_00117F70
	lw	$s0, 28($s2)
	lui	$v0, 0x8000
	ori	$v0, $v0, 0x1d
	beql	$v1, $v0, lbl_00117F5C
	lw	$s1, 28($s2)
	b	lbl_00117F70
	lw	$s0, 28($s2)
lbl_00117EFC:
	lw	$s1, 28($s2)
	lw	$v0, 28($s1)
	beqz	$v0, lbl_00117F2C
	nop
	lw	$v0, 24($s1)
	move	$s0, $gp
	move	$gp, $v0
	lw	$v1, 28($s1)
	jalr	$v1
	lw	$a0, 32($s1)
	move	$v0, $gp
	move	$gp, $s0
lbl_00117F2C:
	jal	sub_00106910
	lw	$a0, 40($s1)
	b	lbl_00117F70
	lw	$s0, 28($s2)
lbl_00117F3C:
	lw	$v1, 36($s2)
	lw	$a0, 40($s1)
	sw	$v1, 36($s1)
	lw	$v0, 40($s2)
	jal	sub_00106910
	sw	$v0, 20($s1)
	b	lbl_00117F70
	lw	$s0, 28($s2)
lbl_00117F5C:
	lw	$v0, 36($s2)
	lw	$a0, 40($s1)
	jal	sub_00106910
	sw	$v0, 44($s1)
	lw	$s0, 28($s2)
lbl_00117F70:
	lw	$a0, 8($s0)
	bltz	$a0, lbl_00117F84
	nop
	jal	sub_00106910
	nop
lbl_00117F84:
	jal	sub_00117E68
	lw	$a0, 0($s0)
	sw	$zero, 0($s0)
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -16
	li	$a3, 2048
	sd	$ra, 0($sp)
	li	$t0, 8192
	jal	sub_00117FD0
	li	$t1, 32
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00117FD0:
	addiu	$sp, $sp, -160
	sd	$s6, 128($sp)
	sd	$s5, 112($sp)
	move	$s6, $t1
	sd	$s4, 96($sp)
	move	$s5, $t0
	sd	$s3, 80($sp)
	move	$s4, $a3
	sd	$s1, 48($sp)
	move	$s3, $a1
	sd	$ra, 144($sp)
	move	$s1, $a0
	sd	$s2, 64($sp)
	beqz	$a2, lbl_00118020
	sd	$s0, 32($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22448
	b	lbl_00118178
	li	$v0, -1
lbl_00118020:
	lui	$v0, 0x13
	li	$s2, 1
	addiu	$v0, $v0, 22488
	sw	$s2, 8($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$s2, 4($sp)
	sw	$v0, 40($s1)
	lw	$v0, 40($s1)
	bltz	$v0, lbl_00118178
	li	$v0, -3
	lw	$a0, 40($s1)
	jal	sub_00106920
	nop
	sw	$s3, 16($s1)
	lui	$a0, 0x15
	sw	$zero, 36($s1)
	addiu	$a0, $a0, -6720
	sw	$s4, 48($s1)
	sw	$s5, 52($s1)
	jal	sub_00117DC0
	sw	$s6, 56($s1)
	move	$s0, $v0
	bnezl	$s0, lbl_0011809C
	lw	$v1, 24($s0)
	lw	$a0, 40($s1)
	jal	sub_001068F0
	nop
	b	lbl_00118178
	li	$v0, -1
lbl_0011809C:
	lui	$v0, 0x13
	sw	$s0, 0($s1)
	addiu	$v0, $v0, 22504
	sw	$v1, 4($s1)
	move	$a0, $sp
	sw	$s3, 32($s0)
	sw	$s4, 36($s0)
	sw	$s5, 40($s0)
	sw	$s6, 44($s0)
	sw	$s0, 20($s0)
	sw	$s1, 28($s0)
	sw	$s2, 4($sp)
	sw	$v0, 20($sp)
	jal	sub_001068E0
	sw	$zero, 8($sp)
	sw	$v0, 8($s1)
	lw	$s2, 8($s1)
	bgez	$s2, lbl_00118104
	move	$a1, $s0
	jal	sub_00117E68
	move	$a0, $s0
	lw	$a0, 40($s1)
	jal	sub_001068F0
	nop
	b	lbl_00118178
	li	$v0, -3
lbl_00118104:
	lui	$a0, 0x8000
	ori	$a0, $a0, 0x19
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_0011814C
	nop
	jal	sub_00117E68
	move	$a0, $s0
	jal	sub_001068F0
	move	$a0, $s2
	lw	$a0, 40($s1)
	jal	sub_001068F0
	nop
	b	lbl_00118178
	li	$v0, -2
lbl_0011814C:
	jal	sub_00106920
	move	$a0, $s2
	jal	sub_001068F0
	move	$a0, $s2
	lw	$v1, 36($s1)
	bnez	$v1, lbl_00118178
	move	$v0, $zero
	lw	$a0, 40($s1)
	jal	sub_001068F0
	nop
	move	$v0, $zero
lbl_00118178:
	ld	$ra, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	addiu	$sp, $sp, -112
	sd	$s1, 48($sp)
	sd	$ra, 96($sp)
	move	$s1, $a0
	sd	$s3, 80($sp)
	sd	$s2, 64($sp)
	beqz	$a1, lbl_001181D4
	sd	$s0, 32($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22448
	b	lbl_001182C0
	li	$v0, -1
lbl_001181D4:
	lw	$a0, 40($s1)
	jal	sub_00106920
	nop
	lui	$a0, 0x15
	jal	sub_00117DC0
	addiu	$a0, $a0, -6720
	move	$s0, $v0
	beqz	$s0, lbl_001182C0
	li	$v0, -1
	lw	$v0, 24($s0)
	lui	$a1, 0x13
	sw	$s0, 0($s1)
	addiu	$a1, $a1, 22520
	sw	$v0, 4($s1)
	li	$s3, 1
	sw	$s0, 20($s0)
	move	$a0, $sp
	lw	$v1, 16($s1)
	sw	$s1, 28($s0)
	sw	$v1, 32($s0)
	lw	$v0, 36($s1)
	sw	$v0, 36($s0)
	sw	$a1, 20($sp)
	sw	$zero, 8($sp)
	jal	sub_001068E0
	sw	$s3, 4($sp)
	sw	$v0, 8($s1)
	lw	$s2, 8($s1)
	bgez	$s2, lbl_0011825C
	move	$a1, $s0
	jal	sub_00117E68
	move	$a0, $s0
	b	lbl_001182C0
	li	$v0, -3
lbl_0011825C:
	lui	$a0, 0x8000
	ori	$a0, $a0, 0x1d
	li	$a2, 64
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_00112700
	move	$t1, $zero
	bnez	$v0, lbl_00118298
	nop
	jal	sub_00117E68
	move	$a0, $s0
	jal	sub_001068F0
	move	$a0, $s2
	b	lbl_001182C0
	li	$v0, -2
lbl_00118298:
	jal	sub_00106920
	move	$a0, $s2
	jal	sub_001068F0
	move	$a0, $s2
	lw	$v1, 44($s1)
	bne	$v1, $s3, lbl_001182BC
	nop
	jal	sub_001068F0
	lw	$a0, 40($s1)
lbl_001182BC:
	lw	$v0, 44($s1)
lbl_001182C0:
	ld	$ra, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	addiu	$sp, $sp, -192
	sd	$s8, 160($sp)
	sd	$s7, 144($sp)
	move	$s8, $a2
	sd	$s6, 128($sp)
	move	$s7, $t3
	sd	$s5, 112($sp)
	move	$s6, $a1
	sd	$s4, 96($sp)
	move	$s5, $t1
	sd	$s3, 80($sp)
	move	$s4, $a3
	sd	$s2, 64($sp)
	move	$s3, $t0
	sd	$s1, 48($sp)
	move	$s2, $a0
	sd	$ra, 176($sp)
	move	$s1, $t2
	beqz	$s8, lbl_00118344
	sd	$s0, 32($sp)
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22448
	b	lbl_00118520
	li	$v0, -1
lbl_00118344:
	jal	sub_00106920
	lw	$a0, 40($s2)
	andi	$v1, $s4, 0x3f
	beqz	$v1, lbl_0011836C
	lui	$a0, 0x13
	lui	$a1, 0x13
	addiu	$a0, $a0, 22536
	addiu	$a1, $a1, 22592
	b	lbl_00118388
	move	$a2, $s4
lbl_0011836C:
	andi	$v0, $s5, 0x3f
	beqz	$v0, lbl_00118398
	lui	$a1, 0x13
	lui	$a0, 0x13
	addiu	$a0, $a0, 22608
	addiu	$a1, $a1, 22592
	move	$a2, $s5
lbl_00118388:
	jal	sub_001087F8
	nop
	b	lbl_00118520
	li	$v0, -1
lbl_00118398:
	lui	$a0, 0x15
	jal	sub_00117DC0
	addiu	$a0, $a0, -6720
	move	$s0, $v0
	beqz	$s0, lbl_00118520
	li	$v0, -1
	lw	$v0, 192($sp)
	lw	$v1, 24($s0)
	sw	$v0, 32($s2)
	sw	$v1, 4($s2)
	sw	$s0, 0($s2)
	sw	$s7, 28($s2)
	move	$v0, $gp
	sw	$v0, 24($s2)
	sw	$s6, 32($s0)
	sw	$s0, 20($s0)
	sw	$s3, 36($s0)
	sw	$s5, 40($s0)
	sw	$s1, 44($s0)
	sw	$s2, 28($s0)
	lw	$v0, 36($s2)
	bne	$s4, $s5, lbl_00118410
	sw	$v0, 52($s0)
	slt	$v0, $s3, $s1
	move	$a1, $s1
	move	$a0, $s4
	jal	sub_001128C8
	movz	$a1, $s3, $v0
	b	lbl_00118434
	andi	$v0, $s8, 0x1
lbl_00118410:
	blez	$s3, lbl_00118420
	move	$a0, $s4
	jal	sub_001128C8
	move	$a1, $s3
lbl_00118420:
	blez	$s1, lbl_00118430
	move	$a0, $s5
	jal	sub_001128C8
	move	$a1, $s1
lbl_00118430:
	andi	$v0, $s8, 0x1
lbl_00118434:
	beqz	$v0, lbl_00118490
	lui	$v0, 0x13
	bnez	$s7, lbl_0011844C
	li	$v0, 1
	b	lbl_00118450
	sw	$zero, 48($s0)
lbl_0011844C:
	sw	$v0, 48($s0)
lbl_00118450:
	li	$v0, -1
	lui	$a0, 0x8000
	lw	$t0, 20($s2)
	move	$a3, $s4
	sw	$v0, 8($s2)
	move	$t1, $s3
	ori	$a0, $a0, 0x1a
	move	$a1, $s0
	jal	sub_00112700
	li	$a2, 64
	bnez	$v0, lbl_00118520
	move	$v0, $zero
	jal	sub_00117E68
	move	$a0, $s0
	b	lbl_00118520
	li	$v0, -2
lbl_00118490:
	li	$s5, 1
	addiu	$v0, $v0, 22664
	sw	$zero, 8($sp)
	sw	$v0, 20($sp)
	move	$a0, $sp
	jal	sub_001068E0
	sw	$s5, 4($sp)
	move	$s1, $v0
	bgez	$s1, lbl_001184C8
	sw	$s1, 8($s2)
	jal	sub_00117E68
	move	$a0, $s0
	b	lbl_00118520
	li	$v0, -3
lbl_001184C8:
	sw	$s5, 48($s0)
	lui	$a0, 0x8000
	move	$a3, $s4
	move	$t1, $s3
	lw	$t0, 20($s2)
	ori	$a0, $a0, 0x1a
	move	$a1, $s0
	jal	sub_00112700
	li	$a2, 64
	bnez	$v0, lbl_0011850C
	nop
	jal	sub_00117E68
	move	$a0, $s0
	jal	sub_001068F0
	move	$a0, $s1
	b	lbl_00118520
	li	$v0, -2
lbl_0011850C:
	jal	sub_00106920
	move	$a0, $s1
	jal	sub_001068F0
	move	$a0, $s1
	move	$v0, $zero
lbl_00118520:
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	addiu	$sp, $sp, -256
	sd	$s4, 192($sp)
	lui	$s4, 0x13
	sd	$s2, 160($sp)
	lw	$v0, 9568($s4)
	li	$s2, 1
	sd	$ra, 240($sp)
	sd	$s6, 224($sp)
	sd	$s5, 208($sp)
	sd	$s3, 176($sp)
	sd	$s1, 144($sp)
	bne	$v0, $s2, lbl_0011858C
	sd	$s0, 128($sp)
	jal	sub_001186F8
	nop
lbl_0011858C:
	lui	$v1, 0x13
	li	$v0, -1
	lui	$s6, 0x15
	addiu	$v1, $v1, 22688
	lui	$s0, 0x15
	sw	$v1, 116($sp)
	sw	$v0, -5332($s0)
	addiu	$s5, $s6, -5344
	sw	$v0, -5344($s6)
	addiu	$s1, $sp, 96
	sw	$v0, 4($s5)
	li	$s3, 127
	sw	$v0, 8($s5)
	move	$a0, $s1
	sw	$s2, 104($sp)
	jal	sub_001068E0
	sw	$s3, 100($sp)
	bltz	$v0, lbl_00118698
	sw	$v0, -5332($s0)
	lui	$v0, 0x13
	sw	$zero, 104($sp)
	addiu	$v0, $v0, 22712
	sw	$s3, 100($sp)
	sw	$v0, 116($sp)
	jal	sub_001068E0
	move	$a0, $s1
	bltz	$v0, lbl_00118698
	sw	$v0, 4($s5)
	lui	$v0, 0x13
	sw	$s3, 100($sp)
	addiu	$v0, $v0, 22736
	move	$a0, $s1
	sw	$v0, 116($sp)
	jal	sub_001068E0
	sw	$zero, 104($sp)
	bltz	$v0, lbl_00118698
	sw	$v0, 8($s5)
	lui	$v1, 0x12
	lui	$a1, 0x15
	lui	$a2, 0x14
	lui	$a3, 0x13
	addiu	$v1, $v1, -26592
	addiu	$a1, $a1, -5312
	addiu	$a2, $a2, -5648
	addiu	$a3, $a3, 22752
	lui	$v0, 0x15
	li	$t0, 0xc000
	sw	$zero, -6652($v0)
	move	$a0, $sp
	sw	$v1, 4($sp)
	sw	$a1, 8($sp)
	sw	$t0, 12($sp)
	sw	$a2, 16($sp)
	sw	$a3, 32($sp)
	jal	sub_001066E0
	sw	$s2, 20($sp)
	bgez	$v0, lbl_00118688
	sw	$v0, -5344($s6)
	jal	sub_001186F8
	sw	$s2, 9568($s4)
	lui	$v0, 0x8101
	b	lbl_001186D0
	ori	$v0, $v0, 0x8004
lbl_00118688:
	jal	sub_0011F450
	nop
	bnez	$v0, lbl_001186AC
	nop
lbl_00118698:
	jal	sub_001186F8
	sw	$s2, 9568($s4)
	lui	$v0, 0x8101
	b	lbl_001186D0
	ori	$v0, $v0, 0x8003
lbl_001186AC:
	jal	sub_0011E800
	nop
	jal	sub_0011A500
	nop
	lw	$a0, -5344($s6)
	jal	sub_001073D0
	move	$a1, $zero
	sw	$s2, 9568($s4)
	move	$v0, $zero
lbl_001186D0:
	ld	$ra, 240($sp)
	ld	$s6, 224($sp)
	ld	$s5, 208($sp)
	ld	$s4, 192($sp)
	ld	$s3, 176($sp)
	ld	$s2, 160($sp)
	ld	$s1, 144($sp)
	ld	$s0, 128($sp)
	jr	$ra
	addiu	$sp, $sp, 256

sub_001186F8:
	addiu	$sp, $sp, -48
	sd	$s1, 16($sp)
	lui	$s1, 0x13
	sd	$ra, 32($sp)
	lw	$v0, 9568($s1)
	bnez	$v0, lbl_00118720
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_001187BC
	ori	$v0, $v0, 0x8001
lbl_00118720:
	lui	$v0, 0x15
	lw	$v1, -6652($v0)
	beqz	$v1, lbl_00118738
	move	$a0, $zero
	jal	sub_00119B08
	move	$a1, $zero
lbl_00118738:
	lui	$s0, 0x15
	lw	$a0, -5344($s0)
	bltzl	$a0, lbl_0011876C
	addiu	$s0, $s0, -5344
	jal	sub_00106730
	nop
	bgez	$v0, lbl_00118760
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22776
lbl_00118760:
	jal	sub_001066F0
	lw	$a0, -5344($s0)
	addiu	$s0, $s0, -5344
lbl_0011876C:
	lw	$a0, 4($s0)
	bltzl	$a0, lbl_00118784
	lw	$a0, 8($s0)
	jal	sub_001068F0
	nop
	lw	$a0, 8($s0)
lbl_00118784:
	bltz	$a0, lbl_00118798
	lui	$v0, 0x15
	jal	sub_001068F0
	nop
	lui	$v0, 0x15
lbl_00118798:
	lw	$a0, -5332($v0)
	bltz	$a0, lbl_001187AC
	nop
	jal	sub_001068F0
	nop
lbl_001187AC:
	jal	sub_0011F4E0
	nop
	sw	$zero, 9568($s1)
	move	$v0, $zero
lbl_001187BC:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	lui	$v0, 0x13
	addiu	$sp, $sp, -32
	lw	$v1, 9568($v0)
	sd	$ra, 16($sp)
	bnez	$v1, lbl_001187F4
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_00118850
	ori	$v0, $v0, 0x8001
lbl_001187F4:
	lw	$v0, 4($a0)
	addiu	$v0, $v0, -2
	sltiu	$v0, $v0, 2
	beqz	$v0, lbl_00118814
	nop
	lw	$v0, 8($a0)
	beqz	$v0, lbl_00118820
	nop
lbl_00118814:
	lui	$v0, 0x8101
	b	lbl_00118850
	ori	$v0, $v0, 0x16
lbl_00118820:
	jal	sub_001202C0
	nop
	move	$s0, $v0
	bgez	$s0, lbl_00118840
	nop
	lui	$v0, 0x8101
	b	lbl_00118850
	ori	$v0, $v0, 0x17
lbl_00118840:
	jal	sub_0011A560
	move	$a0, $s0
	jal	sub_001204C0
	move	$a0, $s0
lbl_00118850:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00120478
	nop
	move	$a0, $v0
	bgezl	$a0, lbl_00118888
	lui	$v0, 0x13
	lui	$v0, 0x8101
	b	lbl_001188D0
	ori	$v0, $v0, 0x8002
lbl_00118888:
	lw	$v1, 9568($v0)
	bnezl	$v1, lbl_001188A0
	lui	$v0, 0x15
	lui	$v0, 0x8101
	b	lbl_001188D0
	ori	$v0, $v0, 0x8001
lbl_001188A0:
	lw	$v1, -6652($v0)
	beqz	$v1, lbl_001188B8
	nop
	lui	$v0, 0x8101
	b	lbl_001188D0
	ori	$v0, $v0, 0x10
lbl_001188B8:
	jal	sub_00120410
	nop
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x8002
	movn	$v1, $zero, $v0
	move	$v0, $v1
lbl_001188D0:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -112
	lui	$v0, 0x13
	sd	$s2, 80($sp)
	sd	$s0, 48($sp)
	move	$s2, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 96($sp)
	bnez	$v1, lbl_00118914
	sd	$s1, 64($sp)
	lui	$v0, 0x8101
	b	lbl_00118974
	ori	$v0, $v0, 0x8001
lbl_00118914:
	lui	$v0, 0x15
	lw	$v1, -6652($v0)
	beqz	$v1, lbl_00118930
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00118974
	ori	$v0, $v0, 0x10
lbl_00118930:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	sw	$s0, 8($sp)
	move	$a0, $sp
	jal	sub_00115DA8
	sw	$s2, 12($sp)
	move	$s0, $v0
	bgez	$s0, lbl_00118968
	nop
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00118974
	ori	$v0, $v0, 0x8002
lbl_00118968:
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $s0
lbl_00118974:
	ld	$ra, 96($sp)
	ld	$s2, 80($sp)
	ld	$s1, 64($sp)
	ld	$s0, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	addiu	$sp, $sp, -16
	bgtz	$a0, lbl_001189A8
	sd	$ra, 0($sp)
	lui	$v0, 0x8101
	b	lbl_001189BC
	ori	$v0, $v0, 0x16
lbl_001189A8:
	lui	$v0, 0x15
	move	$a1, $a0
	jal	sub_00106770
	lw	$a0, -5344($v0)
	move	$v0, $zero
lbl_001189BC:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	bgtz	$a0, lbl_001189E0
	sd	$ra, 0($sp)
	lui	$v0, 0x8101
	b	lbl_001189F4
	ori	$v0, $v0, 0x16
lbl_001189E0:
	lui	$v0, 0x15
	move	$a1, $a0
	jal	sub_00106780
	lw	$a0, -5344($v0)
	move	$v0, $zero
lbl_001189F4:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_00118A00:
	addiu	$sp, $sp, -48
	lui	$v1, 0x13
	sd	$s0, 0($sp)
	lw	$v0, 9568($v1)
	move	$s0, $a0
	sd	$ra, 32($sp)
	bnez	$v0, lbl_00118A2C
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_00118A9C
	ori	$v0, $v0, 0x8001
lbl_00118A2C:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00118A4C
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00118A9C
	ori	$v0, $v0, 0x8002
lbl_00118A4C:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$a2, 0x15
	addiu	$a1, $a2, -6656
	lw	$v0, 4($a1)
	beqzl	$v0, lbl_00118A7C
	lui	$v0, 0x15
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00118A9C
	ori	$v0, $v0, 0x10
lbl_00118A7C:
	li	$v1, 3
	lw	$a0, -5340($v0)
	sw	$s0, -6656($a2)
	jal	sub_00106900
	sw	$v1, 4($a1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_00118A9C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00118AB0:
	addiu	$sp, $sp, -48
	lui	$v1, 0x13
	sd	$s0, 0($sp)
	lw	$v0, 9568($v1)
	move	$s0, $a0
	sd	$ra, 32($sp)
	bnez	$v0, lbl_00118ADC
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_00118B4C
	ori	$v0, $v0, 0x8001
lbl_00118ADC:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00118AFC
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00118B4C
	ori	$v0, $v0, 0x8002
lbl_00118AFC:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$a2, 0x15
	addiu	$a1, $a2, -6656
	lw	$v0, 4($a1)
	beqzl	$v0, lbl_00118B2C
	lui	$v0, 0x15
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00118B4C
	ori	$v0, $v0, 0x10
lbl_00118B2C:
	li	$v1, 4
	lw	$a0, -5340($v0)
	sw	$s0, -6656($a2)
	jal	sub_00106900
	sw	$v1, 4($a1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_00118B4C:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00118B60:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 48($sp)
	bnez	$v1, lbl_00118B94
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_00118C08
	ori	$v0, $v0, 0x8001
lbl_00118B94:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00118BB4
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00118C08
	ori	$v0, $v0, 0x8002
lbl_00118BB4:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$a2, 0x15
	addiu	$a1, $a2, -6656
	lw	$v0, 4($a1)
	beqzl	$v0, lbl_00118BE4
	lui	$v0, 0x15
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00118C08
	ori	$v0, $v0, 0x10
lbl_00118BE4:
	sw	$s0, -6656($a2)
	lw	$a0, -5340($v0)
	li	$v1, 2
	sw	$s2, 12($a1)
	jal	sub_00106900
	sw	$v1, 4($a1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_00118C08:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00118C20:
	addiu	$sp, $sp, -608
	lui	$v0, 0x13
	sd	$s4, 576($sp)
	sd	$s3, 560($sp)
	move	$s4, $a2
	sd	$s0, 512($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 592($sp)
	sd	$s2, 544($sp)
	bnez	$v1, lbl_00118C60
	sd	$s1, 528($sp)
	lui	$v0, 0x8101
	b	lbl_00118D00
	ori	$v0, $v0, 0x8001
lbl_00118C60:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00118C80
	nop
	lui	$v0, 0x8101
	b	lbl_00118D00
	ori	$v0, $v0, 0x8002
lbl_00118C80:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00118CA0
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_00118D00
	ori	$v0, $v0, 0x5b
lbl_00118CA0:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s1, $v1, -6656
	lw	$v0, 4($s1)
	beqzl	$v0, lbl_00118CD0
	li	$v0, 14
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_00118D00
	ori	$v0, $v0, 0x10
lbl_00118CD0:
	sw	$s0, -6656($v1)
	sw	$v0, 4($s1)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s1, 1052
	sw	$s4, 12($s1)
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_00118D00:
	ld	$ra, 592($sp)
	ld	$s4, 576($sp)
	ld	$s3, 560($sp)
	ld	$s2, 544($sp)
	ld	$s1, 528($sp)
	ld	$s0, 512($sp)
	jr	$ra
	addiu	$sp, $sp, 608
	addiu	$sp, $sp, -48
	lui	$v1, 0x13
	sd	$s0, 0($sp)
	lw	$v0, 9568($v1)
	move	$s0, $a0
	sd	$ra, 32($sp)
	bnez	$v0, lbl_00118D4C
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_00118DBC
	ori	$v0, $v0, 0x8001
lbl_00118D4C:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00118D6C
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00118DBC
	ori	$v0, $v0, 0x8002
lbl_00118D6C:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$a2, 0x15
	addiu	$a1, $a2, -6656
	lw	$v0, 4($a1)
	beqzl	$v0, lbl_00118D9C
	lui	$v0, 0x15
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00118DBC
	ori	$v0, $v0, 0x10
lbl_00118D9C:
	li	$v1, 100
	lw	$a0, -5340($v0)
	sw	$s0, -6656($a2)
	jal	sub_00106900
	sw	$v1, 4($a1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_00118DBC:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00118DD0:
	addiu	$sp, $sp, -128
	lui	$v0, 0x13
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	move	$s6, $a3
	sd	$s4, 64($sp)
	move	$s5, $a2
	sd	$s3, 48($sp)
	move	$s4, $t0
	sd	$s1, 16($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s1, $a0
	sd	$ra, 112($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00118E20
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_00118EC8
	ori	$v0, $v0, 0x8001
lbl_00118E20:
	jal	sub_00120478
	move	$a0, $s1
	move	$s1, $v0
	bgez	$s1, lbl_00118E40
	nop
	lui	$v0, 0x8101
	b	lbl_00118EC8
	ori	$v0, $v0, 0x8002
lbl_00118E40:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00118E60
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_00118EC8
	ori	$v0, $v0, 0x5b
lbl_00118E60:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s0, $v1, -6656
	lw	$v0, 4($s0)
	beqzl	$v0, lbl_00118E90
	li	$v0, 5
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_00118EC8
	ori	$v0, $v0, 0x10
lbl_00118E90:
	sw	$s1, -6656($v1)
	sw	$v0, 4($s0)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s0, 1052
	sw	$s4, 20($s0)
	lui	$v1, 0x15
	lw	$a0, -5340($v1)
	sw	$s5, 12($s0)
	jal	sub_00106900
	sw	$s6, 16($s0)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_00118EC8:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_00118EF0:
	addiu	$sp, $sp, -128
	lui	$v0, 0x13
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	move	$s6, $a3
	sd	$s4, 64($sp)
	move	$s5, $a2
	sd	$s3, 48($sp)
	move	$s4, $t0
	sd	$s1, 16($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s1, $a0
	sd	$ra, 112($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00118F40
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_00118FE8
	ori	$v0, $v0, 0x8001
lbl_00118F40:
	jal	sub_00120478
	move	$a0, $s1
	move	$s1, $v0
	bgez	$s1, lbl_00118F60
	nop
	lui	$v0, 0x8101
	b	lbl_00118FE8
	ori	$v0, $v0, 0x8002
lbl_00118F60:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00118F80
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_00118FE8
	ori	$v0, $v0, 0x5b
lbl_00118F80:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s0, $v1, -6656
	lw	$v0, 4($s0)
	beqzl	$v0, lbl_00118FB0
	li	$v0, 6
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_00118FE8
	ori	$v0, $v0, 0x10
lbl_00118FB0:
	sw	$s1, -6656($v1)
	sw	$v0, 4($s0)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s0, 1052
	sw	$s4, 20($s0)
	lui	$v1, 0x15
	lw	$a0, -5340($v1)
	sw	$s5, 12($s0)
	jal	sub_00106900
	sw	$s6, 16($s0)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_00118FE8:
	ld	$ra, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_00119010:
	addiu	$sp, $sp, -80
	lui	$v0, 0x13
	sd	$s3, 48($sp)
	sd	$s0, 0($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 64($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119048
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_001190EC
	ori	$v0, $v0, 0x8001
lbl_00119048:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00119068
	nop
	lui	$v0, 0x8101
	b	lbl_001190EC
	ori	$v0, $v0, 0x8002
lbl_00119068:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00119088
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_001190EC
	ori	$v0, $v0, 0x5b
lbl_00119088:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s1, $v1, -6656
	lw	$v0, 4($s1)
	beqzl	$v0, lbl_001190B8
	li	$v0, 7
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_001190EC
	ori	$v0, $v0, 0x10
lbl_001190B8:
	sw	$s0, -6656($v1)
	sw	$v0, 4($s1)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s1, 1052
	lui	$v1, 0x15
	li	$v0, 0x8417
	lw	$a0, -5340($v1)
	jal	sub_00106900
	sw	$v0, 12($s1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_001190EC:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_00119108:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 48($sp)
	bnez	$v1, lbl_0011913C
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_001191D8
	ori	$v0, $v0, 0x8001
lbl_0011913C:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_0011915C
	nop
	lui	$v0, 0x8101
	b	lbl_001191D8
	ori	$v0, $v0, 0x8002
lbl_0011915C:
	jal	sub_00126004
	move	$a0, $s2
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_0011917C
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_001191D8
	ori	$v0, $v0, 0x5b
lbl_0011917C:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$v1, 0x15
	addiu	$a0, $v1, -6656
	lw	$v0, 4($a0)
	beqzl	$v0, lbl_001191AC
	li	$v0, 8
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_001191D8
	ori	$v0, $v0, 0x10
lbl_001191AC:
	sw	$s0, -6656($v1)
	sw	$v0, 4($a0)
	move	$a1, $s2
	jal	sub_00125EF0
	addiu	$a0, $a0, 1052
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_001191D8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_001191F0:
	addiu	$sp, $sp, -144
	lui	$v0, 0x13
	sd	$s7, 112($sp)
	sd	$s6, 96($sp)
	move	$s7, $t0
	sd	$s5, 80($sp)
	move	$s6, $a3
	sd	$s4, 64($sp)
	move	$s5, $a2
	sd	$s3, 48($sp)
	move	$s4, $t1
	sd	$s1, 16($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s1, $a0
	sd	$ra, 128($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119248
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_001192F4
	ori	$v0, $v0, 0x8001
lbl_00119248:
	jal	sub_00120478
	move	$a0, $s1
	move	$s1, $v0
	bgez	$s1, lbl_00119268
	nop
	lui	$v0, 0x8101
	b	lbl_001192F4
	ori	$v0, $v0, 0x8002
lbl_00119268:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00119288
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_001192F4
	ori	$v0, $v0, 0x5b
lbl_00119288:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s0, $v1, -6656
	lw	$v0, 4($s0)
	beqzl	$v0, lbl_001192B8
	li	$v0, 10
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_001192F4
	ori	$v0, $v0, 0x10
lbl_001192B8:
	sw	$s1, -6656($v1)
	sw	$v0, 4($s0)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s0, 1052
	sw	$s4, 24($s0)
	lui	$v1, 0x15
	lw	$a0, -5340($v1)
	sw	$s5, 12($s0)
	sw	$s6, 16($s0)
	jal	sub_00106900
	sw	$s7, 20($s0)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_001192F4:
	ld	$ra, 128($sp)
	ld	$s7, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_00119320:
	addiu	$sp, $sp, -80
	lui	$v0, 0x13
	sd	$s3, 48($sp)
	sd	$s0, 0($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 64($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119358
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_001193FC
	ori	$v0, $v0, 0x8001
lbl_00119358:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00119378
	nop
	lui	$v0, 0x8101
	b	lbl_001193FC
	ori	$v0, $v0, 0x8002
lbl_00119378:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00119398
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_001193FC
	ori	$v0, $v0, 0x5b
lbl_00119398:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s1, $v1, -6656
	lw	$v0, 4($s1)
	beqzl	$v0, lbl_001193C8
	li	$v0, 11
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_001193FC
	ori	$v0, $v0, 0x10
lbl_001193C8:
	sw	$s0, -6656($v1)
	sw	$v0, 4($s1)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s1, 1052
	lui	$v1, 0x15
	li	$v0, 0x8427
	lw	$a0, -5340($v1)
	jal	sub_00106900
	sw	$v0, 12($s1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_001193FC:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_00119418:
	addiu	$sp, $sp, -96
	lui	$v0, 0x13
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	move	$s4, $a2
	sd	$s0, 0($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 80($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119458
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_001194F8
	ori	$v0, $v0, 0x8001
lbl_00119458:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00119478
	nop
	lui	$v0, 0x8101
	b	lbl_001194F8
	ori	$v0, $v0, 0x8002
lbl_00119478:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00119498
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_001194F8
	ori	$v0, $v0, 0x5b
lbl_00119498:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s1, $v1, -6656
	lw	$v0, 4($s1)
	beqzl	$v0, lbl_001194C8
	li	$v0, 12
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_001194F8
	ori	$v0, $v0, 0x10
lbl_001194C8:
	sw	$s0, -6656($v1)
	sw	$v0, 4($s1)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s1, 1052
	sw	$s4, 12($s1)
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_001194F8:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_00119518:
	addiu	$sp, $sp, -96
	lui	$v0, 0x13
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	andi	$s4, $a2, 0xffff
	sd	$s0, 0($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 80($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119558
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_001195F8
	ori	$v0, $v0, 0x8001
lbl_00119558:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_00119578
	nop
	lui	$v0, 0x8101
	b	lbl_001195F8
	ori	$v0, $v0, 0x8002
lbl_00119578:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_00119598
	lui	$s2, 0x15
	lui	$v0, 0x8101
	b	lbl_001195F8
	ori	$v0, $v0, 0x5b
lbl_00119598:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s1, $v1, -6656
	lw	$v0, 4($s1)
	beqzl	$v0, lbl_001195C8
	li	$v0, 13
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_001195F8
	ori	$v0, $v0, 0x10
lbl_001195C8:
	sw	$s0, -6656($v1)
	sw	$v0, 4($s1)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s1, 1052
	sw	$s4, 12($s1)
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_001195F8:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_00119618:
	addiu	$sp, $sp, -96
	lui	$v0, 0x13
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	move	$s4, $a2
	sd	$s1, 16($sp)
	move	$s3, $a1
	lw	$v1, 9568($v0)
	move	$s1, $a0
	sd	$ra, 80($sp)
	sd	$s2, 32($sp)
	bnez	$v1, lbl_00119658
	sd	$s0, 0($sp)
	lui	$v0, 0x8101
	b	lbl_00119714
	ori	$v0, $v0, 0x8001
lbl_00119658:
	jal	sub_00120478
	move	$a0, $s1
	move	$s1, $v0
	bgez	$s1, lbl_00119678
	nop
	lui	$v0, 0x8101
	b	lbl_00119714
	ori	$v0, $v0, 0x8002
lbl_00119678:
	jal	sub_00126004
	move	$a0, $s3
	sltiu	$v0, $v0, 128
	beqz	$v0, lbl_001196A0
	nop
	jal	sub_00126004
	move	$a0, $s4
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_001196AC
	lui	$s2, 0x15
lbl_001196A0:
	lui	$v0, 0x8101
	b	lbl_00119714
	ori	$v0, $v0, 0x5b
lbl_001196AC:
	jal	sub_00106920
	lw	$a0, -5332($s2)
	lui	$v1, 0x15
	addiu	$s0, $v1, -6656
	lw	$v0, 4($s0)
	beqzl	$v0, lbl_001196DC
	li	$v0, 9
	jal	sub_00106900
	lw	$a0, -5332($s2)
	lui	$v0, 0x8101
	b	lbl_00119714
	ori	$v0, $v0, 0x10
lbl_001196DC:
	sw	$s1, -6656($v1)
	sw	$v0, 4($s0)
	move	$a1, $s3
	jal	sub_00125EF0
	addiu	$a0, $s0, 1052
	addiu	$a0, $s0, 1180
	jal	sub_00125EF0
	move	$a1, $s4
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s2)
	move	$v0, $zero
lbl_00119714:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_00119738:
	addiu	$sp, $sp, -64
	lui	$v0, 0x13
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a1
	lw	$v1, 9568($v0)
	move	$s0, $a0
	sd	$ra, 48($sp)
	bnez	$v1, lbl_0011976C
	sd	$s1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_00119808
	ori	$v0, $v0, 0x8001
lbl_0011976C:
	jal	sub_00120478
	move	$a0, $s0
	move	$s0, $v0
	bgez	$s0, lbl_0011978C
	nop
	lui	$v0, 0x8101
	b	lbl_00119808
	ori	$v0, $v0, 0x8002
lbl_0011978C:
	jal	sub_00126004
	move	$a0, $s2
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_001197AC
	lui	$s1, 0x15
	lui	$v0, 0x8101
	b	lbl_00119808
	ori	$v0, $v0, 0x5b
lbl_001197AC:
	jal	sub_00106920
	lw	$a0, -5332($s1)
	lui	$v1, 0x15
	addiu	$a0, $v1, -6656
	lw	$v0, 4($a0)
	beqzl	$v0, lbl_001197DC
	li	$v0, 15
	jal	sub_00106900
	lw	$a0, -5332($s1)
	lui	$v0, 0x8101
	b	lbl_00119808
	ori	$v0, $v0, 0x10
lbl_001197DC:
	sw	$s0, -6656($v1)
	sw	$v0, 4($a0)
	move	$a1, $s2
	jal	sub_00125EF0
	addiu	$a0, $a0, 1052
	lui	$v1, 0x15
	jal	sub_00106900
	lw	$a0, -5340($v1)
	jal	sub_00106900
	lw	$a0, -5332($s1)
	move	$v0, $zero
lbl_00119808:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	addiu	$sp, $sp, -80
	sd	$s3, 48($sp)
	sd	$s2, 32($sp)
	lui	$s3, 0x13
	sd	$s1, 16($sp)
	lui	$s2, 0x15
	sd	$ra, 64($sp)
	lui	$s1, 0x15
	sd	$s0, 0($sp)
	addiu	$v0, $s2, -5344
lbl_00119848:
	jal	sub_00106920
	lw	$a0, 4($v0)
	addiu	$v1, $s1, -6656
	lw	$v0, 4($v1)
	addiu	$v0, $v0, -2
	sltiu	$v1, $v0, 23
	beqz	$v1, lbl_00119A00
	sll	$v0, $v0, 0x2
	addiu	$v1, $s3, 22816
	addu	$v0, $v0, $v1
	lw	$a0, 0($v0)
	jr	$a0
	nop
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	jal	sub_0011AEE0
	lw	$a1, 12($s0)
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	addiu	$a1, $s0, 1052
	lw	$a3, 16($s0)
	jal	sub_0011D3D0
	lw	$t0, 20($s0)
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	addiu	$a1, $s0, 1052
	lw	$a3, 16($s0)
	jal	sub_0011D5D8
	lw	$t0, 20($s0)
	b	lbl_00119A00
	sw	$v0, 8($s0)
	lw	$a0, -6656($s1)
	jal	sub_0011B278
	addiu	$s0, $s1, -6656
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	jal	sub_0011CE40
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	jal	sub_0011DBB8
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	jal	sub_0011CE40
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	jal	sub_0011DDE8
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	addiu	$a1, $s0, 1052
	lw	$a3, 16($s0)
	lw	$t0, 20($s0)
	jal	sub_0011DF10
	lw	$t1, 24($s0)
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lhu	$a2, 12($s0)
	jal	sub_0011E430
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	addiu	$a1, $s0, 1052
	jal	sub_0011E5B8
	addiu	$a2, $s0, 1180
	b	lbl_00119A00
	sw	$v0, 8($s0)
	lw	$a0, -6656($s1)
	jal	sub_0011BBA8
	addiu	$s0, $s1, -6656
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	lw	$a2, 12($s0)
	jal	sub_0011CD50
	addiu	$a1, $s0, 1052
	b	lbl_00119A00
	sw	$v0, 8($s0)
	addiu	$s0, $s1, -6656
	lw	$a0, -6656($s1)
	jal	sub_0011E738
	addiu	$a1, $s0, 1052
	sw	$v0, 8($s0)
lbl_00119A00:
	addiu	$a0, $s1, -6656
	lui	$v0, 0x8101
	lw	$v1, 8($a0)
	ori	$v0, $v0, 0x9fff
	bne	$v1, $v0, lbl_00119A28
	addiu	$v0, $s2, -5344
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x2
	sw	$v0, 8($a0)
	addiu	$v0, $s2, -5344
lbl_00119A28:
	jal	sub_00106900
	lw	$a0, 8($v0)
	b	lbl_00119848
	addiu	$v0, $s2, -5344

sub_00119A38:
	addiu	$sp, $sp, -64
	lui	$v0, 0x15
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	addiu	$s2, $v0, -6656
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$ra, 48($sp)
	lw	$v0, 4($s2)
	bnez	$v0, lbl_00119A6C
	move	$s0, $a2
	b	lbl_00119AC4
	li	$v0, -1
lbl_00119A6C:
	bnezl	$s1, lbl_00119A74
	sw	$v0, 0($s1)
lbl_00119A74:
	bnez	$a0, lbl_00119A8C
	lui	$v0, 0x15
	jal	sub_00106920
	lw	$a0, -5336($v0)
	b	lbl_00119A9C
	nop
lbl_00119A8C:
	jal	sub_00106930
	lw	$a0, -5336($v0)
	bltz	$v0, lbl_00119AC4
	move	$v0, $zero
lbl_00119A9C:
	beqz	$s0, lbl_00119AAC
	nop
	lw	$v0, 8($s2)
	sw	$v0, 0($s0)
lbl_00119AAC:
	beqzl	$s1, lbl_00119AC0
	sw	$zero, 4($s2)
	lw	$v0, 4($s2)
	sw	$v0, 0($s1)
	sw	$zero, 4($s2)
lbl_00119AC0:
	li	$v0, 1
lbl_00119AC4:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	move	$a2, $a1
	addiu	$sp, $sp, -16
	move	$a1, $a0
	sd	$ra, 0($sp)
	jal	sub_00119A38
	li	$a0, 1
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00119B08:
	move	$a2, $a1
	addiu	$sp, $sp, -16
	move	$a1, $a0
	sd	$ra, 0($sp)
	jal	sub_00119A38
	move	$a0, $zero
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118B60
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119B60
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119B60:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118A00
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119BA0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119BA0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118AB0
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119BE0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119BE0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118DD0
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119C20
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119C20:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118EF0
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119C60
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119C60:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119010
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119CA0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119CA0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119108
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119CE0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119CE0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119618
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119D20
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119D20:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119320
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119D60
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119D60:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119418
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119DA0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119DA0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_001191F0
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119DE0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119DE0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119518
	andi	$a2, $a2, 0xffff
	move	$v1, $v0
	bnez	$v1, lbl_00119E20
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119E20:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00118C20
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119E60
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119E60:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -32
	sd	$ra, 16($sp)
	jal	sub_00119738
	nop
	move	$v1, $v0
	bnez	$v1, lbl_00119EA0
	sw	$v0, 0($sp)
	move	$a0, $zero
	move	$a1, $zero
	jal	sub_00119A38
	move	$a2, $sp
	lw	$v0, 0($sp)
lbl_00119EA0:
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00119EB0:
	sll	$a1, $a1, 0x18
	lb	$v1, 0($a0)
	lbu	$v0, 0($a0)
	sra	$a1, $a1, 0x18
	beqz	$v1, lbl_00119EEC
	move	$a2, $a0
	beq	$v1, $a1, lbl_00119EFC
	nop
	addiu	$a2, $a2, 1
	nop
lbl_00119ED8:
	lb	$v1, 0($a2)
	beqz	$v1, lbl_00119EEC
	lbu	$v0, 0($a2)
	bnel	$v1, $a1, lbl_00119ED8
	addiu	$a2, $a2, 1
lbl_00119EEC:
	sll	$v0, $v0, 0x18
	sra	$v0, $v0, 0x18
	bne	$v0, $a1, lbl_00119F04
	nop
lbl_00119EFC:
	jr	$ra
	subu	$v0, $a2, $a0
lbl_00119F04:
	jr	$ra
	li	$v0, -1
	nop

sub_00119F10:
	addiu	$sp, $sp, -32
	li	$a1, 47
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00125C1C
	move	$s0, $a0
	beqz	$v0, lbl_00119F54
	move	$a0, $s0
	jal	sub_001264B8
	li	$a1, 47
	jal	sub_00126004
	addiu	$a0, $v0, 1
	sltiu	$v0, $v0, 32
	bnez	$v0, lbl_00119F6C
	li	$v0, 1
	b	lbl_00119F6C
	move	$v0, $zero
lbl_00119F54:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v1, $v0, 32
	beqz	$v1, lbl_00119F6C
	move	$v0, $zero
	li	$v0, 1
lbl_00119F6C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00119F80:
	lb	$v0, 0($a0)
	beqz	$v0, lbl_00119FCC
	lbu	$v1, 0($a0)
	li	$a2, 63
	li	$a1, 42
	nop
lbl_00119F98:
	sll	$v0, $v1, 0x18
	sra	$v0, $v0, 0x18
	beq	$v0, $a2, lbl_00119FB8
	nop
	beq	$v0, $a1, lbl_00119FB8
	slti	$v0, $v0, 32
	beqz	$v0, lbl_00119FC0
	addiu	$a0, $a0, 1
lbl_00119FB8:
	jr	$ra
	move	$v0, $zero
lbl_00119FC0:
	lb	$v0, 0($a0)
	bnez	$v0, lbl_00119F98
	lbu	$v1, 0($a0)
lbl_00119FCC:
	jr	$ra
	li	$v0, 1
	nop
	addiu	$sp, $sp, -64
	li	$a1, 47
	sd	$s0, 32($sp)
	sd	$ra, 48($sp)
	jal	sub_00125C1C
	move	$s0, $a0
	beqz	$v0, lbl_0011A030
	move	$a0, $s0
	jal	sub_001264B8
	li	$a1, 47
	jal	sub_00126004
	addiu	$a0, $v0, 1
	sltiu	$v0, $v0, 32
	beqz	$v0, lbl_0011A078
	move	$a0, $s0
	jal	sub_001264B8
	li	$a1, 47
	addiu	$a1, $v0, 1
	jal	sub_00125EF0
	move	$a0, $sp
	b	lbl_0011A050
	lui	$a1, 0x13
lbl_0011A030:
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 32
	beqz	$v0, lbl_0011A078
	move	$a1, $s0
	jal	sub_00125EF0
	move	$a0, $sp
	lui	$a1, 0x13
lbl_0011A050:
	move	$a0, $sp
	jal	sub_00125DAC
	addiu	$a1, $a1, 22912
	beqz	$v0, lbl_0011A078
	lui	$a1, 0x13
	move	$a0, $sp
	jal	sub_00125DAC
	addiu	$a1, $a1, 22920
	bnez	$v0, lbl_0011A07C
	li	$v0, 1
lbl_0011A078:
	move	$v0, $zero
lbl_0011A07C:
	ld	$ra, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0011A090:
	addiu	$sp, $sp, -80
	sd	$s3, 48($sp)
	sd	$s1, 16($sp)
	move	$s3, $a0
	sd	$ra, 64($sp)
	move	$s1, $a1
	sd	$s2, 32($sp)
	b	lbl_0011A1BC
	sd	$s0, 0($sp)
	nop
lbl_0011A0B8:
	bltz	$s2, lbl_0011A0D0
	move	$s0, $v1
	bltz	$v1, lbl_0011A0D0
	move	$s0, $s2
	slt	$v0, $s2, $v1
	movz	$s0, $v1, $v0
lbl_0011A0D0:
	move	$a0, $s1
	move	$a1, $s3
	jal	sub_00126140
	move	$a2, $s0
	bnez	$v0, lbl_0011A1F4
	move	$v0, $zero
	addu	$s1, $s1, $s0
	addu	$s3, $s3, $s0
	lb	$v1, 0($s1)
	li	$v0, 63
	bne	$v1, $v0, lbl_0011A124
	lbu	$a1, 0($s1)
	li	$v1, 63
	nop
lbl_0011A108:
	lb	$v0, 0($s3)
	beqz	$v0, lbl_0011A18C
	addiu	$s1, $s1, 1
	addiu	$s3, $s3, 1
	lb	$v0, 0($s1)
	beq	$v0, $v1, lbl_0011A108
	lbu	$a1, 0($s1)
lbl_0011A124:
	sll	$v0, $a1, 0x18
	li	$v1, 42
	sra	$v0, $v0, 0x18
	bne	$v0, $v1, lbl_0011A1C0
	move	$a0, $s1
	li	$a0, 42
	li	$v1, 63
lbl_0011A140:
	addiu	$s1, $s1, 1
lbl_0011A144:
	lb	$v0, 0($s1)
	lbu	$a1, 0($s1)
	nop
	nop
	beq	$v0, $a0, lbl_0011A140
	nop
	beql	$v0, $v1, lbl_0011A144
	addiu	$s1, $s1, 1
	beqz	$v0, lbl_0011A18C
	li	$s2, 1
	b	lbl_0011A19C
	sll	$a1, $a1, 0x18
	nop
lbl_0011A178:
	move	$a1, $s1
	jal	sub_0011A090
	move	$a0, $s3
	bnel	$v0, $s2, lbl_0011A194
	lbu	$a1, 0($s1)
lbl_0011A18C:
	b	lbl_0011A1F4
	li	$v0, 1
lbl_0011A194:
	addiu	$s3, $s3, 1
	sll	$a1, $a1, 0x18
lbl_0011A19C:
	move	$a0, $s3
	jal	sub_00119EB0
	sra	$a1, $a1, 0x18
	move	$s0, $v0
	bgez	$s0, lbl_0011A178
	addu	$s3, $s3, $s0
	b	lbl_0011A1F4
	move	$v0, $zero
lbl_0011A1BC:
	move	$a0, $s1
lbl_0011A1C0:
	jal	sub_00119EB0
	li	$a1, 63
	move	$s2, $v0
	move	$a0, $s1
	jal	sub_00119EB0
	li	$a1, 42
	bgez	$s2, lbl_0011A0B8
	move	$v1, $v0
	bgez	$v1, lbl_0011A0B8
	move	$a0, $s1
	jal	sub_00125DAC
	move	$a1, $s3
	sltiu	$v0, $v0, 1
lbl_0011A1F4:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0011A210:
	addiu	$sp, $sp, -80
	sd	$s1, 16($sp)
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$ra, 64($sp)
	move	$s0, $a0
	sd	$s3, 48($sp)
	beqz	$s0, lbl_0011A254
	sd	$s2, 32($sp)
	lui	$v0, 0x16
	move	$a1, $s0
	addiu	$v0, $v0, -21688
	move	$a0, $v0
	jal	sub_00125EF0
	move	$s0, $v0
	bnezl	$s0, lbl_0011A268
	lb	$v0, 0($s0)
lbl_0011A254:
	lui	$s3, 0x16
	lw	$s0, -21696($s3)
	beqz	$s0, lbl_0011A314
	move	$v0, $zero
	lb	$v0, 0($s0)
lbl_0011A268:
	bnez	$v0, lbl_0011A284
	lbu	$a1, 0($s0)
	b	lbl_0011A314
	move	$v0, $zero
lbl_0011A278:
	beqz	$v0, lbl_0011A314
	move	$v0, $zero
	lbu	$a1, 0($s0)
lbl_0011A284:
	sll	$a1, $a1, 0x18
	addiu	$s0, $s0, 1
	sra	$a1, $a1, 0x18
	jal	sub_00125C1C
	move	$a0, $s1
	bnezl	$v0, lbl_0011A278
	lb	$v0, -1($s0)
	lb	$v1, -1($s0)
	li	$v0, 34
	bne	$v1, $v0, lbl_0011A2DC
	addiu	$s2, $s0, -1
	move	$s2, $s0
	lui	$s3, 0x16
	lui	$s1, 0x13
	lb	$a1, 0($s0)
lbl_0011A2C0:
	addiu	$a0, $s1, 22928
	jal	sub_00125C1C
	addiu	$s0, $s0, 1
	beqzl	$v0, lbl_0011A2C0
	lb	$a1, 0($s0)
	b	lbl_0011A300
	lb	$v0, -1($s0)
lbl_0011A2DC:
	lui	$s3, 0x16
	lb	$a1, 0($s0)
	nop
lbl_0011A2E8:
	move	$a0, $s1
	jal	sub_00125C1C
	addiu	$s0, $s0, 1
	beqzl	$v0, lbl_0011A2E8
	lb	$a1, 0($s0)
	lb	$v0, -1($s0)
lbl_0011A300:
	beqzl	$v0, lbl_0011A30C
	sw	$zero, -21696($s3)
	sw	$s0, -21696($s3)
lbl_0011A30C:
	sb	$zero, -1($s0)
	move	$v0, $s2
lbl_0011A314:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0011A330:
	move	$a1, $a0
	move	$a2, $zero
	lb	$v0, 0($a1)
	beqz	$v0, lbl_0011A36C
	lbu	$v1, 0($a1)
	nop
lbl_0011A348:
	sll	$v0, $v1, 0x18
	addiu	$a1, $a1, 1
	sra	$v0, $v0, 0x18
	addiu	$v1, $a2, 1
	xori	$v0, $v0, 0x2f
	lb	$a0, 0($a1)
	movz	$a2, $v1, $v0
	bnez	$a0, lbl_0011A348
	lbu	$v1, 0($a1)
lbl_0011A36C:
	jr	$ra
	move	$v0, $a2
	nop

sub_0011A378:
	addiu	$sp, $sp, -80
	sd	$s2, 32($sp)
	sd	$s0, 0($sp)
	move	$s2, $a0
	sd	$s1, 16($sp)
	move	$s0, $a1
	sd	$ra, 64($sp)
	move	$s1, $a2
	sd	$s3, 48($sp)
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 128
	bnez	$v0, lbl_0011A3B8
	li	$v0, 2200
lbl_0011A3B0:
	b	lbl_0011A4E0
	move	$v0, $zero
lbl_0011A3B8:
	lui	$a1, 0x16
	mult	$v0, $s2, $v0
	addiu	$a1, $a1, -19376
	move	$a0, $s1
	jal	sub_00125EF0
	addu	$a1, $v0, $a1
	lb	$v1, 0($s0)
	li	$v0, 47
	bne	$v1, $v0, lbl_0011A408
	lui	$s2, 0x13
	addiu	$a0, $s0, 1
	addiu	$a2, $s2, 22936
	lb	$v0, 0($a2)
	lb	$v1, 1($a2)
	sb	$v0, 0($s1)
	sb	$v1, 1($s1)
	jal	sub_0011A210
	addiu	$a1, $s2, 22936
	b	lbl_0011A418
	move	$s0, $v0
lbl_0011A408:
	move	$a0, $s0
	jal	sub_0011A210
	addiu	$a1, $s2, 22936
	move	$s0, $v0
lbl_0011A418:
	beqz	$s0, lbl_0011A4BC
	lui	$s3, 0x13
	move	$a0, $s0
	nop
lbl_0011A428:
	jal	sub_00125DAC
	addiu	$a1, $s3, 22912
	bnez	$v0, lbl_0011A444
	lui	$a1, 0x13
	move	$a0, $zero
	b	lbl_0011A4A8
	addiu	$a1, $s2, 22936
lbl_0011A444:
	move	$a0, $s0
	jal	sub_00125DAC
	addiu	$a1, $a1, 22920
	bnez	$v0, lbl_0011A488
	move	$a1, $s0
	jal	sub_00126004
	move	$a0, $s1
	addu	$v0, $v0, $s1
	move	$a0, $s1
	sb	$zero, -1($v0)
	jal	sub_001264B8
	li	$a1, 47
	beqz	$v0, lbl_0011A3B0
	move	$a0, $zero
	sb	$zero, 1($v0)
	b	lbl_0011A4A8
	addiu	$a1, $s2, 22936
lbl_0011A488:
	jal	sub_00125AF0
	move	$a0, $s1
	addiu	$s0, $s2, 22936
	move	$a1, $s0
	jal	sub_00125AF0
	move	$a0, $s1
	move	$a1, $s0
	move	$a0, $zero
lbl_0011A4A8:
	jal	sub_0011A210
	nop
	move	$s0, $v0
	bnez	$s0, lbl_0011A428
	move	$a0, $s0
lbl_0011A4BC:
	addiu	$a1, $s2, 22936
	jal	sub_00125DAC
	move	$a0, $s1
	beqz	$v0, lbl_0011A4DC
	move	$a0, $s1
	jal	sub_001264B8
	li	$a1, 47
	sb	$zero, 0($v0)
lbl_0011A4DC:
	li	$v0, 1
lbl_0011A4E0:
	ld	$ra, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_0011A500:
	lui	$v0, 0x16
	li	$a0, -1
	addiu	$v0, $v0, -21432
	li	$a2, 1
	addiu	$v0, $v0, 2056
	lui	$a1, 0x13
	li	$v1, 1
	nop
lbl_0011A520:
	sw	$a0, -8($v0)
	addiu	$v1, $v1, -1
	sw	$a0, -4($v0)
	sw	$zero, 140($v0)
	sw	$a2, 128($v0)
	sw	$zero, 132($v0)
	sw	$zero, 136($v0)
	addiu	$t2, $a1, 22936
	lb	$a3, 0($t2)
	lb	$t0, 1($t2)
	sb	$a3, 0($v0)
	sb	$t0, 1($v0)
	bgez	$v1, lbl_0011A520
	addiu	$v0, $v0, 2200
	jr	$ra
	li	$v0, 1

sub_0011A560:
	li	$v0, 2200
	lui	$v1, 0x16
	mult	$a0, $a0, $v0
	addiu	$v1, $v1, -21432
	li	$t0, -1
	li	$t1, 1
	addiu	$t2, $v1, 2056
	lui	$t3, 0x13
	addu	$a1, $v1, $a0
	sw	$t0, 2048($a1)
	move	$a2, $a1
	sw	$t0, 2052($a2)
	move	$a3, $a1
	sw	$zero, 2196($a3)
	move	$v1, $a1
	sw	$t1, 2184($a1)
	addu	$a0, $a0, $t2
	sw	$zero, 2188($a2)
	sw	$zero, 2192($v1)
	addiu	$a3, $t3, 22936
	lb	$v1, 0($a3)
	lb	$a1, 1($a3)
	sb	$v1, 0($a0)
	sb	$a1, 1($a0)
	jr	$ra
	li	$v0, 1

sub_0011A5C8:
	addiu	$sp, $sp, -112
	li	$v1, 388
	sd	$s1, 16($sp)
	lui	$v0, 0x13
	move	$s1, $a0
	sd	$s3, 48($sp)
	mult	$v1, $s1, $v1
	addiu	$v0, $v0, 9576
	move	$s3, $a2
	sd	$ra, 96($sp)
	sd	$s5, 80($sp)
	move	$a2, $a1
	sd	$s4, 64($sp)
	sd	$s2, 32($sp)
	addu	$t1, $v1, $v0
	bgez	$a1, lbl_0011A614
	sd	$s0, 0($sp)
	li	$v0, 0xffff
	addu	$a2, $a1, $v0
lbl_0011A614:
	li	$v0, 2200
	lui	$s5, 0x16
	mult	$a3, $s1, $v0
	addiu	$t0, $s5, -21432
	li	$v0, -1
	addiu	$a0, $t0, 2052
	slt	$v0, $v0, $a1
	addiu	$v1, $a1, 255
	movn	$v1, $a1, $v0
	sra	$s0, $a2, 0x10
	addu	$s2, $a3, $a0
	sra	$v1, $v1, 0x8
	sll	$v0, $s0, 0x8
	lw	$a0, 0($s2)
	beq	$a0, $s0, lbl_0011A68C
	subu	$s4, $v1, $v0
	sll	$v0, $s0, 0x2
	addu	$a1, $a3, $t0
	addu	$v0, $t1, $v0
	move	$a0, $s1
	lw	$a2, 80($v0)
	jal	sub_0011EAD0
	li	$a3, 1
	bnezl	$v0, lbl_0011A68C
	sw	$s0, 0($s2)
	lui	$v1, 0x8101
	move	$v0, $zero
	ori	$v1, $v1, 0x6f
	b	lbl_0011A6C0
	sw	$v1, 0($s3)
lbl_0011A68C:
	li	$v1, 2200
	sll	$v0, $s4, 0x2
	mult	$v1, $s1, $v1
	addiu	$a0, $s5, -21432
	addu	$v0, $v0, $v1
	addu	$v0, $v0, $a0
	lw	$v0, 0($v0)
	bgezl	$v0, lbl_0011A6C0
	sw	$zero, 0($s3)
	lui	$v1, 0x8101
	move	$v0, $zero
	ori	$v1, $v1, 0x9001
	sw	$v1, 0($s3)
lbl_0011A6C0:
	ld	$ra, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop

sub_0011A6E8:
	addiu	$sp, $sp, -48
	li	$v0, 2200
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 16($sp)
	mult	$a3, $s0, $v0
	lui	$s1, 0x16
	sd	$ra, 32($sp)
	addiu	$a1, $s1, -21432
	addu	$v0, $a1, $a3
	lw	$a2, 2048($v0)
	blez	$a2, lbl_0011A74C
	li	$a0, 1
	lw	$v1, 2196($v0)
	bne	$v1, $a0, lbl_0011A750
	li	$v1, 2200
	addiu	$a1, $a1, 1024
	move	$a0, $s0
	addu	$a1, $a3, $a1
	jal	sub_0011EB10
	li	$a3, 1
	bnez	$v0, lbl_0011A750
	li	$v1, 2200
	b	lbl_0011A764
	move	$v0, $zero
lbl_0011A74C:
	li	$v1, 2200
lbl_0011A750:
	addiu	$a0, $s1, -21432
	mult	$v1, $s0, $v1
	li	$v0, 1
	addu	$a0, $a0, $v1
	sw	$zero, 2196($a0)
lbl_0011A764:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0011A778:
	move	$a3, $a1
	li	$v0, -1
	addiu	$sp, $sp, -144
	slt	$v0, $v0, $a3
	addiu	$v1, $a3, 255
	sd	$s2, 32($sp)
	movn	$v1, $a3, $v0
	sd	$s3, 48($sp)
	sra	$s2, $v1, 0x8
	sd	$s1, 16($sp)
	move	$s3, $a2
	sll	$v0, $s2, 0x8
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$ra, 128($sp)
	sd	$s7, 112($sp)
	subu	$s2, $a3, $v0
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	jal	sub_0011A5C8
	sd	$s4, 64($sp)
	lw	$v1, 0($s3)
	move	$s0, $v0
	bnez	$v1, lbl_0011A864
	move	$v0, $zero
	li	$v0, 2200
	lui	$s7, 0x16
	mult	$s4, $s1, $v0
	addiu	$s6, $s7, -21432
	addiu	$v0, $s6, 2048
	addu	$s5, $s4, $v0
	lw	$v1, 0($s5)
	beq	$v1, $s0, lbl_0011A844
	li	$v1, 2200
	jal	sub_0011A6E8
	move	$a0, $s1
	beqz	$v0, lbl_0011A82C
	addiu	$a1, $s6, 1024
	move	$a0, $s1
	addu	$a1, $s4, $a1
	move	$a2, $s0
	jal	sub_0011EAD0
	li	$a3, 1
	bnezl	$v0, lbl_0011A840
	sw	$s0, 0($s5)
lbl_0011A82C:
	lui	$v1, 0x8101
	move	$v0, $zero
	ori	$v1, $v1, 0x6f
	b	lbl_0011A864
	sw	$v1, 0($s3)
lbl_0011A840:
	li	$v1, 2200
lbl_0011A844:
	sll	$a0, $s2, 0x2
	mult	$v1, $s1, $v1
	addiu	$v0, $s7, -21432
	addu	$a0, $a0, $v1
	addu	$v0, $v0, $a0
	lw	$s0, 1024($v0)
	sw	$zero, 0($s3)
	move	$v0, $s0
lbl_0011A864:
	ld	$ra, 128($sp)
	ld	$s7, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 144

sub_0011A890:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0011A778
	move	$s0, $a2
	move	$v1, $v0
	lui	$v0, 0x7fff
	ori	$v0, $v0, 0xffff
	bne	$v1, $v0, lbl_0011A8C4
	ld	$ra, 16($sp)
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x9002
	sw	$v0, 0($s0)
lbl_0011A8C4:
	move	$v0, $v1
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0011A8D8:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0011A890
	move	$s0, $a2
	lw	$v1, 0($s0)
	move	$a0, $v0
	bnez	$v1, lbl_0011A92C
	move	$v0, $zero
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	bne	$a0, $v0, lbl_0011A924
	lui	$v0, 0x7fff
	lui	$v1, 0x8101
	lui	$v0, 0xffff
	ori	$v1, $v1, 0x59
	ori	$v0, $v0, 0xffff
	b	lbl_0011A92C
	sw	$v1, 0($s0)
lbl_0011A924:
	ori	$v0, $v0, 0xffff
	and	$v0, $a0, $v0
lbl_0011A92C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0011A940:
	li	$v0, -1
	addiu	$sp, $sp, -160
	slt	$v0, $v0, $a1
	addiu	$v1, $a1, 255
	movn	$v1, $a1, $v0
	sd	$s3, 48($sp)
	sra	$s3, $v1, 0x8
	sd	$s8, 128($sp)
	sd	$s4, 64($sp)
	sll	$v0, $s3, 0x8
	sd	$s0, 0($sp)
	move	$s4, $a3
	move	$s0, $a0
	move	$s8, $a2
	sd	$s1, 16($sp)
	subu	$s3, $a1, $v0
	sd	$ra, 144($sp)
	sd	$s7, 112($sp)
	move	$a2, $s4
	sd	$s6, 96($sp)
	sd	$s5, 80($sp)
	jal	sub_0011A5C8
	sd	$s2, 32($sp)
	move	$s1, $v0
	lw	$v0, 0($s4)
	bnez	$v0, lbl_0011AA40
	move	$v0, $zero
	li	$v0, 2200
	lui	$s7, 0x16
	mult	$s2, $s0, $v0
	addiu	$s6, $s7, -21432
	addiu	$v0, $s6, 2048
	addu	$s5, $s2, $v0
	lw	$v1, 0($s5)
	beq	$v1, $s1, lbl_0011AA14
	li	$a0, 2200
	jal	sub_0011A6E8
	move	$a0, $s0
	beqz	$v0, lbl_0011A9FC
	addiu	$a1, $s6, 1024
	move	$a0, $s0
	addu	$a1, $s2, $a1
	move	$a2, $s1
	jal	sub_0011EAD0
	li	$a3, 1
	bnezl	$v0, lbl_0011AA10
	sw	$s1, 0($s5)
lbl_0011A9FC:
	lui	$v1, 0x8101
	move	$v0, $zero
	ori	$v1, $v1, 0x6f
	b	lbl_0011AA40
	sw	$v1, 0($s4)
lbl_0011AA10:
	li	$a0, 2200
lbl_0011AA14:
	sll	$a1, $s3, 0x2
	mult	$a0, $s0, $a0
	addiu	$v1, $s7, -21432
	li	$a2, 1
	li	$v0, 1
	addu	$a1, $a1, $a0
	addu	$a0, $v1, $a0
	addu	$v1, $v1, $a1
	sw	$s8, 1024($v1)
	sw	$a2, 2196($a0)
	sw	$zero, 0($s4)
lbl_0011AA40:
	ld	$ra, 144($sp)
	ld	$s8, 128($sp)
	ld	$s7, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 160

sub_0011AA70:
	addiu	$sp, $sp, -176
	li	$v0, 2200
	sd	$s5, 96($sp)
	lui	$v1, 0x16
	sd	$s6, 112($sp)
	move	$s5, $a0
	mult	$s6, $s5, $v0
	li	$a0, 388
	sd	$s1, 32($sp)
	mult	$a0, $s5, $a0
	sd	$s8, 144($sp)
	move	$s1, $a1
	sd	$s7, 128($sp)
	lui	$v0, 0x13
	sd	$s3, 64($sp)
	addiu	$v0, $v0, 9576
	sd	$ra, 160($sp)
	addiu	$s7, $v1, -19240
	sd	$s4, 80($sp)
	addu	$s3, $a0, $v0
	sd	$s2, 48($sp)
	addu	$s8, $s6, $s7
	sd	$s0, 16($sp)
	sw	$zero, 0($s1)
	sw	$s6, 0($sp)
	lw	$v1, 368($s3)
lbl_0011AAD8:
	lw	$s0, 0($s8)
	slt	$v0, $s0, $v1
	beqz	$v0, lbl_0011AB48
	lw	$v0, 0($sp)
	lui	$v1, 0x16
	addiu	$v1, $v1, -19240
	lui	$s4, 0x8000
	addu	$s2, $v0, $v1
	move	$a0, $s5
	nop
lbl_0011AB00:
	move	$a1, $s0
	jal	sub_0011A778
	move	$a2, $s1
	move	$v1, $v0
	lw	$v0, 0($s1)
	bnez	$v0, lbl_0011AB6C
	move	$v0, $zero
	and	$v0, $v1, $s4
	bnezl	$v0, lbl_0011AB38
	lw	$v1, 368($s3)
	sw	$zero, 0($s1)
	move	$v0, $s0
	b	lbl_0011AB6C
	sw	$s0, 0($s2)
lbl_0011AB38:
	addiu	$s0, $s0, 1
	slt	$v0, $s0, $v1
	bnez	$v0, lbl_0011AB00
	move	$a0, $s5
lbl_0011AB48:
	addu	$a0, $s6, $s7
	lw	$v0, 0($a0)
	beqz	$v0, lbl_0011AB60
	move	$v0, $zero
	b	lbl_0011AAD8
	sw	$zero, 0($a0)
lbl_0011AB60:
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x1c
	sw	$v1, 0($s1)
lbl_0011AB6C:
	ld	$ra, 160($sp)
	ld	$s8, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 176
	nop

sub_0011ABA0:
	addiu	$sp, $sp, -112
	li	$a2, 2200
	sd	$s4, 64($sp)
	lui	$v0, 0x13
	move	$s4, $a0
	sd	$s2, 32($sp)
	li	$a0, 388
	mult1	$a2, $s4, $a2
	mult	$a0, $s4, $a0
	sd	$s3, 48($sp)
	sd	$s1, 16($sp)
	move	$s2, $a1
	sd	$ra, 96($sp)
	lui	$v1, 0x16
	sd	$s5, 80($sp)
	addiu	$v0, $v0, 9576
	sd	$s0, 0($sp)
	addiu	$v1, $v1, -21432
	sw	$zero, 0($s2)
	addu	$s3, $a0, $v0
	addu	$v1, $v1, $a2
	lw	$s0, 2192($v1)
	lw	$v0, 368($s3)
	slt	$v0, $s0, $v0
	beqz	$v0, lbl_0011AC4C
	move	$s1, $zero
	lui	$s5, 0x8000
	nop
lbl_0011AC10:
	move	$a0, $s4
	move	$a1, $s0
	jal	sub_0011A778
	move	$a2, $s2
	move	$a0, $v0
	lw	$v0, 0($s2)
	bnez	$v0, lbl_0011AC50
	move	$v0, $zero
	lw	$v0, 368($s3)
	and	$a0, $a0, $s5
	addiu	$v1, $s1, 1
	addiu	$s0, $s0, 1
	slt	$v0, $s0, $v0
	bnez	$v0, lbl_0011AC10
	movz	$s1, $v1, $a0
lbl_0011AC4C:
	move	$v0, $s1
lbl_0011AC50:
	ld	$ra, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop

sub_0011AC78:
	addiu	$sp, $sp, -112
	sd	$s3, 64($sp)
	sd	$s1, 32($sp)
	move	$s3, $a1
	sd	$s4, 80($sp)
	lui	$s1, 0x8101
	sd	$s2, 48($sp)
	move	$a1, $a2
	sd	$s0, 16($sp)
	move	$s2, $a0
	sd	$ra, 96($sp)
	move	$s0, $a3
	sw	$zero, 0($sp)
	lui	$s4, 0x16
	ori	$s1, $s1, 0x59
	nop
lbl_0011ACB8:
	slti	$v0, $s0, 2
	beqz	$v0, lbl_0011ADA4
	move	$a2, $a1
	addiu	$s1, $s4, -17024
	move	$a0, $s2
	move	$a1, $s1
	jal	sub_0011F098
	li	$a3, 1
	bnez	$v0, lbl_0011ACEC
	sll	$v1, $s0, 0x9
	lui	$v0, 0x8101
	b	lbl_0011ADD8
	ori	$v0, $v0, 0x6f
lbl_0011ACEC:
	addu	$v1, $v1, $s1
	or	$v0, $v1, $s3
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011AD60
	move	$a0, $s3
	addiu	$v0, $v1, 512
lbl_0011AD04:
	ldl	$a1, 7($v1)
	ldr	$a1, 0($v1)
	ldl	$a2, 15($v1)
	ldr	$a2, 8($v1)
	ldl	$a3, 23($v1)
	ldr	$a3, 16($v1)
	ldl	$t0, 31($v1)
	ldr	$t0, 24($v1)
	sdl	$a1, 7($a0)
	sdr	$a1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$a3, 23($a0)
	sdr	$a3, 16($a0)
	sdl	$t0, 31($a0)
	sdr	$t0, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011AD04
	nop
	b	lbl_0011AD9C
	sb	$zero, 95($s3)
lbl_0011AD60:
	addiu	$v0, $v1, 512
lbl_0011AD64:
	ld	$a1, 0($v1)
	ld	$a2, 8($v1)
	ld	$a3, 16($v1)
	ld	$t0, 24($v1)
	sd	$a1, 0($a0)
	sd	$a2, 8($a0)
	sd	$a3, 16($a0)
	sd	$t0, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011AD64
	nop
	sb	$zero, 95($s3)
lbl_0011AD9C:
	b	lbl_0011ADD8
	move	$v0, $zero
lbl_0011ADA4:
	move	$a0, $s2
	jal	sub_0011A8D8
	move	$a2, $sp
	lw	$v1, 0($sp)
	bne	$v1, $s1, lbl_0011ADC8
	move	$a1, $v0
	lui	$v0, 0x8101
	b	lbl_0011ADD8
	ori	$v0, $v0, 0x2
lbl_0011ADC8:
	bnez	$v1, lbl_0011ADD8
	move	$v0, $v1
	b	lbl_0011ACB8
	addiu	$s0, $s0, -2
lbl_0011ADD8:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_0011ADF8:
	addiu	$sp, $sp, -64
	lui	$v0, 0xffff
	sd	$s1, 32($sp)
	ori	$v0, $v0, 0xffff
	sd	$ra, 48($sp)
	move	$s1, $a0
	bne	$a1, $v0, lbl_0011AE20
	sd	$s0, 16($sp)
	b	lbl_0011AE74
	move	$v0, $zero
lbl_0011AE20:
	b	lbl_0011AE34
	li	$s0, 1
lbl_0011AE28:
	addiu	$s0, $s0, 1
	ori	$v0, $v0, 0xffff
	and	$a1, $a1, $v0
lbl_0011AE34:
	move	$a0, $s1
	jal	sub_0011A890
	move	$a2, $sp
	lw	$v1, 0($sp)
	beqz	$v1, lbl_0011AE54
	move	$a1, $v0
	b	lbl_0011AE74
	move	$v0, $v1
lbl_0011AE54:
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	beq	$a1, $v0, lbl_0011AE74
	move	$v0, $s0
	bltz	$a1, lbl_0011AE28
	lui	$v0, 0x7fff
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x9002
lbl_0011AE74:
	ld	$ra, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0011AE88:
	addiu	$sp, $sp, -32
	move	$v1, $a1
	sd	$ra, 16($sp)
	li	$t1, 1
	move	$a1, $sp
	lw	$v0, 48($v1)
	lhu	$a2, 40($v1)
	sll	$v0, $v0, 0xa
	lhu	$a3, 44($v1)
	div	$zero, $v0, $a2
	move	$t0, $a2
	sw	$t0, 0($sp)
	sw	$a3, 4($sp)
	beqzl	$a2, lbl_0011AEC4
	break	0x7
lbl_0011AEC4:
	sw	$t1, 12($sp)
	mflo	$v0
	jal	sub_0011F580
	sw	$v0, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0011AEE0:
	addiu	$sp, $sp, -704
	li	$v1, 388
	sd	$s3, 592($sp)
	lui	$v0, 0x13
	move	$s3, $a0
	sd	$s6, 640($sp)
	mult	$v1, $s3, $v1
	sd	$s1, 560($sp)
	addiu	$v0, $v0, 9576
	sd	$ra, 688($sp)
	sd	$s8, 672($sp)
	move	$s6, $a1
	sd	$s7, 656($sp)
	sd	$s5, 624($sp)
	addu	$s1, $v1, $v0
	sd	$s4, 608($sp)
	sd	$s2, 576($sp)
	jal	sub_00120250
	sd	$s0, 544($sp)
	beqz	$v0, lbl_0011AF58
	nop
	beqz	$s6, lbl_0011AF48
	nop
	sw	$zero, 4($s6)
	sw	$zero, 0($s6)
	sw	$zero, 8($s6)
lbl_0011AF48:
	jal	sub_0011E858
	move	$a0, $s3
	bnez	$v0, lbl_0011AF64
	li	$s4, 2
lbl_0011AF58:
	lui	$v0, 0x8101
	b	lbl_0011B248
	ori	$v0, $v0, 0x13
lbl_0011AF64:
	bne	$v0, $s4, lbl_0011AF8C
	lui	$s8, 0x16
	jal	sub_0011F898
	move	$a0, $s3
	li	$v1, 2200
	addiu	$v0, $s8, -21432
	mult	$v1, $s3, $v1
	li	$a0, 1
	addu	$v0, $v0, $v1
	sw	$a0, 2184($v0)
lbl_0011AF8C:
	li	$v1, 2200
	addiu	$s2, $s8, -21432
	mult	$s0, $s3, $v1
	addu	$v0, $s2, $s0
	lw	$v1, 2184($v0)
	beqz	$v1, lbl_0011B1B8
	move	$a0, $s3
	jal	sub_0011E838
	move	$a1, $sp
	beqz	$v0, lbl_0011B00C
	nop
	lw	$v0, 0($sp)
	beqz	$v0, lbl_0011B00C
	addu	$v1, $s2, $s0
	li	$a0, -1
	sw	$zero, 2196($v1)
	move	$v0, $v1
	sw	$a0, 2048($v0)
	lui	$a1, 0x13
	sw	$a0, 2052($v1)
	addiu	$v0, $s2, 2056
	addu	$v0, $s0, $v0
	sw	$zero, 2192($v1)
	addiu	$t0, $a1, 22936
	lb	$v1, 0($t0)
	lb	$a2, 1($t0)
	sb	$v1, 0($v0)
	sb	$a2, 1($v0)
	jal	sub_0011E898
	move	$a0, $s3
	bnez	$v0, lbl_0011B018
	nop
lbl_0011B00C:
	lui	$v0, 0x8101
	b	lbl_0011B248
	ori	$v0, $v0, 0x6f
lbl_0011B018:
	bnezl	$s6, lbl_0011B020
	sw	$s4, 0($s6)
lbl_0011B020:
	lui	$a1, 0x13
	move	$a0, $s1
	addiu	$a1, $a1, 22944
	jal	sub_00126140
	li	$a2, 27
	beqzl	$v0, lbl_0011B04C
	lb	$v0, 28($s1)
	bnezl	$s6, lbl_0011B1D8
	sw	$zero, 4($s6)
	b	lbl_0011B1D8
	nop
lbl_0011B04C:
	li	$a0, 10
	lb	$a1, 30($s1)
	addiu	$v0, $v0, -48
	mult	$a2, $v0, $a0
	addiu	$v1, $a2, -48
	addu	$a2, $v1, $a1
	slti	$v0, $a2, 11
	beqz	$v0, lbl_0011B07C
	move	$a0, $s3
	lui	$v0, 0x8101
	b	lbl_0011B248
	ori	$v0, $v0, 0x86
lbl_0011B07C:
	jal	sub_0011AE88
	move	$a1, $s1
	move	$s4, $zero
	lw	$a1, 68($s1)
	move	$a0, $s3
	lw	$a2, 64($s1)
	jal	sub_0011F558
	move	$s2, $zero
	jal	sub_0011FA60
	move	$a0, $s3
	lw	$v1, 48($s1)
	li	$v0, 1000
	beqzl	$v0, lbl_0011B0B4
	break	0x7
lbl_0011B0B4:
	div	$zero, $v1, $v0
	lw	$a0, 56($s1)
	lw	$s0, 52($s1)
	mflo	$v1
	mult	$v1, $v1, $v0
	blez	$a0, lbl_0011B118
	addiu	$s7, $v1, 1
	addiu	$s5, $sp, 16
	nop
lbl_0011B0D8:
	bne	$s4, $s7, lbl_0011B0EC
	move	$a1, $s0
	lw	$v0, 52($s1)
	subu	$v0, $s0, $v0
	sw	$v0, 368($s1)
lbl_0011B0EC:
	jal	sub_0011F120
	move	$a0, $s3
	addiu	$s2, $s2, 1
	lw	$a0, 56($s1)
	addiu	$v1, $s4, 1
	movz	$s4, $v1, $v0
	slt	$a0, $s2, $a0
	bnez	$a0, lbl_0011B0D8
	addiu	$s0, $s0, 1
	b	lbl_0011B120
	lw	$a2, 60($s1)
lbl_0011B118:
	addiu	$s5, $sp, 16
	lw	$a2, 60($s1)
lbl_0011B120:
	move	$a0, $s3
	move	$a1, $s5
	jal	sub_0011AC78
	move	$a3, $zero
	move	$v1, $v0
	bnez	$v1, lbl_0011B248
	sw	$v0, 528($sp)
	lhu	$v0, 16($sp)
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011B1D8
	addiu	$s0, $sp, 80
	lui	$a1, 0x13
	addiu	$a1, $a1, 22912
	jal	sub_00125DAC
	move	$a0, $s0
	bnez	$v0, lbl_0011B1D8
	move	$a1, $s5
	lw	$a2, 60($s1)
	move	$a0, $s3
	jal	sub_0011AC78
	li	$a3, 1
	move	$v1, $v0
	bnez	$v1, lbl_0011B248
	sw	$v0, 528($sp)
	lhu	$v0, 16($sp)
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011B1D8
	lui	$a1, 0x13
	move	$a0, $s0
	jal	sub_00125DAC
	addiu	$a1, $a1, 22920
	bnez	$v0, lbl_0011B1D8
	addiu	$v1, $s8, -21432
	li	$v0, 2200
	mult	$v0, $s3, $v0
	li	$a0, 1
	addu	$v1, $v1, $v0
	sw	$a0, 2188($v1)
lbl_0011B1B8:
	li	$v1, 2200
	addiu	$v0, $s8, -21432
	mult	$v1, $s3, $v1
	addiu	$v0, $v0, 2188
	addu	$s0, $v1, $v0
	lw	$a0, 0($s0)
	bnez	$a0, lbl_0011B1E4
	nop
lbl_0011B1D8:
	lui	$v0, 0x8101
	b	lbl_0011B248
	ori	$v0, $v0, 0x2f
lbl_0011B1E4:
	beqz	$s6, lbl_0011B21C
	move	$a0, $s3
	jal	sub_0011ABA0
	addiu	$a1, $sp, 528
	lw	$v1, 528($sp)
	beqz	$v1, lbl_0011B208
	move	$a2, $v0
	b	lbl_0011B248
	move	$v0, $v1
lbl_0011B208:
	lw	$v1, 0($s0)
	li	$v0, 2
	sw	$v0, 0($s6)
	sw	$v1, 4($s6)
	sw	$a2, 8($s6)
lbl_0011B21C:
	li	$v1, 2200
	addiu	$v0, $s8, -21432
	mult	$v1, $s3, $v1
	addiu	$v0, $v0, 2184
	addu	$v1, $v1, $v0
	lw	$a0, 0($v1)
	beqzl	$a0, lbl_0011B248
	move	$v0, $zero
	lui	$v0, 0x8101
	sw	$zero, 0($v1)
	ori	$v0, $v0, 0x9003
lbl_0011B248:
	ld	$ra, 688($sp)
	ld	$s8, 672($sp)
	ld	$s7, 656($sp)
	ld	$s6, 640($sp)
	ld	$s5, 624($sp)
	ld	$s4, 608($sp)
	ld	$s3, 592($sp)
	ld	$s2, 576($sp)
	ld	$s1, 560($sp)
	ld	$s0, 544($sp)
	jr	$ra
	addiu	$sp, $sp, 704

sub_0011B278:
	addiu	$sp, $sp, -224
	li	$v1, 388
	sd	$s6, 160($sp)
	lui	$v0, 0x13
	move	$s6, $a0
	sd	$s2, 96($sp)
	mult	$v1, $s6, $v1
	addiu	$v0, $v0, 9576
	sd	$ra, 208($sp)
	sd	$s8, 192($sp)
	sd	$s7, 176($sp)
	sd	$s5, 144($sp)
	addu	$s2, $v1, $v0
	sd	$s4, 128($sp)
	sd	$s3, 112($sp)
	sd	$s1, 80($sp)
	jal	sub_00120250
	sd	$s0, 64($sp)
	bnez	$v0, lbl_0011B2D4
	li	$v1, 2200
	lui	$v0, 0x8101
	b	lbl_0011BB74
	ori	$v0, $v0, 0x13
lbl_0011B2D4:
	lui	$a0, 0x16
	mult	$v1, $s6, $v1
	addiu	$v0, $a0, -21432
	li	$t1, -1
	addiu	$t2, $v0, 2056
	lui	$t3, 0x13
	move	$a0, $s6
	addu	$a2, $v0, $v1
	sw	$zero, 2196($a2)
	move	$a3, $a2
	sw	$t1, 2048($a3)
	move	$t0, $a2
	move	$v0, $a2
	sw	$t1, 2052($t0)
	addu	$v1, $v1, $t2
	sw	$zero, 2192($v0)
	addiu	$t1, $t3, 22936
	lb	$a2, 0($t1)
	lb	$a3, 1($t1)
	sb	$a2, 0($v1)
	sb	$a3, 1($v1)
	jal	sub_0011E838
	move	$a1, $sp
	beqz	$v0, lbl_0011BB24
	nop
	jal	sub_0011E898
	move	$a0, $s6
	beqz	$v0, lbl_0011BB24
	lui	$s0, 0x13
	move	$a0, $s2
	addiu	$a1, $s0, 22944
	jal	sub_00126140
	li	$a2, 27
	beqz	$v0, lbl_0011B3A0
	addiu	$a2, $s2, 208
	lui	$v1, 0xffff
	ori	$v1, $v1, 0xffff
	li	$s3, 31
	addiu	$v0, $s2, 332
lbl_0011B370:
	sw	$v1, 0($v0)
	addiu	$s3, $s3, -1
	addiu	$v0, $v0, -4
	nop
	nop
	bgez	$s3, lbl_0011B370
	nop
	move	$a0, $s6
	jal	sub_0011F168
	move	$a1, $sp
	beqz	$v0, lbl_0011BB24
	nop
lbl_0011B3A0:
	move	$a0, $s2
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 40
	lui	$a1, 0x13
	move	$a0, $s2
	addiu	$a3, $s0, 22944
	ldl	$v0, 7($a3)
	ldr	$v0, 0($a3)
	ldl	$v1, 15($a3)
	ldr	$v1, 8($a3)
	ldl	$a2, 23($a3)
	ldr	$a2, 16($a3)
	sdl	$v0, 7($s2)
	sdr	$v0, 0($s2)
	sdl	$v1, 15($s2)
	sdr	$v1, 8($s2)
	sdl	$a2, 23($s2)
	sdr	$a2, 16($s2)
	lw	$v0, 24($a3)
	sw	$v0, 24($s2)
	jal	sub_00125AF0
	addiu	$a1, $a1, 22976
	lw	$v1, 0($sp)
	li	$a0, 1024
	lhu	$v0, 0($sp)
	li	$a1, 0xff00
	div	$zero, $a0, $v1
	li	$t2, 2
	sh	$v0, 40($s2)
	li	$t0, 43
	beqzl	$v1, lbl_0011B424
	break	0x7
lbl_0011B424:
	li	$t1, 256
	lw	$v1, 8($sp)
	li	$a2, -1
	lhu	$v0, 4($sp)
	sh	$a1, 46($s2)
	sh	$v0, 44($s2)
	mflo	$a3
	sh	$a3, 42($s2)
	andi	$v0, $a3, 0xffff
	div	$zero, $v1, $v0
	sw	$a0, 340($s2)
	lhu	$a1, 42($s2)
	lhu	$a0, 44($s2)
	sb	$t2, 336($s2)
	sb	$t0, 337($s2)
	sw	$t1, 344($s2)
	sw	$zero, 60($s2)
	sw	$zero, 72($s2)
	sw	$zero, 76($s2)
	sw	$zero, 368($s2)
	mflo	$a3
	divu	$zero, $a0, $a1
	sw	$a3, 48($s2)
	lw	$v0, 4($sp)
	sw	$a2, 384($s2)
	sw	$zero, 356($s2)
	sw	$zero, 360($s2)
	sw	$zero, 364($s2)
	sw	$a2, 372($s2)
	sw	$a2, 376($s2)
	sw	$a2, 380($s2)
	mflo	$a0
	div	$zero, $v1, $v0
	sw	$a0, 348($s2)
	mflo	$v1
	addiu	$v1, $v1, -1
	sw	$v1, 64($s2)
	addiu	$v0, $s2, 80
	b	lbl_0011B4D0
	sw	$v0, 52($sp)
	nop
lbl_0011B4C8:
	addiu	$v0, $v0, -1
	sw	$v0, 64($s2)
lbl_0011B4D0:
	lw	$a1, 64($s2)
	jal	sub_0011F0D8
	move	$a0, $s6
	bnez	$v0, lbl_0011B4C8
	lw	$v0, 64($s2)
	nop
lbl_0011B4E8:
	addiu	$v0, $v0, -1
	sw	$v0, 68($s2)
	lw	$a1, 68($s2)
	jal	sub_0011F0D8
	move	$a0, $s6
	move	$s1, $v0
	bnezl	$s1, lbl_0011B4E8
	lw	$v0, 68($s2)
	lw	$a1, 68($s2)
	move	$a0, $s6
	jal	sub_0011F558
	lw	$a2, 64($s2)
	lw	$v1, 48($s2)
	li	$a3, -1
	lw	$a1, 0($sp)
	sll	$v1, $v1, 0x2
	lw	$a2, 4($sp)
	addiu	$a0, $v1, -1
	slt	$v0, $a3, $a0
	addiu	$v1, $v1, 1022
	movn	$v1, $a0, $v0
	mult	$a2, $a2, $a1
	sra	$v1, $v1, 0xa
	addiu	$s4, $v1, 1
	sll	$v0, $s4, 0x2
	addiu	$a1, $v0, -1
	addiu	$v1, $a2, 1023
	slt	$a0, $a3, $a1
	addiu	$v0, $v0, 1022
	movn	$v0, $a1, $a0
	slt	$a3, $a3, $a2
	movn	$v1, $a2, $a3
	sra	$v0, $v0, 0xa
	sra	$a1, $v1, 0xa
	addiu	$s5, $v0, 1
	slti	$v1, $s5, 33
	bnez	$v1, lbl_0011B588
	move	$s0, $a1
	li	$s5, 32
	li	$s4, 8192
lbl_0011B588:
	lw	$a0, 52($sp)
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 128
	slt	$v0, $s1, $s5
	beqz	$v0, lbl_0011B5F4
	move	$s3, $zero
	addiu	$s7, $s4, -1
lbl_0011B5A8:
	addiu	$s4, $s3, 1
	sll	$s3, $s3, 0x2
lbl_0011B5B0:
	move	$a1, $s0
	jal	sub_0011F120
	move	$a0, $s6
	move	$s1, $v0
	addiu	$v1, $s0, 1
	xori	$v0, $s1, 0x1
	bnez	$s1, lbl_0011B5B0
	movz	$s0, $v1, $v0
	lw	$v1, 52($sp)
	addu	$v0, $v1, $s3
	move	$s3, $s4
	sw	$s0, 0($v0)
	slt	$v1, $s3, $s5
	bnez	$v1, lbl_0011B5A8
	addiu	$s0, $s0, 1
	b	lbl_0011B5FC
	li	$v0, 2200
lbl_0011B5F4:
	addiu	$s7, $s4, -1
	li	$v0, 2200
lbl_0011B5FC:
	lui	$v1, 0x16
	mult	$v0, $s6, $v0
	addiu	$v1, $v1, -21432
	move	$s8, $zero
	move	$s4, $zero
	li	$a0, -1
	li	$s3, 255
	addu	$v0, $v0, $v1
	addiu	$v0, $v0, 1020
lbl_0011B620:
	sw	$a0, 0($v0)
	addiu	$s3, $s3, -1
	addiu	$v0, $v0, -4
	nop
	nop
	bgez	$s3, lbl_0011B620
	nop
	li	$v0, 2200
	lui	$v1, 0x16
	mult	$v0, $s6, $v0
	addiu	$v1, $v1, -21432
	li	$a0, -1
	li	$s3, 255
	addu	$v0, $v0, $v1
	addiu	$v0, $v0, 2044
	nop
lbl_0011B660:
	sw	$a0, 0($v0)
	addiu	$s3, $s3, -1
	addiu	$v0, $v0, -4
	nop
	nop
	bgez	$s3, lbl_0011B660
	nop
	move	$s3, $s7
	bltzl	$s3, lbl_0011B768
	lhu	$a0, 42($s2)
	lui	$s7, 0x16
	nop
lbl_0011B690:
	move	$a0, $s6
	jal	sub_0011F120
	move	$a1, $s0
	bnezl	$v0, lbl_0011B690
	addiu	$s0, $s0, 1
	li	$v0, 2200
	addiu	$s5, $s7, -20408
	mult	$s1, $s6, $v0
	move	$a0, $s6
	move	$a2, $s0
	li	$a3, 1
	jal	sub_0011EB10
	addu	$a1, $s1, $s5
	beqz	$v0, lbl_0011BB24
	addiu	$a1, $s5, -1024
	sll	$v0, $s4, 0x2
	addu	$v0, $v0, $s1
	addiu	$s4, $s4, 1
	addu	$v0, $v0, $a1
	slti	$v1, $s4, 256
	beqz	$v1, lbl_0011B6F0
	sw	$s0, 0($v0)
	bnez	$s3, lbl_0011B754
	addiu	$a2, $s0, 1
lbl_0011B6F0:
	lw	$a0, 52($sp)
	sll	$v0, $s8, 0x2
	addu	$s1, $s1, $a1
	addiu	$s8, $s8, 1
	addu	$v0, $a0, $v0
	move	$a1, $s1
	lw	$a2, 0($v0)
	move	$a0, $s6
	jal	sub_0011EB10
	li	$a3, 1
	beqz	$v0, lbl_0011BB24
	addiu	$a2, $s0, 1
	addiu	$v0, $s3, -1
	addiu	$a1, $s1, 1020
	li	$v1, -1
	li	$s4, 255
lbl_0011B730:
	sw	$v1, 0($a1)
	addiu	$s4, $s4, -1
	addiu	$a1, $a1, -4
	nop
	nop
	bgez	$s4, lbl_0011B730
	nop
	b	lbl_0011B758
	move	$s4, $zero
lbl_0011B754:
	addiu	$v0, $s3, -1
lbl_0011B758:
	move	$s3, $v0
	bgez	$s3, lbl_0011B690
	move	$s0, $a2
	lhu	$a0, 42($s2)
lbl_0011B768:
	li	$a1, 1000
	sw	$s0, 52($s2)
	move	$s3, $zero
	beqzl	$a0, lbl_0011B77C
	break	0x7
lbl_0011B77C:
	lhu	$a2, 44($s2)
	lw	$v0, 68($s2)
	move	$s1, $zero
	lw	$v1, 48($s2)
	mult	$v0, $v0, $a2
	div1	$zero, $v1, $a1
	div	$zero, $v0, $a0
	mflo1	$v1
	mflo	$v0
	mult	$v1, $v1, $a1
	subu	$v0, $v0, $s0
	sw	$v0, 56($s2)
	blez	$v0, lbl_0011B844
	addiu	$s5, $v1, 1
	addiu	$s4, $sp, 48
lbl_0011B7B8:
	bne	$s1, $s5, lbl_0011B7CC
	move	$a0, $s6
	lw	$v0, 52($s2)
	subu	$v0, $s0, $v0
	sw	$v0, 368($s2)
lbl_0011B7CC:
	jal	sub_0011F120
	move	$a1, $s0
	li	$v1, 1
	bne	$v0, $v1, lbl_0011B804
	move	$a0, $s6
	move	$a1, $s3
	li	$a2, -3
	jal	sub_0011A940
	move	$a3, $s4
	lw	$v0, 48($sp)
	beqz	$v0, lbl_0011B830
	ld	$ra, 208($sp)
	b	lbl_0011BB7C
	ld	$s8, 192($sp)
lbl_0011B804:
	beqzl	$s1, lbl_0011B80C
	sw	$s0, 52($s2)
lbl_0011B80C:
	lui	$a2, 0x7fff
	move	$a0, $s6
	move	$a1, $s3
	ori	$a2, $a2, 0xffff
	jal	sub_0011A940
	move	$a3, $s4
	lw	$v0, 48($sp)
	bnez	$v0, lbl_0011BB74
	addiu	$s1, $s1, 1
lbl_0011B830:
	lw	$v0, 56($s2)
	addiu	$s3, $s3, 1
	slt	$v0, $s3, $v0
	bnez	$v0, lbl_0011B7B8
	addiu	$s0, $s0, 1
lbl_0011B844:
	slt	$v0, $s1, $s5
	bnez	$v0, lbl_0011B8B0
	addiu	$s3, $sp, 48
	lhu	$a2, 44($s2)
	lw	$v0, 68($s2)
	move	$a0, $s6
	lhu	$v1, 42($s2)
	move	$a1, $s3
	mult	$v0, $v0, $a2
	beqzl	$v1, lbl_0011B870
	break	0x7
lbl_0011B870:
	lw	$a2, 52($s2)
	div	$zero, $v0, $v1
	mflo	$v0
	subu	$v0, $v0, $a2
	jal	sub_0011AA70
	sw	$v0, 56($s2)
	lw	$v1, 48($sp)
	beqz	$v1, lbl_0011B89C
	move	$s0, $v0
	b	lbl_0011BB74
	move	$v0, $v1
lbl_0011B89C:
	beqz	$s0, lbl_0011B8BC
	move	$a1, $s0
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 22992
lbl_0011B8B0:
	lui	$v0, 0x8101
	b	lbl_0011BB74
	ori	$v0, $v0, 0x9001
lbl_0011B8BC:
	lui	$s2, 0x16
	move	$a0, $s6
	addiu	$a1, $sp, 16
	jal	sub_0011FB98
	addiu	$s0, $s2, -17024
	li	$s1, 10
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 512
	lbu	$v1, 23($sp)
	li	$t6, 0x8427
	lbu	$t5, 22($sp)
	li	$t7, 2
	lbu	$t0, 21($sp)
	srl	$v0, $v1, 0x4
	lbu	$a2, 19($sp)
	srl	$t1, $t5, 0x4
	lbu	$a1, 18($sp)
	srl	$t2, $t0, 0x4
	lbu	$a0, 17($sp)
	srl	$t3, $a2, 0x4
	srl	$t4, $a1, 0x4
	mult	$v0, $v0, $s1
	srl	$a3, $a0, 0x4
	mult	$t1, $t1, $s1
	mult1	$t2, $t2, $s1
	andi	$v1, $v1, 0xf
	mult	$t3, $t3, $s1
	andi	$a0, $a0, 0xf
	mult1	$t4, $t4, $s1
	addu	$v0, $v0, $v1
	mult	$a3, $a3, $s1
	andi	$t0, $t0, 0xf
	andi	$a2, $a2, 0xf
	andi	$a1, $a1, 0xf
	andi	$t5, $t5, 0xf
	sh	$t6, -17024($s2)
	addiu	$v0, $v0, 2000
	addu	$t1, $t1, $t5
	addu	$a3, $a3, $a0
	addu	$t2, $t2, $t0
	addu	$t3, $t3, $a2
	addu	$t4, $t4, $a1
	sw	$t7, 4($s0)
	lui	$v1, 0x13
	sh	$v0, 14($s0)
	move	$a1, $zero
	sb	$t1, 13($s0)
	li	$a2, 512
	sb	$t2, 12($s0)
	sb	$t3, 11($s0)
	sb	$t4, 10($s0)
	sb	$a3, 9($s0)
	sh	$zero, 2($s0)
	sb	$zero, 8($s0)
	sw	$zero, 16($s0)
	sw	$zero, 20($s0)
	ldl	$v0, 15($s0)
	ldr	$v0, 8($s0)
	sdl	$v0, 31($s0)
	sdr	$v0, 24($s0)
	sw	$zero, 32($s0)
	addiu	$a3, $v1, 22912
	lb	$t1, 0($a3)
	lb	$v0, 1($a3)
	sb	$t1, 64($s0)
	sb	$v0, 65($s0)
	addiu	$s0, $s0, 512
	jal	sub_00125310
	move	$a0, $s0
	lbu	$v1, 23($sp)
	li	$t6, 0xa426
	lbu	$t5, 22($sp)
	lui	$t7, 0x13
	lbu	$t3, 21($sp)
	srl	$v0, $v1, 0x4
	lbu	$t1, 19($sp)
	srl	$a2, $t5, 0x4
	lbu	$a1, 18($sp)
	srl	$a3, $t3, 0x4
	lbu	$a0, 17($sp)
	srl	$t2, $t1, 0x4
	srl	$t4, $a1, 0x4
	mult	$v0, $v0, $s1
	srl	$t0, $a0, 0x4
	mult	$a2, $a2, $s1
	mult1	$a3, $a3, $s1
	andi	$v1, $v1, 0xf
	mult	$t0, $t0, $s1
	andi	$t1, $t1, 0xf
	mult1	$t2, $t2, $s1
	addu	$v0, $v0, $v1
	mult	$t4, $t4, $s1
	andi	$a1, $a1, 0xf
	andi	$a0, $a0, 0xf
	andi	$t5, $t5, 0xf
	andi	$t3, $t3, 0xf
	addu	$t0, $t0, $a0
	addu	$t2, $t2, $t1
	addiu	$v0, $v0, 2000
	addu	$a2, $a2, $t5
	addu	$a3, $a3, $t3
	addu	$t4, $t4, $a1
	sb	$a2, 13($s0)
	sb	$a3, 12($s0)
	addiu	$a1, $s2, -17024
	sh	$t6, 0($s0)
	move	$a0, $s6
	sh	$v0, 14($s0)
	move	$a2, $zero
	sb	$t2, 11($s0)
	sb	$t4, 10($s0)
	sb	$t0, 9($s0)
	sw	$zero, 4($s0)
	sh	$zero, 2($s0)
	sb	$zero, 8($s0)
	sw	$zero, 16($s0)
	sw	$zero, 20($s0)
	ldl	$t0, 15($s0)
	ldr	$t0, 8($s0)
	sdl	$t0, 31($s0)
	sdr	$t0, 24($s0)
	sw	$zero, 32($s0)
	addiu	$v1, $t7, 22920
	lb	$t0, 0($v1)
	lb	$t1, 1($v1)
	lb	$v0, 2($v1)
	sb	$t0, 64($s0)
	sb	$t1, 65($s0)
	sb	$v0, 66($s0)
	jal	sub_0011F0B8
	li	$a3, 1
	beqz	$v0, lbl_0011BB24
	move	$a3, $s3
	move	$a0, $s6
	move	$a1, $zero
	jal	sub_0011A940
	li	$a2, -1
	lw	$v0, 48($sp)
	bnez	$v0, lbl_0011BB78
	ld	$ra, 208($sp)
	jal	sub_0011EB50
	move	$a0, $s6
	beqz	$v0, lbl_0011BB24
	nop
	jal	sub_0011A6E8
	move	$a0, $s6
	beqz	$v0, lbl_0011BB24
	nop
	jal	sub_0011E9B0
	move	$a0, $s6
	bnezl	$v0, lbl_0011BB30
	li	$v0, 2200
lbl_0011BB24:
	lui	$v0, 0x8101
	b	lbl_0011BB74
	ori	$v0, $v0, 0x6f
lbl_0011BB30:
	lui	$a0, 0x16
	mult	$v0, $s6, $v0
	addiu	$v1, $a0, -21432
	li	$a2, 1
	move	$a0, $s6
	move	$a1, $zero
	addu	$v1, $v1, $v0
	jal	sub_0011AEE0
	sw	$a2, 2184($v1)
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x9003
	bne	$a0, $v1, lbl_0011BB70
	sw	$v0, 48($sp)
	sw	$zero, 48($sp)
	move	$a0, $zero
lbl_0011BB70:
	move	$v0, $a0
lbl_0011BB74:
	ld	$ra, 208($sp)
lbl_0011BB78:
	ld	$s8, 192($sp)
lbl_0011BB7C:
	ld	$s7, 176($sp)
	ld	$s6, 160($sp)
	ld	$s5, 144($sp)
	ld	$s4, 128($sp)
	ld	$s3, 112($sp)
	ld	$s2, 96($sp)
	ld	$s1, 80($sp)
	ld	$s0, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 224
	nop

sub_0011BBA8:
	addiu	$sp, $sp, -80
	sd	$s2, 48($sp)
	move	$s2, $a0
	sd	$ra, 64($sp)
	sd	$s1, 32($sp)
	jal	sub_00120250
	sd	$s0, 16($sp)
	bnez	$v0, lbl_0011BBD8
	move	$a0, $s2
	lui	$v0, 0x8101
	b	lbl_0011BC90
	ori	$v0, $v0, 0x13
lbl_0011BBD8:
	jal	sub_0011E838
	move	$a1, $sp
	bnez	$v0, lbl_0011BBF4
	lw	$a3, 4($sp)
lbl_0011BBE8:
	lui	$v0, 0x8101
	b	lbl_0011BC90
	ori	$v0, $v0, 0x6f
lbl_0011BBF4:
	li	$v1, 2200
	lw	$a0, 8($sp)
	mult	$v1, $s2, $v1
	lui	$v0, 0x16
	li	$t0, -1
	div	$zero, $a0, $a3
	addiu	$v0, $v0, -21432
	addiu	$t1, $v0, 2056
	lui	$t2, 0x13
	addu	$a0, $v0, $v1
	sw	$zero, 2196($a0)
	move	$a1, $a0
	sw	$t0, 2048($a1)
	move	$a2, $a0
	sw	$t0, 2052($a2)
	move	$v0, $a0
	sw	$zero, 2192($a0)
	addu	$v1, $v1, $t1
	sw	$zero, 2188($v0)
	addiu	$a2, $t2, 22936
	lb	$v0, 0($a2)
	lb	$a0, 1($a2)
	sb	$v0, 0($v1)
	sb	$a0, 1($v1)
	beqzl	$a3, lbl_0011BC5C
	break	0x7
lbl_0011BC5C:
	mflo	$s1
	blez	$s1, lbl_0011BC8C
	move	$s0, $zero
	move	$a0, $s2
	nop
lbl_0011BC70:
	jal	sub_00120120
	move	$a1, $s0
	beqz	$v0, lbl_0011BBE8
	addiu	$s0, $s0, 1
	slt	$v0, $s0, $s1
	bnez	$v0, lbl_0011BC70
	move	$a0, $s2
lbl_0011BC8C:
	move	$v0, $zero
lbl_0011BC90:
	ld	$ra, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0011BCA8:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_00120250
	move	$s0, $a0
	beqz	$v0, lbl_0011BD24
	nop
	jal	sub_0011E858
	move	$a0, $s0
	beqz	$v0, lbl_0011BCF4
	lui	$v1, 0x16
	li	$v0, 2200
	mult	$a1, $s0, $v0
	addiu	$a2, $v1, -21432
	li	$a0, 1
	addu	$v0, $a2, $a1
	lw	$v1, 2184($v0)
	bnel	$v1, $a0, lbl_0011BD00
	lw	$v1, 2188($v0)
lbl_0011BCF4:
	lui	$v0, 0x8101
	b	lbl_0011BD3C
	ori	$v0, $v0, 0x9003
lbl_0011BD00:
	bnez	$v1, lbl_0011BD14
	nop
	lui	$v0, 0x8101
	b	lbl_0011BD3C
	ori	$v0, $v0, 0x2f
lbl_0011BD14:
	jal	sub_0011E878
	move	$a0, $s0
	bnez	$v0, lbl_0011BD30
	nop
lbl_0011BD24:
	lui	$v0, 0x8101
	b	lbl_0011BD3C
	ori	$v0, $v0, 0x13
lbl_0011BD30:
	jal	sub_0011FA60
	move	$a0, $s0
	move	$v0, $zero
lbl_0011BD3C:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0011BD50:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	jal	sub_0011A378
	move	$s0, $a2
	beqz	$v0, lbl_0011BD7C
	nop
	jal	sub_00119F80
	move	$a0, $s0
	bnez	$v0, lbl_0011BD88
	nop
lbl_0011BD7C:
	lui	$v0, 0x8101
	b	lbl_0011BDA0
	ori	$v0, $v0, 0x16
lbl_0011BD88:
	jal	sub_00119F10
	move	$a0, $s0
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x5b
	movn	$v1, $zero, $v0
	move	$v0, $v1
lbl_0011BDA0:
	ld	$ra, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0011BDB0:
	addiu	$sp, $sp, -1200
	li	$v0, 1
	sd	$s8, 1168($sp)
	sd	$s7, 1152($sp)
	move	$s8, $a3
	sd	$s6, 1136($sp)
	move	$s7, $a0
	sd	$s5, 1120($sp)
	move	$s6, $a2
	sd	$s4, 1104($sp)
	move	$s5, $zero
	sd	$s3, 1088($sp)
	move	$s4, $a1
	sd	$s2, 1072($sp)
	move	$s3, $t0
	sd	$ra, 1184($sp)
	move	$s2, $t1
	sd	$s1, 1056($sp)
	sd	$s0, 1040($sp)
	sw	$zero, 1024($sp)
	b	lbl_0011BF94
	sw	$v0, 1028($sp)
lbl_0011BE08:
	move	$a0, $s0
	jal	sub_00125DAC
	addiu	$a1, $a2, 22912
	bnez	$v0, lbl_0011BFE0
	addiu	$s0, $sp, 576
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 32
	beqz	$v0, lbl_0011BFE0
	lui	$a3, 0x13
	move	$a0, $s0
	jal	sub_00125DAC
	addiu	$a1, $a3, 22920
	bnez	$v0, lbl_0011BFE0
	move	$s0, $sp
lbl_0011BE44:
	beqz	$s2, lbl_0011BF58
	move	$s1, $zero
	lhu	$v0, 0($s0)
lbl_0011BE50:
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011BF34
	move	$a0, $s8
	sb	$zero, 95($s0)
	jal	sub_00125DAC
	addiu	$a1, $s0, 64
	bnez	$v0, lbl_0011BF38
	slt	$v0, $zero, $s2
	beqz	$s4, lbl_0011BF24
	nop
	move	$a1, $s4
	or	$v0, $s0, $a1
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011BEEC
	move	$v1, $s0
	addiu	$v0, $s0, 512
lbl_0011BE90:
	ldl	$t0, 7($v1)
	ldr	$t0, 0($v1)
	ldl	$a0, 15($v1)
	ldr	$a0, 8($v1)
	ldl	$a2, 23($v1)
	ldr	$a2, 16($v1)
	ldl	$a3, 31($v1)
	ldr	$a3, 24($v1)
	sdl	$t0, 7($a1)
	sdr	$t0, 0($a1)
	sdl	$a0, 15($a1)
	sdr	$a0, 8($a1)
	sdl	$a2, 23($a1)
	sdr	$a2, 16($a1)
	sdl	$a3, 31($a1)
	sdr	$a3, 24($a1)
	addiu	$v1, $v1, 32
	addiu	$a1, $a1, 32
	nop
	bne	$v1, $v0, lbl_0011BE90
	nop
	b	lbl_0011BF24
	nop
lbl_0011BEEC:
	addiu	$v0, $s0, 512
lbl_0011BEF0:
	ld	$t0, 0($v1)
	ld	$a0, 8($v1)
	ld	$a2, 16($v1)
	ld	$a3, 24($v1)
	sd	$t0, 0($a1)
	sd	$a0, 8($a1)
	sd	$a2, 16($a1)
	sd	$a3, 24($a1)
	addiu	$v1, $v1, 32
	addiu	$a1, $a1, 32
	nop
	bne	$v1, $v0, lbl_0011BEF0
	nop
lbl_0011BF24:
	bnezl	$s6, lbl_0011BF2C
	sw	$s5, 0($s6)
lbl_0011BF2C:
	b	lbl_0011BFF4
	move	$v0, $zero
lbl_0011BF34:
	slt	$v0, $zero, $s2
lbl_0011BF38:
	addiu	$s1, $s1, 1
	subu	$s2, $s2, $v0
	addiu	$s0, $s0, 512
	slti	$v0, $s1, 2
	beqz	$v0, lbl_0011BF58
	addiu	$s5, $s5, 1
	bnezl	$s2, lbl_0011BE50
	lhu	$v0, 0($s0)
lbl_0011BF58:
	move	$a1, $s3
	move	$a0, $s7
	jal	sub_0011A890
	addiu	$a2, $sp, 1024
	lw	$v1, 1024($sp)
	beqz	$v1, lbl_0011BF7C
	move	$s3, $v0
	b	lbl_0011BFF4
	move	$v0, $v1
lbl_0011BF7C:
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	beq	$s3, $v0, lbl_0011BFEC
	lui	$v0, 0x7fff
	ori	$v0, $v0, 0xffff
	and	$s3, $s3, $v0
lbl_0011BF94:
	move	$a0, $s7
	move	$a1, $sp
	move	$a2, $s3
	jal	sub_0011F098
	li	$a3, 1
	bnez	$v0, lbl_0011BFBC
	lw	$t0, 1028($sp)
	lui	$v0, 0x8101
	b	lbl_0011BFF4
	ori	$v0, $v0, 0x6f
lbl_0011BFBC:
	beqz	$t0, lbl_0011BE44
	move	$s0, $sp
	addiu	$s0, $sp, 64
	sw	$zero, 1028($sp)
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 32
	bnez	$v0, lbl_0011BE08
	lui	$a2, 0x13
lbl_0011BFE0:
	lui	$v0, 0x8101
	b	lbl_0011BFF4
	ori	$v0, $v0, 0x9002
lbl_0011BFEC:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x2
lbl_0011BFF4:
	ld	$ra, 1184($sp)
	ld	$s8, 1168($sp)
	ld	$s7, 1152($sp)
	ld	$s6, 1136($sp)
	ld	$s5, 1120($sp)
	ld	$s4, 1104($sp)
	ld	$s3, 1088($sp)
	ld	$s2, 1072($sp)
	ld	$s1, 1056($sp)
	ld	$s0, 1040($sp)
	jr	$ra
	addiu	$sp, $sp, 1200
	nop

sub_0011C028:
	addiu	$sp, $sp, -1232
	li	$v1, 388
	sd	$s7, 1184($sp)
	lui	$v0, 0x13
	move	$s7, $a0
	sd	$s8, 1200($sp)
	mult	$v1, $s7, $v1
	sd	$s5, 1152($sp)
	sd	$s1, 1088($sp)
	addiu	$v0, $v0, 9576
	sw	$a3, 1060($sp)
	move	$s5, $a2
	sd	$ra, 1216($sp)
	move	$s1, $a1
	sd	$s6, 1168($sp)
	addu	$v1, $v1, $v0
	sd	$s4, 1136($sp)
	sd	$s3, 1120($sp)
	move	$a1, $sp
	sd	$s2, 1104($sp)
	move	$a3, $zero
	sd	$s0, 1072($sp)
	move	$s8, $zero
	sw	$t0, 1064($sp)
	jal	sub_0011AC78
	lw	$a2, 60($v1)
	move	$a0, $v0
	bnez	$a0, lbl_0011C44C
	ld	$ra, 1216($sp)
	addiu	$s0, $sp, 64
	jal	sub_00126004
	move	$a0, $s0
	sltiu	$v0, $v0, 32
	beqz	$v0, lbl_0011C0C8
	lui	$a1, 0x13
	move	$a0, $s0
	jal	sub_00125DAC
	addiu	$a1, $a1, 22912
	beqzl	$v0, lbl_0011C0D4
	lui	$v0, 0x13
lbl_0011C0C8:
	lui	$v0, 0x8101
	b	lbl_0011C448
	ori	$v0, $v0, 0x9002
lbl_0011C0D4:
	move	$a0, $s1
	addiu	$s0, $v0, 22936
	jal	sub_00125DAC
	move	$a1, $s0
	bnez	$v0, lbl_0011C19C
	move	$a0, $s1
	move	$a2, $s5
	andi	$v0, $a2, 0x7
	beqz	$v0, lbl_0011C15C
	move	$v1, $sp
	addiu	$v0, $sp, 512
lbl_0011C100:
	ldl	$a0, 7($v1)
	ldr	$a0, 0($v1)
	ldl	$a1, 15($v1)
	ldr	$a1, 8($v1)
	ldl	$a3, 23($v1)
	ldr	$a3, 16($v1)
	ldl	$t0, 31($v1)
	ldr	$t0, 24($v1)
	sdl	$a0, 7($a2)
	sdr	$a0, 0($a2)
	sdl	$a1, 15($a2)
	sdr	$a1, 8($a2)
	sdl	$a3, 23($a2)
	sdr	$a3, 16($a2)
	sdl	$t0, 31($a2)
	sdr	$t0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $v0, lbl_0011C100
	nop
	b	lbl_0011C350
	nop
lbl_0011C15C:
	addiu	$v0, $sp, 512
lbl_0011C160:
	ld	$a0, 0($v1)
	ld	$a1, 8($v1)
	ld	$a3, 16($v1)
	ld	$t0, 24($v1)
	sd	$a0, 0($a2)
	sd	$a1, 8($a2)
	sd	$a3, 16($a2)
	sd	$t0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $v0, lbl_0011C160
	nop
	b	lbl_0011C350
	nop
lbl_0011C19C:
	jal	sub_0011A210
	move	$a1, $s0
	lui	$s3, 0x8101
	addiu	$v1, $sp, 1056
	lui	$s4, 0x8101
	sw	$v1, 1068($sp)
	addiu	$s0, $sp, 512
	addiu	$s2, $sp, 1024
	move	$s1, $v0
	li	$s6, 1
	ori	$s3, $s3, 0x2
	ori	$s4, $s4, 0x9fff
	move	$a1, $s1
lbl_0011C1D0:
	jal	sub_00125EF0
	move	$a0, $s2
	lui	$a2, 0x13
	move	$a0, $zero
	jal	sub_0011A210
	addiu	$a1, $a2, 22936
	move	$s1, $v0
	move	$v1, $s0
	movz	$s8, $s6, $s1
	move	$v0, $sp
	move	$a0, $s0
lbl_0011C1FC:
	ld	$a3, 0($v0)
	ld	$t0, 8($v0)
	ld	$a1, 16($v0)
	ld	$a2, 24($v0)
	sd	$a3, 0($v1)
	sd	$t0, 8($v1)
	sd	$a1, 16($v1)
	sd	$a2, 24($v1)
	addiu	$v0, $v0, 32
	addiu	$v1, $v1, 32
	nop
	bne	$v0, $a0, lbl_0011C1FC
	nop
	lw	$t0, 528($sp)
	move	$a0, $s7
	lw	$t1, 516($sp)
	move	$a1, $sp
	lw	$a2, 1068($sp)
	jal	sub_0011BDB0
	move	$a3, $s2
	lhu	$v1, 0($sp)
	andi	$v1, $v1, 0x2000
	bnez	$v1, lbl_0011C440
	move	$a0, $v0
	beq	$s8, $s6, lbl_0011C27C
	nop
	beqz	$a0, lbl_0011C1D0
	move	$a1, $s1
	xor	$v1, $a0, $s3
	move	$v0, $s4
	b	lbl_0011C448
	movn	$v0, $a0, $v1
lbl_0011C27C:
	bnez	$a0, lbl_0011C35C
	nop
	beqz	$s5, lbl_0011C330
	lw	$v1, 1064($sp)
	move	$a2, $s5
	andi	$v0, $a2, 0x7
	beqz	$v0, lbl_0011C2F8
	move	$v1, $sp
lbl_0011C29C:
	ldl	$a3, 7($v1)
	ldr	$a3, 0($v1)
	ldl	$t0, 15($v1)
	ldr	$t0, 8($v1)
	ldl	$v0, 23($v1)
	ldr	$v0, 16($v1)
	ldl	$a0, 31($v1)
	ldr	$a0, 24($v1)
	sdl	$a3, 7($a2)
	sdr	$a3, 0($a2)
	sdl	$t0, 15($a2)
	sdr	$t0, 8($a2)
	sdl	$v0, 23($a2)
	sdr	$v0, 16($a2)
	sdl	$a0, 31($a2)
	sdr	$a0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $s0, lbl_0011C29C
	nop
	b	lbl_0011C330
	lw	$v1, 1064($sp)
lbl_0011C2F8:
	ld	$a1, 0($v1)
	ld	$a3, 8($v1)
	ld	$t0, 16($v1)
	ld	$v0, 24($v1)
	sd	$a1, 0($a2)
	sd	$a3, 8($a2)
	sd	$t0, 16($a2)
	sd	$v0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $s0, lbl_0011C2F8
	nop
	lw	$v1, 1064($sp)
lbl_0011C330:
	beqz	$v1, lbl_0011C33C
	lw	$v0, 1056($sp)
	sw	$v0, 0($v1)
lbl_0011C33C:
	lw	$a0, 1060($sp)
	beqz	$a0, lbl_0011C350
	nop
	lw	$v0, 528($sp)
	sw	$v0, 0($a0)
lbl_0011C350:
	lui	$v0, 0x8101
	b	lbl_0011C448
	ori	$v0, $v0, 0x11
lbl_0011C35C:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x2
	bne	$a0, $v0, lbl_0011C448
	move	$v0, $a0
	beqz	$s5, lbl_0011C418
	lw	$v0, 1064($sp)
	move	$a2, $s5
	andi	$v0, $a2, 0x7
	beqz	$v0, lbl_0011C3E0
	move	$v1, $s0
lbl_0011C384:
	ldl	$a1, 7($v1)
	ldr	$a1, 0($v1)
	ldl	$a3, 15($v1)
	ldr	$a3, 8($v1)
	ldl	$t0, 23($v1)
	ldr	$t0, 16($v1)
	ldl	$v0, 31($v1)
	ldr	$v0, 24($v1)
	sdl	$a1, 7($a2)
	sdr	$a1, 0($a2)
	sdl	$a3, 15($a2)
	sdr	$a3, 8($a2)
	sdl	$t0, 23($a2)
	sdr	$t0, 16($a2)
	sdl	$v0, 31($a2)
	sdr	$v0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $s2, lbl_0011C384
	nop
	b	lbl_0011C418
	lw	$v0, 1064($sp)
lbl_0011C3E0:
	ld	$a0, 0($v1)
	ld	$a1, 8($v1)
	ld	$a3, 16($v1)
	ld	$t0, 24($v1)
	sd	$a0, 0($a2)
	sd	$a1, 8($a2)
	sd	$a3, 16($a2)
	sd	$t0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $s2, lbl_0011C3E0
	nop
	lw	$v0, 1064($sp)
lbl_0011C418:
	bnezl	$v0, lbl_0011C420
	sw	$zero, 0($v0)
lbl_0011C420:
	lw	$v1, 1060($sp)
	beqz	$v1, lbl_0011C434
	nop
	lw	$v0, 528($sp)
	sw	$v0, 0($v1)
lbl_0011C434:
	lui	$v0, 0x8101
	b	lbl_0011C448
	ori	$v0, $v0, 0x2
lbl_0011C440:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0xd
lbl_0011C448:
	ld	$ra, 1216($sp)
lbl_0011C44C:
	ld	$s8, 1200($sp)
	ld	$s7, 1184($sp)
	ld	$s6, 1168($sp)
	ld	$s5, 1152($sp)
	ld	$s4, 1136($sp)
	ld	$s3, 1120($sp)
	ld	$s2, 1104($sp)
	ld	$s1, 1088($sp)
	ld	$s0, 1072($sp)
	jr	$ra
	addiu	$sp, $sp, 1232

sub_0011C478:
	addiu	$sp, $sp, -144
	sd	$s5, 96($sp)
	sd	$s3, 64($sp)
	lui	$s5, 0x8101
	sd	$s2, 48($sp)
	lui	$s3, 0xffff
	sd	$s6, 112($sp)
	lui	$s2, 0x7fff
	sd	$s4, 80($sp)
	move	$s6, $a1
	sd	$s1, 32($sp)
	move	$s4, $a0
	sd	$s0, 16($sp)
	move	$s1, $a3
	sd	$ra, 128($sp)
	move	$s0, $a2
	sw	$zero, 0($sp)
	ori	$s5, $s5, 0x6f
	ori	$s3, $s3, 0xffff
	ori	$s2, $s2, 0xffff
lbl_0011C4C8:
	slti	$v0, $s1, 2
	beqz	$v0, lbl_0011C5BC
	move	$a0, $s4
	lui	$s3, 0x16
	addiu	$s2, $s3, -17024
	move	$a2, $s0
	move	$a1, $s2
	jal	sub_0011F098
	li	$a3, 1
	beqz	$v0, lbl_0011C5EC
	sll	$v1, $s1, 0x9
	move	$a1, $s6
	addu	$v1, $v1, $s2
	or	$v0, $a1, $v1
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011C568
	addiu	$v0, $a1, 512
lbl_0011C50C:
	ldl	$a0, 7($a1)
	ldr	$a0, 0($a1)
	ldl	$a2, 15($a1)
	ldr	$a2, 8($a1)
	ldl	$a3, 23($a1)
	ldr	$a3, 16($a1)
	ldl	$t0, 31($a1)
	ldr	$t0, 24($a1)
	sdl	$a0, 7($v1)
	sdr	$a0, 0($v1)
	sdl	$a2, 15($v1)
	sdr	$a2, 8($v1)
	sdl	$a3, 23($v1)
	sdr	$a3, 16($v1)
	sdl	$t0, 31($v1)
	sdr	$t0, 24($v1)
	addiu	$a1, $a1, 32
	addiu	$v1, $v1, 32
	nop
	bne	$a1, $v0, lbl_0011C50C
	nop
	b	lbl_0011C5A0
	move	$a0, $s4
lbl_0011C568:
	ld	$a0, 0($a1)
	ld	$a2, 8($a1)
	ld	$a3, 16($a1)
	ld	$t0, 24($a1)
	sd	$a0, 0($v1)
	sd	$a2, 8($v1)
	sd	$a3, 16($v1)
	sd	$t0, 24($v1)
	addiu	$a1, $a1, 32
	addiu	$v1, $v1, 32
	nop
	bne	$a1, $v0, lbl_0011C568
	nop
	move	$a0, $s4
lbl_0011C5A0:
	addiu	$a1, $s3, -17024
	move	$a2, $s0
	jal	sub_0011F0B8
	li	$a3, 1
	movn	$s5, $zero, $v0
	b	lbl_0011C5F4
	move	$v0, $s5
lbl_0011C5BC:
	move	$a1, $s0
	jal	sub_0011A890
	move	$a2, $sp
	lw	$v1, 0($sp)
	beqz	$v1, lbl_0011C5DC
	move	$s0, $v0
	b	lbl_0011C5F4
	move	$v0, $v1
lbl_0011C5DC:
	beq	$s0, $s3, lbl_0011C5EC
	and	$s0, $s0, $s2
	b	lbl_0011C4C8
	addiu	$s1, $s1, -2
lbl_0011C5EC:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x6f
lbl_0011C5F4:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop

sub_0011C620:
	addiu	$sp, $sp, -160
	lui	$v0, 0x16
	sd	$s3, 48($sp)
	sd	$s8, 128($sp)
	move	$s3, $a3
	sd	$s7, 112($sp)
	addiu	$s8, $v0, -17024
	sd	$s6, 96($sp)
	lui	$s7, 0x8101
	sd	$s5, 80($sp)
	lui	$s6, 0xffff
	sd	$s4, 64($sp)
	lui	$s5, 0x7fff
	sd	$s2, 32($sp)
	move	$s4, $a0
	sd	$s1, 16($sp)
	move	$s2, $a2
	sd	$s0, 0($sp)
	move	$s1, $zero
	sd	$ra, 144($sp)
	move	$s0, $a1
	sw	$zero, 0($s3)
	ori	$s7, $s7, 0x6f
	ori	$s6, $s6, 0xffff
	ori	$s5, $s5, 0xffff
	move	$a0, $s4
lbl_0011C688:
	move	$a1, $s8
	move	$a2, $s0
	jal	sub_0011F098
	li	$a3, 1
	bnez	$v0, lbl_0011C6AC
	move	$a1, $zero
	sw	$s7, 0($s3)
	b	lbl_0011C71C
	li	$v0, -1
lbl_0011C6AC:
	move	$a0, $s8
lbl_0011C6B0:
	lhu	$v0, 0($a0)
	addiu	$v1, $s1, 1
	addiu	$s2, $s2, -1
	andi	$v0, $v0, 0x8000
	beqz	$s2, lbl_0011C70C
	movz	$s1, $v1, $v0
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 2
	bnez	$v0, lbl_0011C6B0
	addiu	$a0, $a0, 512
	move	$a1, $s0
	move	$a0, $s4
	jal	sub_0011A890
	move	$a2, $s3
	lw	$v1, 0($s3)
	beqz	$v1, lbl_0011C6FC
	move	$s0, $v0
	b	lbl_0011C71C
	li	$v0, -1
lbl_0011C6FC:
	beq	$s0, $s6, lbl_0011C718
	and	$s0, $s0, $s5
	b	lbl_0011C688
	move	$a0, $s4
lbl_0011C70C:
	addiu	$v0, $s1, 1
	b	lbl_0011C71C
	movn	$v0, $s1, $a1
lbl_0011C718:
	move	$v0, $s1
lbl_0011C71C:
	ld	$ra, 144($sp)
	ld	$s8, 128($sp)
	ld	$s7, 112($sp)
	ld	$s6, 96($sp)
	ld	$s5, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop

sub_0011C750:
	addiu	$sp, $sp, -1200
	li	$v0, -1
	sd	$s2, 1072($sp)
	move	$s2, $a2
	sw	$v0, 528($sp)
	sd	$s7, 1152($sp)
	sltiu	$v0, $s2, 1
	sd	$s5, 1120($sp)
	lui	$s7, 0x8101
	sd	$s4, 1104($sp)
	move	$s5, $a1
	sd	$s3, 1088($sp)
	move	$s4, $a0
	sd	$s1, 1056($sp)
	move	$s3, $a3
	sd	$ra, 1184($sp)
	move	$s1, $t0
	sd	$s8, 1168($sp)
	ori	$s7, $s7, 0x6f
	sd	$s6, 1136($sp)
	sd	$s0, 1040($sp)
	sw	$v0, 1028($sp)
	sw	$zero, 1024($sp)
	nop
lbl_0011C7B0:
	move	$a0, $s4
	lui	$a1, 0x16
	addiu	$a1, $a1, -17024
	move	$a2, $s2
	jal	sub_0011F098
	li	$a3, 1
	beqz	$v0, lbl_0011CBE4
	move	$s6, $zero
	lui	$s0, 0x16
	addiu	$s0, $s0, -17024
	lui	$s8, 0x13
	nop
lbl_0011C7E0:
	lhu	$v0, 0($s0)
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011C8C0
	addiu	$a0, $s0, 64
	jal	sub_00125DAC
	addiu	$a1, $s8, 22912
	bnezl	$v0, lbl_0011C8AC
	lhu	$v0, 0($s0)
	addiu	$a0, $sp, 512
	andi	$v0, $s0, 0x7
	beqz	$v0, lbl_0011C870
	move	$v1, $s0
	addiu	$v0, $s0, 512
lbl_0011C814:
	ldl	$a1, 7($v1)
	ldr	$a1, 0($v1)
	ldl	$a2, 15($v1)
	ldr	$a2, 8($v1)
	ldl	$a3, 23($v1)
	ldr	$a3, 16($v1)
	ldl	$t0, 31($v1)
	ldr	$t0, 24($v1)
	sdl	$a1, 7($a0)
	sdr	$a1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$a3, 23($a0)
	sdr	$a3, 16($a0)
	sdl	$t0, 31($a0)
	sdr	$t0, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011C814
	nop
	b	lbl_0011C8AC
	lhu	$v0, 0($s0)
lbl_0011C870:
	addiu	$v0, $s0, 512
lbl_0011C874:
	ld	$t1, 0($v1)
	ld	$a1, 8($v1)
	ld	$a2, 16($v1)
	ld	$a3, 24($v1)
	sd	$t1, 0($a0)
	sd	$a1, 8($a0)
	sd	$a2, 16($a0)
	sd	$a3, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011C874
	nop
	lhu	$v0, 0($s0)
lbl_0011C8AC:
	andi	$v0, $v0, 0x8000
	beqzl	$v0, lbl_0011C8C4
	move	$a0, $s0
	bnez	$s3, lbl_0011C9AC
	lw	$t0, 1024($sp)
lbl_0011C8C0:
	move	$a0, $s0
lbl_0011C8C4:
	or	$v0, $s5, $a0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011C934
	move	$v1, $s5
	addiu	$v0, $s5, 512
lbl_0011C8D8:
	ldl	$t0, 7($v1)
	ldr	$t0, 0($v1)
	ldl	$t1, 15($v1)
	ldr	$t1, 8($v1)
	ldl	$a1, 23($v1)
	ldr	$a1, 16($v1)
	ldl	$a2, 31($v1)
	ldr	$a2, 24($v1)
	sdl	$t0, 7($a0)
	sdr	$t0, 0($a0)
	sdl	$t1, 15($a0)
	sdr	$t1, 8($a0)
	sdl	$a1, 23($a0)
	sdr	$a1, 16($a0)
	sdl	$a2, 31($a0)
	sdr	$a2, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011C8D8
	nop
	b	lbl_0011C970
	lui	$a2, 0x16
lbl_0011C934:
	addiu	$v0, $s5, 512
lbl_0011C938:
	ld	$a3, 0($v1)
	ld	$t0, 8($v1)
	ld	$t1, 16($v1)
	ld	$a1, 24($v1)
	sd	$a3, 0($a0)
	sd	$t0, 8($a0)
	sd	$t1, 16($a0)
	sd	$a1, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011C938
	nop
	lui	$a2, 0x16
lbl_0011C970:
	move	$a0, $s4
	addiu	$a1, $a2, -17024
	li	$a3, 1
	jal	sub_0011F0B8
	move	$a2, $s2
	beqzl	$v0, lbl_0011CBE8
	sw	$s7, 0($s1)
	bnezl	$s3, lbl_0011CBBC
	sw	$zero, 0($s1)
	lw	$a2, 528($sp)
	li	$a3, -1
	beq	$a2, $a3, lbl_0011CBD0
	lw	$a3, 532($sp)
	b	lbl_0011CB80
	move	$a0, $s4
lbl_0011C9AC:
	slt	$v0, $zero, $s3
	addiu	$s6, $s6, 1
	subu	$s3, $s3, $v0
	addiu	$t0, $t0, 1
	addiu	$s0, $s0, 512
	slti	$v0, $s6, 2
	bnez	$v0, lbl_0011C7E0
	sw	$t0, 1024($sp)
	lw	$t1, 1028($sp)
	bnez	$t1, lbl_0011C9F8
	move	$s0, $s2
	slti	$v0, $t0, 20
	bnez	$v0, lbl_0011C9FC
	move	$a0, $s4
	lui	$v1, 0x8101
	li	$v0, -1
	ori	$v1, $v1, 0x17
	b	lbl_0011CBEC
	sw	$v1, 0($s1)
lbl_0011C9F8:
	move	$a0, $s4
lbl_0011C9FC:
	move	$a1, $s0
	jal	sub_0011A890
	move	$a2, $s1
	lw	$v1, 0($s1)
	move	$s2, $v0
	bnez	$v1, lbl_0011CBEC
	li	$v0, -1
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	bne	$s2, $v0, lbl_0011CBC4
	lui	$v0, 0x7fff
	move	$a0, $s4
	jal	sub_0011AA70
	move	$a1, $s1
	lw	$v1, 0($s1)
	bnez	$v1, lbl_0011CBE8
	move	$s2, $v0
	lui	$a2, 0x8000
	move	$a1, $s0
	or	$a2, $s2, $a2
	move	$a0, $s4
	jal	sub_0011A940
	move	$a3, $s1
	lw	$v1, 0($s1)
	bnez	$v1, lbl_0011CBEC
	li	$v0, -1
	move	$a0, $s4
	move	$a1, $s2
	li	$a2, -1
	jal	sub_0011A940
	move	$a3, $s1
	lw	$v1, 0($s1)
	bnez	$v1, lbl_0011CBEC
	li	$v0, -1
	lui	$v0, 0x16
	move	$a1, $s5
	addiu	$s0, $v0, -17024
	or	$v0, $a1, $s0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011CB04
	move	$a2, $s0
	addiu	$v0, $s0, 512
	addiu	$v1, $a1, 512
lbl_0011CAA8:
	ldl	$a0, 7($a1)
	ldr	$a0, 0($a1)
	ldl	$a3, 15($a1)
	ldr	$a3, 8($a1)
	ldl	$t0, 23($a1)
	ldr	$t0, 16($a1)
	ldl	$t1, 31($a1)
	ldr	$t1, 24($a1)
	sdl	$a0, 7($a2)
	sdr	$a0, 0($a2)
	sdl	$a3, 15($a2)
	sdr	$a3, 8($a2)
	sdl	$t0, 23($a2)
	sdr	$t0, 16($a2)
	sdl	$t1, 31($a2)
	sdr	$t1, 24($a2)
	addiu	$a1, $a1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a1, $v1, lbl_0011CAA8
	nop
	b	lbl_0011CB44
	sh	$zero, 0($v0)
lbl_0011CB04:
	addiu	$v0, $s0, 512
	addiu	$v1, $a1, 512
lbl_0011CB0C:
	ld	$a0, 0($a1)
	ld	$a3, 8($a1)
	ld	$t0, 16($a1)
	ld	$t1, 24($a1)
	sd	$a0, 0($a2)
	sd	$a3, 8($a2)
	sd	$t0, 16($a2)
	sd	$t1, 24($a2)
	addiu	$a1, $a1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a1, $v1, lbl_0011CB0C
	nop
	sh	$zero, 0($v0)
lbl_0011CB44:
	move	$a2, $s2
	lui	$v0, 0x16
	move	$a0, $s4
	addiu	$a1, $v0, -17024
	jal	sub_0011F0B8
	li	$a3, 1
	beqz	$v0, lbl_0011CBE4
	lw	$a2, 528($sp)
	li	$v1, -1
	bne	$a2, $v1, lbl_0011CB7C
	lw	$a3, 532($sp)
	lui	$v0, 0x8101
	b	lbl_0011CBEC
	ori	$v0, $v0, 0x9002
lbl_0011CB7C:
	move	$a0, $s4
lbl_0011CB80:
	jal	sub_0011AC78
	move	$a1, $sp
	bnez	$v0, lbl_0011CBE8
	sw	$v0, 0($s1)
	lw	$v0, 4($sp)
	move	$a0, $s4
	lw	$a2, 528($sp)
	move	$a1, $sp
	addiu	$v0, $v0, 1
	lw	$a3, 532($sp)
	jal	sub_0011C478
	sw	$v0, 4($sp)
	bnez	$v0, lbl_0011CBE8
	sw	$v0, 0($s1)
	sw	$zero, 0($s1)
lbl_0011CBBC:
	b	lbl_0011CBEC
	lw	$v0, 1024($sp)
lbl_0011CBC4:
	ori	$v0, $v0, 0xffff
	b	lbl_0011C7B0
	and	$s2, $s2, $v0
lbl_0011CBD0:
	lui	$v1, 0x8101
	li	$v0, -1
	ori	$v1, $v1, 0x9002
	b	lbl_0011CBEC
	sw	$v1, 0($s1)
lbl_0011CBE4:
	sw	$s7, 0($s1)
lbl_0011CBE8:
	li	$v0, -1
lbl_0011CBEC:
	ld	$ra, 1184($sp)
	ld	$s8, 1168($sp)
	ld	$s7, 1152($sp)
	ld	$s6, 1136($sp)
	ld	$s5, 1120($sp)
	ld	$s4, 1104($sp)
	ld	$s3, 1088($sp)
	ld	$s2, 1072($sp)
	ld	$s1, 1056($sp)
	ld	$s0, 1040($sp)
	jr	$ra
	addiu	$sp, $sp, 1200
	nop

sub_0011CC20:
	addiu	$sp, $sp, -1072
	move	$a3, $zero
	sd	$s0, 1024($sp)
	move	$s0, $a2
	sd	$s1, 1040($sp)
	move	$s1, $a0
	move	$a2, $a1
	sd	$ra, 1056($sp)
	jal	sub_0011AC78
	addiu	$a1, $sp, 512
	bnez	$v0, lbl_0011CD3C
	ld	$ra, 1056($sp)
	lui	$a1, 0x13
	addiu	$a0, $sp, 576
	jal	sub_00125DAC
	addiu	$a1, $a1, 22912
	beqz	$v0, lbl_0011CC74
	lw	$a2, 528($sp)
	lui	$v0, 0x8101
	b	lbl_0011CD38
	ori	$v0, $v0, 0x9002
lbl_0011CC74:
	move	$a0, $s1
	lw	$a3, 532($sp)
	jal	sub_0011AC78
	move	$a1, $sp
	bnez	$v0, lbl_0011CD3C
	ld	$ra, 1056($sp)
	lbu	$a1, 7($s0)
	li	$v1, 10
	lbu	$a3, 3($s0)
	move	$a0, $s1
	lbu	$a2, 2($s0)
	srl	$v0, $a1, 0x4
	lbu	$t7, 1($s0)
	srl	$t3, $a3, 0x4
	lbu	$t4, 6($s0)
	srl	$t0, $a2, 0x4
	lbu	$t1, 5($s0)
	srl	$t6, $t7, 0x4
	srl	$t5, $t4, 0x4
	mult	$v0, $v0, $v1
	srl	$t2, $t1, 0x4
	mult1	$t3, $t3, $v1
	mult	$t0, $t0, $v1
	andi	$a1, $a1, 0xf
	mult	$t6, $t6, $v1
	andi	$a3, $a3, 0xf
	mult1	$t5, $t5, $v1
	andi	$a2, $a2, 0xf
	mult	$t2, $t2, $v1
	addu	$v0, $v0, $a1
	addu	$t3, $t3, $a3
	addu	$t0, $t0, $a2
	andi	$t4, $t4, 0xf
	andi	$t1, $t1, 0xf
	andi	$t7, $t7, 0xf
	addu	$t5, $t5, $t4
	addu	$t2, $t2, $t1
	addu	$t6, $t6, $t7
	addiu	$v0, $v0, 2000
	lw	$a2, 528($sp)
	lw	$a3, 532($sp)
	move	$a1, $sp
	sh	$v0, 30($sp)
	sb	$t5, 29($sp)
	sb	$t2, 28($sp)
	sb	$t3, 27($sp)
	sb	$t0, 26($sp)
	jal	sub_0011C478
	sb	$t6, 25($sp)
lbl_0011CD38:
	ld	$ra, 1056($sp)
lbl_0011CD3C:
	ld	$s1, 1040($sp)
	ld	$s0, 1024($sp)
	jr	$ra
	addiu	$sp, $sp, 1072
	nop

sub_0011CD50:
	addiu	$sp, $sp, -768
	sd	$s1, 688($sp)
	sd	$s4, 736($sp)
	move	$s1, $a0
	sd	$s2, 704($sp)
	move	$s4, $a1
	sd	$s0, 672($sp)
	move	$s2, $a2
	sd	$ra, 752($sp)
	jal	sub_0011BCA8
	sd	$s3, 720($sp)
	move	$s0, $v0
	bnez	$s0, lbl_0011CE24
	ld	$ra, 752($sp)
	addiu	$s3, $sp, 544
	move	$a1, $s4
	move	$a0, $s1
	jal	sub_0011BD50
	move	$a2, $s3
	move	$s0, $v0
	bnez	$s0, lbl_0011CE24
	ld	$ra, 752($sp)
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $sp
	move	$a3, $zero
	move	$t0, $zero
	jal	sub_0011C028
	move	$s0, $zero
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x11
	xor	$a0, $v0, $v1
	beqz	$s2, lbl_0011CE1C
	movn	$s0, $v0, $a0
	bnez	$s0, lbl_0011CE20
	move	$v0, $s0
	addiu	$a0, $s2, 24
	jal	sub_00125EF0
	addiu	$a1, $sp, 64
	lw	$v1, 4($sp)
	lhu	$v0, 0($sp)
	ldl	$a0, 15($sp)
	ldr	$a0, 8($sp)
	sdl	$a0, 7($s2)
	sdr	$a0, 0($s2)
	ldl	$a0, 31($sp)
	ldr	$a0, 24($sp)
	sdl	$a0, 15($s2)
	sdr	$a0, 8($s2)
	sh	$v0, 20($s2)
	sw	$v1, 16($s2)
lbl_0011CE1C:
	move	$v0, $s0
lbl_0011CE20:
	ld	$ra, 752($sp)
lbl_0011CE24:
	ld	$s4, 736($sp)
	ld	$s3, 720($sp)
	ld	$s2, 704($sp)
	ld	$s1, 688($sp)
	ld	$s0, 672($sp)
	jr	$ra
	addiu	$sp, $sp, 768

sub_0011CE40:
	addiu	$sp, $sp, -1344
	sd	$s4, 1248($sp)
	sd	$s5, 1264($sp)
	move	$s4, $a0
	sd	$s0, 1184($sp)
	move	$s5, $a2
	sd	$ra, 1328($sp)
	move	$s0, $a1
	sd	$s8, 1312($sp)
	sd	$s7, 1296($sp)
	sd	$s6, 1280($sp)
	sd	$s3, 1232($sp)
	sd	$s2, 1216($sp)
	jal	sub_0011BCA8
	sd	$s1, 1200($sp)
	move	$v1, $v0
	bnez	$v1, lbl_0011D39C
	sw	$v0, 1168($sp)
	addiu	$s2, $sp, 1024
	move	$a1, $s0
	move	$a0, $s4
	jal	sub_0011BD50
	move	$a2, $s2
	move	$v1, $v0
	bnez	$v1, lbl_0011D39C
	sw	$v0, 1168($sp)
	li	$v0, 0x8417
	movz	$s5, $v0, $s5
	andi	$s7, $s5, 0x20
	beqz	$s7, lbl_0011CEDC
	move	$s6, $s7
	jal	sub_0011A330
	move	$a0, $s2
	slti	$v0, $v0, 2
	bnez	$v0, lbl_0011CEDC
	nop
	lui	$v0, 0x8101
	b	lbl_0011D39C
	ori	$v0, $v0, 0x9004
lbl_0011CEDC:
	jal	sub_0011A330
	move	$a0, $s2
	xori	$v0, $v0, 0x1
	move	$a0, $s4
	sltiu	$s0, $v0, 1
	move	$a1, $s2
	move	$a2, $sp
	move	$a3, $zero
	jal	sub_0011C028
	move	$t0, $zero
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x2
	bne	$a0, $v1, lbl_0011D39C
	sw	$v0, 1168($sp)
	bnez	$s0, lbl_0011CF40
	addiu	$s1, $sp, 1168
	lw	$v0, 4($sp)
	subu	$v0, $v0, $s3
	slti	$v0, $v0, 20
	bnez	$v0, lbl_0011CF44
	move	$a0, $s4
	lui	$v0, 0x8101
	b	lbl_0011D39C
	ori	$v0, $v0, 0x17
lbl_0011CF40:
	move	$a0, $s4
lbl_0011CF44:
	jal	sub_0011ABA0
	move	$a1, $s1
	lw	$v1, 1168($sp)
	beqz	$v1, lbl_0011CF60
	move	$s0, $v0
	b	lbl_0011D39C
	move	$v0, $v1
lbl_0011CF60:
	lw	$a1, 16($sp)
	move	$a0, $s4
	lw	$a2, 4($sp)
	jal	sub_0011C620
	move	$a3, $s1
	move	$s3, $v0
	lw	$v0, 1168($sp)
	bnez	$v0, lbl_0011D3A0
	ld	$ra, 1328($sp)
	slt	$v0, $zero, $s3
	li	$v1, 1
	li	$a0, 2
	addu	$s0, $v0, $s0
	movn	$v1, $a0, $s6
	slt	$v1, $s0, $v1
	beqz	$v1, lbl_0011CFB0
	nop
	lui	$v0, 0x8101
	b	lbl_0011D3A0
	ori	$v0, $v0, 0x1c
lbl_0011CFB0:
	beqz	$s7, lbl_0011CFF0
	move	$a0, $s4
	jal	sub_0011AA70
	move	$a1, $s1
	move	$s8, $v0
	lw	$v0, 1168($sp)
	bnez	$v0, lbl_0011D3A0
	ld	$ra, 1328($sp)
	move	$a0, $s4
	move	$a1, $s8
	li	$a2, -1
	jal	sub_0011A940
	move	$a3, $s1
	lw	$v0, 1168($sp)
	bnez	$v0, lbl_0011D3A0
	ld	$ra, 1328($sp)
lbl_0011CFF0:
	addiu	$v0, $sp, 1152
	move	$a0, $s4
	sw	$v0, 1172($sp)
	jal	sub_0011FB98
	move	$a1, $v0
	li	$s3, 10
	addiu	$s0, $sp, 512
	move	$a1, $zero
	move	$a0, $s0
	jal	sub_00125310
	li	$a2, 512
	lbu	$v1, 1159($sp)
	li	$t6, -1
	lbu	$t1, 1158($sp)
	li	$t7, 2
	lbu	$a3, 1157($sp)
	srl	$v0, $v1, 0x4
	lbu	$a2, 1155($sp)
	srl	$t5, $t1, 0x4
	lbu	$a1, 1154($sp)
	srl	$t2, $a3, 0x4
	lbu	$a0, 1153($sp)
	srl	$t3, $a2, 0x4
	srl	$t4, $a1, 0x4
	mult	$v0, $v0, $s3
	srl	$t0, $a0, 0x4
	mult	$t5, $t5, $s3
	mult1	$t2, $t2, $s3
	andi	$v1, $v1, 0xf
	mult	$t3, $t3, $s3
	andi	$a3, $a3, 0xf
	mult1	$t4, $t4, $s3
	addu	$v0, $v0, $v1
	mult	$t0, $t0, $s3
	andi	$a2, $a2, 0xf
	andi	$a1, $a1, 0xf
	andi	$a0, $a0, 0xf
	andi	$t1, $t1, 0xf
	addu	$t2, $t2, $a3
	addu	$t3, $t3, $a2
	addu	$t4, $t4, $a1
	addu	$t0, $t0, $a0
	addu	$t5, $t5, $t1
	movn	$t6, $s8, $s6
	movz	$t7, $zero, $s6
	addiu	$v0, $v0, 2000
	sh	$s5, 512($sp)
	sw	$t6, 528($sp)
	move	$a0, $s2
	sw	$t7, 516($sp)
	li	$a1, 47
	sh	$v0, 526($sp)
	sb	$t5, 525($sp)
	sb	$t2, 524($sp)
	sb	$t3, 523($sp)
	sb	$t4, 522($sp)
	sb	$t0, 521($sp)
	sh	$zero, 514($sp)
	sb	$zero, 520($sp)
	sw	$zero, 532($sp)
	ldl	$v1, 527($sp)
	ldr	$v1, 520($sp)
	sdl	$v1, 543($sp)
	sdr	$v1, 536($sp)
	jal	sub_001264B8
	sw	$zero, 544($sp)
	ldl	$t1, 8($v0)
	ldr	$t1, 1($v0)
	ldl	$v1, 16($v0)
	ldr	$v1, 9($v0)
	ldl	$a0, 24($v0)
	ldr	$a0, 17($v0)
	ldl	$a1, 32($v0)
	ldr	$a1, 25($v0)
	sdl	$t1, 583($sp)
	sdr	$t1, 576($sp)
	sdl	$v1, 591($sp)
	sdr	$v1, 584($sp)
	sdl	$a0, 599($sp)
	sdr	$a0, 592($sp)
	sdl	$a1, 607($sp)
	sdr	$a1, 600($sp)
	move	$t0, $s1
	move	$a1, $s0
	move	$a0, $s4
	lw	$a2, 16($sp)
	jal	sub_0011C750
	lw	$a3, 4($sp)
	move	$s5, $v0
	bltz	$s5, lbl_0011D39C
	lw	$v0, 1168($sp)
	beqz	$s7, lbl_0011D35C
	lui	$s1, 0x16
	move	$a1, $zero
	addiu	$s0, $s1, -17024
	li	$a2, 512
	move	$a0, $s0
	jal	sub_00125310
	li	$s2, 0x8427
	lbu	$v1, 1159($sp)
	lui	$t7, 0x13
	lbu	$t6, 1158($sp)
	move	$a1, $zero
	lbu	$t5, 1157($sp)
	srl	$v0, $v1, 0x4
	lbu	$t4, 1155($sp)
	srl	$t3, $t6, 0x4
	lbu	$t2, 1154($sp)
	srl	$a3, $t5, 0x4
	lbu	$a2, 1153($sp)
	srl	$t0, $t4, 0x4
	srl	$t1, $t2, 0x4
	mult	$v0, $v0, $s3
	srl	$a0, $a2, 0x4
	mult	$t3, $t3, $s3
	mult1	$a3, $a3, $s3
	andi	$v1, $v1, 0xf
	mult	$t0, $t0, $s3
	andi	$a2, $a2, 0xf
	mult1	$t1, $t1, $s3
	addu	$v0, $v0, $v1
	mult	$a0, $a0, $s3
	andi	$t6, $t6, 0xf
	andi	$t5, $t5, 0xf
	andi	$t4, $t4, 0xf
	andi	$t2, $t2, 0xf
	sh	$s2, -17024($s1)
	addu	$a3, $a3, $t5
	addu	$t0, $t0, $t4
	addu	$a0, $a0, $a2
	addu	$t1, $t1, $t2
	addiu	$v0, $v0, 2000
	addu	$t3, $t3, $t6
	sb	$a0, 9($s0)
	li	$a2, 512
	sh	$v0, 14($s0)
	sb	$t3, 13($s0)
	sb	$a3, 12($s0)
	sb	$t0, 11($s0)
	sb	$t1, 10($s0)
	sw	$s5, 20($s0)
	sw	$zero, 4($s0)
	sh	$zero, 2($s0)
	sw	$zero, 16($s0)
	ldl	$a3, 15($s0)
	ldr	$a3, 8($s0)
	sdl	$a3, 31($s0)
	sdr	$a3, 24($s0)
	addiu	$t0, $t7, 22912
	lb	$v1, 0($t0)
	lb	$a0, 1($t0)
	sb	$v1, 64($s0)
	sb	$a0, 65($s0)
	addiu	$s0, $s0, 512
	jal	sub_00125310
	move	$a0, $s0
	lbu	$v1, 1159($sp)
	lui	$t7, 0x13
	lbu	$t6, 1158($sp)
	addiu	$a1, $s1, -17024
	lbu	$t5, 1157($sp)
	srl	$v0, $v1, 0x4
	lbu	$t4, 1155($sp)
	srl	$t0, $t6, 0x4
	lbu	$a3, 1154($sp)
	srl	$t1, $t5, 0x4
	lbu	$a0, 1153($sp)
	srl	$t2, $t4, 0x4
	srl	$t3, $a3, 0x4
	mult	$v0, $v0, $s3
	srl	$a2, $a0, 0x4
	mult	$t0, $t0, $s3
	mult1	$t1, $t1, $s3
	andi	$v1, $v1, 0xf
	mult	$a2, $a2, $s3
	andi	$a3, $a3, 0xf
	mult1	$t2, $t2, $s3
	addu	$v0, $v0, $v1
	mult	$t3, $t3, $s3
	andi	$a0, $a0, 0xf
	andi	$t6, $t6, 0xf
	andi	$t5, $t5, 0xf
	andi	$t4, $t4, 0xf
	addu	$a2, $a2, $a0
	addu	$t1, $t1, $t5
	addiu	$v0, $v0, 2000
	addu	$t0, $t0, $t6
	addu	$t3, $t3, $a3
	addu	$t2, $t2, $t4
	sh	$s2, 0($s0)
	sh	$v0, 14($s0)
	move	$a0, $s4
	sb	$t0, 13($s0)
	sb	$t1, 12($s0)
	sb	$t2, 11($s0)
	sb	$t3, 10($s0)
	sb	$a2, 9($s0)
	sw	$zero, 4($s0)
	sh	$zero, 2($s0)
	sb	$zero, 8($s0)
	sw	$zero, 16($s0)
	sw	$zero, 20($s0)
	ldl	$t1, 15($s0)
	ldr	$t1, 8($s0)
	sdl	$t1, 31($s0)
	sdr	$t1, 24($s0)
	sw	$zero, 32($s0)
	lw	$a2, 528($sp)
	addiu	$v1, $t7, 22920
	lb	$t0, 0($v1)
	lb	$t1, 1($v1)
	lb	$v0, 2($v1)
	sb	$t0, 64($s0)
	sb	$t1, 65($s0)
	sb	$v0, 66($s0)
	jal	sub_0011F0B8
	li	$a3, 1
	beqz	$v0, lbl_0011D394
	nop
lbl_0011D35C:
	lw	$a1, 16($sp)
	move	$a0, $s4
	jal	sub_0011CC20
	lw	$a2, 1172($sp)
	bnez	$v0, lbl_0011D39C
	sw	$v0, 1168($sp)
	jal	sub_0011A6E8
	move	$a0, $s4
	beqz	$v0, lbl_0011D394
	nop
	jal	sub_0011EB50
	move	$a0, $s4
	bnezl	$v0, lbl_0011D39C
	lw	$v0, 1168($sp)
lbl_0011D394:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x6f
lbl_0011D39C:
	ld	$ra, 1328($sp)
lbl_0011D3A0:
	ld	$s8, 1312($sp)
	ld	$s7, 1296($sp)
	ld	$s6, 1280($sp)
	ld	$s5, 1264($sp)
	ld	$s4, 1248($sp)
	ld	$s3, 1232($sp)
	ld	$s2, 1216($sp)
	ld	$s1, 1200($sp)
	ld	$s0, 1184($sp)
	jr	$ra
	addiu	$sp, $sp, 1344
	nop

sub_0011D3D0:
	addiu	$sp, $sp, -816
	sd	$s5, 736($sp)
	move	$s5, $a0
	sd	$s4, 720($sp)
	sd	$s3, 704($sp)
	move	$s4, $a2
	sd	$s2, 688($sp)
	move	$s3, $a1
	sd	$s0, 656($sp)
	move	$s2, $t0
	move	$s0, $a3
	sd	$ra, 800($sp)
	sd	$s8, 784($sp)
	sd	$s7, 768($sp)
	sd	$s6, 752($sp)
	jal	sub_0011BCA8
	sd	$s1, 672($sp)
	bnez	$v0, lbl_0011D5AC
	ld	$ra, 800($sp)
	addiu	$s1, $sp, 512
	move	$a1, $s3
	move	$a0, $s5
	jal	sub_0011BD50
	move	$a2, $s1
	bnez	$v0, lbl_0011D5AC
	ld	$ra, 800($sp)
	move	$a1, $s1
	move	$a0, $s5
	move	$a2, $sp
	move	$a3, $zero
	jal	sub_0011C028
	move	$t0, $zero
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x11
	bne	$v0, $v1, lbl_0011D5AC
	ld	$ra, 800($sp)
	lhu	$v1, 0($sp)
	andi	$v0, $v1, 0x1
	beqz	$v0, lbl_0011D47C
	nop
	andi	$v0, $v1, 0x2000
	beqzl	$v0, lbl_0011D488
	andi	$v0, $v1, 0x20
lbl_0011D47C:
	lui	$v0, 0x8101
	b	lbl_0011D5A8
	ori	$v0, $v0, 0xd
lbl_0011D488:
	beqz	$v0, lbl_0011D49C
	lw	$a0, 4($sp)
	lui	$v0, 0x8101
	b	lbl_0011D5A8
	ori	$v0, $v0, 0x2
lbl_0011D49C:
	slt	$v0, $a0, $s0
	beqz	$v0, lbl_0011D4E8
	subu	$v1, $a0, $s0
	lui	$v0, 0x8101
	b	lbl_0011D5A8
	ori	$v0, $v0, 0x16
lbl_0011D4B4:
	lui	$v0, 0x8101
	b	lbl_0011D5A8
	ori	$v0, $v0, 0x6f
lbl_0011D4C0:
	move	$a0, $s4
	jal	sub_0012515C
	move	$a2, $s2
	b	lbl_0011D5A8
	move	$v0, $s8
lbl_0011D4D4:
	b	lbl_0011D5A8
	move	$v0, $v1
lbl_0011D4DC:
	lui	$v0, 0x8101
	b	lbl_0011D5A8
	ori	$v0, $v0, 0x9002
lbl_0011D4E8:
	movz	$s2, $v1, $s2
	addu	$v0, $s2, $s0
	slt	$v0, $a0, $v0
	movn	$s2, $v1, $v0
	move	$s8, $s2
	beqz	$s8, lbl_0011D5A4
	lw	$s1, 16($sp)
	lui	$s7, 0xffff
	lui	$s6, 0x7fff
	ori	$s7, $s7, 0xffff
	ori	$s6, $s6, 0xffff
	nop
lbl_0011D518:
	slti	$v0, $s0, 1024
	beqz	$v0, lbl_0011D574
	lui	$v0, 0x16
	move	$a0, $s5
	addiu	$s3, $v0, -17024
	move	$a2, $s1
	move	$a1, $s3
	jal	sub_0011F098
	li	$a3, 1
	beqz	$v0, lbl_0011D4B4
	sw	$v0, 640($sp)
	li	$v0, 1024
	subu	$a2, $v0, $s0
	slt	$v0, $a2, $s2
	beqz	$v0, lbl_0011D4C0
	addu	$a1, $s0, $s3
	jal	sub_0012515C
	move	$a0, $s4
	addiu	$v1, $s4, 1024
	addiu	$v0, $s2, -1024
	addu	$s2, $v0, $s0
	subu	$s4, $v1, $s0
	move	$s0, $zero
lbl_0011D574:
	move	$a1, $s1
	move	$a0, $s5
	jal	sub_0011A890
	addiu	$a2, $sp, 640
	lw	$v1, 640($sp)
	bnez	$v1, lbl_0011D4D4
	move	$s1, $v0
	beq	$s1, $s7, lbl_0011D4DC
	and	$s1, $s1, $s6
	addiu	$v0, $s0, -1024
	bnez	$s2, lbl_0011D518
	movn	$s0, $v0, $s0
lbl_0011D5A4:
	move	$v0, $s8
lbl_0011D5A8:
	ld	$ra, 800($sp)
lbl_0011D5AC:
	ld	$s8, 784($sp)
	ld	$s7, 768($sp)
	ld	$s6, 752($sp)
	ld	$s5, 736($sp)
	ld	$s4, 720($sp)
	ld	$s3, 704($sp)
	ld	$s2, 688($sp)
	ld	$s1, 672($sp)
	ld	$s0, 656($sp)
	jr	$ra
	addiu	$sp, $sp, 816

sub_0011D5D8:
	addiu	$sp, $sp, -848
	sd	$s3, 736($sp)
	sd	$s7, 800($sp)
	move	$s3, $a0
	sd	$s4, 752($sp)
	move	$s7, $t0
	sd	$s2, 720($sp)
	move	$s4, $a2
	sd	$s1, 704($sp)
	move	$s2, $a3
	sd	$ra, 832($sp)
	move	$s1, $a1
	sd	$s8, 816($sp)
	sd	$s6, 784($sp)
	sd	$s5, 768($sp)
	jal	sub_0011BCA8
	sd	$s0, 688($sp)
	move	$v1, $v0
	bnez	$v1, lbl_0011DB84
	sw	$v0, 664($sp)
	addiu	$s0, $sp, 512
	move	$a1, $s1
	move	$a0, $s3
	jal	sub_0011BD50
	move	$a2, $s0
	move	$v1, $v0
	bnez	$v1, lbl_0011DB84
	sw	$v0, 664($sp)
	move	$a1, $s0
	move	$a0, $s3
	move	$a2, $sp
	addiu	$a3, $sp, 656
	jal	sub_0011C028
	addiu	$t0, $sp, 660
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x11
	bne	$a0, $v1, lbl_0011DB84
	sw	$v0, 664($sp)
	lbu	$v0, 96($sp)
	bnez	$v0, lbl_0011D6B4
	lhu	$a0, 0($sp)
	li	$v0, 0x8000
	andi	$v1, $a0, 0xf000
	beq	$v1, $v0, lbl_0011D69C
	move	$a1, $a0
	li	$v0, 0xa000
	bne	$v1, $v0, lbl_0011D6B4
	nop
lbl_0011D69C:
	andi	$v1, $a1, 0xf00
	li	$v0, 1024
	beql	$v1, $v0, lbl_0011D6C0
	andi	$v0, $a1, 0x2
	beqzl	$v1, lbl_0011D6C0
	andi	$v0, $a1, 0x2
lbl_0011D6B4:
	lui	$v0, 0x8101
	b	lbl_0011DB84
	ori	$v0, $v0, 0x9002
lbl_0011D6C0:
	bnezl	$v0, lbl_0011D6D4
	andi	$v0, $a0, 0x20
	lui	$v0, 0x8101
	b	lbl_0011DB84
	ori	$v0, $v0, 0xd
lbl_0011D6D4:
	beqzl	$v0, lbl_0011D6E8
	lw	$v0, 4($sp)
	lui	$v0, 0x8101
	b	lbl_0011DB84
	ori	$v0, $v0, 0x2
lbl_0011D6E8:
	slt	$v0, $v0, $s2
	beqzl	$v0, lbl_0011D700
	addu	$v0, $s2, $s7
	lui	$v0, 0x8101
	b	lbl_0011DB84
	ori	$v0, $v0, 0x16
lbl_0011D700:
	li	$v1, -1
	addiu	$a0, $v0, 1023
	lw	$a1, 16($sp)
	slt	$v1, $v1, $a0
	addiu	$v0, $v0, 2046
	movn	$v0, $a0, $v1
	move	$a0, $s3
	jal	sub_0011ADF8
	sra	$s1, $v0, 0xa
	move	$s0, $v0
	bltz	$s0, lbl_0011DB88
	ld	$ra, 832($sp)
	slt	$v0, $s0, $s1
	beqz	$v0, lbl_0011D770
	move	$a0, $s3
	jal	sub_0011ABA0
	addiu	$a1, $sp, 664
	move	$v1, $v0
	lw	$v0, 664($sp)
	bnez	$v0, lbl_0011DB88
	ld	$ra, 832($sp)
	subu	$v0, $s1, $s0
	slt	$v0, $v1, $v0
	beqz	$v0, lbl_0011D770
	nop
	lui	$v0, 0x8101
	b	lbl_0011DB88
	ori	$v0, $v0, 0x1c
lbl_0011D770:
	lui	$v0, 0xffff
	lw	$a1, 16($sp)
	ori	$v0, $v0, 0xffff
	bne	$a1, $v0, lbl_0011D8C4
	lui	$v0, 0x16
	addiu	$s0, $sp, 664
	move	$a0, $s3
	jal	sub_0011AA70
	move	$a1, $s0
	lw	$v1, 664($sp)
	beqz	$v1, lbl_0011D7A8
	move	$s1, $v0
lbl_0011D7A0:
	b	lbl_0011DB84
	move	$v0, $v1
lbl_0011D7A8:
	move	$a3, $s0
	move	$a0, $s3
	move	$a1, $s1
	jal	sub_0011A940
	li	$a2, -1
	lw	$v0, 664($sp)
	bnez	$v0, lbl_0011DB88
	ld	$ra, 832($sp)
	move	$a0, $s3
	jal	sub_0011FB98
	addiu	$a1, $sp, 640
	lw	$v1, 4($sp)
	slt	$v1, $v1, $s5
	beqz	$v1, lbl_0011D7E8
	sw	$s1, 16($sp)
	sw	$s5, 4($sp)
lbl_0011D7E8:
	lbu	$a1, 647($sp)
	li	$v1, 10
	lbu	$a3, 642($sp)
	move	$a0, $s3
	lbu	$a2, 641($sp)
	srl	$v0, $a1, 0x4
	lbu	$t7, 646($sp)
	srl	$t3, $a3, 0x4
	lbu	$t6, 645($sp)
	srl	$t0, $a2, 0x4
	lbu	$t4, 643($sp)
	srl	$t5, $t7, 0x4
	srl	$t1, $t6, 0x4
	mult	$v0, $v0, $v1
	srl	$t2, $t4, 0x4
	mult	$t0, $t0, $v1
	mult	$t3, $t3, $v1
	andi	$a1, $a1, 0xf
	mult	$t5, $t5, $v1
	andi	$a3, $a3, 0xf
	mult1	$t1, $t1, $v1
	andi	$a2, $a2, 0xf
	mult1	$t2, $t2, $v1
	addu	$v0, $v0, $a1
	addu	$t3, $t3, $a3
	addu	$t0, $t0, $a2
	andi	$t7, $t7, 0xf
	andi	$t6, $t6, 0xf
	andi	$t4, $t4, 0xf
	addu	$t5, $t5, $t7
	addu	$t1, $t1, $t6
	addu	$t2, $t2, $t4
	addiu	$v0, $v0, 2000
	lw	$a2, 656($sp)
	lw	$a3, 660($sp)
	move	$a1, $sp
	sh	$v0, 30($sp)
	sb	$t5, 29($sp)
	sb	$t1, 28($sp)
	sb	$t2, 27($sp)
	sb	$t3, 26($sp)
	jal	sub_0011C478
	sb	$t0, 25($sp)
	bnez	$v0, lbl_0011DB84
	sw	$v0, 664($sp)
	jal	sub_0011A6E8
	move	$a0, $s3
	beqz	$v0, lbl_0011DB58
	sw	$v0, 668($sp)
	jal	sub_0011EB50
	move	$a0, $s3
	beqz	$v0, lbl_0011DB58
	sw	$v0, 668($sp)
	lw	$a1, 16($sp)
	lui	$v0, 0x16
lbl_0011D8C4:
	sw	$s7, 672($sp)
	move	$s1, $a1
	addiu	$s8, $v0, -17024
	move	$s6, $s4
	move	$s5, $s2
lbl_0011D8D8:
	slti	$v0, $s2, 1024
	beqz	$v0, lbl_0011D9D0
	move	$s4, $s1
	bgtz	$s2, lbl_0011D908
	lui	$v0, 0x16
	addu	$v0, $s2, $s7
	slti	$v0, $v0, 1024
	beqz	$v0, lbl_0011D924
	lw	$v0, 4($sp)
	slt	$v0, $s5, $v0
	beqz	$v0, lbl_0011D924
	lui	$v0, 0x16
lbl_0011D908:
	move	$a0, $s3
	addiu	$a1, $v0, -17024
	move	$a2, $s1
	jal	sub_0011F098
	li	$a3, 1
	beqz	$v0, lbl_0011DB58
	sw	$v0, 668($sp)
lbl_0011D924:
	li	$v0, 1024
	subu	$a2, $v0, $s2
	slt	$v1, $a2, $s7
	bnez	$v1, lbl_0011D98C
	addu	$a0, $s2, $s8
	move	$a1, $s6
	jal	sub_0012515C
	move	$a2, $s7
	move	$a1, $s8
	move	$a2, $s1
	move	$a0, $s3
	jal	sub_0011F0B8
	li	$a3, 1
	beqz	$v0, lbl_0011DB58
	sw	$v0, 668($sp)
	addiu	$s1, $sp, 640
	move	$a0, $s3
	move	$a1, $s1
	jal	sub_0011FB98
	addu	$s5, $s5, $s7
	lw	$v1, 4($sp)
	slt	$v1, $v1, $s5
	bnezl	$v1, lbl_0011DA70
	sw	$s5, 4($sp)
	b	lbl_0011DA74
	lbu	$a1, 647($sp)
lbl_0011D98C:
	jal	sub_0012515C
	move	$a1, $s6
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s1
	jal	sub_0011F0B8
	li	$a3, 1
	beqz	$v0, lbl_0011DB58
	sw	$v0, 668($sp)
	addiu	$v0, $s5, 1024
	addiu	$a0, $s6, 1024
	addiu	$v1, $s7, -1024
	subu	$s5, $v0, $s2
	addu	$s7, $v1, $s2
	subu	$s6, $a0, $s2
	move	$s2, $zero
	move	$s4, $s1
lbl_0011D9D0:
	move	$a0, $s3
	move	$a1, $s4
	jal	sub_0011A890
	addiu	$a2, $sp, 668
	lw	$v1, 668($sp)
	bnez	$v1, lbl_0011D7A0
	move	$s1, $v0
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	bne	$s1, $v0, lbl_0011DA5C
	lui	$v0, 0x7fff
	addiu	$s0, $sp, 664
	move	$a0, $s3
	jal	sub_0011AA70
	move	$a1, $s0
	lw	$v1, 664($sp)
	bnez	$v1, lbl_0011D7A0
	move	$s1, $v0
	move	$a0, $s3
	move	$a1, $s1
	li	$a2, -1
	jal	sub_0011A940
	move	$a3, $s0
	lw	$v0, 664($sp)
	bnez	$v0, lbl_0011DB84
	move	$a1, $s4
	lui	$a2, 0x8000
	or	$a2, $s1, $a2
	move	$a3, $s0
	jal	sub_0011A940
	move	$a0, $s3
	lw	$v0, 664($sp)
	bnez	$v0, lbl_0011DB88
	ld	$ra, 832($sp)
	lui	$v0, 0x7fff
lbl_0011DA5C:
	addiu	$v1, $s2, -1024
	ori	$v0, $v0, 0xffff
	movn	$s2, $v1, $s2
	b	lbl_0011D8D8
	and	$s1, $s1, $v0
lbl_0011DA70:
	lbu	$a1, 647($sp)
lbl_0011DA74:
	li	$v1, 10
	lbu	$a3, 642($sp)
	move	$a0, $s3
	lbu	$a2, 641($sp)
	srl	$v0, $a1, 0x4
	lbu	$s0, 646($sp)
	srl	$t6, $a3, 0x4
	lbu	$t3, 645($sp)
	srl	$t1, $a2, 0x4
	lbu	$t2, 643($sp)
	srl	$t7, $s0, 0x4
	srl	$t4, $t3, 0x4
	mult	$v0, $v0, $v1
	srl	$t5, $t2, 0x4
	mult	$t1, $t1, $v1
	mult	$t6, $t6, $v1
	andi	$a1, $a1, 0xf
	mult	$t7, $t7, $v1
	lhu	$t0, 0($sp)
	mult1	$t4, $t4, $v1
	andi	$a3, $a3, 0xf
	mult1	$t5, $t5, $v1
	andi	$a2, $a2, 0xf
	addu	$v0, $v0, $a1
	addu	$t6, $t6, $a3
	addu	$t1, $t1, $a2
	andi	$s0, $s0, 0xf
	andi	$t3, $t3, 0xf
	andi	$t2, $t2, 0xf
	addu	$t7, $t7, $s0
	addu	$t4, $t4, $t3
	addu	$t5, $t5, $t2
	ori	$t0, $t0, 0x80
	addiu	$v0, $v0, 2000
	lw	$a2, 656($sp)
	lw	$a3, 660($sp)
	move	$a1, $sp
	sh	$t0, 0($sp)
	sh	$v0, 30($sp)
	sb	$t7, 29($sp)
	sb	$t4, 28($sp)
	sb	$t5, 27($sp)
	sb	$t6, 26($sp)
	jal	sub_0011C478
	sb	$t1, 25($sp)
	bnez	$v0, lbl_0011DB84
	sw	$v0, 664($sp)
	lw	$a1, 656($sp)
	move	$a2, $s1
	jal	sub_0011CC20
	move	$a0, $s3
	bnez	$v0, lbl_0011DB84
	sw	$v0, 664($sp)
	jal	sub_0011A6E8
	move	$a0, $s3
	bnez	$v0, lbl_0011DB64
	sw	$v0, 668($sp)
lbl_0011DB58:
	lui	$v0, 0x8101
	b	lbl_0011DB84
	ori	$v0, $v0, 0x6f
lbl_0011DB64:
	jal	sub_0011EB50
	move	$a0, $s3
	lui	$v1, 0x8101
	lw	$a0, 672($sp)
	ori	$v1, $v1, 0x6f
	sw	$v0, 668($sp)
	movz	$a0, $v1, $v0
	move	$v0, $a0
lbl_0011DB84:
	ld	$ra, 832($sp)
lbl_0011DB88:
	ld	$s8, 816($sp)
	ld	$s7, 800($sp)
	ld	$s6, 784($sp)
	ld	$s5, 768($sp)
	ld	$s4, 752($sp)
	ld	$s3, 736($sp)
	ld	$s2, 720($sp)
	ld	$s1, 704($sp)
	ld	$s0, 688($sp)
	jr	$ra
	addiu	$sp, $sp, 848
	nop

sub_0011DBB8:
	addiu	$sp, $sp, -880
	sd	$s3, 848($sp)
	sd	$s0, 800($sp)
	move	$s3, $a0
	sd	$ra, 864($sp)
	move	$s0, $a1
	sd	$s2, 832($sp)
	jal	sub_0011BCA8
	sd	$s1, 816($sp)
	move	$v1, $v0
	bnez	$v1, lbl_0011DDCC
	sw	$v0, 796($sp)
	addiu	$s1, $sp, 528
	move	$a1, $s0
	move	$a0, $s3
	jal	sub_0011BD50
	move	$a2, $s1
	move	$v1, $v0
	bnez	$v1, lbl_0011DDCC
	sw	$v0, 796($sp)
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $sp
	addiu	$a3, $sp, 784
	jal	sub_0011C028
	addiu	$t0, $sp, 788
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x11
	bne	$a0, $v1, lbl_0011DDCC
	sw	$v0, 796($sp)
	lhu	$v1, 0($sp)
	andi	$v0, $v1, 0x2
	bnezl	$v0, lbl_0011DC50
	andi	$v0, $v1, 0x20
	lui	$v0, 0x8101
	b	lbl_0011DDCC
	ori	$v0, $v0, 0xd
lbl_0011DC50:
	beqz	$v0, lbl_0011DCB8
	addiu	$s0, $sp, 656
	move	$a1, $s1
	jal	sub_00125EF0
	move	$a0, $s0
	lui	$a1, 0x13
	move	$a0, $s0
	jal	sub_00125AF0
	addiu	$a1, $a1, 23024
	move	$a1, $s0
	move	$a0, $s3
	move	$a2, $zero
	li	$a3, -1
	move	$t0, $zero
	jal	sub_0011DF10
	addiu	$t1, $sp, 792
	move	$v1, $v0
	bnez	$v1, lbl_0011DDCC
	sw	$v0, 796($sp)
	lw	$v0, 792($sp)
	slti	$v0, $v0, 3
	bnez	$v0, lbl_0011DCB8
	lhu	$v1, 0($sp)
	lui	$v0, 0x8101
	b	lbl_0011DDCC
	ori	$v0, $v0, 0x5a
lbl_0011DCB8:
	xori	$v0, $v1, 0x8000
	lw	$a2, 784($sp)
	lw	$a3, 788($sp)
	move	$a0, $s3
	sh	$v0, 0($sp)
	jal	sub_0011C478
	move	$a1, $sp
	move	$v1, $v0
	bnez	$v1, lbl_0011DDCC
	sw	$v0, 796($sp)
	jal	sub_0011EB50
	move	$a0, $s3
	beqz	$v0, lbl_0011DDA0
	lw	$a2, 16($sp)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	bne	$a2, $v0, lbl_0011DD08
	move	$s0, $a2
	b	lbl_0011DDCC
	move	$v0, $zero
lbl_0011DD08:
	b	lbl_0011DD44
	addiu	$s2, $sp, 796
lbl_0011DD10:
	xor	$a2, $s0, $v0
	move	$a0, $s3
	jal	sub_0011A940
	move	$a3, $s2
	lw	$v0, 796($sp)
	bnez	$v0, lbl_0011DDD0
	ld	$ra, 864($sp)
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
	beq	$s0, $v0, lbl_0011DD80
	lui	$v0, 0x7fff
	ori	$v0, $v0, 0xffff
	and	$s0, $s0, $v0
lbl_0011DD44:
	move	$s1, $s0
	move	$a0, $s3
	move	$a1, $s1
	jal	sub_0011A890
	move	$a2, $s2
	lw	$v1, 796($sp)
	bnez	$v1, lbl_0011DDAC
	move	$s0, $v0
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xfffd
	beq	$s0, $v0, lbl_0011DD80
	nop
	lui	$v0, 0x8000
	bltz	$s0, lbl_0011DD10
	move	$a1, $s1
lbl_0011DD80:
	jal	sub_0011A6E8
	move	$a0, $s3
	beqz	$v0, lbl_0011DDA0
	nop
	jal	sub_0011EB50
	move	$a0, $s3
	bnez	$v0, lbl_0011DDB4
	li	$a0, 2200
lbl_0011DDA0:
	lui	$v0, 0x8101
	b	lbl_0011DDCC
	ori	$v0, $v0, 0x6f
lbl_0011DDAC:
	b	lbl_0011DDCC
	move	$v0, $v1
lbl_0011DDB4:
	lui	$v1, 0x16
	mult	$a0, $s3, $a0
	addiu	$v1, $v1, -21432
	move	$v0, $zero
	addu	$v1, $v1, $a0
	sw	$zero, 2192($v1)
lbl_0011DDCC:
	ld	$ra, 864($sp)
lbl_0011DDD0:
	ld	$s3, 848($sp)
	ld	$s2, 832($sp)
	ld	$s1, 816($sp)
	ld	$s0, 800($sp)
	jr	$ra
	addiu	$sp, $sp, 880

sub_0011DDE8:
	addiu	$sp, $sp, -736
	sd	$s3, 688($sp)
	sd	$s2, 672($sp)
	move	$s3, $a2
	sd	$s1, 656($sp)
	move	$s2, $a0
	addiu	$s1, $sp, 512
	move	$a2, $s1
	sd	$ra, 720($sp)
	sd	$s4, 704($sp)
	jal	sub_0011BD50
	sd	$s0, 640($sp)
	bnez	$v0, lbl_0011DEF0
	ld	$ra, 720($sp)
	lui	$v0, 0x13
	move	$a0, $s1
	addiu	$s4, $v0, 22936
	jal	sub_00125DAC
	move	$a1, $s4
	bnez	$v0, lbl_0011DE5C
	li	$v0, 2200
	lui	$a0, 0x16
	mult	$v0, $s2, $v0
	addiu	$a0, $a0, -19376
	move	$a1, $s1
	jal	sub_00125EF0
	addu	$a0, $v0, $a0
	b	lbl_0011DED8
	nop
lbl_0011DE5C:
	jal	sub_0011BCA8
	move	$a0, $s2
	bnez	$v0, lbl_0011DEF0
	ld	$ra, 720($sp)
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $sp
	move	$a3, $zero
	jal	sub_0011C028
	move	$t0, $zero
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x11
	bne	$v0, $v1, lbl_0011DEF0
	ld	$ra, 720($sp)
	lhu	$v0, 0($sp)
	andi	$v0, $v0, 0x20
	bnez	$v0, lbl_0011DEB0
	li	$s0, 2200
	lui	$v0, 0x8101
	b	lbl_0011DEF0
	ori	$v0, $v0, 0x14
lbl_0011DEB0:
	lui	$v0, 0x16
	mult	$s0, $s2, $s0
	addiu	$v0, $v0, -19376
	move	$a1, $s1
	addu	$s0, $s0, $v0
	jal	sub_00125EF0
	move	$a0, $s0
	move	$a0, $s0
	jal	sub_00125AF0
	move	$a1, $s4
lbl_0011DED8:
	beqz	$s3, lbl_0011DEE8
	move	$a0, $s3
	jal	sub_00125EF0
	move	$a1, $s1
lbl_0011DEE8:
	move	$v0, $zero
	ld	$ra, 720($sp)
lbl_0011DEF0:
	ld	$s4, 704($sp)
	ld	$s3, 688($sp)
	ld	$s2, 672($sp)
	ld	$s1, 656($sp)
	ld	$s0, 640($sp)
	jr	$ra
	addiu	$sp, $sp, 736
	nop

sub_0011DF10:
	addiu	$sp, $sp, -1536
	sd	$s6, 1472($sp)
	sd	$s7, 1488($sp)
	move	$s6, $a0
	sd	$s1, 1392($sp)
	move	$s7, $a2
	sd	$s0, 1376($sp)
	move	$s1, $t0
	sd	$ra, 1520($sp)
	move	$s0, $a1
	sd	$s8, 1504($sp)
	sd	$s5, 1456($sp)
	sd	$s4, 1440($sp)
	sd	$s3, 1424($sp)
	sd	$s2, 1408($sp)
	sw	$a3, 1348($sp)
	sw	$t1, 1352($sp)
	jal	sub_00120250
	sw	$zero, 1356($sp)
	bnez	$v0, lbl_0011DF70
	li	$v1, 2200
	lui	$v0, 0x8101
	b	lbl_0011E3FC
	ori	$v0, $v0, 0x13
lbl_0011DF70:
	lui	$v0, 0x16
	mult	$v1, $s6, $v1
	addiu	$v0, $v0, -21432
	addu	$v0, $v0, $v1
	lw	$a0, 2188($v0)
	beqz	$a0, lbl_0011E1AC
	move	$a1, $s0
	move	$a0, $s6
	jal	sub_0011A378
	move	$a2, $sp
	beqz	$v0, lbl_0011DFB8
	move	$a0, $sp
	lui	$v0, 0x13
	addiu	$s2, $v0, 22936
	jal	sub_00125DAC
	move	$a1, $s2
	bnez	$v0, lbl_0011DFC4
	addiu	$s0, $sp, 128
lbl_0011DFB8:
	lui	$v0, 0x8101
	b	lbl_0011E3FC
	ori	$v0, $v0, 0x16
lbl_0011DFC4:
	move	$a1, $sp
	jal	sub_00125EF0
	move	$a0, $s0
	move	$a0, $s0
	jal	sub_001264B8
	li	$a1, 47
	addiu	$v1, $sp, 256
	move	$a0, $s0
	sw	$v1, 1360($sp)
	jal	sub_00126004
	sb	$zero, 0($v0)
	addiu	$v0, $v0, 1
	lw	$a0, 1360($sp)
	jal	sub_00125EF0
	addu	$a1, $s0, $v0
	jal	sub_00126004
	move	$a0, $s0
	bnez	$v0, lbl_0011E02C
	move	$a1, $s0
	move	$a1, $s2
	move	$a0, $s6
	addiu	$a2, $sp, 832
	move	$a3, $zero
	move	$t0, $zero
	b	lbl_0011E040
	li	$s0, 1
lbl_0011E02C:
	move	$a0, $s6
	addiu	$a2, $sp, 832
	move	$a3, $zero
	move	$t0, $zero
	move	$s0, $zero
lbl_0011E040:
	jal	sub_0011C028
	nop
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x11
	bne	$a0, $v1, lbl_0011E3FC
	sw	$v0, 1344($sp)
	lhu	$v0, 832($sp)
	andi	$v0, $v0, 0x20
	bnez	$v0, lbl_0011E078
	addiu	$a1, $sp, 320
	lui	$v0, 0x8101
	b	lbl_0011E3FC
	ori	$v0, $v0, 0x14
lbl_0011E078:
	lw	$a2, 848($sp)
	sw	$a1, 1364($sp)
	move	$a0, $s6
	jal	sub_0011AC78
	move	$a3, $zero
	move	$v1, $v0
	bnez	$v1, lbl_0011E0DC
	sw	$v0, 1344($sp)
	lhu	$v0, 320($sp)
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011E3B8
	addiu	$s3, $sp, 384
	lui	$a2, 0x13
	move	$a0, $s3
	jal	sub_00125DAC
	addiu	$a1, $a2, 22912
	bnez	$v0, lbl_0011E3B8
	lw	$a2, 848($sp)
	move	$a0, $s6
	lw	$a1, 1364($sp)
	jal	sub_0011AC78
	li	$a3, 1
	move	$v1, $v0
	beqz	$v1, lbl_0011E100
	sw	$v0, 1344($sp)
lbl_0011E0DC:
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x2
	bnel	$v1, $v0, lbl_0011E3FC
	lw	$v0, 1344($sp)
	lui	$v0, 0x8101
	ori	$v0, $v0, 0x9002
	sw	$v0, 1344($sp)
	b	lbl_0011E3FC
	lw	$v0, 1344($sp)
lbl_0011E100:
	lhu	$v0, 320($sp)
	andi	$v0, $v0, 0x8000
	beqz	$v0, lbl_0011E3B8
	lui	$a3, 0x13
	move	$a0, $s3
	jal	sub_00125DAC
	addiu	$a1, $a3, 22920
	bnez	$v0, lbl_0011E3B8
	lw	$v1, 836($sp)
	slti	$v0, $v1, 2
	bnez	$v0, lbl_0011E3B8
	nop
	slt	$v0, $s7, $v1
	bnez	$v0, lbl_0011E150
	move	$s8, $zero
	lw	$t0, 1352($sp)
	bnezl	$t0, lbl_0011E3F8
	sw	$zero, 0($t0)
	b	lbl_0011E3FC
	move	$v0, $zero
lbl_0011E150:
	beqz	$s0, lbl_0011E3E0
	lw	$s4, 848($sp)
	addiu	$v0, $v1, -2
	bnez	$v0, lbl_0011E178
	sw	$v0, 836($sp)
	lw	$t1, 1352($sp)
	bnezl	$t1, lbl_0011E3F8
	sw	$zero, 0($t1)
	b	lbl_0011E3FC
	move	$v0, $zero
lbl_0011E178:
	move	$a1, $s4
	move	$a0, $s6
	jal	sub_0011A8D8
	addiu	$a2, $sp, 1344
	lui	$v1, 0x8101
	lw	$a0, 1344($sp)
	ori	$v1, $v1, 0x59
	beq	$a0, $v1, lbl_0011E3B8
	move	$s4, $v0
	beqz	$a0, lbl_0011E3E4
	lw	$v0, 836($sp)
lbl_0011E1A4:
	b	lbl_0011E3FC
	move	$v0, $a0
lbl_0011E1AC:
	lui	$v0, 0x8101
	b	lbl_0011E3FC
	ori	$v0, $v0, 0x6f
lbl_0011E1B8:
	move	$a0, $s6
	addiu	$s0, $v0, -17024
	move	$a2, $s4
	move	$a1, $s0
	jal	sub_0011F098
	li	$a3, 1
	beqz	$v0, lbl_0011E1AC
	move	$s2, $s0
	move	$s5, $zero
	addiu	$s0, $s0, 512
lbl_0011E1E0:
	lw	$a0, 1364($sp)
	andi	$v0, $s2, 0x7
	beqz	$v0, lbl_0011E250
	move	$v1, $s2
	move	$v0, $s0
lbl_0011E1F4:
	ldl	$a1, 7($v1)
	ldr	$a1, 0($v1)
	ldl	$a2, 15($v1)
	ldr	$a2, 8($v1)
	ldl	$a3, 23($v1)
	ldr	$a3, 16($v1)
	ldl	$t0, 31($v1)
	ldr	$t0, 24($v1)
	sdl	$a1, 7($a0)
	sdr	$a1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$a3, 23($a0)
	sdr	$a3, 16($a0)
	sdl	$t0, 31($a0)
	sdr	$t0, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011E1F4
	nop
	b	lbl_0011E28C
	lhu	$v1, 320($sp)
lbl_0011E250:
	move	$v0, $s0
lbl_0011E254:
	ld	$t1, 0($v1)
	ld	$a1, 8($v1)
	ld	$a2, 16($v1)
	ld	$a3, 24($v1)
	sd	$t1, 0($a0)
	sd	$a1, 8($a0)
	sd	$a2, 16($a0)
	sd	$a3, 24($a0)
	addiu	$v1, $v1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$v1, $v0, lbl_0011E254
	nop
	lhu	$v1, 320($sp)
lbl_0011E28C:
	andi	$v0, $v1, 0x8000
	beqz	$v0, lbl_0011E364
	sb	$zero, 415($sp)
	andi	$v0, $v1, 0x2000
	bnez	$v0, lbl_0011E368
	lw	$v0, 836($sp)
	lw	$a1, 1360($sp)
	jal	sub_0011A090
	addiu	$a0, $sp, 384
	li	$v1, 1
	bnel	$v0, $v1, lbl_0011E368
	lw	$v0, 836($sp)
	bnezl	$s7, lbl_0011E364
	addiu	$s7, $s7, -1
	beqz	$s1, lbl_0011E340
	lw	$t0, 1348($sp)
	blez	$t0, lbl_0011E340
	lw	$v1, 324($sp)
	addiu	$a0, $s1, 24
	lhu	$v0, 320($sp)
	move	$a1, $s3
	ldl	$t1, 335($sp)
	ldr	$t1, 328($sp)
	sdl	$t1, 7($s1)
	sdr	$t1, 0($s1)
	ldl	$t1, 351($sp)
	ldr	$t1, 344($sp)
	sdl	$t1, 15($s1)
	sdr	$t1, 8($s1)
	sw	$v1, 16($s1)
	jal	sub_00125EF0
	sh	$v0, 20($s1)
	lui	$t1, 0x13
	move	$a0, $s3
	jal	sub_00125DAC
	addiu	$a1, $t1, 22912
	bnez	$v0, lbl_0011E330
	lui	$v0, 0x13
	lhu	$v0, 832($sp)
	sh	$v0, 20($s1)
	lui	$v0, 0x13
lbl_0011E330:
	move	$a0, $s3
	addiu	$a1, $v0, 22920
	jal	sub_00125DAC
	addiu	$s1, $s1, 56
lbl_0011E340:
	lw	$v1, 1348($sp)
	blez	$v1, lbl_0011E364
	addiu	$s8, $s8, 1
	slt	$v0, $s8, $v1
	bnez	$v0, lbl_0011E368
	lw	$v0, 836($sp)
	li	$a1, 1
	b	lbl_0011E388
	sw	$a1, 1356($sp)
lbl_0011E364:
	lw	$v0, 836($sp)
lbl_0011E368:
	addiu	$v0, $v0, -1
	beqz	$v0, lbl_0011E3C4
	sw	$v0, 836($sp)
	addiu	$s5, $s5, 1
	addiu	$s0, $s0, 512
	slti	$v0, $s5, 2
	bnez	$v0, lbl_0011E1E0
	addiu	$s2, $s2, 512
lbl_0011E388:
	lw	$a2, 1356($sp)
	li	$v0, 1
	beq	$a2, $v0, lbl_0011E3EC
	move	$a1, $s4
	move	$a0, $s6
	jal	sub_0011A8D8
	addiu	$a2, $sp, 1344
	lui	$v1, 0x8101
	lw	$a0, 1344($sp)
	ori	$v1, $v1, 0x59
	bne	$a0, $v1, lbl_0011E3D0
	move	$s4, $v0
lbl_0011E3B8:
	lui	$v0, 0x8101
	b	lbl_0011E3FC
	ori	$v0, $v0, 0x9002
lbl_0011E3C4:
	li	$a3, 1
	b	lbl_0011E388
	sw	$a3, 1356($sp)
lbl_0011E3D0:
	bnez	$a0, lbl_0011E1A4
	lw	$t0, 1356($sp)
	bnez	$t0, lbl_0011E3F0
	lw	$t1, 1352($sp)
lbl_0011E3E0:
	lw	$v0, 836($sp)
lbl_0011E3E4:
	bnez	$v0, lbl_0011E1B8
	lui	$v0, 0x16
lbl_0011E3EC:
	lw	$t1, 1352($sp)
lbl_0011E3F0:
	bnezl	$t1, lbl_0011E3F8
	sw	$s8, 0($t1)
lbl_0011E3F8:
	move	$v0, $zero
lbl_0011E3FC:
	ld	$ra, 1520($sp)
	ld	$s8, 1504($sp)
	ld	$s7, 1488($sp)
	ld	$s6, 1472($sp)
	ld	$s5, 1456($sp)
	ld	$s4, 1440($sp)
	ld	$s3, 1424($sp)
	ld	$s2, 1408($sp)
	ld	$s1, 1392($sp)
	ld	$s0, 1376($sp)
	jr	$ra
	addiu	$sp, $sp, 1536
	nop

sub_0011E430:
	addiu	$sp, $sp, -736
	sd	$s1, 688($sp)
	move	$s1, $a0
	sd	$s2, 704($sp)
	sd	$s0, 672($sp)
	andi	$s2, $a2, 0xffff
	sd	$ra, 720($sp)
	jal	sub_0011BCA8
	move	$s0, $a1
	bnez	$v0, lbl_0011E5A4
	ld	$ra, 720($sp)
	move	$a1, $s0
	move	$a0, $s1
	jal	sub_0011BD50
	move	$a2, $sp
	bnez	$v0, lbl_0011E5A4
	ld	$ra, 720($sp)
	addiu	$s0, $sp, 128
	move	$a0, $s1
	move	$a1, $sp
	move	$a2, $s0
	addiu	$a3, $sp, 656
	jal	sub_0011C028
	addiu	$t0, $sp, 660
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x11
	bne	$v0, $v1, lbl_0011E5A4
	ld	$ra, 720($sp)
	lhu	$v1, 128($sp)
	andi	$v0, $v1, 0x20
	bnezl	$v0, lbl_0011E4BC
	andi	$v0, $v1, 0xe7f0
	lui	$v0, 0x8101
	b	lbl_0011E5A4
	ori	$v0, $v0, 0x14
lbl_0011E4BC:
	move	$a0, $s1
	andi	$v1, $s2, 0x180f
	addiu	$a1, $sp, 640
	or	$v0, $v0, $v1
	jal	sub_0011FB98
	sh	$v0, 128($sp)
	lbu	$a0, 647($sp)
	li	$v1, 10
	lbu	$a3, 642($sp)
	move	$a1, $s0
	lbu	$a2, 641($sp)
	srl	$v0, $a0, 0x4
	lbu	$t7, 646($sp)
	srl	$t3, $a3, 0x4
	lbu	$t6, 645($sp)
	srl	$t0, $a2, 0x4
	lbu	$t4, 643($sp)
	srl	$t5, $t7, 0x4
	srl	$t1, $t6, 0x4
	mult	$v0, $v0, $v1
	srl	$t2, $t4, 0x4
	mult	$t0, $t0, $v1
	mult	$t3, $t3, $v1
	andi	$a0, $a0, 0xf
	mult	$t5, $t5, $v1
	andi	$a3, $a3, 0xf
	mult1	$t1, $t1, $v1
	andi	$a2, $a2, 0xf
	mult1	$t2, $t2, $v1
	addu	$v0, $v0, $a0
	addu	$t3, $t3, $a3
	addu	$t0, $t0, $a2
	andi	$t7, $t7, 0xf
	andi	$t6, $t6, 0xf
	andi	$t4, $t4, 0xf
	addu	$t5, $t5, $t7
	addu	$t1, $t1, $t6
	addu	$t2, $t2, $t4
	addiu	$v0, $v0, 2000
	lw	$a2, 656($sp)
	lw	$a3, 660($sp)
	move	$a0, $s1
	sh	$v0, 158($sp)
	sb	$t5, 157($sp)
	sb	$t1, 156($sp)
	sb	$t2, 155($sp)
	sb	$t3, 154($sp)
	jal	sub_0011C478
	sb	$t0, 153($sp)
	bnez	$v0, lbl_0011E5A4
	ld	$ra, 720($sp)
	jal	sub_0011EB50
	move	$a0, $s1
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x6f
	movn	$v1, $zero, $v0
	move	$v0, $v1
	ld	$ra, 720($sp)
lbl_0011E5A4:
	ld	$s2, 704($sp)
	ld	$s1, 688($sp)
	ld	$s0, 672($sp)
	jr	$ra
	addiu	$sp, $sp, 736

sub_0011E5B8:
	addiu	$sp, $sp, -896
	sd	$s4, 848($sp)
	move	$s4, $a0
	sd	$s1, 800($sp)
	sd	$s0, 784($sp)
	move	$s1, $a2
	move	$s0, $a1
	sd	$ra, 880($sp)
	sd	$s5, 864($sp)
	sd	$s3, 832($sp)
	jal	sub_0011BCA8
	sd	$s2, 816($sp)
	bnez	$v0, lbl_0011E714
	ld	$ra, 880($sp)
	addiu	$s5, $sp, 512
	move	$a1, $s0
	move	$a0, $s4
	jal	sub_0011BD50
	move	$a2, $s5
	bnez	$v0, lbl_0011E714
	ld	$ra, 880($sp)
	move	$a0, $s1
	jal	sub_00125C1C
	li	$a1, 47
	bnez	$v0, lbl_0011E654
	addiu	$s0, $sp, 640
	move	$a1, $s5
	jal	sub_00125EF0
	move	$a0, $s0
	move	$a0, $s0
	jal	sub_001264B8
	li	$a1, 47
	addiu	$a0, $v0, 1
	jal	sub_00125EF0
	move	$a1, $s1
	jal	sub_00119F80
	move	$a0, $s1
	bnez	$v0, lbl_0011E660
	nop
lbl_0011E654:
	lui	$v0, 0x8101
	b	lbl_0011E710
	ori	$v0, $v0, 0x16
lbl_0011E660:
	jal	sub_00119F10
	move	$a0, $s1
	bnez	$v0, lbl_0011E67C
	addiu	$s2, $sp, 768
	lui	$v0, 0x8101
	b	lbl_0011E710
	ori	$v0, $v0, 0x5b
lbl_0011E67C:
	addiu	$s3, $sp, 772
	move	$a1, $s0
	move	$a0, $s4
	move	$a2, $sp
	move	$a3, $s2
	jal	sub_0011C028
	move	$t0, $s3
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x2
	bne	$v0, $v1, lbl_0011E714
	ld	$ra, 880($sp)
	move	$a1, $s5
	move	$a3, $s2
	move	$t0, $s3
	move	$a0, $s4
	jal	sub_0011C028
	move	$a2, $sp
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x11
	bne	$v0, $v1, lbl_0011E714
	ld	$ra, 880($sp)
	move	$a1, $s1
	jal	sub_00125EF0
	addiu	$a0, $sp, 64
	lw	$a2, 768($sp)
	move	$a0, $s4
	lw	$a3, 772($sp)
	jal	sub_0011C478
	move	$a1, $sp
	bnez	$v0, lbl_0011E714
	ld	$ra, 880($sp)
	jal	sub_0011EB50
	move	$a0, $s4
	lui	$v1, 0x8101
	ori	$v1, $v1, 0x6f
	movn	$v1, $zero, $v0
	move	$v0, $v1
lbl_0011E710:
	ld	$ra, 880($sp)
lbl_0011E714:
	ld	$s5, 864($sp)
	ld	$s4, 848($sp)
	ld	$s3, 832($sp)
	ld	$s2, 816($sp)
	ld	$s1, 800($sp)
	ld	$s0, 784($sp)
	jr	$ra
	addiu	$sp, $sp, 896
	nop

sub_0011E738:
	addiu	$sp, $sp, -720
	sd	$s1, 672($sp)
	sd	$s2, 688($sp)
	move	$s1, $a0
	sd	$ra, 704($sp)
	move	$s2, $a1
	jal	sub_0011BCA8
	sd	$s0, 656($sp)
	move	$v1, $v0
	bnez	$v1, lbl_0011E7E4
	sw	$v0, 640($sp)
	addiu	$s0, $sp, 512
	move	$a1, $s2
	move	$a0, $s1
	jal	sub_0011BD50
	move	$a2, $s0
	move	$v1, $v0
	bnez	$v1, lbl_0011E7E4
	sw	$v0, 640($sp)
	move	$a1, $s0
	move	$a0, $s1
	move	$a2, $sp
	move	$a3, $zero
	jal	sub_0011C028
	move	$t0, $zero
	lui	$v1, 0x8101
	move	$a0, $v0
	ori	$v1, $v1, 0x11
	bne	$a0, $v1, lbl_0011E7E4
	sw	$v0, 640($sp)
	lhu	$v0, 0($sp)
	andi	$v0, $v0, 0x20
	bnez	$v0, lbl_0011E7CC
	lw	$a1, 16($sp)
	lui	$v0, 0x8101
	b	lbl_0011E7E4
	ori	$v0, $v0, 0x14
lbl_0011E7CC:
	move	$a0, $s1
	lw	$a2, 4($sp)
	jal	sub_0011C620
	addiu	$a3, $sp, 640
	lw	$v1, 640($sp)
	movn	$v0, $v1, $v1
lbl_0011E7E4:
	ld	$ra, 704($sp)
	ld	$s2, 688($sp)
	ld	$s1, 672($sp)
	ld	$s0, 656($sp)
	jr	$ra
	addiu	$sp, $sp, 720
	nop

sub_0011E800:
	lui	$v0, 0x16
	li	$a1, -1
	addiu	$v1, $v0, -16000
	addiu	$a0, $v1, 16416
lbl_0011E810:
	sw	$a1, 0($v1)
	sw	$zero, 12($v1)
	addiu	$v1, $v1, 8208
	slt	$v0, $v1, $a0
	nop
	bnez	$v0, lbl_0011E810
	nop
	jr	$ra
	li	$v0, 1
	nop

sub_0011E838:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0011F5C0
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011E858:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0011F798
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011E878:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0011F970
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011E898:
	addiu	$sp, $sp, -48
	lui	$v0, 0x16
	sd	$s1, 16($sp)
	move	$a2, $zero
	sd	$s0, 0($sp)
	addiu	$s1, $v0, 448
	move	$s0, $a0
	sd	$ra, 32($sp)
	move	$a1, $s1
	li	$a3, 1
	jal	sub_0011FCA0
	move	$t0, $zero
	bnez	$v0, lbl_0011E8D8
	li	$a0, 388
	b	lbl_0011E998
	move	$v0, $zero
lbl_0011E8D8:
	lui	$v1, 0x13
	mult	$a0, $s0, $a0
	addiu	$v1, $v1, 9576
	move	$a1, $s1
	addu	$a0, $a0, $v1
	or	$v0, $a0, $a1
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011E958
	addiu	$v0, $a1, 384
lbl_0011E8FC:
	ldl	$v1, 7($a1)
	ldr	$v1, 0($a1)
	ldl	$a2, 15($a1)
	ldr	$a2, 8($a1)
	ldl	$a3, 23($a1)
	ldr	$a3, 16($a1)
	ldl	$t0, 31($a1)
	ldr	$t0, 24($a1)
	sdl	$v1, 7($a0)
	sdr	$v1, 0($a0)
	sdl	$a2, 15($a0)
	sdr	$a2, 8($a0)
	sdl	$a3, 23($a0)
	sdr	$a3, 16($a0)
	sdl	$t0, 31($a0)
	sdr	$t0, 24($a0)
	addiu	$a1, $a1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a1, $v0, lbl_0011E8FC
	nop
	b	lbl_0011E98C
	nop
lbl_0011E958:
	ld	$v1, 0($a1)
	ld	$a2, 8($a1)
	ld	$a3, 16($a1)
	ld	$t0, 24($a1)
	sd	$v1, 0($a0)
	sd	$a2, 8($a0)
	sd	$a3, 16($a0)
	sd	$t0, 24($a0)
	addiu	$a1, $a1, 32
	addiu	$a0, $a0, 32
	nop
	bne	$a1, $v0, lbl_0011E958
	nop
lbl_0011E98C:
	lw	$v0, 0($a1)
	sw	$v0, 0($a0)
	li	$v0, 1
lbl_0011E998:
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0011E9B0:
	addiu	$sp, $sp, -64
	li	$a1, 255
	sd	$s2, 32($sp)
	li	$a2, 2048
	sd	$s1, 16($sp)
	lui	$s2, 0x16
	sd	$s0, 0($sp)
	move	$s1, $a0
	addiu	$s0, $s2, 448
	sd	$ra, 48($sp)
	jal	sub_00125310
	move	$a0, $s0
	li	$a0, 388
	lui	$v1, 0x13
	mult	$a0, $s1, $a0
	addiu	$v1, $v1, 9576
	addu	$v1, $a0, $v1
	or	$v0, $v1, $s0
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011EA60
	addiu	$v0, $v1, 384
lbl_0011EA04:
	ldl	$a0, 7($v1)
	ldr	$a0, 0($v1)
	ldl	$a1, 15($v1)
	ldr	$a1, 8($v1)
	ldl	$a2, 23($v1)
	ldr	$a2, 16($v1)
	ldl	$a3, 31($v1)
	ldr	$a3, 24($v1)
	sdl	$a0, 7($s0)
	sdr	$a0, 0($s0)
	sdl	$a1, 15($s0)
	sdr	$a1, 8($s0)
	sdl	$a2, 23($s0)
	sdr	$a2, 16($s0)
	sdl	$a3, 31($s0)
	sdr	$a3, 24($s0)
	addiu	$v1, $v1, 32
	addiu	$s0, $s0, 32
	nop
	bne	$v1, $v0, lbl_0011EA04
	nop
	b	lbl_0011EA94
	nop
lbl_0011EA60:
	ld	$t0, 0($v1)
	ld	$t1, 8($v1)
	ld	$t2, 16($v1)
	ld	$a0, 24($v1)
	sd	$t0, 0($s0)
	sd	$t1, 8($s0)
	sd	$t2, 16($s0)
	sd	$a0, 24($s0)
	addiu	$v1, $v1, 32
	addiu	$s0, $s0, 32
	nop
	bne	$v1, $v0, lbl_0011EA60
	nop
lbl_0011EA94:
	lw	$t0, 0($v1)
	move	$a0, $s1
	addiu	$a1, $s2, 448
	sw	$t0, 0($s0)
	move	$a2, $zero
	jal	sub_0011FE58
	li	$a3, 1
	ld	$ra, 48($sp)
	sltu	$v0, $zero, $v0
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0011EAD0:
	li	$v1, 388
	addiu	$sp, $sp, -16
	mult	$v1, $a0, $v1
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	addiu	$v0, $v0, 9576
	addu	$v1, $v1, $v0
	lhu	$t0, 42($v1)
	mult	$t0, $a3
	mflo	$a3
	mult	$a2, $t0
	jal	sub_0011FE38
	mflo	$a2
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0011EB10:
	li	$v1, 388
	addiu	$sp, $sp, -16
	mult	$v1, $a0, $v1
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	addiu	$v0, $v0, 9576
	addu	$v1, $v1, $v0
	lhu	$t0, 42($v1)
	mult	$t0, $a3
	mflo	$a3
	mult	$a2, $t0
	jal	sub_0011FE58
	mflo	$a2
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0011EB50:
	li	$v0, 8208
	addiu	$sp, $sp, -64
	mult	$a3, $a0, $v0
	lui	$v1, 0x16
	sd	$s2, 32($sp)
	addiu	$v1, $v1, -16000
	sd	$s1, 16($sp)
	sd	$ra, 48($sp)
	li	$s2, -1
	sd	$s0, 0($sp)
	addu	$s1, $a3, $v1
	lw	$a2, 0($s1)
	beq	$a2, $s2, lbl_0011EBA8
	li	$v0, 1
	addiu	$s0, $v1, 12
	addiu	$a1, $v1, 16
	addu	$s0, $a3, $s0
	addu	$a1, $a3, $a1
	jal	sub_0011EB10
	lw	$a3, 0($s0)
	sw	$s2, 0($s1)
	sw	$zero, 0($s0)
lbl_0011EBA8:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0011EBC0:
	addiu	$sp, $sp, -96
	li	$v1, 388
	sd	$s3, 48($sp)
	li	$v0, 8208
	move	$s3, $a0
	sd	$s4, 64($sp)
	mult	$v1, $s3, $v1
	lui	$a0, 0x13
	sd	$s2, 32($sp)
	addiu	$a0, $a0, 9576
	sd	$s1, 16($sp)
	mult	$t0, $s3, $v0
	sd	$s0, 0($sp)
	move	$s1, $a1
	sd	$ra, 80($sp)
	addu	$v1, $v1, $a0
	lui	$s4, 0x16
	li	$a3, -1
	lw	$a1, 52($v1)
	addiu	$t1, $s4, -16000
	lhu	$a0, 42($v1)
	addu	$t2, $t0, $t1
	addu	$s0, $a2, $a1
	lhu	$v0, 44($v1)
	mult	$a0, $s0, $a0
	beqzl	$v0, lbl_0011EC2C
	break	0x7
lbl_0011EC2C:
	lw	$v1, 0($t2)
	div	$zero, $a0, $v0
	mflo	$s2
	bnel	$v1, $a3, lbl_0011ED20
	addiu	$v1, $t1, 4
	addiu	$v0, $t1, 16
	addu	$v1, $t1, $t0
	sw	$s0, 0($t2)
	addu	$a2, $t0, $v0
	sw	$s0, 4($v1)
	move	$v0, $v1
	sw	$s2, 8($v0)
	or	$v0, $s1, $a2
	sw	$zero, 12($v1)
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011ECD0
	move	$v1, $s1
	addiu	$v0, $s1, 1024
lbl_0011EC74:
	ldl	$a0, 7($v1)
	ldr	$a0, 0($v1)
	ldl	$a1, 15($v1)
	ldr	$a1, 8($v1)
	ldl	$a3, 23($v1)
	ldr	$a3, 16($v1)
	ldl	$t0, 31($v1)
	ldr	$t0, 24($v1)
	sdl	$a0, 7($a2)
	sdr	$a0, 0($a2)
	sdl	$a1, 15($a2)
	sdr	$a1, 8($a2)
	sdl	$a3, 23($a2)
	sdr	$a3, 16($a2)
	sdl	$t0, 31($a2)
	sdr	$t0, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $v0, lbl_0011EC74
	nop
	b	lbl_0011ED0C
	li	$a1, 8208
lbl_0011ECD0:
	addiu	$v0, $s1, 1024
lbl_0011ECD4:
	ld	$t1, 0($v1)
	ld	$a0, 8($v1)
	ld	$a1, 16($v1)
	ld	$a3, 24($v1)
	sd	$t1, 0($a2)
	sd	$a0, 8($a2)
	sd	$a1, 16($a2)
	sd	$a3, 24($a2)
	addiu	$v1, $v1, 32
	addiu	$a2, $a2, 32
	nop
	bne	$v1, $v0, lbl_0011ECD4
	nop
	li	$a1, 8208
lbl_0011ED0C:
	addiu	$a0, $s4, -16000
	mult	$a1, $s3, $a1
	addiu	$a0, $a0, 12
	b	lbl_0011EF24
	li	$v0, 1
lbl_0011ED20:
	addu	$a1, $t0, $v1
	lw	$v0, 0($a1)
	addiu	$v0, $v0, 1
	bne	$s0, $v0, lbl_0011EE28
	addiu	$v1, $t1, 12
	addu	$a0, $t0, $v1
	lw	$v0, 0($a0)
	slti	$v0, $v0, 8
	beqz	$v0, lbl_0011EE28
	addu	$v0, $t1, $t0
	lw	$v1, 8($v0)
	bne	$v1, $s2, lbl_0011EE28
	addiu	$v0, $t1, 16
	sw	$s0, 0($a1)
	lw	$v1, 0($a0)
	sll	$v1, $v1, 0xa
	addu	$v1, $t0, $v1
	addu	$v0, $v1, $v0
	or	$a0, $s1, $v0
	andi	$a0, $a0, 0x7
	beqz	$a0, lbl_0011EDD8
	move	$a2, $s1
	addiu	$a0, $s1, 1024
lbl_0011ED7C:
	ldl	$t0, 7($a2)
	ldr	$t0, 0($a2)
	ldl	$t1, 15($a2)
	ldr	$t1, 8($a2)
	ldl	$v1, 23($a2)
	ldr	$v1, 16($a2)
	ldl	$a1, 31($a2)
	ldr	$a1, 24($a2)
	sdl	$t0, 7($v0)
	sdr	$t0, 0($v0)
	sdl	$t1, 15($v0)
	sdr	$t1, 8($v0)
	sdl	$v1, 23($v0)
	sdr	$v1, 16($v0)
	sdl	$a1, 31($v0)
	sdr	$a1, 24($v0)
	addiu	$a2, $a2, 32
	addiu	$v0, $v0, 32
	nop
	bne	$a2, $a0, lbl_0011ED7C
	nop
	b	lbl_0011EE14
	li	$a1, 8208
lbl_0011EDD8:
	addiu	$a0, $s1, 1024
lbl_0011EDDC:
	ld	$a3, 0($a2)
	ld	$t0, 8($a2)
	ld	$t1, 16($a2)
	ld	$v1, 24($a2)
	sd	$a3, 0($v0)
	sd	$t0, 8($v0)
	sd	$t1, 16($v0)
	sd	$v1, 24($v0)
	addiu	$a2, $a2, 32
	addiu	$v0, $v0, 32
	nop
	bne	$a2, $a0, lbl_0011EDDC
	nop
	li	$a1, 8208
lbl_0011EE14:
	addiu	$a0, $s4, -16000
	mult	$a1, $s3, $a1
	addiu	$a0, $a0, 12
	b	lbl_0011EF24
	li	$v0, 1
lbl_0011EE28:
	jal	sub_0011EB50
	move	$a0, $s3
	li	$v1, 8208
	addiu	$a0, $s4, -16000
	mult	$v1, $s3, $v1
	move	$t0, $v0
	addiu	$a2, $a0, 16
	move	$a3, $s1
	addu	$v0, $v1, $a0
	addu	$a1, $a0, $v1
	sw	$s0, 0($v0)
	addu	$a2, $v1, $a2
	move	$v0, $a1
	sw	$s0, 4($a1)
	sw	$s2, 8($v0)
	move	$a0, $v0
	or	$v0, $a3, $a2
	andi	$v0, $v0, 0x7
	beqz	$v0, lbl_0011EED8
	sw	$zero, 12($a0)
	addiu	$v0, $a3, 1024
lbl_0011EE7C:
	ldl	$a0, 7($a3)
	ldr	$a0, 0($a3)
	ldl	$a1, 15($a3)
	ldr	$a1, 8($a3)
	ldl	$t1, 23($a3)
	ldr	$t1, 16($a3)
	ldl	$v1, 31($a3)
	ldr	$v1, 24($a3)
	sdl	$a0, 7($a2)
	sdr	$a0, 0($a2)
	sdl	$a1, 15($a2)
	sdr	$a1, 8($a2)
	sdl	$t1, 23($a2)
	sdr	$t1, 16($a2)
	sdl	$v1, 31($a2)
	sdr	$v1, 24($a2)
	addiu	$a3, $a3, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a3, $v0, lbl_0011EE7C
	nop
	b	lbl_0011EF14
	li	$a1, 8208
lbl_0011EED8:
	addiu	$v0, $a3, 1024
lbl_0011EEDC:
	ld	$a0, 0($a3)
	ld	$a1, 8($a3)
	ld	$t1, 16($a3)
	ld	$v1, 24($a3)
	sd	$a0, 0($a2)
	sd	$a1, 8($a2)
	sd	$t1, 16($a2)
	sd	$v1, 24($a2)
	addiu	$a3, $a3, 32
	addiu	$a2, $a2, 32
	nop
	bne	$a3, $v0, lbl_0011EEDC
	nop
	li	$a1, 8208
lbl_0011EF14:
	addiu	$a0, $s4, -16000
	mult	$a1, $s3, $a1
	addiu	$a0, $a0, 12
	move	$v0, $t0
lbl_0011EF24:
	addu	$a1, $a1, $a0
	lw	$v1, 0($a1)
	addiu	$v1, $v1, 1
	sw	$v1, 0($a1)
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_0011EF58:
	move	$a3, $a0
	li	$v0, 8208
	li	$a0, 388
	mult	$t0, $a3, $v0
	mult	$a0, $a3, $a0
	addiu	$sp, $sp, -16
	lui	$v1, 0x13
	sd	$ra, 0($sp)
	lui	$v0, 0x16
	addiu	$v1, $v1, 9576
	addiu	$t1, $v0, -16000
	move	$t2, $a1
	addu	$a0, $a0, $v1
	addu	$v0, $t0, $t1
	lw	$a1, 52($a0)
	lw	$a0, 0($v0)
	addu	$a2, $a2, $a1
	slt	$v0, $a2, $a0
	bnezl	$v0, lbl_0011F080
	move	$a0, $a3
	addu	$v1, $t1, $t0
	lw	$v0, 12($v1)
	addu	$v0, $a0, $v0
	slt	$v0, $a2, $v0
	beqz	$v0, lbl_0011F07C
	subu	$v0, $a2, $a0
	move	$a1, $t2
	sll	$v0, $v0, 0xa
	addiu	$a0, $t1, 16
	addu	$v0, $t0, $v0
	addu	$v0, $v0, $a0
	or	$v1, $v0, $a1
	andi	$v1, $v1, 0x7
	beqz	$v1, lbl_0011F040
	addiu	$v1, $v0, 1024
lbl_0011EFE4:
	ldl	$a0, 7($v0)
	ldr	$a0, 0($v0)
	ldl	$a2, 15($v0)
	ldr	$a2, 8($v0)
	ldl	$a3, 23($v0)
	ldr	$a3, 16($v0)
	ldl	$t0, 31($v0)
	ldr	$t0, 24($v0)
	sdl	$a0, 7($a1)
	sdr	$a0, 0($a1)
	sdl	$a2, 15($a1)
	sdr	$a2, 8($a1)
	sdl	$a3, 23($a1)
	sdr	$a3, 16($a1)
	sdl	$t0, 31($a1)
	sdr	$t0, 24($a1)
	addiu	$v0, $v0, 32
	addiu	$a1, $a1, 32
	nop
	bne	$v0, $v1, lbl_0011EFE4
	nop
	b	lbl_0011F08C
	li	$v0, 1
lbl_0011F040:
	ld	$a0, 0($v0)
	ld	$a2, 8($v0)
	ld	$a3, 16($v0)
	ld	$t0, 24($v0)
	sd	$a0, 0($a1)
	sd	$a2, 8($a1)
	sd	$a3, 16($a1)
	sd	$t0, 24($a1)
	addiu	$v0, $v0, 32
	addiu	$a1, $a1, 32
	nop
	bne	$v0, $v1, lbl_0011F040
	nop
	b	lbl_0011F08C
	li	$v0, 1
lbl_0011F07C:
	move	$a0, $a3
lbl_0011F080:
	move	$a1, $t2
	jal	sub_0011EAD0
	li	$a3, 1
lbl_0011F08C:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0011F098:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0011EF58
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011F0B8:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0011EBC0
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011F0D8:
	li	$v1, 388
	lui	$v0, 0x13
	mult	$a0, $a0, $v1
	addiu	$v0, $v0, 9576
	move	$v1, $zero
	addu	$a0, $a0, $v0
	addiu	$a0, $a0, 208
	nop
lbl_0011F0F8:
	lw	$v0, 0($a0)
	bne	$v0, $a1, lbl_0011F10C
	addiu	$v1, $v1, 1
	jr	$ra
	li	$v0, 1
lbl_0011F10C:
	slti	$v0, $v1, 32
	bnez	$v0, lbl_0011F0F8
	addiu	$a0, $a0, 4
	jr	$ra
	move	$v0, $zero

sub_0011F120:
	li	$v1, 388
	addiu	$sp, $sp, -16
	mult	$v1, $a0, $v1
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	addiu	$v0, $v0, 9576
	addu	$v1, $v1, $v0
	lhu	$a2, 42($v1)
	lhu	$v0, 44($v1)
	mult	$a1, $a1, $a2
	beqzl	$v0, lbl_0011F150
	break	0x7
lbl_0011F150:
	div	$zero, $a1, $v0
	jal	sub_0011F0D8
	mflo	$a1
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0011F168:
	addiu	$sp, $sp, -192
	lui	$v1, 0x16
	sd	$s8, 160($sp)
	sd	$s7, 144($sp)
	move	$s8, $zero
	sd	$s6, 128($sp)
	sd	$s5, 112($sp)
	addiu	$s6, $v1, 448
	sd	$s4, 96($sp)
	move	$s5, $a2
	sd	$s2, 64($sp)
	move	$s4, $a1
	sd	$ra, 176($sp)
	li	$s2, 1
	sd	$s3, 80($sp)
	sd	$s1, 48($sp)
	sd	$s0, 32($sp)
	lw	$v0, 4($s4)
	lw	$a1, 8($s4)
	beqzl	$v0, lbl_0011F1BC
	break	0x7
lbl_0011F1BC:
	div	$zero, $a1, $v0
	mflo	$s7
	slt	$v0, $s2, $s7
	beqz	$v0, lbl_0011F2A8
	sw	$a0, 0($sp)
	lui	$s3, 0xffff
	li	$t1, 2048
	ori	$s3, $s3, 0xffff
	slti	$v0, $s8, 16
lbl_0011F1E0:
	beqz	$v0, lbl_0011F2A8
	move	$a1, $s6
	lw	$v0, 0($s4)
	lw	$a2, 4($s4)
	move	$t0, $zero
	divu	$zero, $t1, $v0
	beqzl	$v0, lbl_0011F200
	break	0x7
lbl_0011F200:
	lw	$a0, 0($sp)
	move	$s1, $zero
	sq	$t1, 16($sp)
	mflo	$v1
	mult	$s2, $a2
	move	$s0, $v1
	mflo	$a2
	jal	sub_0011FCA0
	move	$a3, $s0
	lw	$a2, 0($s4)
	move	$a1, $zero
	mult	$v0, $a2, $s0
	srl	$v0, $v0, 0x2
	beqz	$v0, lbl_0011F280
	lq	$t1, 16($sp)
	lw	$v0, 0($s6)
	beq	$v0, $s3, lbl_0011F250
	addiu	$a0, $s2, 1
	b	lbl_0011F284
	li	$s1, 1
lbl_0011F250:
	mult	$v0, $a2, $s0
lbl_0011F254:
	addiu	$a1, $a1, 1
	srl	$v0, $v0, 0x2
	sltu	$v0, $a1, $v0
	beqz	$v0, lbl_0011F284
	sll	$v0, $a1, 0x2
	addu	$v0, $v0, $s6
	lw	$v1, 0($v0)
	beq	$v1, $s3, lbl_0011F254
	mult	$v0, $a2, $s0
	b	lbl_0011F284
	li	$s1, 1
lbl_0011F280:
	addiu	$a0, $s2, 1
lbl_0011F284:
	blezl	$s1, lbl_0011F29C
	move	$s2, $a0
	sw	$s2, 0($s5)
	addiu	$s8, $s8, 1
	addiu	$s5, $s5, 4
	move	$s2, $a0
lbl_0011F29C:
	slt	$v0, $s2, $s7
	bnez	$v0, lbl_0011F1E0
	slti	$v0, $s8, 16
lbl_0011F2A8:
	li	$v0, 1
	ld	$ra, 176($sp)
	ld	$s8, 160($sp)
	ld	$s7, 144($sp)
	ld	$s6, 128($sp)
	ld	$s5, 112($sp)
	ld	$s4, 96($sp)
	ld	$s3, 80($sp)
	ld	$s2, 64($sp)
	ld	$s1, 48($sp)
	ld	$s0, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 192
	nop
	li	$v1, 388
	lui	$v0, 0x13
	mult	$a0, $a0, $v1
	addiu	$v0, $v0, 9576
	jr	$ra
	addu	$v0, $a0, $v0

sub_0011F2F8:
	addiu	$sp, $sp, -96
	lui	$v0, 0x16
	sd	$s2, 32($sp)
	lui	$s2, 0x13
	sd	$s0, 0($sp)
	lw	$a0, 2496($v0)
	lui	$s0, 0x16
	sd	$s4, 64($sp)
	sd	$s3, 48($sp)
	move	$s4, $s2
	sd	$s1, 16($sp)
	sd	$ra, 80($sp)
	addiu	$s1, $s0, 10944
	sw	$zero, 10352($s2)
	jal	sub_00106920
	addiu	$s3, $s1, 128
	move	$a0, $s1
	jal	sub_0012E800
	addiu	$a1, $s1, 255
	lw	$v1, 10944($s0)
	lw	$v0, 10352($s2)
	slt	$v0, $v0, $v1
	beqzl	$v0, lbl_0011F370
	lw	$v1, 0($s3)
	lw	$v0, 128($s1)
	slt	$v0, $v0, $v1
	beqzl	$v0, lbl_0011F370
	lw	$v1, 0($s3)
	b	lbl_0011F3A0
	sw	$v1, 10352($s2)
lbl_0011F370:
	lw	$v0, 10352($s4)
	slt	$v0, $v0, $v1
	beqzl	$v0, lbl_0011F3A0
	sw	$zero, 8($s1)
	lw	$v0, 0($s1)
	slt	$v0, $v0, $v1
	beqz	$v0, lbl_0011F39C
	lui	$v0, 0x16
	sw	$v1, 10352($s2)
	b	lbl_0011F3A4
	addiu	$v0, $v0, 11072
lbl_0011F39C:
	sw	$zero, 8($s1)
lbl_0011F3A0:
	move	$v0, $s1
lbl_0011F3A4:
	ld	$ra, 80($sp)
	ld	$s4, 64($sp)
	ld	$s3, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_0011F3C8:
	addiu	$sp, $sp, -48
	lui	$v0, 0x16
	sd	$s0, 0($sp)
	lw	$a0, 2496($v0)
	lui	$s0, 0x16
	sd	$s1, 16($sp)
	sd	$ra, 32($sp)
	jal	sub_00106920
	addiu	$s1, $s0, 10944
	move	$a0, $s1
	jal	sub_0012E800
	addiu	$a1, $s1, 127
	lw	$v0, 10944($s0)
	blezl	$v0, lbl_0011F404
	sw	$zero, 8($s1)
lbl_0011F404:
	move	$v0, $s1
	ld	$ra, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	lui	$v0, 0x16
	addiu	$sp, $sp, -16
	lw	$a0, 2496($v0)
	sd	$ra, 0($sp)
	jal	sub_00106910
	nop
	sync
	ei
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0011F450:
	lui	$v0, 0x13
	addiu	$sp, $sp, -48
	lui	$v1, 0x13
	addiu	$v0, $v0, 23032
	li	$a1, 127
	sd	$ra, 32($sp)
	sw	$zero, 10352($v1)
	move	$a0, $sp
	sw	$a1, 4($sp)
	sw	$v0, 20($sp)
	jal	sub_001068E0
	sw	$zero, 8($sp)
	lui	$v1, 0x16
	bgez	$v0, lbl_0011F494
	sw	$v0, 2496($v1)
	b	lbl_0011F4D4
	move	$v0, $zero
lbl_0011F494:
	lui	$v0, 0x16
	li	$a3, 512
	addiu	$v1, $v0, 2504
	li	$a2, 16
	addiu	$a1, $v1, 72
	li	$a0, 16384
	nop
lbl_0011F4B0:
	sw	$zero, 0($v1)
	sw	$a3, 8($v1)
	sw	$a2, 12($v1)
	sw	$a0, 16($v1)
	addiu	$v1, $v1, 36
	slt	$v0, $v1, $a1
	bnez	$v0, lbl_0011F4B0
	nop
	li	$v0, 1
lbl_0011F4D4:
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0011F4E0:
	lui	$v0, 0x16
	addiu	$sp, $sp, -48
	lw	$a0, 2496($v0)
	sd	$ra, 32($sp)
	sd	$s1, 16($sp)
	bltz	$a0, lbl_0011F504
	sd	$s0, 0($sp)
	jal	sub_001068F0
	nop
lbl_0011F504:
	lui	$v0, 0x16
	addiu	$s0, $v0, 2504
	addiu	$s1, $s0, 72
	lw	$v0, 0($s0)
	nop
lbl_0011F518:
	beqzl	$v0, lbl_0011F530
	addiu	$s0, $s0, 36
	jal	sub_00115870
	lw	$a0, 4($s0)
	sw	$zero, 0($s0)
	addiu	$s0, $s0, 36
lbl_0011F530:
	slt	$v0, $s0, $s1
	bnezl	$v0, lbl_0011F518
	lw	$v0, 0($s0)
	ld	$ra, 32($sp)
	li	$v0, 1
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0011F558:
	li	$v0, 36
	lui	$v1, 0x16
	mult	$a0, $a0, $v0
	addiu	$v1, $v1, 2504
	li	$v0, 1
	addu	$a3, $v1, $a0
	move	$v1, $a3
	sw	$a1, 28($a3)
	jr	$ra
	sw	$a2, 32($v1)

sub_0011F580:
	li	$v0, 36
	lui	$v1, 0x16
	mult	$a0, $a0, $v0
	addiu	$v1, $v1, 2504
	addu	$a0, $a0, $v1
	ldl	$v1, 7($a1)
	ldr	$v1, 0($a1)
	ldl	$a2, 15($a1)
	ldr	$a2, 8($a1)
	sdl	$v1, 15($a0)
	sdr	$v1, 8($a0)
	sdl	$a2, 23($a0)
	sdr	$a2, 16($a0)
	jr	$ra
	li	$v0, 1
	nop

sub_0011F5C0:
	addiu	$sp, $sp, -176
	li	$v1, 36
	sd	$s6, 112($sp)
	move	$s6, $a0
	sd	$s8, 144($sp)
	mult	$v1, $s6, $v1
	lui	$s8, 0x16
	addiu	$v0, $s8, 2504
	sd	$s7, 128($sp)
	sd	$s2, 48($sp)
	addiu	$v0, $v0, 4
	sw	$a1, 4($sp)
	li	$s7, 3
	sd	$ra, 160($sp)
	addu	$s2, $v1, $v0
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	sd	$s1, 32($sp)
	sd	$s0, 16($sp)
	jal	sub_00115AA0
	lw	$a0, 0($s2)
	beq	$v0, $s7, lbl_0011F6BC
	lui	$s3, 0x16
	li	$v1, 8320
	addiu	$v0, $s3, 2624
	lui	$s0, 0x16
	sw	$zero, 36($v0)
	addiu	$s0, $s0, 10944
	sw	$v1, 0($sp)
	move	$a0, $s0
	sw	$zero, 8($v0)
	move	$a1, $zero
	sw	$zero, 12($v0)
	li	$a2, 256
	sw	$zero, 16($v0)
	lui	$s1, 0x13
	sw	$zero, 20($v0)
	lui	$s5, 0x12
	sw	$zero, 24($v0)
	li	$s4, 1
	sw	$zero, 28($v0)
	jal	sub_00125310
	sw	$zero, 32($v0)
	move	$a0, $s0
	jal	sub_0012E800
	addiu	$a1, $a0, 255
	sw	$s7, 10356($s1)
	lw	$a0, 0($s2)
	nop
lbl_0011F688:
	move	$a2, $sp
	lw	$a1, 10356($s1)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s5, -3040
	bnel	$v0, $s4, lbl_0011F688
	lw	$a0, 0($s2)
	jal	sub_0011F2F8
	nop
	move	$t4, $v0
	lw	$v0, 8($t4)
	bnez	$v0, lbl_0011F6C4
	li	$a3, 36
lbl_0011F6BC:
	b	lbl_0011F764
	move	$v0, $zero
lbl_0011F6C4:
	lbu	$v0, 13($t4)
	mult	$a3, $s6, $a3
	lbu	$v1, 12($t4)
	addiu	$a0, $s8, 2504
	sll	$v0, $v0, 0x8
	addu	$v1, $v1, $v0
	li	$t3, 1
	li	$v0, 1
	addu	$a1, $a0, $a3
	sw	$v1, 8($a1)
	addu	$a3, $a3, $a0
	move	$t0, $a1
	move	$t1, $a1
	lbu	$v1, 15($t4)
	move	$t2, $a1
	lbu	$a0, 14($t4)
	sll	$v1, $v1, 0x8
	addu	$a0, $a0, $v1
	sw	$a0, 12($t0)
	lbu	$a2, 17($t4)
	lbu	$a1, 19($t4)
	lbu	$a0, 18($t4)
	sll	$a2, $a2, 0x8
	lbu	$v1, 16($t4)
	sll	$a1, $a1, 0x18
	sll	$a0, $a0, 0x10
	addu	$v1, $v1, $a1
	addu	$a0, $a0, $a2
	addu	$v1, $v1, $a0
	sw	$v1, 16($t1)
	sw	$t3, 20($t2)
	lw	$v1, 4($sp)
	ldl	$a0, 15($a3)
	ldr	$a0, 8($a3)
	ldl	$a1, 23($a3)
	ldr	$a1, 16($a3)
	sdl	$a0, 7($v1)
	sdr	$a0, 0($v1)
	sdl	$a1, 15($v1)
	sdr	$a1, 8($v1)
lbl_0011F764:
	ld	$ra, 160($sp)
	ld	$s8, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 176
	nop

sub_0011F798:
	addiu	$sp, $sp, -112
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s2, 48($sp)
	sd	$ra, 96($sp)
	addiu	$v0, $s1, 4
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	addu	$s2, $s0, $v0
	jal	sub_00115AA0
	lw	$a0, 0($s2)
	li	$v1, 3
	bne	$v0, $v1, lbl_0011F7E8
	addu	$a0, $s1, $s0
	b	lbl_0011F878
	move	$v0, $zero
lbl_0011F7E8:
	lui	$s3, 0x16
	move	$v0, $a0
	li	$a3, 8320
	move	$v1, $v0
	lw	$a1, 8($v0)
	lw	$a2, 12($v1)
	addiu	$v0, $s3, 2624
	lw	$v1, 16($a0)
	lui	$s0, 0x13
	sw	$a1, 8($v0)
	lui	$a0, 0x16
	sw	$a2, 12($v0)
	addiu	$a0, $a0, 10944
	sw	$v1, 16($v0)
	move	$a1, $zero
	sw	$zero, 24($v0)
	li	$a2, 256
	sw	$a3, 0($sp)
	move	$s1, $s2
	sw	$zero, 20($v0)
	jal	sub_00125310
	lui	$s4, 0x12
	li	$s2, 1
	li	$v0, 4
	sw	$v0, 10356($s0)
	lw	$a0, 0($s1)
lbl_0011F850:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s2, lbl_0011F850
	lw	$a0, 0($s1)
	jal	sub_0011F2F8
	nop
	lw	$v0, 8($v0)
lbl_0011F878:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_0011F898:
	li	$v1, 36
	lui	$v0, 0x16
	mult	$a0, $a0, $v1
	addiu	$sp, $sp, -112
	addiu	$v0, $v0, 2504
	sd	$s1, 32($sp)
	sd	$ra, 96($sp)
	addiu	$v0, $v0, 4
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	addu	$s1, $a0, $v0
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	jal	sub_00115AA0
	lw	$a0, 0($s1)
	li	$v1, 3
	bne	$v0, $v1, lbl_0011F8E8
	lui	$s3, 0x16
	b	lbl_0011F950
	move	$v0, $zero
lbl_0011F8E8:
	li	$v1, 8320
	addiu	$v0, $s3, 2624
	lui	$a0, 0x16
	sw	$zero, 24($v0)
	addiu	$a0, $a0, 10944
	sw	$v1, 0($sp)
	move	$a1, $zero
	sw	$zero, 20($v0)
	jal	sub_00125310
	li	$a2, 256
	lui	$s0, 0x13
	li	$v0, 13
	lui	$s4, 0x12
	sw	$v0, 10356($s0)
	li	$s2, 1
	lw	$a0, 0($s1)
lbl_0011F928:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s2, lbl_0011F928
	lw	$a0, 0($s1)
	jal	sub_0011F2F8
	nop
	lw	$v0, 8($v0)
lbl_0011F950:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_0011F970:
	li	$v1, 36
	lui	$v0, 0x16
	mult	$a0, $a0, $v1
	addiu	$sp, $sp, -112
	addiu	$v0, $v0, 2504
	sd	$s2, 48($sp)
	sd	$ra, 96($sp)
	addiu	$v0, $v0, 4
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	addu	$s2, $a0, $v0
	sd	$s1, 32($sp)
	sd	$s0, 16($sp)
	jal	sub_00115AA0
	lw	$a0, 0($s2)
	li	$v1, 3
	bne	$v0, $v1, lbl_0011F9C0
	lui	$s3, 0x16
	b	lbl_0011FA3C
	move	$v0, $zero
lbl_0011F9C0:
	li	$v0, 8320
	addiu	$v1, $s3, 2624
	lui	$s0, 0x16
	sw	$zero, 24($v1)
	addiu	$s0, $s0, 10944
	sw	$v0, 0($sp)
	move	$a0, $s0
	sw	$zero, 20($v1)
	move	$a1, $zero
	li	$a2, 256
	jal	sub_00125310
	lui	$s1, 0x13
	lui	$s4, 0x12
	move	$a0, $s0
	addiu	$a1, $a0, 255
	jal	sub_0012E800
	li	$s0, 1
	li	$v0, 12
	sw	$v0, 10356($s1)
	lw	$a0, 0($s2)
lbl_0011FA10:
	move	$a2, $sp
	lw	$a1, 10356($s1)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s0, lbl_0011FA10
	lw	$a0, 0($s2)
	jal	sub_0011F2F8
	nop
	lw	$v0, 8($v0)
	sltu	$v0, $zero, $v0
lbl_0011FA3C:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112
	nop

sub_0011FA60:
	addiu	$sp, $sp, -112
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s2, 48($sp)
	sd	$ra, 96($sp)
	addiu	$v0, $s1, 4
	sd	$s4, 80($sp)
	sd	$s3, 64($sp)
	addu	$s2, $s0, $v0
	jal	sub_00115AA0
	lw	$a0, 0($s2)
	li	$v1, 3
	bne	$v0, $v1, lbl_0011FAB0
	addu	$v0, $s1, $s0
	b	lbl_0011FB78
	move	$v0, $zero
lbl_0011FAB0:
	lw	$a2, 8($v0)
	beqz	$a2, lbl_0011FACC
	lui	$a0, 0x13
	lw	$t3, 12($v0)
	bnez	$t3, lbl_0011FADC
	addu	$a1, $s1, $s0
	lui	$a0, 0x13
lbl_0011FACC:
	jal	sub_001087F8
	addiu	$a0, $a0, 23056
	b	lbl_0011FB78
	move	$v0, $zero
lbl_0011FADC:
	lui	$s3, 0x16
	move	$v0, $a1
	li	$t2, 8320
	move	$v1, $v0
	move	$a0, $v0
	lw	$t0, 32($v1)
	lui	$s0, 0x13
	lw	$t1, 28($a0)
	move	$s1, $s2
	lw	$v1, 20($a1)
	lui	$a0, 0x16
	lw	$a3, 16($v0)
	addiu	$a0, $a0, 10944
	addiu	$v0, $s3, 2624
	move	$a1, $zero
	sw	$a2, 8($v0)
	lui	$s4, 0x12
	sw	$v1, 36($v0)
	li	$a2, 256
	sw	$t3, 12($v0)
	li	$s2, 1
	sw	$a3, 16($v0)
	sw	$t0, 20($v0)
	sw	$t1, 24($v0)
	jal	sub_00125310
	sw	$t2, 0($sp)
	li	$v1, 6
	sw	$v1, 10356($s0)
	lw	$a0, 0($s1)
lbl_0011FB50:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s2, lbl_0011FB50
	lw	$a0, 0($s1)
	jal	sub_0011F2F8
	nop
	lw	$v0, 8($v0)
lbl_0011FB78:
	ld	$ra, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_0011FB98:
	li	$v1, 36
	lui	$v0, 0x16
	mult	$a0, $a0, $v1
	addiu	$sp, $sp, -128
	addiu	$v0, $v0, 2504
	sd	$s5, 96($sp)
	sd	$s1, 32($sp)
	addiu	$v0, $v0, 4
	sd	$ra, 112($sp)
	move	$s5, $a1
	sd	$s4, 80($sp)
	addu	$s1, $a0, $v0
	sd	$s3, 64($sp)
	sd	$s2, 48($sp)
	sd	$s0, 16($sp)
	jal	sub_00115AA0
	lw	$a0, 0($s1)
	li	$v1, 3
	beq	$v0, $v1, lbl_0011FC5C
	lui	$s3, 0x16
	li	$v1, 8320
	addiu	$v0, $s3, 2624
	lui	$a0, 0x16
	sw	$zero, 24($v0)
	addiu	$a0, $a0, 10944
	sw	$v1, 0($sp)
	move	$a1, $zero
	sw	$zero, 20($v0)
	jal	sub_00125310
	li	$a2, 256
	lui	$s0, 0x13
	li	$v0, 10
	lui	$s4, 0x12
	sw	$v0, 10356($s0)
	li	$s2, 1
	lw	$a0, 0($s1)
lbl_0011FC28:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s2, lbl_0011FC28
	lw	$a0, 0($s1)
	jal	sub_0011F2F8
	nop
	move	$v1, $v0
	lw	$v0, 8($v1)
	bnez	$v0, lbl_0011FC64
	nop
lbl_0011FC5C:
	b	lbl_0011FC78
	move	$v0, $zero
lbl_0011FC64:
	ldl	$v0, 19($v1)
	ldr	$v0, 12($v1)
	sdl	$v0, 7($s5)
	sdr	$v0, 0($s5)
	lw	$v0, 8($v1)
lbl_0011FC78:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_0011FCA0:
	addiu	$sp, $sp, -160
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s7, 128($sp)
	sd	$s6, 112($sp)
	addiu	$v0, $s1, 4
	sd	$s5, 96($sp)
	move	$s7, $a1
	sd	$s4, 80($sp)
	move	$s6, $a2
	sd	$s3, 64($sp)
	move	$s4, $a3
	sd	$ra, 144($sp)
	addu	$s3, $s0, $v0
	sd	$s2, 48($sp)
	move	$s5, $t0
	jal	sub_00115AA0
	lw	$a0, 0($s3)
	li	$v1, 3
	beq	$v0, $v1, lbl_0011FDB0
	addu	$a0, $s1, $s0
	lui	$s2, 0x16
	move	$v0, $a0
	li	$t0, 8320
	move	$v1, $v0
	lw	$a2, 8($v0)
	lw	$a3, 12($v1)
	addiu	$v0, $s2, 2624
	lw	$v1, 16($a0)
	move	$a1, $zero
	sw	$s5, 36($v0)
	lui	$a0, 0x16
	sw	$s6, 2624($s2)
	addiu	$a0, $a0, 10944
	sw	$a2, 8($v0)
	lui	$s0, 0x13
	sw	$a3, 12($v0)
	li	$a2, 256
	sw	$v1, 16($v0)
	move	$s1, $s3
	sw	$t0, 0($sp)
	lui	$s5, 0x12
	sw	$s4, 4($v0)
	li	$s3, 1
	sw	$zero, 20($v0)
	sw	$zero, 24($v0)
	sw	$zero, 28($v0)
	jal	sub_00125310
	sw	$zero, 32($v0)
	li	$v1, 1
	sw	$v1, 10356($s0)
	lw	$a0, 0($s1)
lbl_0011FD80:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s2, 2624
	jal	sub_001162D8
	addiu	$t0, $s5, -3040
	bnel	$v0, $s3, lbl_0011FD80
	lw	$a0, 0($s1)
	jal	sub_0011F3C8
	nop
	lw	$v1, 8($v0)
	bnez	$v1, lbl_0011FDB8
	lui	$v0, 0x16
lbl_0011FDB0:
	b	lbl_0011FE08
	move	$v0, $zero
lbl_0011FDB8:
	move	$s2, $s7
	blez	$s4, lbl_0011FE04
	addiu	$s1, $v0, 11072
	lui	$v0, 0x16
	move	$s0, $s4
	addiu	$s3, $v0, 2624
lbl_0011FDD0:
	lw	$a1, 8($s3)
	move	$a0, $s1
	addiu	$s0, $s0, -1
	jal	sub_0012E800
	addu	$a1, $s1, $a1
	lw	$a2, 8($s3)
	move	$a0, $s2
	jal	sub_0012515C
	move	$a1, $s1
	lw	$v1, 8($s3)
	addu	$s2, $s2, $v1
	bnez	$s0, lbl_0011FDD0
	addu	$s1, $s1, $v1
lbl_0011FE04:
	move	$v0, $s4
lbl_0011FE08:
	ld	$ra, 144($sp)
	ld	$s7, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop

sub_0011FE38:
	li	$v1, 36
	lui	$v0, 0x16
	mult	$v1, $a0, $v1
	addiu	$v0, $v0, 2504
	addu	$v0, $v0, $v1
	j	sub_0011FCA0
	lw	$t0, 20($v0)
	nop

sub_0011FE58:
	addiu	$sp, $sp, -144
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s6, 112($sp)
	sd	$s5, 96($sp)
	addiu	$v0, $s1, 4
	sd	$s4, 80($sp)
	move	$s5, $a1
	sd	$s2, 48($sp)
	addu	$s4, $s0, $v0
	sd	$ra, 128($sp)
	move	$s6, $a2
	sd	$s3, 64($sp)
	move	$s2, $a3
	jal	sub_00115AA0
	lw	$a0, 0($s4)
	li	$v1, 3
	bne	$v0, $v1, lbl_0011FEBC
	addu	$v0, $s1, $s0
	b	lbl_0011FFC0
	move	$v0, $zero
lbl_0011FEBC:
	lw	$t4, 8($v0)
	mult	$t3, $t4, $s2
	sltiu	$v0, $t3, 8193
	bnez	$v0, lbl_0011FEE4
	addu	$a2, $s1, $s0
	lui	$a0, 0x13
	jal	sub_001087F8
	addiu	$a0, $a0, 23072
	b	lbl_0011FFC0
	move	$v0, $zero
lbl_0011FEE4:
	lui	$s3, 0x16
	move	$v0, $a2
	lui	$s1, 0x13
	move	$v1, $v0
	move	$a0, $v0
	lw	$t0, 16($v1)
	move	$a1, $v0
	lw	$t1, 32($a0)
	lw	$t2, 28($a1)
	lw	$v1, 20($a2)
	move	$a1, $s5
	lw	$a3, 12($v0)
	move	$a2, $t3
	addiu	$v0, $s3, 2624
	sw	$s6, 2624($s3)
	addiu	$a0, $v0, 40
	sw	$t4, 8($v0)
	sw	$a3, 12($v0)
	lui	$s6, 0x12
	sw	$t0, 16($v0)
	li	$s5, 1
	sw	$t1, 20($v0)
	sw	$t2, 24($v0)
	sw	$v1, 36($v0)
	sw	$s2, 4($v0)
	sw	$zero, 28($v0)
	jal	sub_0012515C
	sw	$zero, 32($v0)
	lui	$s0, 0x16
	li	$v0, 8320
	addiu	$s0, $s0, 10944
	sw	$v0, 0($sp)
	move	$a0, $s0
	move	$a1, $zero
	jal	sub_00125310
	li	$a2, 256
	move	$a0, $s0
	jal	sub_0012E800
	addiu	$a1, $a0, 255
	li	$v0, 2
	sw	$v0, 10356($s1)
	lw	$a0, 0($s4)
	nop
lbl_0011FF90:
	move	$a2, $sp
	lw	$a1, 10356($s1)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s6, -3040
	bnel	$v0, $s5, lbl_0011FF90
	lw	$a0, 0($s4)
	jal	sub_0011F2F8
	nop
	lw	$v1, 8($v0)
	move	$v0, $zero
	movn	$v0, $s2, $v1
lbl_0011FFC0:
	ld	$ra, 128($sp)
	ld	$s6, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	addiu	$sp, $sp, -128
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s5, 96($sp)
	sd	$s4, 80($sp)
	addiu	$v0, $s1, 4
	sd	$s3, 64($sp)
	move	$s4, $a1
	sd	$ra, 112($sp)
	addu	$s3, $s0, $v0
	sd	$s2, 48($sp)
	move	$s5, $a2
	jal	sub_00115AA0
	lw	$a0, 0($s3)
	li	$v1, 3
	bne	$v0, $v1, lbl_00120044
	addu	$a1, $s1, $s0
	b	lbl_001200F8
	move	$v0, $zero
lbl_00120044:
	lui	$s2, 0x16
	move	$v0, $a1
	li	$t1, 8320
	move	$v1, $v0
	move	$a0, $v0
	lw	$a3, 12($v1)
	lui	$s0, 0x13
	lw	$t0, 16($a0)
	move	$s1, $s3
	lw	$v1, 20($a1)
	lui	$a0, 0x16
	lw	$a2, 8($v0)
	addiu	$a0, $a0, 10944
	sw	$s4, 2624($s2)
	addiu	$v0, $s2, 2624
	sw	$a2, 8($v0)
	move	$a1, $zero
	sw	$v1, 36($v0)
	li	$a2, 256
	sw	$a3, 12($v0)
	lui	$s4, 0x12
	sw	$t0, 16($v0)
	li	$s3, 1
	sw	$t1, 0($sp)
	sw	$s5, 4($v0)
	sw	$zero, 20($v0)
	sw	$zero, 24($v0)
	sw	$zero, 28($v0)
	jal	sub_00125310
	sw	$zero, 32($v0)
	li	$v1, 11
	sw	$v1, 10356($s0)
	lw	$a0, 0($s1)
lbl_001200C8:
	move	$a2, $sp
	lw	$a1, 10356($s0)
	addiu	$a3, $s2, 2624
	jal	sub_001162D8
	addiu	$t0, $s4, -3040
	bnel	$v0, $s3, lbl_001200C8
	lw	$a0, 0($s1)
	jal	sub_0011F2F8
	nop
	lw	$v1, 8($v0)
	move	$v0, $zero
	movn	$v0, $s5, $v1
lbl_001200F8:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00120120:
	addiu	$sp, $sp, -128
	li	$v0, 36
	sd	$s0, 16($sp)
	lui	$v1, 0x16
	mult	$s0, $a0, $v0
	sd	$s1, 32($sp)
	addiu	$s1, $v1, 2504
	sd	$s4, 80($sp)
	sd	$s2, 48($sp)
	addiu	$v0, $s1, 4
	sd	$ra, 112($sp)
	move	$s4, $a1
	sd	$s5, 96($sp)
	addu	$s2, $s0, $v0
	sd	$s3, 64($sp)
	jal	sub_00115AA0
	lw	$a0, 0($s2)
	li	$v1, 3
	bne	$v0, $v1, lbl_00120178
	addu	$a0, $s1, $s0
	b	lbl_0012022C
	move	$v0, $zero
lbl_00120178:
	lui	$s3, 0x16
	move	$v0, $a0
	lw	$t1, 16($a0)
	move	$v1, $v0
	lw	$a2, 8($v0)
	lw	$t0, 12($v1)
	addiu	$v0, $s3, 2624
	li	$v1, 1
	sw	$s4, 32($v0)
	sw	$a2, 8($v0)
	li	$a3, 8320
	sw	$v1, 4($v0)
	lui	$s0, 0x16
	sw	$t0, 12($v0)
	addiu	$s0, $s0, 10944
	sw	$t1, 16($v0)
	move	$a0, $s0
	sw	$a3, 0($sp)
	move	$a1, $zero
	sw	$zero, 2624($s3)
	li	$a2, 256
	sw	$zero, 20($v0)
	lui	$s1, 0x13
	sw	$zero, 24($v0)
	lui	$s5, 0x12
	sw	$zero, 28($v0)
	jal	sub_00125310
	li	$s4, 1
	move	$a0, $s0
	jal	sub_0012E800
	addiu	$a1, $a0, 255
	li	$v0, 9
	sw	$v0, 10356($s1)
	lw	$a0, 0($s2)
lbl_00120200:
	move	$a2, $sp
	lw	$a1, 10356($s1)
	addiu	$a3, $s3, 2624
	jal	sub_001162D8
	addiu	$t0, $s5, -3040
	bnel	$v0, $s4, lbl_00120200
	lw	$a0, 0($s2)
	jal	sub_0011F2F8
	nop
	lw	$v0, 8($v0)
	sltu	$v0, $zero, $v0
lbl_0012022C:
	ld	$ra, 112($sp)
	ld	$s5, 96($sp)
	ld	$s4, 80($sp)
	ld	$s3, 64($sp)
	ld	$s2, 48($sp)
	ld	$s1, 32($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_00120250:
	li	$v1, 36
	addiu	$sp, $sp, -16
	mult	$a0, $a0, $v1
	lui	$v0, 0x16
	sd	$ra, 0($sp)
	addiu	$v0, $v0, 2504
	addu	$v0, $v0, $a0
	jal	sub_00115AA0
	lw	$a0, 4($v0)
	xori	$v0, $v0, 0x3
	ld	$ra, 0($sp)
	sltu	$v0, $zero, $v0
	jr	$ra
	addiu	$sp, $sp, 16

sub_00120288:
	lui	$v0, 0x16
	move	$v1, $zero
	addiu	$a0, $v0, 2504
	nop
lbl_00120298:
	lw	$v0, 0($a0)
	bnezl	$v0, lbl_001202AC
	addiu	$v1, $v1, 1
	jr	$ra
	move	$v0, $v1
lbl_001202AC:
	slti	$v0, $v1, 2
	bnez	$v0, lbl_00120298
	addiu	$a0, $a0, 36
	jr	$ra
	li	$v0, -1

sub_001202C0:
	addiu	$sp, $sp, -112
	sd	$s1, 64($sp)
	sd	$s2, 80($sp)
	move	$s1, $a0
	sd	$ra, 96($sp)
	jal	sub_00120288
	sd	$s0, 48($sp)
	move	$s2, $v0
	bltz	$s2, lbl_001203C8
	li	$v0, -1
	lw	$v0, 0($s1)
	lui	$t1, 0x13
	lw	$a2, 8($s1)
	lui	$s0, 0x16
	lw	$t0, 12($s1)
	addiu	$s0, $s0, 10944
	lw	$v1, 4($s1)
	li	$a3, 2
	sw	$v0, 0($sp)
	move	$a0, $s0
	sw	$a2, 12($sp)
	move	$a1, $zero
	sw	$v1, 8($sp)
	li	$a2, 256
	sw	$t0, 16($sp)
	addiu	$t2, $t1, 23120
	ldl	$v0, 7($t2)
	ldr	$v0, 0($t2)
	lh	$v1, 8($t2)
	sdl	$v0, 27($sp)
	sdr	$v0, 20($sp)
	sh	$v1, 28($sp)
	sw	$a3, 4($sp)
	lw	$v0, 0($sp)
	ori	$v0, $v0, 0x1
	jal	sub_00125310
	sw	$v0, 0($sp)
	move	$a1, $s0
	move	$a0, $sp
	jal	sub_00115740
	addiu	$a2, $a1, 128
	li	$v1, 36
	lui	$a0, 0x16
	mult	$a2, $s2, $v1
	addiu	$a3, $a0, 2504
	addu	$v1, $a3, $a2
	bgez	$v0, lbl_00120388
	sw	$v0, 4($v1)
	b	lbl_001203C8
	li	$v0, -1
lbl_00120388:
	addu	$a0, $a2, $a3
	li	$v0, 1
	sw	$v0, 0($a0)
	addu	$v1, $a3, $a2
	sw	$zero, 28($v1)
	move	$v0, $v1
	sw	$zero, 32($v0)
	move	$a0, $v0
	li	$v1, 512
	move	$a1, $v0
	sw	$v1, 8($a0)
	li	$v0, 16
	sw	$v0, 12($a1)
	li	$v1, 16384
	sw	$v1, 16($a0)
	move	$v0, $s2
lbl_001203C8:
	ld	$ra, 96($sp)
	ld	$s2, 80($sp)
	ld	$s1, 64($sp)
	ld	$s0, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_001203E0:
	sltiu	$v0, $a0, 2
	bnez	$v0, lbl_001203F4
	li	$v1, 36
	jr	$ra
	move	$v0, $zero
lbl_001203F4:
	lui	$v0, 0x16
	mult	$v1, $a0, $v1
	addiu	$v0, $v0, 2504
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	jr	$ra
	sltu	$v0, $zero, $v0

sub_00120410:
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	move	$s2, $a0
	sd	$ra, 48($sp)
	sd	$s1, 16($sp)
	jal	sub_001203E0
	sd	$s0, 0($sp)
	bnez	$v0, lbl_0012043C
	li	$s1, 36
	b	lbl_00120460
	move	$v0, $zero
lbl_0012043C:
	lui	$s0, 0x16
	mult	$s1, $s2, $s1
	addiu	$s0, $s0, 2504
	addu	$v0, $s0, $s1
	jal	sub_00115870
	lw	$a0, 4($v0)
	addu	$s1, $s1, $s0
	li	$v0, 1
	sw	$zero, 0($s1)
lbl_00120460:
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_00120478:
	lui	$v0, 0x16
	move	$v1, $zero
	addiu	$a1, $v0, 2504
	nop
lbl_00120488:
	lw	$v0, 0($a1)
	beqzl	$v0, lbl_001204A8
	addiu	$v1, $v1, 1
	lw	$v0, 4($a1)
	bnel	$v0, $a0, lbl_001204A8
	addiu	$v1, $v1, 1
	jr	$ra
	move	$v0, $v1
lbl_001204A8:
	slti	$v0, $v1, 2
	bnez	$v0, lbl_00120488
	addiu	$a1, $a1, 36
	jr	$ra
	li	$v0, -1
	nop

sub_001204C0:
	li	$v0, 36
	lui	$v1, 0x16
	mult	$a0, $a0, $v0
	addiu	$a1, $v1, 2504
	addu	$v0, $a0, $a1
	lw	$v1, 0($v0)
	bnez	$v1, lbl_001204E8
	addu	$v1, $a1, $a0
	jr	$ra
	li	$v0, -1
lbl_001204E8:
	jr	$ra
	lw	$v0, 4($v1)

sub_001204F0:
	move	$t1, $a0
	dsra32	$t2, $t1, 0x0
	dsll32	$a0, $t2, 0x0
	dsra32	$a0, $a0, 0x0
	bgez	$a0, lbl_0012055C
	move	$t8, $zero
	dsll32	$v0, $t1, 0x0
	dsra32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	negu	$v0, $v0
	and	$a2, $a2, $v1
	dsll32	$v0, $v0, 0x0
	negu	$v1, $a0
	dsrl32	$v0, $v0, 0x0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	or	$a2, $a2, $v0
	li	$t8, -1
	dsll32	$v0, $a2, 0x0
	dsra32	$v0, $v0, 0x0
	and	$a2, $a2, $a0
	sltu	$v0, $zero, $v0
	subu	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	or	$t1, $a2, $v1
	dsra32	$t2, $t1, 0x0
lbl_0012055C:
	dsra32	$a0, $a1, 0x0
	bgez	$a0, lbl_001205B8
	nop
	dsll32	$v0, $a1, 0x0
	dsra32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	negu	$v0, $v0
	and	$a3, $a3, $v1
	dsll32	$v0, $v0, 0x0
	negu	$v1, $a0
	dsrl32	$v0, $v0, 0x0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	or	$a3, $a3, $v0
	nor	$t8, $zero, $t8
	dsll32	$v0, $a3, 0x0
	dsra32	$v0, $v0, 0x0
	and	$a3, $a3, $a0
	sltu	$v0, $zero, $v0
	subu	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	or	$a1, $a3, $v1
lbl_001205B8:
	dsra32	$t0, $a1, 0x0
	dsll32	$t3, $t1, 0x0
	dsra32	$t3, $t3, 0x0
	dsll32	$t2, $t2, 0x0
	dsra32	$t2, $t2, 0x0
	dsll32	$t1, $a1, 0x0
	dsra32	$t1, $t1, 0x0
	bnez	$t0, lbl_00120960
	sltu	$v0, $t2, $t0
	sltu	$v0, $t2, $t1
	beqz	$v0, lbl_00120720
	li	$v0, 0xffff
	sltu	$v0, $v0, $t1
	bnez	$v0, lbl_00120608
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_0012061C
	movn	$a0, $zero, $v0
	nop
lbl_00120608:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_0012061C:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23136($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	beqz	$a2, lbl_00120654
	subu	$v0, $a1, $a2
	sllv	$v1, $t2, $a2
	srlv	$v0, $t3, $v0
	sllv	$t3, $t3, $a2
	or	$t2, $v1, $v0
	sllv	$t1, $t1, $a2
lbl_00120654:
	srl	$a2, $t1, 0x10
	andi	$t0, $t1, 0xffff
	divu	$zero, $t2, $a2
	srl	$a0, $t3, 0x10
	beqzl	$a2, lbl_0012066C
	break	0x7
lbl_0012066C:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_001206BC
	subu	$v1, $v1, $a1
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_001206B8
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_001206BC
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
	nop
lbl_001206B8:
	subu	$v1, $v1, $a1
lbl_001206BC:
	beqzl	$a2, lbl_001206C4
	break	0x7
lbl_001206C4:
	divu	$zero, $v1, $a2
	andi	$a0, $t3, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00120714
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00120710
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	addiu	$v1, $a2, -1
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
lbl_00120710:
	sll	$v0, $a3, 0x10
lbl_00120714:
	b	lbl_00120B08
	or	$a2, $v0, $a2
	nop
lbl_00120720:
	bnez	$t1, lbl_00120748
	sltu	$v0, $v0, $t1
	li	$v0, 1
	beqzl	$t1, lbl_00120734
	break	0x7
lbl_00120734:
	divu	$zero, $v0, $t0
	mflo	$v0
	move	$t1, $v0
	li	$v0, 0xffff
	sltu	$v0, $v0, $t1
lbl_00120748:
	bnez	$v0, lbl_00120760
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_00120774
	movn	$a0, $zero, $v0
lbl_00120760:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_00120774:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23136($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	bnez	$a2, lbl_001207B0
	subu	$a3, $a1, $a2
	subu	$t2, $t2, $t1
	li	$t5, 1
	srl	$t0, $t1, 0x10
	b	lbl_00120898
	andi	$t4, $t1, 0xffff
	nop
lbl_001207B0:
	sllv	$v1, $t2, $a2
	srlv	$v0, $t3, $a3
	sllv	$t3, $t3, $a2
	srlv	$a0, $t2, $a3
	or	$t2, $v1, $v0
	sllv	$t1, $t1, $a2
	srl	$t0, $t1, 0x10
	divu	$zero, $a0, $t0
	srl	$a0, $t2, 0x10
	andi	$t4, $t1, 0xffff
	move	$a2, $t0
	beqzl	$a2, lbl_001207E4
	break	0x7
lbl_001207E4:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00120830
	move	$t5, $t4
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00120830
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_00120834
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
	nop
lbl_00120830:
	subu	$v1, $v1, $a1
lbl_00120834:
	beqzl	$a2, lbl_0012083C
	break	0x7
lbl_0012083C:
	divu	$zero, $v1, $a2
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t5
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00120890
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_0012088C
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00120890
	sll	$v0, $a3, 0x10
	addiu	$a2, $a2, -1
	addu	$v1, $v1, $t1
lbl_0012088C:
	sll	$v0, $a3, 0x10
lbl_00120890:
	subu	$t2, $v1, $a1
	or	$t5, $v0, $a2
lbl_00120898:
	move	$a2, $t0
	move	$t0, $t4
	divu	$zero, $t2, $a2
	srl	$a0, $t3, 0x10
	beqzl	$a2, lbl_001208B0
	break	0x7
lbl_001208B0:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_001208FC
	subu	$v1, $v1, $a1
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_001208F8
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_001208FC
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
lbl_001208F8:
	subu	$v1, $v1, $a1
lbl_001208FC:
	beqzl	$a2, lbl_00120904
	break	0x7
lbl_00120904:
	divu	$zero, $v1, $a2
	andi	$a0, $t3, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00120954
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00120950
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	addiu	$v1, $a2, -1
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
lbl_00120950:
	sll	$v0, $a3, 0x10
lbl_00120954:
	b	lbl_00120B0C
	or	$a2, $v0, $a2
	nop
lbl_00120960:
	beqz	$v0, lbl_00120970
	li	$v0, 0xffff
	b	lbl_00120B08
	move	$a2, $zero
lbl_00120970:
	sltu	$v0, $v0, $t0
	bnez	$v0, lbl_00120990
	lui	$v0, 0xff
	sltiu	$v0, $t0, 256
	li	$a0, 8
	b	lbl_001209A4
	movn	$a0, $zero, $v0
	nop
lbl_00120990:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t0
	movn	$a0, $v1, $v0
lbl_001209A4:
	srlv	$v1, $t0, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23136($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	bnez	$a2, lbl_001209E8
	subu	$a3, $a1, $a2
	sltu	$v0, $t0, $t2
	bnez	$v0, lbl_00120B08
	li	$a2, 1
	sltu	$v0, $t3, $t1
	bnez	$v0, lbl_00120B08
	move	$a2, $zero
	b	lbl_00120B08
	li	$a2, 1
lbl_001209E8:
	sllv	$a0, $t0, $a2
	srlv	$a1, $t3, $a3
	sllv	$t3, $t3, $a2
	srlv	$v0, $t1, $a3
	sllv	$t1, $t1, $a2
	sllv	$v1, $t2, $a2
	or	$t0, $a0, $v0
	srlv	$a0, $t2, $a3
	or	$t2, $v1, $a1
	srl	$a1, $t0, 0x10
	divu	$zero, $a0, $a1
	srl	$a0, $t2, 0x10
	andi	$t4, $t0, 0xffff
	beqzl	$a1, lbl_00120A24
	break	0x7
lbl_00120A24:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a2, $a3, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a2
	beqzl	$v0, lbl_00120A74
	subu	$v1, $v1, $a2
	addu	$v1, $v1, $t0
	sltu	$v0, $v1, $t0
	bnez	$v0, lbl_00120A70
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a2
	beqzl	$v0, lbl_00120A74
	subu	$v1, $v1, $a2
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t0
	nop
lbl_00120A70:
	subu	$v1, $v1, $a2
lbl_00120A74:
	beqzl	$a1, lbl_00120A7C
	break	0x7
lbl_00120A7C:
	divu	$zero, $v1, $a1
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a1, $v0
	sll	$v1, $v1, 0x10
	mult	$a2, $a1, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a2
	beqz	$v0, lbl_00120AD0
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t0
	sltu	$v0, $v1, $t0
	bnez	$v0, lbl_00120ACC
	addiu	$a1, $a1, -1
	sltu	$v0, $v1, $a2
	beqz	$v0, lbl_00120AD0
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t0
	addiu	$a1, $a1, -1
lbl_00120ACC:
	sll	$v0, $a3, 0x10
lbl_00120AD0:
	subu	$v1, $v1, $a2
	or	$a2, $v0, $a1
	multu	$a2, $t1
	mfhi	$a3
	mflo	$a0
	sltu	$v0, $v1, $a3
	bnezl	$v0, lbl_00120B08
	addiu	$a2, $a2, -1
	bne	$a3, $v1, lbl_00120B0C
	move	$t5, $zero
	sltu	$v0, $t3, $a0
	beqz	$v0, lbl_00120B10
	dsll32	$v0, $a2, 0x0
	addiu	$a2, $a2, -1
lbl_00120B08:
	move	$t5, $zero
lbl_00120B0C:
	dsll32	$v0, $a2, 0x0
lbl_00120B10:
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t7, $t7, $a0
	or	$t7, $t7, $v0
	dsll32	$v0, $t5, 0x0
	lui	$a1, 0xffff
	dsrl32	$a1, $a1, 0x0
	and	$t7, $t7, $a1
	beqz	$t8, lbl_00120B7C
	or	$v1, $t7, $v0
	dsll32	$v0, $v1, 0x0
	dsra32	$v0, $v0, 0x0
	and	$t6, $t6, $a0
	negu	$v0, $v0
	dsra32	$a0, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	negu	$a0, $a0
	dsrl32	$v0, $v0, 0x0
	or	$t6, $t6, $v0
	dsll32	$v1, $t6, 0x0
	dsra32	$v1, $v1, 0x0
	and	$t6, $t6, $a1
	sltu	$v1, $zero, $v1
	subu	$a0, $a0, $v1
	dsll32	$a0, $a0, 0x0
	or	$v1, $t6, $a0
lbl_00120B7C:
	jr	$ra
	move	$v0, $v1
	nop

sub_00120B88:
	move	$t0, $a0
	addiu	$sp, $sp, -32
	dsra32	$t2, $t0, 0x0
	sd	$s0, 16($sp)
	dsll32	$a0, $t2, 0x0
	dsra32	$a0, $a0, 0x0
	bgez	$a0, lbl_00120BFC
	move	$s0, $zero
	dsll32	$v0, $t0, 0x0
	dsra32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	negu	$v0, $v0
	and	$a2, $a2, $v1
	dsll32	$v0, $v0, 0x0
	negu	$v1, $a0
	dsrl32	$v0, $v0, 0x0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	or	$a2, $a2, $v0
	li	$s0, -1
	dsll32	$v0, $a2, 0x0
	dsra32	$v0, $v0, 0x0
	and	$a2, $a2, $a0
	sltu	$v0, $zero, $v0
	subu	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	or	$t0, $a2, $v1
	dsra32	$t2, $t0, 0x0
lbl_00120BFC:
	dsra32	$a0, $a1, 0x0
	bgez	$a0, lbl_00120C50
	negu	$a0, $a0
	dsll32	$v0, $a1, 0x0
	dsra32	$v0, $v0, 0x0
	lui	$a1, 0xffff
	dsrl32	$a1, $a1, 0x0
	negu	$v0, $v0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	and	$a3, $a3, $v1
	dsrl32	$v0, $v0, 0x0
	or	$a3, $a3, $v0
	dsll32	$v1, $a3, 0x0
	dsra32	$v1, $v1, 0x0
	and	$a3, $a3, $a1
	sltu	$v1, $zero, $v1
	subu	$a0, $a0, $v1
	dsll32	$a0, $a0, 0x0
	or	$a1, $a3, $a0
lbl_00120C50:
	dsra32	$t1, $a1, 0x0
	dsll32	$t5, $t0, 0x0
	dsra32	$t5, $t5, 0x0
	dsll32	$t2, $t2, 0x0
	dsra32	$t2, $t2, 0x0
	dsll32	$a3, $a1, 0x0
	dsra32	$a3, $a3, 0x0
	bnez	$t1, lbl_00120F30
	move	$t9, $sp
	sltu	$v0, $t2, $a3
	beqz	$v0, lbl_00120CF8
	li	$v0, 0xffff
	sltu	$v0, $v0, $a3
	bnez	$v0, lbl_00120CA0
	lui	$v0, 0xff
	sltiu	$v0, $a3, 256
	li	$a0, 8
	b	lbl_00120CB4
	movn	$a0, $zero, $v0
	nop
lbl_00120CA0:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $a3
	movn	$a0, $v1, $v0
lbl_00120CB4:
	srlv	$v1, $a3, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23392($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	beqz	$t4, lbl_00120CEC
	subu	$v0, $a1, $t4
	sllv	$v1, $t2, $t4
	srlv	$v0, $t5, $v0
	sllv	$t5, $t5, $t4
	or	$t2, $v1, $v0
	sllv	$a3, $a3, $t4
lbl_00120CEC:
	srl	$a2, $a3, 0x10
	b	lbl_00120E58
	andi	$t1, $a3, 0xffff
lbl_00120CF8:
	bnez	$a3, lbl_00120D20
	sltu	$v0, $v0, $a3
	li	$v0, 1
	beqzl	$a3, lbl_00120D0C
	break	0x7
lbl_00120D0C:
	divu	$zero, $v0, $t1
	mflo	$v0
	move	$a3, $v0
	li	$v0, 0xffff
	sltu	$v0, $v0, $a3
lbl_00120D20:
	bnez	$v0, lbl_00120D38
	lui	$v0, 0xff
	sltiu	$v0, $a3, 256
	li	$a0, 8
	b	lbl_00120D4C
	movn	$a0, $zero, $v0
lbl_00120D38:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $a3
	movn	$a0, $v1, $v0
lbl_00120D4C:
	srlv	$v1, $a3, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23392($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	bnez	$t4, lbl_00120D80
	subu	$t7, $a1, $t4
	subu	$t2, $t2, $a3
	srl	$a1, $a3, 0x10
	b	lbl_00120E50
	andi	$t6, $a3, 0xffff
lbl_00120D80:
	sllv	$v1, $t2, $t4
	srlv	$v0, $t5, $t7
	sllv	$t5, $t5, $t4
	srlv	$a0, $t2, $t7
	or	$t2, $v1, $v0
	sllv	$a3, $a3, $t4
	srl	$a1, $a3, 0x10
	divu	$zero, $a0, $a1
	srl	$a0, $t2, 0x10
	andi	$t6, $a3, 0xffff
	move	$t1, $a1
	beqzl	$t1, lbl_00120DB4
	break	0x7
lbl_00120DB4:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t6
	sll	$v1, $v1, 0x10
	or	$a2, $v1, $a0
	sltu	$v0, $a2, $t0
	beqz	$v0, lbl_00120DF8
	move	$t7, $t6
	addu	$a2, $a2, $a3
	sltu	$v0, $a2, $a3
	bnezl	$v0, lbl_00120DFC
	subu	$a2, $a2, $t0
	sltu	$v0, $a2, $t0
	addu	$v1, $a2, $a3
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
	nop
lbl_00120DF8:
	subu	$a2, $a2, $t0
lbl_00120DFC:
	andi	$a0, $t2, 0xffff
	divu	$zero, $a2, $t1
	beqzl	$t1, lbl_00120E0C
	break	0x7
lbl_00120E0C:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t7
	sll	$v1, $v1, 0x10
	or	$a0, $v1, $a0
	sltu	$v0, $a0, $t0
	beqz	$v0, lbl_00120E50
	subu	$t2, $a0, $t0
	addu	$a0, $a0, $a3
	sltu	$v0, $a0, $a3
	bnez	$v0, lbl_00120E50
	subu	$t2, $a0, $t0
	sltu	$v0, $a0, $t0
	addu	$v1, $a0, $a3
	xori	$v0, $v0, 0x0
	movn	$a0, $v1, $v0
	subu	$t2, $a0, $t0
lbl_00120E50:
	move	$a2, $a1
	move	$t1, $t6
lbl_00120E58:
	divu	$zero, $t2, $a2
	srl	$a0, $t5, 0x10
	beqzl	$a2, lbl_00120E68
	break	0x7
lbl_00120E68:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t1
	sll	$v1, $v1, 0x10
	or	$a1, $v1, $a0
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_00120EAC
	subu	$a1, $a1, $t0
	addu	$a1, $a1, $a3
	sltu	$v0, $a1, $a3
	bnezl	$v0, lbl_00120EAC
	subu	$a1, $a1, $t0
	sltu	$v0, $a1, $t0
	addu	$v1, $a1, $a3
	xori	$v0, $v0, 0x0
	movn	$a1, $v1, $v0
	subu	$a1, $a1, $t0
lbl_00120EAC:
	andi	$a0, $t5, 0xffff
	divu	$zero, $a1, $a2
	beqzl	$a2, lbl_00120EBC
	break	0x7
lbl_00120EBC:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t1
	sll	$v1, $v1, 0x10
	or	$a0, $v1, $a0
	sltu	$v0, $a0, $t0
	beqz	$v0, lbl_00120EF8
	nop
	addu	$a0, $a0, $a3
	sltu	$v0, $a0, $a3
	bnez	$v0, lbl_00120EF8
	sltu	$v0, $a0, $t0
	addu	$v1, $a0, $a3
	xori	$v0, $v0, 0x0
	movn	$a0, $v1, $v0
lbl_00120EF8:
	beqz	$t9, lbl_001211AC
	subu	$t5, $a0, $t0
	srlv	$v0, $t5, $t4
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	dsrl32	$v0, $v0, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	or	$t3, $t3, $v0
	b	lbl_001211A8
	and	$t3, $t3, $v1
	nop
lbl_00120F30:
	sltu	$v0, $t2, $t1
	beqz	$v0, lbl_00120F70
	li	$v0, 0xffff
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $t5, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	dsll32	$v0, $t2, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	b	lbl_001211AC
	sd	$t3, 0($sp)
lbl_00120F70:
	sltu	$v0, $v0, $t1
	bnez	$v0, lbl_00120F90
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_00120FA4
	movn	$a0, $zero, $v0
	nop
lbl_00120F90:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_00120FA4:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23392($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	bnez	$t4, lbl_00121028
	subu	$t7, $a1, $t4
	sltu	$v0, $t1, $t2
	bnez	$v0, lbl_00120FE0
	subu	$v0, $t5, $a3
	sltu	$v0, $t5, $a3
	bnez	$v0, lbl_00120FF0
	subu	$v0, $t5, $a3
lbl_00120FE0:
	subu	$a0, $t2, $t1
	sltu	$v1, $t5, $v0
	move	$t5, $v0
	subu	$t2, $a0, $v1
lbl_00120FF0:
	beqz	$t9, lbl_001211AC
	dsll32	$v0, $t5, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	dsll32	$v0, $t2, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$t3, $t3, $v1
	b	lbl_001211A8
	or	$t3, $t3, $v0
	nop
lbl_00121028:
	sllv	$a1, $t2, $t4
	sllv	$a0, $t1, $t4
	srlv	$v0, $a3, $t7
	srlv	$v1, $t5, $t7
	sllv	$t5, $t5, $t4
	or	$t1, $a0, $v0
	srlv	$a0, $t2, $t7
	sllv	$a3, $a3, $t4
	or	$t2, $a1, $v1
	srl	$a2, $t1, 0x10
	divu	$zero, $a0, $a2
	srl	$a0, $t2, 0x10
	andi	$a1, $t1, 0xffff
	beqzl	$a2, lbl_00121064
	break	0x7
lbl_00121064:
	mflo	$v0
	mfhi	$v1
	move	$t6, $v0
	sll	$v1, $v1, 0x10
	mult	$t0, $t6, $a1
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $t0
	beqzl	$v0, lbl_001210B4
	subu	$v1, $v1, $t0
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_001210B0
	addiu	$t6, $t6, -1
	sltu	$v0, $v1, $t0
	beqzl	$v0, lbl_001210B4
	subu	$v1, $v1, $t0
	addiu	$t6, $t6, -1
	addu	$v1, $v1, $t1
	nop
lbl_001210B0:
	subu	$v1, $v1, $t0
lbl_001210B4:
	beqzl	$a2, lbl_001210BC
	break	0x7
lbl_001210BC:
	divu	$zero, $v1, $a2
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$t0, $a2, $a1
	or	$a1, $v1, $a0
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_00121110
	subu	$a1, $a1, $t0
	addu	$a1, $a1, $t1
	sltu	$v0, $a1, $t1
	bnez	$v0, lbl_0012110C
	addiu	$a2, $a2, -1
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_00121110
	subu	$a1, $a1, $t0
	addiu	$a2, $a2, -1
	addu	$a1, $a1, $t1
lbl_0012110C:
	subu	$a1, $a1, $t0
lbl_00121110:
	sll	$v0, $t6, 0x10
	or	$v0, $v0, $a2
	move	$t2, $a1
	multu	$v0, $a3
	mfhi	$a2
	mflo	$t0
	sltu	$v1, $t2, $a2
	bnez	$v1, lbl_00121148
	subu	$v0, $t0, $a3
	bne	$a2, $t2, lbl_00121158
	sltu	$v0, $t5, $t0
	beqz	$v0, lbl_00121158
	subu	$v0, $t0, $a3
	nop
lbl_00121148:
	subu	$a0, $a2, $t1
	sltu	$v1, $t0, $v0
	move	$t0, $v0
	subu	$a2, $a0, $v1
lbl_00121158:
	beqz	$t9, lbl_001211AC
	subu	$a0, $t5, $t0
	subu	$a1, $a1, $a2
	sltu	$v1, $t5, $a0
	subu	$t2, $a1, $v1
	sllv	$v0, $t2, $t7
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	srlv	$a0, $a0, $t4
	and	$t3, $t3, $v1
	or	$v0, $v0, $a0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	dsll32	$v0, $v0, 0x0
	srlv	$v1, $t2, $t4
	dsrl32	$v0, $v0, 0x0
	dsll32	$v1, $v1, 0x0
	or	$t3, $t3, $v0
	and	$t3, $t3, $a0
	or	$t3, $t3, $v1
lbl_001211A8:
	sd	$t3, 0($t9)
lbl_001211AC:
	beqz	$s0, lbl_00121208
	ld	$v1, 0($sp)
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	and	$t8, $t8, $a0
	dsll32	$v0, $v1, 0x0
	dsra32	$v0, $v0, 0x0
	dsra32	$v1, $v1, 0x0
	negu	$v0, $v0
	negu	$v1, $v1
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	or	$t8, $t8, $v0
	lui	$v0, 0xffff
	dsrl32	$v0, $v0, 0x0
	dsll32	$a0, $t8, 0x0
	dsra32	$a0, $a0, 0x0
	and	$t8, $t8, $v0
	sltu	$a0, $zero, $a0
	subu	$v1, $v1, $a0
	dsll32	$v1, $v1, 0x0
	or	$t8, $t8, $v1
	sd	$t8, 0($sp)
lbl_00121208:
	ld	$v0, 0($sp)
	ld	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00121218:
	dsra32	$t0, $a1, 0x0
	dsra32	$t2, $a0, 0x0
	dsll32	$t1, $a1, 0x0
	dsra32	$t1, $t1, 0x0
	dsll32	$t3, $a0, 0x0
	dsra32	$t3, $t3, 0x0
	bnez	$t0, lbl_001215B8
	sltu	$v0, $t2, $t0
	sltu	$v0, $t2, $t1
	beqz	$v0, lbl_00121378
	li	$v0, 0xffff
	sltu	$v0, $v0, $t1
	bnez	$v0, lbl_00121260
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_00121274
	movn	$a0, $zero, $v0
lbl_00121260:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_00121274:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23648($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	beqz	$a2, lbl_001212AC
	subu	$v0, $a1, $a2
	sllv	$v1, $t2, $a2
	srlv	$v0, $t3, $v0
	sllv	$t3, $t3, $a2
	or	$t2, $v1, $v0
	sllv	$t1, $t1, $a2
lbl_001212AC:
	srl	$a2, $t1, 0x10
	andi	$t0, $t1, 0xffff
	divu	$zero, $t2, $a2
	srl	$a0, $t3, 0x10
	beqzl	$a2, lbl_001212C4
	break	0x7
lbl_001212C4:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_00121314
	subu	$v1, $v1, $a1
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00121310
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_00121314
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
	nop
lbl_00121310:
	subu	$v1, $v1, $a1
lbl_00121314:
	beqzl	$a2, lbl_0012131C
	break	0x7
lbl_0012131C:
	divu	$zero, $v1, $a2
	andi	$a0, $t3, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_0012136C
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00121368
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	addiu	$v1, $a2, -1
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
lbl_00121368:
	sll	$v0, $a3, 0x10
lbl_0012136C:
	b	lbl_00121760
	or	$a2, $v0, $a2
	nop
lbl_00121378:
	bnez	$t1, lbl_001213A0
	sltu	$v0, $v0, $t1
	li	$v0, 1
	beqzl	$t1, lbl_0012138C
	break	0x7
lbl_0012138C:
	divu	$zero, $v0, $t0
	mflo	$v0
	move	$t1, $v0
	li	$v0, 0xffff
	sltu	$v0, $v0, $t1
lbl_001213A0:
	bnez	$v0, lbl_001213B8
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_001213CC
	movn	$a0, $zero, $v0
lbl_001213B8:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_001213CC:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23648($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	bnez	$a2, lbl_00121408
	subu	$a3, $a1, $a2
	subu	$t2, $t2, $t1
	li	$t5, 1
	srl	$t0, $t1, 0x10
	b	lbl_001214F0
	andi	$t4, $t1, 0xffff
	nop
lbl_00121408:
	sllv	$v1, $t2, $a2
	srlv	$v0, $t3, $a3
	sllv	$t3, $t3, $a2
	srlv	$a0, $t2, $a3
	or	$t2, $v1, $v0
	sllv	$t1, $t1, $a2
	srl	$t0, $t1, 0x10
	divu	$zero, $a0, $t0
	srl	$a0, $t2, 0x10
	andi	$t4, $t1, 0xffff
	move	$a2, $t0
	beqzl	$a2, lbl_0012143C
	break	0x7
lbl_0012143C:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_00121488
	move	$t5, $t4
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00121488
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_0012148C
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
	nop
lbl_00121488:
	subu	$v1, $v1, $a1
lbl_0012148C:
	beqzl	$a2, lbl_00121494
	break	0x7
lbl_00121494:
	divu	$zero, $v1, $a2
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t5
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_001214E8
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_001214E4
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_001214E8
	sll	$v0, $a3, 0x10
	addiu	$a2, $a2, -1
	addu	$v1, $v1, $t1
lbl_001214E4:
	sll	$v0, $a3, 0x10
lbl_001214E8:
	subu	$t2, $v1, $a1
	or	$t5, $v0, $a2
lbl_001214F0:
	move	$a2, $t0
	move	$t0, $t4
	divu	$zero, $t2, $a2
	srl	$a0, $t3, 0x10
	beqzl	$a2, lbl_00121508
	break	0x7
lbl_00121508:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a3, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_00121554
	subu	$v1, $v1, $a1
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00121550
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a1
	beqzl	$v0, lbl_00121554
	subu	$v1, $v1, $a1
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t1
lbl_00121550:
	subu	$v1, $v1, $a1
lbl_00121554:
	beqzl	$a2, lbl_0012155C
	break	0x7
lbl_0012155C:
	divu	$zero, $v1, $a2
	andi	$a0, $t3, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$a1, $a2, $t0
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a1
	beqz	$v0, lbl_001215AC
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_001215A8
	addiu	$a2, $a2, -1
	sltu	$v0, $v1, $a1
	addiu	$v1, $a2, -1
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
lbl_001215A8:
	sll	$v0, $a3, 0x10
lbl_001215AC:
	b	lbl_00121764
	or	$a2, $v0, $a2
	nop
lbl_001215B8:
	beqzl	$v0, lbl_001215C8
	li	$v0, 0xffff
	b	lbl_00121760
	move	$a2, $zero
lbl_001215C8:
	sltu	$v0, $v0, $t0
	bnez	$v0, lbl_001215E8
	lui	$v0, 0xff
	sltiu	$v0, $t0, 256
	li	$a0, 8
	b	lbl_001215FC
	movn	$a0, $zero, $v0
	nop
lbl_001215E8:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t0
	movn	$a0, $v1, $v0
lbl_001215FC:
	srlv	$v1, $t0, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23648($v0)
	addu	$v0, $v0, $a0
	subu	$a2, $a1, $v0
	bnez	$a2, lbl_00121640
	subu	$a3, $a1, $a2
	sltu	$v0, $t0, $t2
	bnez	$v0, lbl_00121760
	li	$a2, 1
	sltu	$v0, $t3, $t1
	bnez	$v0, lbl_00121760
	move	$a2, $zero
	b	lbl_00121760
	li	$a2, 1
lbl_00121640:
	sllv	$a0, $t0, $a2
	srlv	$a1, $t3, $a3
	sllv	$t3, $t3, $a2
	srlv	$v0, $t1, $a3
	sllv	$t1, $t1, $a2
	sllv	$v1, $t2, $a2
	or	$t0, $a0, $v0
	srlv	$a0, $t2, $a3
	or	$t2, $v1, $a1
	srl	$a1, $t0, 0x10
	divu	$zero, $a0, $a1
	srl	$a0, $t2, 0x10
	andi	$t4, $t0, 0xffff
	beqzl	$a1, lbl_0012167C
	break	0x7
lbl_0012167C:
	mflo	$v0
	mfhi	$v1
	move	$a3, $v0
	sll	$v1, $v1, 0x10
	mult	$a2, $a3, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a2
	beqzl	$v0, lbl_001216CC
	subu	$v1, $v1, $a2
	addu	$v1, $v1, $t0
	sltu	$v0, $v1, $t0
	bnez	$v0, lbl_001216C8
	addiu	$a3, $a3, -1
	sltu	$v0, $v1, $a2
	beqzl	$v0, lbl_001216CC
	subu	$v1, $v1, $a2
	addiu	$a3, $a3, -1
	addu	$v1, $v1, $t0
	nop
lbl_001216C8:
	subu	$v1, $v1, $a2
lbl_001216CC:
	beqzl	$a1, lbl_001216D4
	break	0x7
lbl_001216D4:
	divu	$zero, $v1, $a1
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a1, $v0
	sll	$v1, $v1, 0x10
	mult	$a2, $a1, $t4
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $a2
	beqz	$v0, lbl_00121728
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t0
	sltu	$v0, $v1, $t0
	bnez	$v0, lbl_00121724
	addiu	$a1, $a1, -1
	sltu	$v0, $v1, $a2
	beqz	$v0, lbl_00121728
	sll	$v0, $a3, 0x10
	addu	$v1, $v1, $t0
	addiu	$a1, $a1, -1
lbl_00121724:
	sll	$v0, $a3, 0x10
lbl_00121728:
	subu	$v1, $v1, $a2
	or	$a2, $v0, $a1
	multu	$a2, $t1
	mfhi	$a3
	mflo	$a0
	sltu	$v0, $v1, $a3
	bnezl	$v0, lbl_00121760
	addiu	$a2, $a2, -1
	bne	$a3, $v1, lbl_00121764
	move	$t5, $zero
	sltu	$v0, $t3, $a0
	beqz	$v0, lbl_00121764
	nop
	addiu	$a2, $a2, -1
lbl_00121760:
	move	$t5, $zero
lbl_00121764:
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $a2, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t6, $t6, $v1
	or	$t6, $t6, $v0
	dsll32	$v0, $t5, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$t6, $t6, $v1
	jr	$ra
	or	$v0, $t6, $v0
	nop

sub_00121798:
	addiu	$sp, $sp, -16
	dsra32	$t1, $a1, 0x0
	dsra32	$t2, $a0, 0x0
	dsll32	$a3, $a1, 0x0
	dsra32	$a3, $a3, 0x0
	dsll32	$t5, $a0, 0x0
	dsra32	$t5, $t5, 0x0
	bnez	$t1, lbl_00121A78
	move	$t8, $sp
	sltu	$v0, $t2, $a3
	beqz	$v0, lbl_00121840
	li	$v0, 0xffff
	sltu	$v0, $v0, $a3
	bnez	$v0, lbl_001217E8
	lui	$v0, 0xff
	sltiu	$v0, $a3, 256
	li	$a0, 8
	b	lbl_001217FC
	movn	$a0, $zero, $v0
	nop
lbl_001217E8:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $a3
	movn	$a0, $v1, $v0
lbl_001217FC:
	srlv	$v1, $a3, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23904($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	beqz	$t4, lbl_00121834
	subu	$v0, $a1, $t4
	sllv	$v1, $t2, $t4
	srlv	$v0, $t5, $v0
	sllv	$t5, $t5, $t4
	or	$t2, $v1, $v0
	sllv	$a3, $a3, $t4
lbl_00121834:
	srl	$a2, $a3, 0x10
	b	lbl_001219A0
	andi	$t1, $a3, 0xffff
lbl_00121840:
	bnez	$a3, lbl_00121868
	sltu	$v0, $v0, $a3
	li	$v0, 1
	beqzl	$a3, lbl_00121854
	break	0x7
lbl_00121854:
	divu	$zero, $v0, $t1
	mflo	$v0
	move	$a3, $v0
	li	$v0, 0xffff
	sltu	$v0, $v0, $a3
lbl_00121868:
	bnez	$v0, lbl_00121880
	lui	$v0, 0xff
	sltiu	$v0, $a3, 256
	li	$a0, 8
	b	lbl_00121894
	movn	$a0, $zero, $v0
lbl_00121880:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $a3
	movn	$a0, $v1, $v0
lbl_00121894:
	srlv	$v1, $a3, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23904($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	bnez	$t4, lbl_001218C8
	subu	$t7, $a1, $t4
	subu	$t2, $t2, $a3
	srl	$a1, $a3, 0x10
	b	lbl_00121998
	andi	$t6, $a3, 0xffff
lbl_001218C8:
	sllv	$v1, $t2, $t4
	srlv	$v0, $t5, $t7
	sllv	$t5, $t5, $t4
	srlv	$a0, $t2, $t7
	or	$t2, $v1, $v0
	sllv	$a3, $a3, $t4
	srl	$a1, $a3, 0x10
	divu	$zero, $a0, $a1
	srl	$a0, $t2, 0x10
	andi	$t6, $a3, 0xffff
	move	$t1, $a1
	beqzl	$t1, lbl_001218FC
	break	0x7
lbl_001218FC:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t6
	sll	$v1, $v1, 0x10
	or	$a2, $v1, $a0
	sltu	$v0, $a2, $t0
	beqz	$v0, lbl_00121940
	move	$t7, $t6
	addu	$a2, $a2, $a3
	sltu	$v0, $a2, $a3
	bnezl	$v0, lbl_00121944
	subu	$a2, $a2, $t0
	sltu	$v0, $a2, $t0
	addu	$v1, $a2, $a3
	xori	$v0, $v0, 0x0
	movn	$a2, $v1, $v0
	nop
lbl_00121940:
	subu	$a2, $a2, $t0
lbl_00121944:
	andi	$a0, $t2, 0xffff
	divu	$zero, $a2, $t1
	beqzl	$t1, lbl_00121954
	break	0x7
lbl_00121954:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t7
	sll	$v1, $v1, 0x10
	or	$a0, $v1, $a0
	sltu	$v0, $a0, $t0
	beqz	$v0, lbl_00121998
	subu	$t2, $a0, $t0
	addu	$a0, $a0, $a3
	sltu	$v0, $a0, $a3
	bnez	$v0, lbl_00121998
	subu	$t2, $a0, $t0
	sltu	$v0, $a0, $t0
	addu	$v1, $a0, $a3
	xori	$v0, $v0, 0x0
	movn	$a0, $v1, $v0
	subu	$t2, $a0, $t0
lbl_00121998:
	move	$a2, $a1
	move	$t1, $t6
lbl_001219A0:
	divu	$zero, $t2, $a2
	srl	$a0, $t5, 0x10
	beqzl	$a2, lbl_001219B0
	break	0x7
lbl_001219B0:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t1
	sll	$v1, $v1, 0x10
	or	$a1, $v1, $a0
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_001219F4
	subu	$a1, $a1, $t0
	addu	$a1, $a1, $a3
	sltu	$v0, $a1, $a3
	bnezl	$v0, lbl_001219F4
	subu	$a1, $a1, $t0
	sltu	$v0, $a1, $t0
	addu	$v1, $a1, $a3
	xori	$v0, $v0, 0x0
	movn	$a1, $v1, $v0
	subu	$a1, $a1, $t0
lbl_001219F4:
	andi	$a0, $t5, 0xffff
	divu	$zero, $a1, $a2
	beqzl	$a2, lbl_00121A04
	break	0x7
lbl_00121A04:
	mflo	$v0
	mfhi	$v1
	mult	$t0, $v0, $t1
	sll	$v1, $v1, 0x10
	or	$a0, $v1, $a0
	sltu	$v0, $a0, $t0
	beqz	$v0, lbl_00121A40
	nop
	addu	$a0, $a0, $a3
	sltu	$v0, $a0, $a3
	bnez	$v0, lbl_00121A40
	sltu	$v0, $a0, $t0
	addu	$v1, $a0, $a3
	xori	$v0, $v0, 0x0
	movn	$a0, $v1, $v0
lbl_00121A40:
	beqz	$t8, lbl_00121CF4
	subu	$t5, $a0, $t0
	srlv	$v0, $t5, $t4
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	dsrl32	$v0, $v0, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	or	$t3, $t3, $v0
	b	lbl_00121CF0
	and	$t3, $t3, $v1
	nop
lbl_00121A78:
	sltu	$v0, $t2, $t1
	beqz	$v0, lbl_00121AB8
	li	$v0, 0xffff
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $t5, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	dsll32	$v0, $t2, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	b	lbl_00121CF4
	sd	$t3, 0($sp)
lbl_00121AB8:
	sltu	$v0, $v0, $t1
	bnez	$v0, lbl_00121AD8
	lui	$v0, 0xff
	sltiu	$v0, $t1, 256
	li	$a0, 8
	b	lbl_00121AEC
	movn	$a0, $zero, $v0
	nop
lbl_00121AD8:
	li	$v1, 24
	ori	$v0, $v0, 0xffff
	li	$a0, 16
	sltu	$v0, $v0, $t1
	movn	$a0, $v1, $v0
lbl_00121AEC:
	srlv	$v1, $t1, $a0
	li	$a1, 32
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 23904($v0)
	addu	$v0, $v0, $a0
	subu	$t4, $a1, $v0
	bnez	$t4, lbl_00121B70
	subu	$t7, $a1, $t4
	sltu	$v0, $t1, $t2
	bnez	$v0, lbl_00121B28
	subu	$v0, $t5, $a3
	sltu	$v0, $t5, $a3
	bnez	$v0, lbl_00121B38
	subu	$v0, $t5, $a3
lbl_00121B28:
	subu	$a0, $t2, $t1
	sltu	$v1, $t5, $v0
	move	$t5, $v0
	subu	$t2, $a0, $v1
lbl_00121B38:
	beqz	$t8, lbl_00121CF4
	dsll32	$v0, $t5, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$t3, $t3, $v1
	or	$t3, $t3, $v0
	dsll32	$v0, $t2, 0x0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$t3, $t3, $v1
	b	lbl_00121CF0
	or	$t3, $t3, $v0
	nop
lbl_00121B70:
	sllv	$a1, $t2, $t4
	sllv	$a0, $t1, $t4
	srlv	$v0, $a3, $t7
	srlv	$v1, $t5, $t7
	sllv	$t5, $t5, $t4
	or	$t1, $a0, $v0
	srlv	$a0, $t2, $t7
	sllv	$a3, $a3, $t4
	or	$t2, $a1, $v1
	srl	$a2, $t1, 0x10
	divu	$zero, $a0, $a2
	srl	$a0, $t2, 0x10
	andi	$a1, $t1, 0xffff
	beqzl	$a2, lbl_00121BAC
	break	0x7
lbl_00121BAC:
	mflo	$v0
	mfhi	$v1
	move	$t6, $v0
	sll	$v1, $v1, 0x10
	mult	$t0, $t6, $a1
	or	$v1, $v1, $a0
	sltu	$v0, $v1, $t0
	beqzl	$v0, lbl_00121BFC
	subu	$v1, $v1, $t0
	addu	$v1, $v1, $t1
	sltu	$v0, $v1, $t1
	bnez	$v0, lbl_00121BF8
	addiu	$t6, $t6, -1
	sltu	$v0, $v1, $t0
	beqzl	$v0, lbl_00121BFC
	subu	$v1, $v1, $t0
	addiu	$t6, $t6, -1
	addu	$v1, $v1, $t1
	nop
lbl_00121BF8:
	subu	$v1, $v1, $t0
lbl_00121BFC:
	beqzl	$a2, lbl_00121C04
	break	0x7
lbl_00121C04:
	divu	$zero, $v1, $a2
	andi	$a0, $t2, 0xffff
	mflo	$v0
	mfhi	$v1
	move	$a2, $v0
	sll	$v1, $v1, 0x10
	mult	$t0, $a2, $a1
	or	$a1, $v1, $a0
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_00121C58
	subu	$a1, $a1, $t0
	addu	$a1, $a1, $t1
	sltu	$v0, $a1, $t1
	bnez	$v0, lbl_00121C54
	addiu	$a2, $a2, -1
	sltu	$v0, $a1, $t0
	beqzl	$v0, lbl_00121C58
	subu	$a1, $a1, $t0
	addiu	$a2, $a2, -1
	addu	$a1, $a1, $t1
lbl_00121C54:
	subu	$a1, $a1, $t0
lbl_00121C58:
	sll	$v0, $t6, 0x10
	or	$v0, $v0, $a2
	move	$t2, $a1
	multu	$v0, $a3
	mfhi	$a2
	mflo	$t0
	sltu	$v1, $t2, $a2
	bnez	$v1, lbl_00121C90
	subu	$v0, $t0, $a3
	bne	$a2, $t2, lbl_00121CA0
	sltu	$v0, $t5, $t0
	beqz	$v0, lbl_00121CA0
	subu	$v0, $t0, $a3
	nop
lbl_00121C90:
	subu	$a0, $a2, $t1
	sltu	$v1, $t0, $v0
	move	$t0, $v0
	subu	$a2, $a0, $v1
lbl_00121CA0:
	beqz	$t8, lbl_00121CF4
	subu	$a0, $t5, $t0
	subu	$a1, $a1, $a2
	sltu	$v1, $t5, $a0
	subu	$t2, $a1, $v1
	sllv	$v0, $t2, $t7
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	srlv	$a0, $a0, $t4
	and	$t3, $t3, $v1
	or	$v0, $v0, $a0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	dsll32	$v0, $v0, 0x0
	srlv	$v1, $t2, $t4
	dsrl32	$v0, $v0, 0x0
	dsll32	$v1, $v1, 0x0
	or	$t3, $t3, $v0
	and	$t3, $t3, $a0
	or	$t3, $t3, $v1
lbl_00121CF0:
	sd	$t3, 0($t8)
lbl_00121CF4:
	ld	$v0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_00121D00:
	addiu	$sp, $sp, -32
	li	$v0, -1
	dsrl	$v0, $v0, 0xb
	sd	$s1, 8($sp)
	move	$s1, $a0
	daddu	$v0, $s1, $v0
	li	$v1, -1
	dsll	$v1, $v1, 0xb
	dsrl	$v1, $v1, 0xa
	sltu	$v1, $v1, $v0
	andi	$v0, $s1, 0x7ff
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	beqz	$v1, lbl_00121D48
	sd	$ra, 24($sp)
	beqz	$v0, lbl_00121D48
	li	$v0, 2048
	or	$s1, $s1, $v0
lbl_00121D48:
	li	$s0, 0x81e0
	dsll32	$s0, $s0, 0xf
	dsra32	$a0, $s1, 0x0
	jal	sub_00122928
	nop
	move	$a0, $v0
	move	$a1, $s0
	jal	sub_00122510
	nop
	move	$a1, $s0
	lui	$s0, 0xffff
	dsrl32	$s0, $s0, 0x0
	move	$a0, $v0
	jal	sub_00122510
	and	$s0, $s1, $s0
	dsll32	$s0, $s0, 0x0
	dsra32	$s0, $s0, 0x0
	move	$s2, $v0
	jal	sub_00122928
	move	$a0, $s0
	li	$a1, 0x83e0
	dsll32	$a1, $a1, 0xf
	bgez	$s0, lbl_00121DB4
	nop
	move	$a0, $v0
	jal	sub_00122450
	nop
lbl_00121DB4:
	move	$a1, $v0
	move	$a0, $s2
	jal	sub_00122450
	nop
	move	$a0, $v0
	jal	sub_00122A10
	nop
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00121DE8:
	addiu	$sp, $sp, -32
	move	$a1, $zero
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$ra, 24($sp)
	jal	sub_001228D8
	nop
	move	$a0, $s1
	li	$a1, 0xf7c0
	dsll32	$a1, $a1, 0xe
	bltz	$v0, lbl_00121EE8
	move	$v0, $zero
	jal	sub_00122510
	nop
	move	$a0, $v0
	jal	sub_00122A68
	nop
	dsll32	$s0, $v0, 0x0
	andi	$v0, $s0, 0x1
	dsrl	$a0, $s0, 0x1
	bltz	$s0, lbl_00121E58
	or	$a0, $v0, $a0
	jal	sub_00124110
	move	$a0, $s0
	b	lbl_00121E70
	nop
lbl_00121E58:
	jal	sub_00124110
	nop
	move	$a0, $v0
	move	$a1, $a0
	jal	sub_00122450
	nop
lbl_00121E70:
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$s2, $zero
	move	$s1, $v0
	move	$a1, $s2
	move	$a0, $s1
	jal	sub_001228D8
	nop
	move	$a0, $s1
	move	$a1, $s1
	bgez	$v0, lbl_00121ED0
	nop
	move	$a0, $s2
	jal	sub_001224A8
	nop
	move	$a0, $v0
	jal	sub_00122A68
	nop
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	b	lbl_00121EE4
	dsubu	$s0, $s0, $v0
lbl_00121ED0:
	jal	sub_00122A68
	nop
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	daddu	$s0, $s0, $v0
lbl_00121EE4:
	move	$v0, $s0
lbl_00121EE8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00121F00:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$ra, 24($sp)
	jal	sub_001221B0
	nop
	move	$s1, $v0
	move	$a1, $zero
	move	$a0, $s1
	jal	sub_001228D8
	nop
	move	$a0, $s1
	li	$a1, 0xf7c0
	dsll32	$a1, $a1, 0xe
	bltz	$v0, lbl_00122010
	move	$v0, $zero
	jal	sub_00122510
	nop
	move	$a0, $v0
	jal	sub_00122A68
	nop
	dsll32	$s0, $v0, 0x0
	andi	$v0, $s0, 0x1
	dsrl	$a0, $s0, 0x1
	bltz	$s0, lbl_00121F80
	or	$a0, $v0, $a0
	jal	sub_00124110
	move	$a0, $s0
	b	lbl_00121F98
	nop
	nop
lbl_00121F80:
	jal	sub_00124110
	nop
	move	$a0, $v0
	move	$a1, $a0
	jal	sub_00122450
	nop
lbl_00121F98:
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$s2, $zero
	move	$s1, $v0
	move	$a1, $s2
	move	$a0, $s1
	jal	sub_001228D8
	nop
	move	$a0, $s1
	move	$a1, $s1
	bgez	$v0, lbl_00121FF8
	nop
	move	$a0, $s2
	jal	sub_001224A8
	nop
	move	$a0, $v0
	jal	sub_00122A68
	nop
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	b	lbl_0012200C
	dsubu	$s0, $s0, $v0
lbl_00121FF8:
	jal	sub_00122A68
	nop
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	daddu	$s0, $s0, $v0
lbl_0012200C:
	move	$v0, $s0
lbl_00122010:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	addiu	$a0, $v0, 10360
	sd	$ra, 8($sp)
	lw	$v1, 0($a0)
	lw	$v0, 0($v1)
	beqz	$v0, lbl_00122074
	move	$s0, $a0
	lw	$a0, 0($s0)
lbl_00122050:
	addiu	$v0, $a0, 4
	sw	$v0, 0($s0)
	lw	$v1, 0($a0)
	jalr	$v1
	nop
	lw	$v0, 0($s0)
	lw	$v1, 0($v0)
	bnezl	$v1, lbl_00122050
	lw	$a0, 0($s0)
lbl_00122074:
	lui	$v0, 0x13
	addiu	$a1, $v0, 10364
	lw	$v1, 0($a1)
	bnez	$v1, lbl_001220A8
	ld	$s0, 0($sp)
	lui	$a0, 0x13
	ld	$ra, 8($sp)
	li	$v0, 1
	addiu	$a0, $a0, 12280
	sw	$v0, 0($a1)
	j	sub_00123348
	addiu	$sp, $sp, 16
	nop
lbl_001220A8:
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
lbl_001220B8:
	lui	$a0, 0x13
	lui	$a1, 0x16
	addiu	$sp, $sp, -32
	addiu	$a0, $a0, 12280
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_00123218
	addiu	$a1, $a1, 19392
	lui	$v0, 0x13
	li	$v1, -1
	addiu	$a1, $v0, 12260
	lw	$a0, 0($a1)
	bne	$a0, $v1, lbl_00122128
	nop
	lw	$v0, 4($a1)
	beqz	$v0, lbl_00122128
	move	$a0, $zero
	move	$a2, $a1
	li	$a1, 4
lbl_00122108:
	daddiu	$a1, $a1, 4
	dsll32	$v0, $a1, 0x0
	dsra32	$v0, $v0, 0x0
	addu	$v0, $v0, $a2
	lw	$v1, 0($v0)
	nop
	bnez	$v1, lbl_00122108
	daddiu	$a0, $a0, 1
lbl_00122128:
	dsll32	$s0, $a0, 0x0
	dsra32	$s0, $s0, 0x0
	beqz	$s0, lbl_0012215C
	sll	$v0, $s0, 0x2
	lui	$s1, 0x13
	addiu	$s1, $s1, 12260
	addu	$s1, $s1, $v0
	lw	$v0, 0($s1)
lbl_00122148:
	addiu	$s1, $s1, -4
	jalr	$v0
	addiu	$s0, $s0, -1
	bnezl	$s0, lbl_00122148
	lw	$v0, 0($s1)
lbl_0012215C:
	lui	$a0, 0x12
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	addiu	$a0, $a0, 8232
	ld	$ra, 16($sp)
	j	lbl_001245D0
	addiu	$sp, $sp, 32

sub_00122178:
	addiu	$sp, $sp, -16
	lui	$v0, 0x16
	sd	$ra, 0($sp)
	addiu	$a0, $v0, 19416
	lw	$v1, 0($a0)
	bnez	$v1, lbl_001221A8
	ld	$ra, 0($sp)
	li	$v0, 1
	sw	$v0, 0($a0)
	j	lbl_001220B8
	addiu	$sp, $sp, 16
	nop
lbl_001221A8:
	jr	$ra
	addiu	$sp, $sp, 16

sub_001221B0:
	addiu	$sp, $sp, -48
	addiu	$a0, $sp, 16
	move	$a1, $sp
	sd	$ra, 32($sp)
	jal	sub_001241B8
	swc1	$f12, 16($sp)
	lwu	$a3, 12($sp)
	lw	$a0, 0($sp)
	lw	$a1, 4($sp)
	dsll	$a3, $a3, 0x1e
	jal	sub_001229E0
	lw	$a2, 8($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_001221F0:
	move	$t3, $a0
	lw	$a3, 0($t3)
	sltiu	$v1, $a3, 2
	bnez	$v1, lbl_00122444
	move	$v0, $t3
	lw	$a0, 0($a1)
	sltiu	$v1, $a0, 2
	bnez	$v1, lbl_00122444
	move	$v0, $a1
	xori	$v0, $a3, 0x4
	bnez	$v0, lbl_00122248
	xori	$v1, $a0, 0x4
	xori	$v0, $a0, 0x4
	bnez	$v0, lbl_00122298
	nop
	lw	$v1, 4($a1)
	lw	$v0, 4($t3)
	beq	$v0, $v1, lbl_00122298
	nop
	lui	$v0, 0x13
	jr	$ra
	addiu	$v0, $v0, 24160
lbl_00122248:
	beqz	$v1, lbl_00122444
	move	$v0, $a1
	xori	$v0, $a0, 0x2
	bnez	$v0, lbl_001222A0
	xori	$v1, $a3, 0x2
	xori	$v0, $a3, 0x2
	bnez	$v0, lbl_00122298
	nop
	ld	$a0, 0($t3)
	move	$v0, $a2
	sd	$a0, 0($a2)
	ld	$v1, 8($t3)
	sd	$v1, 8($a2)
	ld	$a0, 16($t3)
	sd	$a0, 16($a2)
	lw	$v1, 4($t3)
	lw	$a0, 4($a1)
	and	$v1, $v1, $a0
	jr	$ra
	sw	$v1, 4($a2)
lbl_00122298:
	jr	$ra
	move	$v0, $t3
lbl_001222A0:
	beqz	$v1, lbl_00122444
	move	$v0, $a1
	lw	$t0, 8($t3)
	lw	$a3, 8($a1)
	ld	$t2, 16($t3)
	subu	$v0, $t0, $a3
	negu	$a0, $v0
	slti	$v1, $v0, 0
	movn	$v0, $a0, $v1
	slti	$v0, $v0, 64
	beqz	$v0, lbl_00122340
	ld	$t1, 16($a1)
	slt	$v0, $a3, $t0
	beqz	$v0, lbl_0012230C
	slt	$v0, $t0, $a3
	li	$a0, 1
	subu	$a3, $t0, $a3
	nop
lbl_001222E8:
	dsrl	$v1, $t1, 0x1
	and	$v0, $t1, $a0
	addiu	$a3, $a3, -1
	nop
	nop
	bnez	$a3, lbl_001222E8
	or	$t1, $v0, $v1
	move	$a3, $t0
	slt	$v0, $t0, $a3
lbl_0012230C:
	beqzl	$v0, lbl_00122360
	lw	$a0, 4($t3)
	li	$t4, 1
lbl_00122318:
	addiu	$t0, $t0, 1
	dsrl	$v0, $t2, 0x1
	and	$v1, $t2, $t4
	slt	$a0, $t0, $a3
	nop
	bnez	$a0, lbl_00122318
	or	$t2, $v1, $v0
	b	lbl_00122360
	lw	$a0, 4($t3)
	nop
lbl_00122340:
	slt	$v0, $a3, $t0
	beqzl	$v0, lbl_00122358
	move	$t0, $a3
	b	lbl_0012235C
	move	$t1, $zero
	nop
lbl_00122358:
	move	$t2, $zero
lbl_0012235C:
	lw	$a0, 4($t3)
lbl_00122360:
	lw	$v0, 4($a1)
	beq	$a0, $v0, lbl_001223F8
	dsubu	$v0, $t2, $t1
	dsubu	$v1, $t1, $t2
	movz	$v1, $v0, $a0
	bltzl	$v1, lbl_00122390
	dnegu	$v1, $v1
	sw	$t0, 8($a2)
	sd	$v1, 16($a2)
	b	lbl_001223A0
	sw	$zero, 4($a2)
	nop
lbl_00122390:
	li	$v0, 1
	sw	$v0, 4($a2)
	sw	$t0, 8($a2)
	sd	$v1, 16($a2)
lbl_001223A0:
	ld	$a3, 16($a2)
	li	$v0, -1
	dsll	$v0, $v0, 0x5
	dsrl	$v0, $v0, 0x4
	daddiu	$v1, $a3, -1
	sltu	$v0, $v0, $v1
	bnez	$v0, lbl_0012240C
	nop
lbl_001223C0:
	dsll	$a1, $a3, 0x1
	lw	$v0, 8($a2)
	daddiu	$v1, $a1, -1
	li	$a0, -1
	dsll	$a0, $a0, 0x5
	dsrl	$a0, $a0, 0x4
	addiu	$v0, $v0, -1
	sltu	$a0, $a0, $v1
	sw	$v0, 8($a2)
	move	$a3, $a1
	beqz	$a0, lbl_001223C0
	sd	$a1, 16($a2)
	b	lbl_0012240C
	nop
lbl_001223F8:
	daddu	$v0, $t2, $t1
	sw	$a0, 4($a2)
	sw	$t0, 8($a2)
	move	$a3, $v0
	sd	$v0, 16($a2)
lbl_0012240C:
	li	$v0, -1
	dsrl	$v0, $v0, 0x3
	li	$v1, 3
	sltu	$v0, $v0, $a3
	beqz	$v0, lbl_00122440
	sw	$v1, 0($a2)
	lw	$v0, 8($a2)
	dsrl	$a0, $a3, 0x1
	andi	$v1, $a3, 0x1
	or	$v1, $v1, $a0
	addiu	$v0, $v0, 1
	sd	$v1, 16($a2)
	sw	$v0, 8($a2)
lbl_00122440:
	move	$v0, $a2
lbl_00122444:
	jr	$ra
	nop
	nop

sub_00122450:
	addiu	$sp, $sp, -128
	sd	$a0, 96($sp)
	addiu	$a0, $sp, 96
	sd	$a1, 104($sp)
	sd	$s0, 112($sp)
	sd	$ra, 120($sp)
	jal	sub_00124320
	move	$a1, $sp
	addiu	$s0, $sp, 32
	addiu	$a0, $sp, 104
	jal	sub_00124320
	move	$a1, $s0
	move	$a1, $s0
	move	$a0, $sp
	jal	sub_001221F0
	addiu	$a2, $sp, 64
	jal	sub_00124248
	move	$a0, $v0
	ld	$s0, 112($sp)
	ld	$ra, 120($sp)
	jr	$ra
	addiu	$sp, $sp, 128

sub_001224A8:
	addiu	$sp, $sp, -128
	sd	$a0, 96($sp)
	addiu	$a0, $sp, 96
	sd	$a1, 104($sp)
	sd	$s0, 112($sp)
	sd	$ra, 120($sp)
	jal	sub_00124320
	move	$a1, $sp
	addiu	$s0, $sp, 32
	addiu	$a0, $sp, 104
	jal	sub_00124320
	move	$a1, $s0
	move	$a1, $s0
	lw	$v0, 36($sp)
	move	$a0, $sp
	addiu	$a2, $sp, 64
	xori	$v0, $v0, 0x1
	jal	sub_001221F0
	sw	$v0, 36($sp)
	jal	sub_00124248
	move	$a0, $v0
	ld	$s0, 112($sp)
	ld	$ra, 120($sp)
	jr	$ra
	addiu	$sp, $sp, 128
	nop

sub_00122510:
	addiu	$sp, $sp, -176
	sd	$a0, 96($sp)
	addiu	$a0, $sp, 96
	sd	$a1, 104($sp)
	sd	$s0, 112($sp)
	sd	$s1, 120($sp)
	sd	$s2, 128($sp)
	sd	$s3, 136($sp)
	sd	$s4, 144($sp)
	sd	$s5, 152($sp)
	sd	$s6, 160($sp)
	sd	$ra, 168($sp)
	jal	sub_00124320
	move	$a1, $sp
	addiu	$s0, $sp, 32
	addiu	$a0, $sp, 104
	jal	sub_00124320
	move	$a1, $s0
	lw	$a0, 0($sp)
	sltiu	$v0, $a0, 2
	bnez	$v0, lbl_001225C4
	lw	$v0, 4($sp)
	lw	$v1, 32($sp)
	sltiu	$v0, $v1, 2
	bnezl	$v0, lbl_001225EC
	lw	$v1, 36($sp)
	xori	$v0, $a0, 0x4
	bnez	$v0, lbl_00122598
	xori	$v0, $v1, 0x4
	xori	$v0, $v1, 0x2
	bnezl	$v0, lbl_001225C4
	lw	$v0, 4($sp)
	b	lbl_001225AC
	lui	$v0, 0x13
lbl_00122598:
	bnez	$v0, lbl_001225B8
	xori	$v0, $a0, 0x2
	bnezl	$v0, lbl_001225EC
	lw	$v1, 36($sp)
	lui	$v0, 0x13
lbl_001225AC:
	b	lbl_00122764
	addiu	$a0, $v0, 24160
	nop
lbl_001225B8:
	bnez	$v0, lbl_001225E0
	xori	$v0, $v1, 0x2
	lw	$v0, 4($sp)
lbl_001225C4:
	move	$a0, $sp
	lw	$v1, 36($sp)
	xor	$v0, $v0, $v1
	sltu	$v0, $zero, $v0
	b	lbl_00122764
	sw	$v0, 4($sp)
	nop
lbl_001225E0:
	bnez	$v0, lbl_00122608
	ld	$s3, 16($sp)
	lw	$v1, 36($sp)
lbl_001225EC:
	move	$a0, $s0
	lw	$v0, 4($sp)
	xor	$v0, $v0, $v1
	sltu	$v0, $zero, $v0
	b	lbl_00122764
	sw	$v0, 36($sp)
	nop
lbl_00122608:
	lui	$s5, 0xffff
	dsrl32	$s5, $s5, 0x0
	ld	$s2, 48($sp)
	and	$s0, $s3, $s5
	dsrl32	$s3, $s3, 0x0
	and	$s6, $s2, $s5
	dsrl32	$s2, $s2, 0x0
	move	$a1, $s0
	jal	sub_00124098
	move	$a0, $s6
	move	$a0, $s2
	move	$a1, $s0
	jal	sub_00124098
	move	$s4, $v0
	move	$a0, $s6
	move	$a1, $s3
	jal	sub_00124098
	move	$s1, $v0
	move	$a0, $s2
	move	$s0, $v0
	move	$a1, $s3
	jal	sub_00124098
	daddu	$s0, $s1, $s0
	sltu	$s1, $s0, $s1
	dsll32	$a2, $s0, 0x0
	dsrl32	$s0, $s0, 0x0
	daddu	$a2, $s4, $a2
	and	$s0, $s0, $s5
	dsll32	$s1, $s1, 0x0
	daddu	$s0, $s0, $v0
	lw	$v0, 4($sp)
	sltu	$s4, $a2, $s4
	lw	$a0, 8($sp)
	lw	$a3, 40($sp)
	daddu	$s1, $s1, $s4
	lw	$a1, 36($sp)
	daddu	$s1, $s1, $s0
	addu	$a0, $a0, $a3
	li	$v1, -1
	dsrl	$v1, $v1, 0x3
	xor	$v0, $v0, $a1
	addiu	$a0, $a0, 4
	sltu	$v0, $zero, $v0
	sltu	$v1, $v1, $s1
	sw	$v0, 68($sp)
	beqz	$v1, lbl_00122704
	sw	$a0, 72($sp)
	li	$a3, 0x8000
	dsll32	$a3, $a3, 0x10
	li	$a1, -1
	dsrl	$a1, $a1, 0x3
	andi	$v0, $s1, 0x1
lbl_001226D8:
	dsrl	$s1, $s1, 0x1
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	sltu	$v1, $a1, $s1
	beqz	$v0, lbl_001226F8
	addiu	$a0, $a0, 1
	dsrl	$a2, $a2, 0x1
	or	$a2, $a2, $a3
lbl_001226F8:
	bnez	$v1, lbl_001226D8
	andi	$v0, $s1, 0x1
	sw	$a0, 72($sp)
lbl_00122704:
	li	$v0, -1
	dsrl	$v0, $v0, 0x4
	sltu	$v0, $v0, $s1
	bnez	$v0, lbl_00122758
	li	$v0, 3
	lw	$a0, 72($sp)
	li	$t0, 0x8000
	dsll32	$t0, $t0, 0x10
	li	$a3, 1
	li	$a1, -1
	dsrl	$a1, $a1, 0x4
lbl_00122730:
	dsll	$s1, $s1, 0x1
	and	$v1, $a2, $t0
	or	$v0, $s1, $a3
	addiu	$a0, $a0, -1
	movn	$s1, $v0, $v1
	sltu	$v0, $a1, $s1
	beqz	$v0, lbl_00122730
	dsll	$a2, $a2, 0x1
	sw	$a0, 72($sp)
	li	$v0, 3
lbl_00122758:
	sd	$s1, 80($sp)
	sw	$v0, 64($sp)
	addiu	$a0, $sp, 64
lbl_00122764:
	jal	sub_00124248
	nop
	ld	$s0, 112($sp)
	ld	$s1, 120($sp)
	ld	$s2, 128($sp)
	ld	$s3, 136($sp)
	ld	$s4, 144($sp)
	ld	$s5, 152($sp)
	ld	$s6, 160($sp)
	ld	$ra, 168($sp)
	jr	$ra
	addiu	$sp, $sp, 176
	nop

sub_00122798:
	addiu	$sp, $sp, -96
	sd	$a0, 64($sp)
	addiu	$a0, $sp, 64
	sd	$a1, 72($sp)
	sd	$s0, 80($sp)
	sd	$ra, 88($sp)
	jal	sub_00124320
	move	$a1, $sp
	addiu	$s0, $sp, 32
	addiu	$a0, $sp, 72
	jal	sub_00124320
	move	$a1, $s0
	lw	$a2, 0($sp)
	move	$t0, $sp
	sltiu	$v0, $a2, 2
	bnez	$v0, lbl_001228C0
	move	$a0, $sp
	lw	$a1, 32($sp)
	sltiu	$v0, $a1, 2
	bnez	$v0, lbl_001228C0
	move	$a0, $s0
	lw	$v0, 4($sp)
	xori	$a0, $a2, 0x4
	lw	$v1, 36($sp)
	xor	$v0, $v0, $v1
	beqz	$a0, lbl_00122810
	sw	$v0, 4($sp)
	xori	$v0, $a2, 0x2
	bnez	$v0, lbl_00122828
	xori	$v0, $a1, 0x4
lbl_00122810:
	bnel	$a2, $a1, lbl_001228C0
	move	$a0, $sp
	lui	$v0, 0x13
	b	lbl_001228C0
	addiu	$a0, $v0, 24160
	nop
lbl_00122828:
	bnezl	$v0, lbl_00122840
	xori	$v0, $a1, 0x2
	sd	$zero, 16($sp)
	move	$a0, $sp
	b	lbl_001228C0
	sw	$zero, 8($sp)
lbl_00122840:
	bnezl	$v0, lbl_00122858
	lw	$v1, 8($sp)
	li	$v0, 4
	move	$a0, $sp
	b	lbl_001228C0
	sw	$v0, 0($sp)
lbl_00122858:
	lw	$v0, 40($sp)
	ld	$a0, 16($sp)
	ld	$a2, 48($sp)
	subu	$v0, $v1, $v0
	sltu	$a1, $a0, $a2
	beqz	$a1, lbl_00122884
	sw	$v0, 8($sp)
	addiu	$v0, $v0, -1
	dsll	$a0, $a0, 0x1
	sw	$v0, 8($sp)
	sltu	$a1, $a0, $a2
lbl_00122884:
	li	$v1, 0x8000
	dsll32	$v1, $v1, 0xd
	move	$a3, $zero
lbl_00122890:
	bnez	$a1, lbl_001228A8
	dsll	$v0, $a0, 0x1
	dsubu	$a0, $a0, $a2
	or	$a3, $a3, $v1
	dsll	$v0, $a0, 0x1
	nop
lbl_001228A8:
	dsrl	$v1, $v1, 0x1
	sltu	$a1, $v0, $a2
	bnez	$v1, lbl_00122890
	move	$a0, $v0
	sd	$a3, 16($t0)
	move	$a0, $t0
lbl_001228C0:
	jal	sub_00124248
	nop
	ld	$s0, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_001228D8:
	addiu	$sp, $sp, -96
	sd	$a0, 64($sp)
	addiu	$a0, $sp, 64
	sd	$a1, 72($sp)
	sd	$s0, 80($sp)
	sd	$ra, 88($sp)
	jal	sub_00124320
	move	$a1, $sp
	addiu	$s0, $sp, 32
	addiu	$a0, $sp, 72
	jal	sub_00124320
	move	$a1, $s0
	move	$a1, $s0
	jal	sub_001243E0
	move	$a0, $sp
	ld	$s0, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_00122928:
	addiu	$sp, $sp, -48
	li	$v0, 3
	srl	$v1, $a0, 0x1f
	sd	$ra, 32($sp)
	sw	$v0, 0($sp)
	bnez	$a0, lbl_00122950
	sw	$v1, 4($sp)
	li	$v0, 2
	b	lbl_001229CC
	sw	$v0, 0($sp)
lbl_00122950:
	li	$v0, 60
	beqz	$v1, lbl_00122980
	sw	$v0, 8($sp)
	lui	$v1, 0x8000
	li	$v0, 0xc1e0
	dsll32	$v0, $v0, 0x10
	beq	$a0, $v1, lbl_001229D8
	ld	$ra, 32($sp)
	negu	$v0, $a0
	b	lbl_00122984
	sd	$v0, 16($sp)
	nop
lbl_00122980:
	sd	$a0, 16($sp)
lbl_00122984:
	ld	$a0, 16($sp)
	li	$v0, -1
	dsrl	$v0, $v0, 0x4
	sltu	$v0, $v0, $a0
	bnez	$v0, lbl_001229CC
	lw	$a1, 8($sp)
	li	$a2, -1
	dsrl	$a2, $a2, 0x4
	nop
lbl_001229A8:
	dsll	$v1, $a0, 0x1
	addiu	$a1, $a1, -1
	sltu	$v0, $a2, $v1
	nop
	nop
	beqz	$v0, lbl_001229A8
	move	$a0, $v1
	sw	$a1, 8($sp)
	sd	$v1, 16($sp)
lbl_001229CC:
	jal	sub_00124248
	move	$a0, $sp
	ld	$ra, 32($sp)
lbl_001229D8:
	jr	$ra
	addiu	$sp, $sp, 48

sub_001229E0:
	addiu	$sp, $sp, -48
	sw	$a0, 0($sp)
	move	$a0, $sp
	sd	$ra, 32($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	jal	sub_00124248
	sd	$a3, 16($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_00122A10:
	addiu	$sp, $sp, -64
	sd	$a0, 32($sp)
	addiu	$a0, $sp, 32
	sd	$ra, 48($sp)
	jal	sub_00124320
	move	$a1, $sp
	lui	$a1, 0x3fff
	ori	$a1, $a1, 0xffff
	ld	$v0, 16($sp)
	lw	$a0, 0($sp)
	dsll	$v1, $v0, 0x2
	dsra32	$v1, $v1, 0x0
	and	$v0, $v0, $a1
	ori	$a3, $v1, 0x1
	lw	$a2, 8($sp)
	lw	$a1, 4($sp)
	jal	sub_00124218
	movz	$a3, $v1, $v0
	ld	$ra, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_00122A68:
	addiu	$sp, $sp, -64
	sd	$a0, 32($sp)
	addiu	$a0, $sp, 32
	sd	$ra, 48($sp)
	jal	sub_00124320
	move	$a1, $sp
	move	$v0, $zero
	lw	$a0, 0($sp)
	xori	$v1, $a0, 0x2
	beqz	$v1, lbl_00122AFC
	sltiu	$a1, $a0, 2
	bnez	$a1, lbl_00122B00
	ld	$ra, 48($sp)
	lw	$v1, 4($sp)
	bnez	$v1, lbl_00122B00
	xori	$v1, $a0, 0x4
	beqz	$v1, lbl_00122B00
	li	$v0, -1
	lw	$a0, 8($sp)
	move	$v0, $zero
	bltz	$a0, lbl_00122B00
	slti	$v1, $a0, 32
	beqz	$v1, lbl_00122B00
	li	$v0, -1
	slti	$v0, $a0, 61
	bnez	$v0, lbl_00122AE8
	li	$v1, 60
	ld	$v0, 16($sp)
	addiu	$v1, $a0, -60
	b	lbl_00122AF4
	dsllv	$v0, $v0, $v1
	nop
lbl_00122AE8:
	ld	$v0, 16($sp)
	subu	$v1, $v1, $a0
	dsrlv	$v0, $v0, $v1
lbl_00122AF4:
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
lbl_00122AFC:
	ld	$ra, 48($sp)
lbl_00122B00:
	jr	$ra
	addiu	$sp, $sp, 64

sub_00122B08:
	lbu	$v1, 0($a0)
	addiu	$a0, $a0, 1
	move	$a3, $zero
	andi	$v0, $v1, 0x80
	beqz	$v0, lbl_00122B40
	andi	$a2, $v1, 0x7f
lbl_00122B20:
	lbu	$v1, 0($a0)
	addiu	$a0, $a0, 1
	addiu	$a3, $a3, 7
	andi	$v0, $v1, 0x7f
	andi	$v1, $v1, 0x80
	sllv	$v0, $v0, $a3
	bnez	$v1, lbl_00122B20
	or	$a2, $a2, $v0
lbl_00122B40:
	sw	$a2, 0($a1)
	jr	$ra
	move	$v0, $a0
	nop

sub_00122B50:
	move	$a3, $zero
	move	$t0, $zero
lbl_00122B58:
	lbu	$a2, 0($a0)
	addiu	$a0, $a0, 1
	andi	$v0, $a2, 0x7f
	andi	$v1, $a2, 0x80
	sllv	$v0, $v0, $a3
	addiu	$a3, $a3, 7
	bnez	$v1, lbl_00122B58
	or	$t0, $t0, $v0
	sltiu	$v0, $a3, 32
	beqzl	$v0, lbl_00122BA0
	sw	$t0, 0($a1)
	andi	$v0, $a2, 0x40
	beqzl	$v0, lbl_00122BA0
	sw	$t0, 0($a1)
	li	$v0, -1
	sllv	$v0, $v0, $a3
	or	$t0, $t0, $v0
	sw	$t0, 0($a1)
lbl_00122BA0:
	jr	$ra
	move	$v0, $a0

sub_00122BA8:
	addiu	$sp, $sp, -16
	move	$v0, $a1
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	lw	$t9, 4($v0)
	beqz	$t9, lbl_00122C90
	move	$t4, $t9
	lw	$s0, 4($s1)
	sll	$a1, $t9, 0x2
	lw	$t7, 0($s1)
	lw	$a0, 0($v0)
	sll	$v0, $s0, 0x2
	addu	$v1, $v0, $t7
	move	$t5, $v0
	addu	$a0, $a1, $a0
	addiu	$t3, $v1, -4
	move	$t2, $s0
lbl_00122BF0:
	addiu	$a0, $a0, -4
	addiu	$t4, $t4, -1
	beqz	$t2, lbl_00122C74
	lw	$t8, 0($a0)
	lw	$v1, 0($t3)
	lw	$t6, 8($t8)
	lw	$v0, 8($v1)
	subu	$v0, $v0, $t6
	blez	$v0, lbl_00122C78
	addu	$v0, $t2, $t4
	move	$a2, $t5
	sll	$v0, $t4, 0x2
	addu	$v1, $a2, $t7
	addu	$t0, $a2, $v0
	addiu	$a3, $v1, -4
	move	$t1, $t7
	lw	$v1, 0($a3)
	nop
lbl_00122C38:
	addiu	$a3, $a3, -4
	addu	$v0, $t0, $t1
	addiu	$t0, $t0, -4
	addiu	$a2, $a2, -4
	addiu	$t2, $t2, -1
	sw	$v1, 0($v0)
	addu	$v0, $t1, $a2
	addiu	$t3, $t3, -4
	beqz	$t2, lbl_00122C74
	addiu	$t5, $t5, -4
	lw	$v1, -4($v0)
	lw	$v0, 8($v1)
	subu	$v0, $v0, $t6
	bgtzl	$v0, lbl_00122C38
	lw	$v1, 0($a3)
lbl_00122C74:
	addu	$v0, $t2, $t4
lbl_00122C78:
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $t7
	bnez	$t4, lbl_00122BF0
	sw	$t8, 0($v0)
	addu	$v0, $s0, $t9
	sw	$v0, 4($s1)
lbl_00122C90:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_00122CA0:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s4, 32($sp)
	move	$s4, $a1
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$ra, 40($sp)
	lw	$t8, 0($s0)
	beqz	$t8, lbl_00122CE8
	move	$t4, $t8
	lw	$t6, 4($s0)
	beql	$t6, $s4, lbl_00122CF0
	lw	$v0, 8($s0)
	jal	sub_001245B8
	nop
	nop
lbl_00122CE8:
	lw	$t6, 4($s0)
	lw	$v0, 8($s0)
lbl_00122CF0:
	beqz	$v0, lbl_00123020
	lui	$v0, 0x16
	addiu	$s1, $s0, 8
	addiu	$a3, $v0, 19420
	beqz	$t6, lbl_00122DA8
	move	$t7, $zero
	lw	$t8, 0($s1)
	move	$s3, $v0
	move	$s2, $a3
	move	$t3, $t4
	move	$t9, $t8
	move	$t2, $zero
lbl_00122D20:
	beql	$a3, $s2, lbl_00122D90
	addiu	$t7, $t7, 1
	addu	$a2, $t2, $t3
	lw	$v1, 0($a3)
	lw	$a0, 0($a2)
	lw	$a1, 8($v1)
	lw	$v0, 8($a0)
	subu	$v0, $v0, $a1
	bgezl	$v0, lbl_00122D90
	addiu	$t7, $t7, 1
	move	$t1, $a2
	move	$a2, $t3
	move	$t0, $t8
	addiu	$t5, $s3, 19420
	subu	$v0, $a3, $a2
	nop
lbl_00122D60:
	addu	$v0, $t0, $v0
	lw	$a3, 0($v0)
	beq	$a3, $t5, lbl_00122D8C
	sw	$zero, 0($v0)
	lw	$a0, 0($t1)
	lw	$a1, 0($a3)
	lw	$v0, 8($a0)
	lw	$v1, 8($a1)
	subu	$v0, $v0, $v1
	bltz	$v0, lbl_00122D60
	subu	$v0, $a3, $a2
lbl_00122D8C:
	addiu	$t7, $t7, 1
lbl_00122D90:
	addu	$v0, $t2, $t9
	sltu	$v1, $t7, $t6
	sw	$a3, 0($v0)
	addu	$a3, $t3, $t2
	bnez	$v1, lbl_00122D20
	addiu	$t2, $t2, 4
lbl_00122DA8:
	move	$t0, $zero
	move	$t7, $zero
	beqz	$t6, lbl_00122E08
	move	$a3, $zero
	lw	$a0, 0($s1)
	move	$v1, $t4
	move	$a2, $v1
	move	$a1, $a0
lbl_00122DC8:
	lw	$v0, 0($a1)
	beqz	$v0, lbl_00122DE8
	addiu	$a1, $a1, 4
	lw	$v0, 0($v1)
	addiu	$t0, $t0, 1
	sw	$v0, 0($a2)
	b	lbl_00122DF8
	addiu	$a2, $a2, 4
lbl_00122DE8:
	lw	$v0, 0($v1)
	addiu	$a3, $a3, 1
	sw	$v0, 0($a0)
	addiu	$a0, $a0, 4
lbl_00122DF8:
	addiu	$t7, $t7, 1
	sltu	$v0, $t7, $t6
	bnez	$v0, lbl_00122DC8
	addiu	$v1, $v1, 4
lbl_00122E08:
	sw	$t0, 4($s0)
	sw	$a3, 4($s1)
	lw	$v0, 4($s0)
	lw	$v1, 12($s0)
	addu	$v0, $v0, $v1
	beq	$v0, $s4, lbl_00122E30
	move	$t5, $a3
	jal	sub_001245B8
	nop
	nop
lbl_00122E30:
	lw	$t4, 0($s1)
	beqz	$t5, lbl_00122F04
	move	$t6, $t5
	addiu	$a0, $t6, -1
lbl_00122E40:
	sll	$t1, $a0, 0x1
	b	lbl_00122EEC
	move	$t6, $a0
	nop
lbl_00122E50:
	addiu	$t3, $v1, 2
	sltu	$v0, $t3, $t5
	beqz	$v0, lbl_00122EB0
	sll	$v1, $a0, 0x2
	sll	$a3, $a0, 0x3
	addu	$v0, $a3, $t4
	addiu	$t2, $v0, 8
	lw	$v1, 4($v0)
	lw	$t0, 0($t2)
	lw	$v0, 8($v1)
	lw	$a2, 8($t0)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_00122EB4
	sll	$v1, $a0, 0x2
	addu	$a0, $v1, $t4
	lw	$a1, 0($a0)
	lw	$v0, 8($a1)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_00122EB8
	addu	$v0, $a3, $t4
	sw	$t0, 0($a0)
	sw	$a1, 0($t2)
	b	lbl_00122EE8
	move	$a0, $t3
lbl_00122EB0:
	sll	$a3, $a0, 0x3
lbl_00122EB4:
	addu	$v0, $a3, $t4
lbl_00122EB8:
	addu	$a3, $v1, $t4
	addiu	$a2, $v0, 4
	lw	$a1, 0($a3)
	lw	$a0, 0($a2)
	lw	$v1, 8($a1)
	lw	$v0, 8($a0)
	subu	$v0, $v0, $v1
	blez	$v0, lbl_00122EFC
	nop
	sw	$a0, 0($a3)
	sw	$a1, 0($a2)
	addiu	$a0, $t1, 1
lbl_00122EE8:
	sll	$t1, $a0, 0x1
lbl_00122EEC:
	addiu	$v0, $t1, 1
	sltu	$v0, $v0, $t5
	bnez	$v0, lbl_00122E50
	move	$v1, $t1
lbl_00122EFC:
	bnezl	$t6, lbl_00122E40
	addiu	$a0, $t6, -1
lbl_00122F04:
	sltiu	$v0, $t5, 2
	bnez	$v0, lbl_00123008
	move	$a0, $s0
	sll	$v0, $t5, 0x2
	li	$t7, 1
	addu	$t6, $v0, $t4
	addiu	$t6, $t6, -4
lbl_00122F20:
	addiu	$t5, $t5, -1
	lw	$v0, 0($t4)
	lw	$v1, 0($t6)
	sw	$v1, 0($t4)
	sw	$v0, 0($t6)
	sltu	$v0, $t7, $t5
	beqz	$v0, lbl_00122FF8
	move	$a0, $zero
	move	$t1, $zero
	addiu	$t3, $t1, 2
lbl_00122F48:
	sltu	$v0, $t3, $t5
	beqz	$v0, lbl_00122FA8
	sll	$v1, $a0, 0x2
	sll	$a3, $a0, 0x3
	addu	$v0, $a3, $t4
	addiu	$t2, $v0, 8
	lw	$v1, 4($v0)
	lw	$t0, 0($t2)
	lw	$v0, 8($v1)
	lw	$a2, 8($t0)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_00122FAC
	sll	$v1, $a0, 0x2
	addu	$a0, $v1, $t4
	lw	$a1, 0($a0)
	lw	$v0, 8($a1)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_00122FB0
	addu	$v0, $a3, $t4
	sw	$t0, 0($a0)
	sw	$a1, 0($t2)
	b	lbl_00122FE0
	move	$a0, $t3
	nop
lbl_00122FA8:
	sll	$a3, $a0, 0x3
lbl_00122FAC:
	addu	$v0, $a3, $t4
lbl_00122FB0:
	addu	$a3, $v1, $t4
	addiu	$a2, $v0, 4
	lw	$a1, 0($a3)
	lw	$a0, 0($a2)
	lw	$v1, 8($a1)
	lw	$v0, 8($a0)
	subu	$v0, $v0, $v1
	blez	$v0, lbl_00122FFC
	sltiu	$v0, $t5, 2
	sw	$a0, 0($a3)
	sw	$a1, 0($a2)
	addiu	$a0, $t1, 1
lbl_00122FE0:
	sll	$v1, $a0, 0x1
	move	$t1, $v1
	addiu	$v0, $t1, 1
	sltu	$v0, $v0, $t5
	bnez	$v0, lbl_00122F48
	addiu	$t3, $t1, 2
lbl_00122FF8:
	sltiu	$v0, $t5, 2
lbl_00122FFC:
	beqz	$v0, lbl_00122F20
	addiu	$t6, $t6, -4
	move	$a0, $s0
lbl_00123008:
	jal	sub_00122BA8
	move	$a1, $s1
	jal	sub_00124700
	lw	$a0, 0($s1)
	b	lbl_001231F4
	lw	$t8, 0($s0)
lbl_00123020:
	move	$t5, $t6
	beqz	$t5, lbl_001230F4
	move	$t7, $t5
	addiu	$a0, $t7, -1
lbl_00123030:
	sll	$t1, $a0, 0x1
	b	lbl_001230DC
	move	$t7, $a0
	nop
lbl_00123040:
	addiu	$t3, $v1, 2
	sltu	$v0, $t3, $t6
	beqz	$v0, lbl_001230A0
	sll	$v1, $a0, 0x2
	sll	$a3, $a0, 0x3
	addu	$v0, $a3, $t4
	addiu	$t2, $v0, 8
	lw	$v1, 4($v0)
	lw	$t0, 0($t2)
	lw	$v0, 8($v1)
	lw	$a2, 8($t0)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_001230A4
	sll	$v1, $a0, 0x2
	addu	$a0, $v1, $t4
	lw	$a1, 0($a0)
	lw	$v0, 8($a1)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_001230A8
	addu	$v0, $a3, $t4
	sw	$t0, 0($a0)
	sw	$a1, 0($t2)
	b	lbl_001230D8
	move	$a0, $t3
lbl_001230A0:
	sll	$a3, $a0, 0x3
lbl_001230A4:
	addu	$v0, $a3, $t4
lbl_001230A8:
	addu	$a3, $v1, $t4
	addiu	$a2, $v0, 4
	lw	$a1, 0($a3)
	lw	$a0, 0($a2)
	lw	$v1, 8($a1)
	lw	$v0, 8($a0)
	subu	$v0, $v0, $v1
	blez	$v0, lbl_001230EC
	nop
	sw	$a0, 0($a3)
	sw	$a1, 0($a2)
	addiu	$a0, $t1, 1
lbl_001230D8:
	sll	$t1, $a0, 0x1
lbl_001230DC:
	addiu	$v0, $t1, 1
	sltu	$v0, $v0, $t6
	bnez	$v0, lbl_00123040
	move	$v1, $t1
lbl_001230EC:
	bnezl	$t7, lbl_00123030
	addiu	$a0, $t7, -1
lbl_001230F4:
	sltiu	$v0, $t6, 2
	bnez	$v0, lbl_001231F8
	ld	$s0, 0($sp)
	sll	$v0, $t5, 0x2
	li	$t7, 1
	addu	$t6, $v0, $t4
	addiu	$t6, $t6, -4
lbl_00123110:
	addiu	$t5, $t5, -1
	lw	$v0, 0($t4)
	lw	$v1, 0($t6)
	sw	$v1, 0($t4)
	sw	$v0, 0($t6)
	sltu	$v0, $t7, $t5
	beqz	$v0, lbl_001231E8
	move	$a0, $zero
	move	$t1, $zero
	addiu	$t3, $t1, 2
lbl_00123138:
	sltu	$v0, $t3, $t5
	beqz	$v0, lbl_00123198
	sll	$v1, $a0, 0x2
	sll	$a3, $a0, 0x3
	addu	$v0, $a3, $t4
	addiu	$t2, $v0, 8
	lw	$v1, 4($v0)
	lw	$t0, 0($t2)
	lw	$v0, 8($v1)
	lw	$a2, 8($t0)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_0012319C
	sll	$v1, $a0, 0x2
	addu	$a0, $v1, $t4
	lw	$a1, 0($a0)
	lw	$v0, 8($a1)
	subu	$v0, $a2, $v0
	blez	$v0, lbl_001231A0
	addu	$v0, $a3, $t4
	sw	$t0, 0($a0)
	sw	$a1, 0($t2)
	b	lbl_001231D0
	move	$a0, $t3
	nop
lbl_00123198:
	sll	$a3, $a0, 0x3
lbl_0012319C:
	addu	$v0, $a3, $t4
lbl_001231A0:
	addu	$a3, $v1, $t4
	addiu	$a2, $v0, 4
	lw	$a1, 0($a3)
	lw	$a0, 0($a2)
	lw	$v1, 8($a1)
	lw	$v0, 8($a0)
	subu	$v0, $v0, $v1
	blez	$v0, lbl_001231EC
	sltiu	$v0, $t5, 2
	sw	$a0, 0($a3)
	sw	$a1, 0($a2)
	addiu	$a0, $t1, 1
lbl_001231D0:
	sll	$v1, $a0, 0x1
	move	$t1, $v1
	addiu	$v0, $t1, 1
	sltu	$v0, $v0, $t5
	bnez	$v0, lbl_00123138
	addiu	$t3, $t1, 2
lbl_001231E8:
	sltiu	$v0, $t5, 2
lbl_001231EC:
	beqzl	$v0, lbl_00123110
	addiu	$t6, $t6, -4
lbl_001231F4:
	ld	$s0, 0($sp)
lbl_001231F8:
	move	$v0, $t8
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00123218:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	lui	$s1, 0x13
	sd	$ra, 16($sp)
	addiu	$s1, $s1, -1804
	sw	$a0, 8($s0)
	sw	$zero, 4($s0)
	sw	$zero, 0($s0)
	sw	$zero, 12($s0)
	sw	$zero, 16($s0)
	jal	sub_00106920
	lw	$a0, 0($s1)
	lui	$v1, 0x16
	addiu	$v1, $v1, 19424
	lw	$a0, 0($s1)
	lw	$v0, 0($v1)
	sw	$v0, 20($s0)
	jal	sub_00106900
	sw	$s0, 0($v1)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	jal	sub_001246A8
	li	$a0, 24
	move	$a0, $s0
	ld	$ra, 8($sp)
	move	$a1, $v0
	ld	$s0, 0($sp)
	j	sub_00123218
	addiu	$sp, $sp, 16
lbl_001232B0:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	lui	$s1, 0x13
	sd	$ra, 16($sp)
	addiu	$s1, $s1, -1804
	sw	$a0, 12($s0)
	sw	$a0, 8($s0)
	sw	$zero, 4($s0)
	sw	$zero, 0($s0)
	sw	$zero, 16($s0)
	jal	sub_00106920
	lw	$a0, 0($s1)
	lui	$v1, 0x16
	addiu	$v1, $v1, 19424
	lw	$a0, 0($s1)
	lw	$v0, 0($v1)
	sw	$v0, 20($s0)
	jal	sub_00106900
	sw	$s0, 0($v1)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	jal	sub_001246A8
	li	$a0, 24
	move	$a0, $s0
	ld	$ra, 8($sp)
	move	$a1, $v0
	ld	$s0, 0($sp)
	j	lbl_001232B0
	addiu	$sp, $sp, 16

sub_00123348:
	addiu	$sp, $sp, -32
	sd	$s2, 16($sp)
	lui	$s2, 0x13
	sd	$s1, 8($sp)
	move	$s1, $a0
	lw	$a0, -1804($s2)
	sd	$s0, 0($sp)
	sd	$ra, 24($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x16
	addiu	$v1, $v1, 19424
	lw	$s0, 0($v1)
	beqz	$s0, lbl_001233E4
	nop
	nop
lbl_00123388:
	lw	$v0, 8($s0)
	bnel	$v0, $s1, lbl_001233D8
	addiu	$v1, $s0, 20
	lw	$v0, 20($s0)
	lw	$a0, 12($s0)
	beqz	$a0, lbl_001233B4
	sw	$v0, 0($v1)
	beq	$a0, $s1, lbl_001233B4
	nop
	jal	sub_00124700
	nop
lbl_001233B4:
	jal	sub_00106900
	lw	$a0, -1804($s2)
	move	$v0, $s0
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
lbl_001233D8:
	lw	$v0, 0($v1)
	bnez	$v0, lbl_00123388
	move	$s0, $v0
lbl_001233E4:
	jal	sub_00106900
	lw	$a0, -1804($s2)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	j	sub_001245B8
	addiu	$sp, $sp, 32
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00123348
	nop
	ld	$ra, 0($sp)
	move	$a0, $v0
	j	sub_00124700
	addiu	$sp, $sp, 16

sub_00123428:
	lw	$a1, 0($a0)
	beqz	$a1, lbl_00123460
	move	$a2, $zero
	nop
lbl_00123438:
	lw	$v0, 4($a0)
	beqz	$v0, lbl_0012344C
	addiu	$v0, $a2, 1
	lw	$v1, 8($a0)
	movn	$a2, $v0, $v1
lbl_0012344C:
	addu	$v0, $a0, $a1
	addiu	$a0, $v0, 4
	lw	$v1, 0($a0)
	bnez	$v1, lbl_00123438
	move	$a1, $v1
lbl_00123460:
	jr	$ra
	move	$v0, $a2

sub_00123468:
	lw	$t2, 0($a0)
	lw	$t3, 0($a2)
	beqz	$t2, lbl_001234E8
	lw	$t4, 0($a3)
	addiu	$t6, $a1, 4
	nop
lbl_00123480:
	lw	$v0, 4($a0)
	beqzl	$v0, lbl_001234D8
	addu	$v0, $a0, $t2
	lw	$t0, 8($a0)
	beqz	$t0, lbl_001234D4
	sltu	$t5, $t0, $t3
	lw	$t1, 0($a1)
	beqzl	$t1, lbl_001234C4
	lw	$v1, 12($a0)
	lw	$v0, 0($t6)
	sll	$v1, $v0, 0x2
	addiu	$v0, $v0, 1
	sw	$v0, 0($t6)
	addu	$v1, $v1, $t1
	sw	$a0, 0($v1)
	lw	$t2, 0($a0)
	lw	$v1, 12($a0)
lbl_001234C4:
	movn	$t3, $t0, $t5
	addu	$v1, $t0, $v1
	sltu	$v0, $t4, $v1
	movn	$t4, $v1, $v0
lbl_001234D4:
	addu	$v0, $a0, $t2
lbl_001234D8:
	addiu	$a0, $v0, 4
	lw	$v1, 0($a0)
	bnez	$v1, lbl_00123480
	move	$t2, $v1
lbl_001234E8:
	sw	$t3, 0($a2)
	jr	$ra
	sw	$t4, 0($a3)
	nop

sub_001234F8:
	lw	$a3, 0($a0)
	beqz	$a3, lbl_00123548
	move	$v0, $zero
	nop
lbl_00123508:
	lw	$v0, 4($a0)
	beqz	$v0, lbl_00123534
	addu	$v0, $a0, $a3
	lw	$v0, 8($a0)
	beqz	$v0, lbl_00123530
	subu	$a2, $a1, $v0
	lw	$v1, 12($a0)
	sltu	$v1, $a2, $v1
	bnez	$v1, lbl_00123548
	move	$v0, $a0
lbl_00123530:
	addu	$v0, $a0, $a3
lbl_00123534:
	addiu	$a0, $v0, 4
	lw	$v1, 0($a0)
	bnez	$v1, lbl_00123508
	move	$a3, $v1
	move	$v0, $zero
lbl_00123548:
	jr	$ra
	nop

sub_00123550:
	addiu	$sp, $sp, -64
	sd	$s2, 48($sp)
	move	$s2, $a0
	sd	$s0, 32($sp)
	sd	$s1, 40($sp)
	sd	$ra, 56($sp)
	lw	$v0, 0($s2)
	beqzl	$v0, lbl_00123580
	lw	$v1, 12($s2)
	b	lbl_001235C4
	lw	$s1, 16($s2)
	nop
lbl_00123580:
	beqz	$v1, lbl_001235B8
	move	$s0, $v1
	lw	$a0, 0($s0)
	beqz	$a0, lbl_001235C4
	move	$s1, $zero
	nop
lbl_00123598:
	jal	sub_00123428
	addiu	$s0, $s0, 4
	lw	$v1, 0($s0)
	addu	$s1, $s1, $v0
	bnez	$v1, lbl_00123598
	move	$a0, $v1
	b	lbl_001235C8
	sw	$s1, 16($s2)
lbl_001235B8:
	jal	sub_00123428
	lw	$a0, 8($s2)
	move	$s1, $v0
lbl_001235C4:
	sw	$s1, 16($s2)
lbl_001235C8:
	beqz	$s1, lbl_001235E0
	move	$s0, $sp
	jal	sub_001246A8
	sll	$a0, $s1, 0x2
	b	lbl_001235E8
	sw	$v0, 0($s0)
lbl_001235E0:
	move	$v0, $zero
	sw	$v0, 0($s0)
lbl_001235E8:
	beqz	$v0, lbl_001235FC
	move	$v1, $zero
	jal	sub_001246A8
	sll	$a0, $s1, 0x2
	move	$v1, $v0
lbl_001235FC:
	lw	$v0, 0($s0)
	sw	$v1, 8($s0)
	sw	$zero, 4($s0)
	bnez	$v0, lbl_0012361C
	sw	$zero, 12($s0)
	lw	$v0, 0($s2)
	bnezl	$v0, lbl_001236A4
	ld	$s0, 32($sp)
lbl_0012361C:
	lw	$v1, 12($s2)
	li	$v0, -1
	sw	$v0, 16($sp)
	beqz	$v1, lbl_00123668
	sw	$zero, 20($sp)
	move	$s0, $v1
	lw	$a0, 0($s0)
	beqz	$a0, lbl_00123680
	move	$a1, $s1
lbl_00123640:
	move	$a1, $sp
	addiu	$a2, $sp, 16
	addiu	$a3, $sp, 20
	jal	sub_00123468
	addiu	$s0, $s0, 4
	lw	$v0, 0($s0)
	bnez	$v0, lbl_00123640
	move	$a0, $v0
	b	lbl_00123680
	move	$a1, $s1
lbl_00123668:
	lw	$a0, 8($s2)
	move	$a1, $sp
	addiu	$a2, $sp, 16
	jal	sub_00123468
	addiu	$a3, $sp, 20
	move	$a1, $s1
lbl_00123680:
	jal	sub_00122CA0
	move	$a0, $sp
	bnezl	$v0, lbl_00123690
	sw	$v0, 12($s2)
lbl_00123690:
	lw	$v0, 16($sp)
	lw	$v1, 20($sp)
	sw	$v0, 0($s2)
	sw	$v1, 4($s2)
	ld	$s0, 32($sp)
lbl_001236A4:
	ld	$s1, 40($sp)
	ld	$s2, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_001236B8:
	addiu	$sp, $sp, -48
	sd	$s3, 24($sp)
	lui	$s3, 0x13
	sd	$s2, 16($sp)
	move	$s2, $a0
	lw	$a0, -1804($s3)
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 32($sp)
	jal	sub_00106920
	nop
	lui	$v1, 0x16
	lw	$s0, 19424($v1)
	nop
lbl_001236F0:
	beqz	$s0, lbl_00123738
	nop
	lw	$v0, 0($s0)
	bnez	$v0, lbl_00123714
	sltu	$v0, $s2, $v0
	jal	sub_00123550
	move	$a0, $s0
	lw	$v0, 0($s0)
	sltu	$v0, $s2, $v0
lbl_00123714:
	bnezl	$v0, lbl_001236F0
	lw	$s0, 20($s0)
	lw	$v0, 4($s0)
	sltu	$v0, $s2, $v0
	beqzl	$v0, lbl_001236F0
	lw	$s0, 20($s0)
	b	lbl_00123748
	lw	$v0, 12($s0)
	nop
lbl_00123738:
	jal	sub_00106900
	lw	$a0, -1804($s3)
	b	lbl_00123844
	move	$v0, $zero
lbl_00123748:
	beqz	$v0, lbl_0012375C
	nop
	lw	$a0, 8($s0)
	bne	$v0, $a0, lbl_0012376C
	nop
lbl_0012375C:
	jal	sub_00123550
	move	$a0, $s0
	lw	$v0, 12($s0)
	lw	$a0, 8($s0)
lbl_0012376C:
	beqz	$v0, lbl_00123820
	nop
	beq	$v0, $a0, lbl_001237E8
	nop
	jal	sub_00106900
	lw	$a0, -1804($s3)
	lw	$t0, 16($s0)
	beqz	$t0, lbl_00123840
	move	$t1, $zero
	lw	$a0, 12($s0)
	addu	$v0, $t1, $t0
lbl_00123798:
	srl	$a2, $v0, 0x1
	sll	$v1, $a2, 0x2
	addu	$v1, $v1, $a0
	lw	$a1, 0($v1)
	lw	$a3, 8($a1)
	sltu	$v1, $s2, $a3
	beqz	$v1, lbl_001237C0
	move	$v0, $a1
	b	lbl_001237D4
	move	$t0, $a2
lbl_001237C0:
	lw	$v1, 12($a1)
	addu	$v1, $a3, $v1
	sltu	$v1, $s2, $v1
	bnez	$v1, lbl_00123844
	addiu	$t1, $a2, 1
lbl_001237D4:
	sltu	$v0, $t1, $t0
	bnezl	$v0, lbl_00123798
	addu	$v0, $t1, $t0
	b	lbl_00123844
	move	$v0, $zero
lbl_001237E8:
	beqz	$v0, lbl_00123820
	move	$s0, $v0
	lw	$a0, 0($s0)
	nop
lbl_001237F8:
	jal	sub_001234F8
	move	$a1, $s2
	move	$s1, $v0
	bnez	$s1, lbl_0012382C
	addiu	$s0, $s0, 4
	lw	$v0, 0($s0)
	bnez	$v0, lbl_001237F8
	move	$a0, $v0
	b	lbl_0012382C
	nop
lbl_00123820:
	jal	sub_001234F8
	move	$a1, $s2
	move	$s1, $v0
lbl_0012382C:
	jal	sub_00106900
	lw	$a0, -1804($s3)
	b	lbl_00123844
	move	$v0, $s1
	nop
lbl_00123840:
	move	$v0, $zero
lbl_00123844:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00123860:
	addiu	$sp, $sp, -48
	sd	$s1, 24($sp)
	move	$s1, $a1
	sd	$s0, 16($sp)
	lui	$a1, 0x13
	sd	$s2, 32($sp)
	addiu	$a1, $a1, 24192
	sd	$ra, 40($sp)
	lw	$v0, 4($a0)
	subu	$a0, $a0, $v0
	addiu	$a0, $a0, 13
	jal	sub_00125DAC
	sw	$a0, 0($s1)
	beqz	$v0, lbl_001238C8
	lw	$a0, 0($s1)
	lui	$s0, 0x13
	jal	sub_00125DAC
	addiu	$a1, $s0, 24200
	beqz	$v0, lbl_001238D0
	li	$v1, 122
	lw	$a0, 0($s1)
	lb	$v0, 0($a0)
	beq	$v0, $v1, lbl_001238D4
	move	$v0, $zero
	b	lbl_0012395C
	ld	$s0, 16($sp)
lbl_001238C8:
	b	lbl_001238D4
	lui	$s0, 0x13
lbl_001238D0:
	lw	$a0, 0($s1)
lbl_001238D4:
	jal	sub_00126004
	nop
	lw	$a0, 0($s1)
	addiu	$a1, $s0, 24200
	addu	$s2, $a0, $v0
	jal	sub_00125DAC
	addiu	$s0, $s2, 1
	bnezl	$v0, lbl_00123908
	sw	$zero, 4($s1)
	lwl	$v0, 3($s0)
	lwr	$v0, 0($s0)
	addiu	$s0, $s2, 5
	sw	$v0, 4($s1)
lbl_00123908:
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $s1, 8
	addiu	$a1, $s1, 12
	jal	sub_00122B50
	move	$a0, $v0
	lw	$a1, 0($s1)
	move	$s0, $v0
	li	$a0, 122
	lbu	$v1, 0($s0)
	sw	$v1, 16($s1)
	lb	$v0, 0($a1)
	bne	$v0, $a0, lbl_00123954
	addiu	$s0, $s0, 1
	move	$a0, $s0
	jal	sub_00122B08
	move	$a1, $sp
	lw	$v1, 0($sp)
	addu	$s0, $v0, $v1
lbl_00123954:
	move	$v0, $s0
	ld	$s0, 16($sp)
lbl_0012395C:
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00123970:
	addiu	$sp, $sp, -48
	sd	$s1, 24($sp)
	move	$s1, $a1
	sd	$s0, 16($sp)
	sd	$ra, 32($sp)
	lbu	$s0, 0($a0)
	sltiu	$v0, $s0, 112
	beqz	$v0, lbl_001239B8
	addiu	$a0, $a0, 1
	sltiu	$v0, $s0, 80
	beqz	$v0, lbl_001239E0
	li	$v0, 6
	beq	$s0, $v0, lbl_00123A48
	li	$v0, 35
	beq	$s0, $v0, lbl_00123A58
	nop
	b	lbl_00123A70
	nop
lbl_001239B8:
	li	$v0, 144
	beq	$s0, $v0, lbl_001239F0
	sltiu	$v0, $s0, 144
	bnez	$v0, lbl_00123A04
	li	$v0, 146
	beq	$s0, $v0, lbl_00123A18
	nop
	b	lbl_00123A70
	nop
	nop
lbl_001239E0:
	li	$v0, 0xffb0
	addu	$v0, $v0, $s0
	b	lbl_00123A78
	sh	$v0, 1016($s1)
lbl_001239F0:
	jal	sub_00122B50
	move	$a1, $sp
	move	$a0, $v0
	lhu	$v0, 0($sp)
	sh	$v0, 1016($s1)
lbl_00123A04:
	li	$v0, 0xff90
	addu	$v0, $v0, $s0
	move	$a1, $sp
	b	lbl_00123A30
	sh	$v0, 1016($s1)
lbl_00123A18:
	jal	sub_00122B50
	move	$a1, $sp
	lhu	$v1, 0($sp)
	move	$a0, $v0
	move	$a1, $sp
	sh	$v1, 1016($s1)
lbl_00123A30:
	jal	sub_00122B50
	nop
	move	$a0, $v0
	lw	$v0, 0($sp)
	b	lbl_00123A78
	sd	$v0, 16($s1)
lbl_00123A48:
	li	$v0, 1
	b	lbl_00123A78
	sb	$v0, 1143($s1)
	nop
lbl_00123A58:
	jal	sub_00122B08
	move	$a1, $sp
	move	$a0, $v0
	lw	$v0, 0($sp)
	b	lbl_00123A78
	sd	$v0, 8($s1)
lbl_00123A70:
	jal	sub_001245B8
	nop
lbl_00123A78:
	ld	$s0, 16($sp)
	move	$v0, $a0
	ld	$s1, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_00123A90:
	addiu	$sp, $sp, -48
	sd	$s0, 16($sp)
	move	$s0, $a0
	sd	$s1, 24($sp)
	move	$s1, $a1
	sd	$s2, 32($sp)
	move	$s2, $a2
	sd	$ra, 40($sp)
	lbu	$a1, 0($s0)
	andi	$v0, $a1, 0x40
	beqz	$v0, lbl_00123AD8
	addiu	$s0, $s0, 1
	lw	$a0, 8($s2)
	andi	$v0, $a1, 0x3f
	lw	$v1, 0($a3)
	b	lbl_00123BA4
	mult	$v0, $v0, $a0
	nop
lbl_00123AD8:
	andi	$v0, $a1, 0x80
	beqz	$v0, lbl_00123B20
	move	$a0, $s0
	andi	$a3, $a1, 0x3f
	move	$a1, $sp
	jal	sub_00122B08
	sw	$a3, 4($sp)
	move	$s0, $v0
	lhu	$v0, 1016($s1)
	lw	$a3, 4($sp)
	beq	$a3, $v0, lbl_00123EC0
	lw	$v1, 0($sp)
	li	$v0, 1
	lw	$a2, 12($s2)
	sll	$a0, $a3, 0x3
	b	lbl_00123C0C
	addu	$a1, $a3, $s1
	nop
lbl_00123B20:
	andi	$v0, $a1, 0xc0
	beqz	$v0, lbl_00123B40
	sltiu	$v0, $a1, 48
	andi	$a3, $a1, 0x3f
	addu	$v0, $a3, $s1
	sw	$a3, 4($sp)
	b	lbl_00123EC0
	sb	$zero, 1020($v0)
lbl_00123B40:
	beqz	$v0, lbl_00123EB8
	sll	$v0, $a1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 24208($v1)
	jr	$v1
	nop
	nop
	lwl	$v0, 3($s0)
	lwr	$v0, 0($s0)
	addiu	$s0, $s0, 4
	b	lbl_00123EC0
	sw	$v0, 0($a3)
	nop
	lbu	$v1, 0($s0)
	b	lbl_00123BBC
	addiu	$s0, $s0, 1
	nop
	lbu	$v0, 1($s0)
	lbu	$a0, 0($s0)
	addiu	$s0, $s0, 2
	dsll	$v0, $v0, 0x8
	lw	$v1, 0($a3)
	or	$v0, $v0, $a0
	andi	$v0, $v0, 0xffff
lbl_00123BA4:
	addu	$v1, $v1, $v0
	b	lbl_00123EC0
	sw	$v1, 0($a3)
	lwl	$v1, 3($s0)
	lwr	$v1, 0($s0)
	addiu	$s0, $s0, 4
lbl_00123BBC:
	lw	$v0, 0($a3)
	addu	$v0, $v0, $v1
	b	lbl_00123EC0
	sw	$v0, 0($a3)
	nop
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$a1, $sp
	jal	sub_00122B08
	move	$a0, $v0
	move	$s0, $v0
	lhu	$v0, 1016($s1)
	lw	$a1, 4($sp)
	beq	$a1, $v0, lbl_00123EC0
	lw	$v1, 0($sp)
	sll	$a0, $a1, 0x3
	lw	$a2, 12($s2)
	li	$v0, 1
	addu	$a1, $a1, $s1
lbl_00123C0C:
	addu	$a0, $a0, $s1
	mult	$v1, $v1, $a2
	sb	$v0, 1020($a1)
	move	$v0, $v1
	sw	$v1, 0($sp)
	b	lbl_00123EC0
	sd	$v0, 32($a0)
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$s0, $v0
	lw	$v0, 4($sp)
	addu	$v0, $v0, $s1
	b	lbl_00123EC0
	sb	$zero, 1020($v0)
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$a0, $v0
	jal	sub_00122B08
	addiu	$a1, $sp, 8
	li	$a1, 2
	move	$s0, $v0
	lw	$v0, 4($sp)
	lwu	$a0, 8($sp)
	sll	$v1, $v0, 0x3
	addu	$v0, $v0, $s1
	addu	$v1, $v1, $s1
	sb	$a1, 1020($v0)
	b	lbl_00123EC0
	sd	$a0, 32($v1)
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$a0, $v0
	jal	sub_00122B08
	move	$a1, $sp
	lw	$v1, 0($sp)
	move	$s0, $v0
	lhu	$v0, 4($sp)
	sd	$v1, 8($s1)
	b	lbl_00123EC0
	sh	$v0, 1016($s1)
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$s0, $v0
	lhu	$v0, 4($sp)
	b	lbl_00123EC0
	sh	$v0, 1016($s1)
	nop
	move	$a0, $s0
	jal	sub_00122B08
	move	$a1, $sp
	move	$s0, $v0
	lw	$v0, 0($sp)
	b	lbl_00123EC0
	sd	$v0, 8($s1)
	nop
	sh	$zero, 1016($s1)
	move	$a0, $s0
	sd	$zero, 8($s1)
	move	$a1, $sp
	sd	$zero, 16($s1)
	jal	sub_00122B08
	sb	$zero, 1143($s1)
	move	$s0, $v0
	lw	$v0, 0($sp)
	addu	$s2, $s0, $v0
	sltu	$v1, $s0, $s2
	beqz	$v1, lbl_00123EC4
	move	$v0, $s0
	move	$a0, $s0
lbl_00123D30:
	jal	sub_00123970
	move	$a1, $s1
	move	$s0, $v0
	sltu	$v0, $s0, $s2
	bnez	$v0, lbl_00123D30
	move	$a0, $s0
	b	lbl_00123EC4
	move	$v0, $s0
	jal	sub_001246A8
	li	$a0, 1152
	move	$v1, $s1
	move	$a0, $v0
	addiu	$a1, $s1, 1152
lbl_00123D64:
	ld	$a2, 0($v1)
	ld	$a3, 8($v1)
	ld	$t0, 16($v1)
	ld	$t1, 24($v1)
	sd	$a2, 0($a0)
	sd	$a3, 8($a0)
	sd	$t0, 16($a0)
	sd	$t1, 24($a0)
	addiu	$v1, $v1, 32
	nop
	nop
	bne	$v1, $a1, lbl_00123D64
	addiu	$a0, $a0, 32
	b	lbl_00123EC0
	sw	$v0, 1144($s1)
	lw	$a0, 1144($s1)
	move	$a1, $s1
	move	$v1, $a0
	addiu	$v0, $a0, 1152
lbl_00123DB0:
	ld	$a2, 0($v1)
	ld	$a3, 8($v1)
	ld	$t0, 16($v1)
	ld	$t1, 24($v1)
	sd	$a2, 0($a1)
	sd	$a3, 8($a1)
	sd	$t0, 16($a1)
	sd	$t1, 24($a1)
	addiu	$v1, $v1, 32
	nop
	nop
	bne	$v1, $v0, lbl_00123DB0
	addiu	$a1, $a1, 32
	jal	sub_00124700
	nop
	b	lbl_00123EC4
	move	$v0, $s0
	nop
	li	$a1, 16
	addiu	$a2, $s1, 12
	sw	$a1, 4($sp)
	li	$a3, 1
lbl_00123E08:
	lw	$a0, 4($sp)
	addu	$v0, $a1, $a2
	sb	$a3, 1008($v0)
	addiu	$v1, $a0, -16
	addiu	$a1, $a0, 1
	sll	$v1, $v1, 0x2
	sll	$a0, $a0, 0x3
	dsll32	$v1, $v1, 0x0
	addu	$a0, $a0, $s1
	dsrl32	$v1, $v1, 0x0
	sltiu	$v0, $a1, 32
	sd	$v1, 32($a0)
	bnez	$v0, lbl_00123E08
	sw	$a1, 4($sp)
	b	lbl_00123EC4
	move	$v0, $s0
	move	$a0, $s0
	jal	sub_00122B08
	move	$a1, $sp
	move	$s0, $v0
	lw	$v0, 0($sp)
	b	lbl_00123EC0
	sd	$v0, 24($s1)
	nop
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 4
	move	$a0, $v0
	jal	sub_00122B08
	move	$a1, $sp
	lw	$a1, 12($s2)
	lw	$a0, 0($sp)
	move	$s0, $v0
	lw	$v0, 4($sp)
	li	$a2, 1
	mult	$a0, $a0, $a1
	sll	$v1, $v0, 0x3
	addu	$v0, $v0, $s1
	addu	$v1, $v1, $s1
	sb	$a2, 1020($v0)
	negu	$a1, $a0
	sw	$a0, 0($sp)
	b	lbl_00123EC0
	sd	$a1, 32($v1)
lbl_00123EB8:
	jal	sub_001245B8
	nop
lbl_00123EC0:
	move	$v0, $s0
lbl_00123EC4:
	ld	$s0, 16($sp)
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -1264
	sd	$s2, 1216($sp)
	sd	$s3, 1224($sp)
	move	$s3, $a0
	sd	$s5, 1240($sp)
	sd	$s0, 1200($sp)
	sd	$s1, 1208($sp)
	sd	$s4, 1232($sp)
	sd	$ra, 1248($sp)
	jal	sub_001236B8
	move	$s5, $a1
	move	$s2, $v0
	beqz	$s2, lbl_00124074
	move	$a0, $s2
	jal	sub_00123860
	move	$a1, $sp
	move	$s0, $v0
	beqz	$s0, lbl_00124074
	addiu	$s4, $sp, 32
	move	$a1, $zero
	move	$a0, $s4
	jal	sub_00125310
	li	$a2, 1152
	lw	$v1, 4($s2)
	lhu	$a0, 16($sp)
	subu	$v1, $s2, $v1
	lw	$a1, 4($sp)
	addiu	$v1, $v1, 4
	sh	$a0, 1050($sp)
	lw	$v0, 0($v1)
	addu	$v1, $v1, $v0
	addiu	$s1, $v1, 4
	sltu	$v0, $s0, $s1
	beqz	$v0, lbl_00123F90
	sw	$a1, 36($sp)
	move	$a0, $s0
lbl_00123F70:
	move	$a1, $s4
	move	$a2, $sp
	jal	sub_00123A90
	move	$a3, $zero
	move	$s0, $v0
	sltu	$v0, $s0, $s1
	bnez	$v0, lbl_00123F70
	move	$a0, $s0
lbl_00123F90:
	lw	$v0, 0($sp)
	li	$a0, 122
	lb	$v1, 0($v0)
	bne	$v1, $a0, lbl_00123FB8
	addiu	$s0, $s2, 16
	move	$a0, $s0
	jal	sub_00122B08
	addiu	$a1, $sp, 1184
	lw	$v1, 1184($sp)
	addu	$s0, $v0, $v1
lbl_00123FB8:
	lw	$v0, 0($s2)
	lw	$a1, 8($s2)
	addu	$v0, $s2, $v0
	addiu	$s1, $v0, 4
	sltu	$v0, $s0, $s1
	beqz	$v0, lbl_00124018
	sw	$a1, 1188($sp)
	sltu	$v0, $s3, $a1
	bnez	$v0, lbl_0012401C
	move	$a0, $s4
	move	$a0, $s0
	nop
lbl_00123FE8:
	move	$a1, $s4
	move	$a2, $sp
	jal	sub_00123A90
	addiu	$a3, $sp, 1188
	move	$s0, $v0
	sltu	$v0, $s0, $s1
	beqz	$v0, lbl_0012401C
	move	$a0, $s4
	lw	$v0, 1188($sp)
	sltu	$v0, $s3, $v0
	beqz	$v0, lbl_00123FE8
	move	$a0, $s0
lbl_00124018:
	move	$a0, $s4
lbl_0012401C:
	move	$v0, $s5
	addiu	$v1, $sp, 1152
lbl_00124024:
	ld	$a1, 0($a0)
	ld	$a2, 8($a0)
	ld	$a3, 16($a0)
	ld	$t0, 24($a0)
	sd	$a1, 0($v0)
	sd	$a2, 8($v0)
	sd	$a3, 16($v0)
	sd	$t0, 24($v0)
	addiu	$a0, $a0, 32
	nop
	nop
	bne	$a0, $v1, lbl_00124024
	addiu	$v0, $v0, 32
	ld	$v1, 0($a0)
	ld	$a1, 8($a0)
	ld	$a2, 16($a0)
	sd	$v1, 0($v0)
	sd	$a1, 8($v0)
	sd	$a2, 16($v0)
	move	$v0, $s5
lbl_00124074:
	ld	$s0, 1200($sp)
	ld	$s1, 1208($sp)
	ld	$s2, 1216($sp)
	ld	$s3, 1224($sp)
	ld	$s4, 1232($sp)
	ld	$s5, 1240($sp)
	ld	$ra, 1248($sp)
	jr	$ra
	addiu	$sp, $sp, 1264

sub_00124098:
	dsll32	$v0, $a1, 0x0
	dsra32	$v0, $v0, 0x0
	dsra32	$a1, $a1, 0x0
	dsll32	$v1, $a0, 0x0
	dsra32	$v1, $v1, 0x0
	multu	$v1, $v0
	mflo	$a2
	mfhi	$t0
	dsll32	$a2, $a2, 0x0
	dsra32	$a0, $a0, 0x0
	mult	$v1, $v1, $a1
	li	$a1, -1
	dsll32	$a1, $a1, 0x0
	mult1	$a0, $a0, $v0
	dsrl32	$a2, $a2, 0x0
	and	$t1, $t1, $a1
	lui	$a3, 0xffff
	dsrl32	$a3, $a3, 0x0
	or	$t1, $t1, $a2
	dsll32	$t0, $t0, 0x0
	and	$t1, $t1, $a3
	or	$t1, $t1, $t0
	addu	$v1, $v1, $a0
	dsra32	$v0, $t1, 0x0
	and	$a3, $t1, $a3
	addu	$v0, $v0, $v1
	dsll32	$v0, $v0, 0x0
	jr	$ra
	or	$v0, $a3, $v0
	nop

sub_00124110:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	dsra32	$a0, $s0, 0x0
	li	$s1, 0x81e0
	dsll32	$s1, $s1, 0xf
	sd	$ra, 16($sp)
	jal	sub_00122928
	nop
	move	$a0, $v0
	move	$a1, $s1
	jal	sub_00122510
	nop
	move	$a1, $s1
	move	$a0, $v0
	jal	sub_00122510
	nop
	move	$s1, $v0
	lui	$v0, 0xffff
	dsrl32	$v0, $v0, 0x0
	and	$s0, $s0, $v0
	dsll32	$s0, $s0, 0x0
	dsra32	$s0, $s0, 0x0
	jal	sub_00122928
	move	$a0, $s0
	li	$a1, 0x83e0
	dsll32	$a1, $a1, 0xf
	bgez	$s0, lbl_00124194
	nop
	move	$a0, $v0
	jal	sub_00122450
	nop
lbl_00124194:
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_00122450
	nop
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_001241B8:
	lw	$v1, 0($a0)
	lui	$a0, 0x7f
	ori	$a0, $a0, 0xffff
	move	$a2, $a1
	srl	$v0, $v1, 0x17
	srl	$a1, $v1, 0x1f
	andi	$v0, $v0, 0xff
	and	$v1, $v1, $a0
	sw	$a1, 4($a2)
	addiu	$a1, $v0, -127
	bnez	$v0, lbl_001241F8
	sll	$a0, $v1, 0x7
	li	$v0, 2
	jr	$ra
	sw	$v0, 0($a2)
	nop
lbl_001241F8:
	lui	$v0, 0x4000
	li	$v1, 3
	or	$v0, $a0, $v0
	sw	$a1, 8($a2)
	sw	$v1, 0($a2)
	jr	$ra
	sw	$v0, 12($a2)
	nop

sub_00124218:
	addiu	$sp, $sp, -32
	sw	$a0, 0($sp)
	move	$a0, $sp
	sd	$ra, 16($sp)
	sw	$a1, 4($sp)
	sw	$a2, 8($sp)
	jal	sub_00124500
	sw	$a3, 12($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00124248:
	lw	$v1, 0($a0)
	move	$a3, $zero
	ld	$a1, 16($a0)
	sltiu	$v0, $v1, 2
	beqz	$v0, lbl_00124278
	lw	$t0, 4($a0)
	li	$v0, 0x8000
	dsll32	$v0, $v0, 0x4
	li	$a3, 2047
	b	lbl_001242C4
	or	$a1, $a1, $v0
	nop
lbl_00124278:
	xori	$v0, $v1, 0x4
	beqzl	$v0, lbl_001242B8
	li	$a3, 2047
	xori	$v0, $v1, 0x2
	beqzl	$v0, lbl_001242C4
	move	$a1, $zero
	beqz	$a1, lbl_001242C4
	nop
	lw	$a0, 8($a0)
	slti	$v0, $a0, -1022
	bnezl	$v0, lbl_001242C4
	move	$a1, $zero
	slti	$v0, $a0, 1024
	bnezl	$v0, lbl_001242C0
	addiu	$a3, $a0, 1023
	li	$a3, 2047
lbl_001242B8:
	b	lbl_001242C4
	move	$a1, $zero
lbl_001242C0:
	dsrl	$a1, $a1, 0x8
lbl_001242C4:
	li	$v1, 0xfff0
	dsll32	$v1, $v1, 0x10
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $a1, $v0
	and	$a2, $a2, $v1
	or	$a2, $a2, $v0
	lui	$v0, 0x800f
	ori	$v0, $v0, 0xffff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	andi	$v1, $a3, 0x7ff
	and	$a2, $a2, $v0
	dsll32	$v1, $v1, 0x14
	li	$a0, -1
	dsrl	$a0, $a0, 0x1
	or	$a2, $a2, $v1
	dsll32	$v0, $t0, 0x1f
	and	$a2, $a2, $a0
	jr	$ra
	or	$v0, $a2, $v0

sub_00124320:
	ld	$v0, 0($a0)
	move	$a2, $a1
	li	$a1, -1
	dsrl	$a1, $a1, 0xc
	dsrl32	$v1, $v0, 0x14
	dsrl32	$a0, $v0, 0x1f
	andi	$a3, $v1, 0x7ff
	and	$v1, $v0, $a1
	bnez	$a3, lbl_00124358
	sw	$a0, 4($a2)
	li	$v0, 2
	jr	$ra
	sw	$v0, 0($a2)
	nop
lbl_00124358:
	li	$v0, 2047
	bnel	$a3, $v0, lbl_001243B8
	dsll	$v1, $v1, 0x8
	li	$v0, 1023
	bnez	$v1, lbl_00124388
	sw	$v0, 8($a2)
	li	$v1, 4
	li	$v0, 0x8000
	dsll32	$v0, $v0, 0xd
	sd	$v0, 16($a2)
	jr	$ra
	sw	$v1, 0($a2)
lbl_00124388:
	li	$v0, 0x8000
	dsll32	$v0, $v0, 0x4
	and	$v0, $v1, $v0
	beqz	$v0, lbl_001243A8
	li	$v0, 1
	b	lbl_001243AC
	sw	$v0, 0($a2)
	nop
lbl_001243A8:
	sw	$zero, 0($a2)
lbl_001243AC:
	jr	$ra
	sd	$v1, 16($a2)
	nop
lbl_001243B8:
	li	$v0, 0x8000
	dsll32	$v0, $v0, 0xd
	or	$v1, $v1, $v0
	li	$v0, 3
	addiu	$a0, $a3, -1023
	sd	$v1, 16($a2)
	sw	$a0, 8($a2)
	jr	$ra
	sw	$v0, 0($a2)
	nop

sub_001243E0:
	lw	$a2, 0($a0)
	sltiu	$v0, $a2, 2
	bnez	$v0, lbl_00124400
	nop
	lw	$v1, 0($a1)
	sltiu	$v0, $v1, 2
	beqzl	$v0, lbl_00124408
	xori	$v0, $a2, 0x4
lbl_00124400:
	jr	$ra
	li	$v0, 1
lbl_00124408:
	bnez	$v0, lbl_00124428
	xori	$v0, $v1, 0x4
	bnezl	$v0, lbl_0012447C
	lw	$a0, 4($a0)
	lw	$v1, 4($a1)
	lw	$v0, 4($a0)
	jr	$ra
	subu	$v0, $v1, $v0
lbl_00124428:
	bnezl	$v0, lbl_00124448
	xori	$v0, $a2, 0x2
	lw	$a0, 4($a1)
	li	$v1, -1
	li	$v0, 1
	jr	$ra
	movz	$v0, $v1, $a0
	nop
lbl_00124448:
	bnezl	$v0, lbl_00124470
	xori	$v0, $v1, 0x2
	xori	$v1, $v1, 0x2
	beqz	$v1, lbl_001244F8
	move	$v0, $zero
	lw	$a0, 4($a1)
	li	$v1, 1
	li	$v0, -1
	jr	$ra
	movn	$v0, $v1, $a0
lbl_00124470:
	bnezl	$v0, lbl_00124490
	lw	$a3, 4($a0)
	lw	$a0, 4($a0)
lbl_0012447C:
	li	$v1, 1
	li	$v0, -1
	jr	$ra
	movz	$v0, $v1, $a0
	nop
lbl_00124490:
	lw	$v0, 4($a1)
	bne	$a3, $v0, lbl_001244D4
	li	$v1, 1
	lw	$a2, 8($a0)
	lw	$v1, 8($a1)
	slt	$v0, $v1, $a2
	bnezl	$v0, lbl_001244D4
	li	$v1, 1
	slt	$v0, $a2, $v1
	bnez	$v0, lbl_001244EC
	li	$v1, -1
	ld	$v1, 16($a0)
	ld	$a0, 16($a1)
	sltu	$v0, $a0, $v1
	beqzl	$v0, lbl_001244E0
	sltu	$v0, $v1, $a0
	li	$v1, 1
lbl_001244D4:
	li	$v0, -1
	jr	$ra
	movz	$v0, $v1, $a3
lbl_001244E0:
	beqzl	$v0, lbl_001244F8
	move	$v0, $zero
	li	$v1, -1
lbl_001244EC:
	li	$v0, 1
	jr	$ra
	movz	$v0, $v1, $a3
lbl_001244F8:
	jr	$ra
	nop

sub_00124500:
	lw	$v0, 0($a0)
	move	$a3, $zero
	lw	$a1, 12($a0)
	xori	$v0, $v0, 0x2
	beqz	$v0, lbl_00124554
	lw	$t0, 4($a0)
	beqz	$a1, lbl_00124568
	lui	$v0, 0x7f
	lw	$a0, 8($a0)
	slti	$v0, $a0, -126
	bnezl	$v0, lbl_00124564
	move	$a1, $zero
	slti	$v0, $a0, 129
	beqzl	$v0, lbl_00124554
	li	$a3, 255
	li	$v0, 128
	bne	$a0, $v0, lbl_00124560
	addiu	$a3, $a0, 127
	bgezl	$a1, lbl_00124564
	srl	$a1, $a1, 0x7
	li	$a3, 255
lbl_00124554:
	b	lbl_00124564
	move	$a1, $zero
	nop
lbl_00124560:
	srl	$a1, $a1, 0x7
lbl_00124564:
	lui	$v0, 0x7f
lbl_00124568:
	lui	$v1, 0xff80
	ori	$v0, $v0, 0xffff
	and	$a2, $a2, $v1
	and	$v0, $a1, $v0
	lui	$v1, 0x807f
	or	$a2, $a2, $v0
	lui	$v0, 0x7fff
	ori	$v1, $v1, 0xffff
	andi	$a0, $a3, 0xff
	and	$a2, $a2, $v1
	sll	$v1, $t0, 0x1f
	sll	$a0, $a0, 0x17
	ori	$v0, $v0, 0xffff
	or	$a2, $a2, $a0
	and	$a2, $a2, $v0
	or	$a2, $a2, $v1
	mtc1	$a2, $f0
	jr	$ra
	nop
	nop

sub_001245B8:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_00125828
	li	$a0, 6
	jal	sub_001000C0
	li	$a0, 1
lbl_001245D0:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	addiu	$s0, $v0, 11128
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$ra, 16($sp)
	lw	$v0, 0($s0)
	lw	$a2, 328($v0)
	bnez	$a2, lbl_00124604
	li	$a0, 136
	addiu	$a2, $v0, 332
	sw	$a2, 328($v0)
lbl_00124604:
	lw	$v0, 4($a2)
	slti	$v0, $v0, 32
	bnez	$v0, lbl_00124640
	addiu	$v1, $a2, 4
	jal	sub_001246A8
	nop
	move	$a2, $v0
	beqz	$a2, lbl_0012465C
	li	$v0, -1
	lw	$v1, 0($s0)
	sw	$zero, 4($a2)
	lw	$v0, 328($v1)
	sw	$v0, 0($a2)
	sw	$a2, 328($v1)
	addiu	$v1, $a2, 4
lbl_00124640:
	move	$v0, $zero
	lw	$a0, 0($v1)
	sll	$a1, $a0, 0x2
	addiu	$a0, $a0, 1
	addu	$a1, $a2, $a1
	sw	$a0, 0($v1)
	sw	$s1, 8($a1)
lbl_0012465C:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00124670:
	addiu	$sp, $sp, -16
	move	$a1, $zero
	sd	$ra, 0($sp)
	jal	sub_00126740
	li	$a2, 10
	ld	$ra, 0($sp)
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	jr	$ra
	addiu	$sp, $sp, 16

sub_00124698:
	lui	$v1, 0x13
	jr	$ra
	lw	$v0, 11128($v1)
	nop

sub_001246A8:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	lui	$s0, 0x13
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$ra, 16($sp)
	addiu	$s0, $s0, 11128
	jal	sub_001253D0
	lw	$a0, 0($s0)
	lw	$a0, 0($s0)
	jal	sub_001249A0
	move	$a1, $s1
	lw	$a0, 0($s0)
	jal	sub_00125450
	move	$s1, $v0
	move	$v0, $s1
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00124700:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	lui	$s0, 0x13
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$ra, 16($sp)
	addiu	$s0, $s0, 11128
	jal	sub_001253D0
	lw	$a0, 0($s0)
	lw	$a0, 0($s0)
	jal	sub_0012AAF0
	move	$a1, $s1
	lw	$a0, 0($s0)
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	j	sub_00125450
	addiu	$sp, $sp, 32

sub_00124748:
	addiu	$sp, $sp, -96
	lui	$v0, 0x13
	sd	$s7, 72($sp)
	addiu	$s7, $v0, 11136
	sd	$s0, 16($sp)
	lui	$a2, 0x13
	sd	$s2, 32($sp)
	lui	$v0, 0x13
	sd	$s3, 40($sp)
	dsll32	$a1, $a1, 0x0
	sd	$s4, 48($sp)
	dsrl32	$a1, $a1, 0x0
	sd	$s5, 56($sp)
	li	$s5, -1
	sd	$s6, 64($sp)
	addiu	$s6, $v0, 12184
	lw	$s4, 8($s7)
	li	$v0, -4
	sd	$s1, 24($sp)
	sd	$s8, 80($sp)
	sd	$ra, 88($sp)
	ld	$v1, 12176($a2)
	lw	$a2, 4($s4)
	daddu	$a1, $a1, $v1
	lw	$v1, 0($s6)
	and	$s3, $a2, $v0
	daddiu	$a1, $a1, 16
	dsll32	$s2, $a1, 0x0
	dsra32	$s2, $s2, 0x0
	sw	$a0, 0($sp)
	beq	$v1, $s5, lbl_001247E4
	addu	$s0, $s4, $s3
	dsll32	$v0, $s2, 0x0
	li	$v1, -4096
	dsrl32	$v0, $v0, 0x0
	daddiu	$v0, $v0, 4095
	and	$v0, $v0, $v1
	dsll32	$s2, $v0, 0x0
	dsra32	$s2, $s2, 0x0
lbl_001247E4:
	jal	sub_00125570
	move	$a1, $s2
	move	$s1, $v0
	beq	$s1, $s5, lbl_00124970
	sltu	$v0, $s1, $s0
	beqz	$v0, lbl_0012480C
	lui	$s8, 0x13
	bnel	$s4, $s7, lbl_00124974
	ld	$s0, 16($sp)
	lui	$s8, 0x13
lbl_0012480C:
	addiu	$a0, $s8, 12208
	lw	$v0, 0($a0)
	addu	$v1, $v0, $s2
	bne	$s1, $s0, lbl_00124838
	sw	$v1, 0($a0)
	addu	$a0, $s2, $s3
	lw	$v1, 8($s7)
	ori	$v0, $a0, 0x1
	b	lbl_0012493C
	sw	$v0, 4($v1)
	nop
lbl_00124838:
	lw	$v0, 0($s6)
	bne	$v0, $s5, lbl_00124850
	subu	$v0, $s1, $s0
	b	lbl_00124858
	sw	$s1, 0($s6)
	nop
lbl_00124850:
	addu	$v0, $v1, $v0
	sw	$v0, 0($a0)
lbl_00124858:
	addiu	$v0, $s1, 8
	andi	$a1, $v0, 0xf
	beqz	$a1, lbl_00124878
	li	$v0, 16
	subu	$s0, $v0, $a1
	b	lbl_0012487C
	addu	$s1, $s1, $s0
	nop
lbl_00124878:
	move	$s0, $zero
lbl_0012487C:
	addu	$v0, $s1, $s2
	li	$v1, 4096
	andi	$v0, $v0, 0xfff
	lw	$a0, 0($sp)
	dsubu	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	addu	$s0, $s0, $v1
	jal	sub_00125570
	move	$a1, $s0
	move	$a0, $v0
	li	$v0, -1
	beq	$a0, $v0, lbl_00124970
	subu	$a0, $a0, $s1
	addiu	$a1, $s8, 12208
	lw	$v0, 0($a1)
	addu	$a0, $a0, $s0
	lui	$a2, 0x13
	ori	$a0, $a0, 0x1
	addiu	$v1, $a2, 11136
	addu	$v0, $v0, $s0
	sw	$v0, 0($a1)
	sw	$s1, 8($v1)
	beq	$s4, $v1, lbl_0012493C
	sw	$a0, 4($s1)
	sltiu	$v0, $s3, 16
	beqzl	$v0, lbl_00124900
	lw	$v0, 4($s4)
	move	$v1, $s1
	li	$v0, 1
	b	lbl_00124970
	sw	$v0, 4($v1)
	nop
lbl_00124900:
	addiu	$a0, $s3, -12
	li	$v1, -16
	li	$a1, 5
	and	$s3, $a0, $v1
	andi	$v0, $v0, 0x1
	addu	$v1, $s4, $s3
	or	$v0, $v0, $s3
	sltiu	$a0, $s3, 16
	sw	$v0, 4($s4)
	sw	$a1, 8($v1)
	bnez	$a0, lbl_0012493C
	sw	$a1, 4($v1)
	lw	$a0, 0($sp)
	jal	sub_0012AAF0
	addiu	$a1, $s4, 8
lbl_0012493C:
	lui	$v1, 0x13
	lw	$a1, 12208($s8)
	addiu	$v1, $v1, 12192
	ld	$v0, 0($v1)
	sltu	$v0, $v0, $a1
	bnezl	$v0, lbl_00124958
	sd	$a1, 0($v1)
lbl_00124958:
	lui	$v1, 0x13
	addiu	$v1, $v1, 12200
	ld	$v0, 0($v1)
	sltu	$v0, $v0, $a1
	bnezl	$v0, lbl_00124970
	sd	$a1, 0($v1)
lbl_00124970:
	ld	$s0, 16($sp)
lbl_00124974:
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$s8, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_001249A0:
	addiu	$v1, $a1, 19
	addiu	$sp, $sp, -48
	sltiu	$v0, $v1, 31
	sd	$s3, 24($sp)
	sd	$s0, 0($sp)
	move	$s3, $a0
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$s4, 32($sp)
	bnez	$v0, lbl_001249D8
	sd	$ra, 40($sp)
	li	$v0, -16
	b	lbl_001249DC
	and	$s1, $v1, $v0
lbl_001249D8:
	li	$s1, 16
lbl_001249DC:
	jal	sub_001253D0
	move	$a0, $s3
	sltiu	$v0, $s1, 504
	beqz	$v0, lbl_00124A48
	srl	$v1, $s1, 0x9
	lui	$t7, 0x13
	addiu	$v0, $t7, 11144
	addiu	$v0, $v0, -8
	addu	$a0, $s1, $v0
	lw	$s0, 12($a0)
	beq	$s0, $a0, lbl_00124A40
	srl	$t2, $s1, 0x3
	lw	$v1, 4($s0)
	li	$v0, -4
	lw	$t3, 12($s0)
	move	$a0, $s3
	and	$a2, $v1, $v0
	lw	$t0, 8($s0)
	addu	$v1, $s0, $a2
	lw	$v0, 4($v1)
	sw	$t3, 12($t0)
	ori	$v0, $v0, 0x1
	sw	$t0, 8($t3)
	b	lbl_0012509C
	sw	$v0, 4($v1)
lbl_00124A40:
	b	lbl_00124B24
	addiu	$t2, $t2, 2
lbl_00124A48:
	beqz	$v1, lbl_00124AB0
	srl	$t2, $s1, 0x3
	sltiu	$v0, $v1, 5
	beqz	$v0, lbl_00124A68
	sltiu	$v0, $v1, 21
	srl	$v0, $s1, 0x6
	b	lbl_00124AB0
	addiu	$t2, $v0, 56
lbl_00124A68:
	bnez	$v0, lbl_00124AB0
	addiu	$t2, $v1, 91
	sltiu	$v0, $v1, 85
	beqz	$v0, lbl_00124A88
	sltiu	$v0, $v1, 341
	srl	$v0, $s1, 0xc
	b	lbl_00124AB0
	addiu	$t2, $v0, 110
lbl_00124A88:
	beqz	$v0, lbl_00124AA0
	sltiu	$v0, $v1, 1365
	srl	$v0, $s1, 0xf
	b	lbl_00124AB0
	addiu	$t2, $v0, 119
	nop
lbl_00124AA0:
	beqzl	$v0, lbl_00124AB0
	li	$t2, 126
	srl	$v0, $s1, 0x12
	addiu	$t2, $v0, 124
lbl_00124AB0:
	lui	$t7, 0x13
	sll	$v1, $t2, 0x3
	addiu	$v0, $t7, 11144
	li	$a0, -4
	addiu	$v0, $v0, -8
	addu	$a1, $v1, $v0
	b	lbl_00124ADC
	lw	$s0, 12($a1)
lbl_00124AD0:
	bgez	$t0, lbl_00124FC8
	addu	$v1, $s0, $a2
	lw	$s0, 12($s0)
lbl_00124ADC:
	beql	$s0, $a1, lbl_00124B24
	addiu	$t2, $t2, 1
	lw	$v0, 4($s0)
	and	$a2, $v0, $a0
	subu	$v1, $s1, $a2
	subu	$v0, $a2, $s1
	dsll32	$v1, $v1, 0x0
	dsll32	$a3, $v0, 0x0
	dsrl32	$v1, $v1, 0x0
	sltu	$v0, $a2, $s1
	bnez	$v0, lbl_00124B10
	dnegu	$t0, $v1
	dsrl32	$t0, $a3, 0x0
lbl_00124B10:
	slti	$v0, $t0, 16
	bnez	$v0, lbl_00124AD0
	nop
	addiu	$t2, $t2, -1
	addiu	$t2, $t2, 1
lbl_00124B24:
	addiu	$v0, $t7, 11144
	lw	$s0, 8($v0)
	beq	$s0, $v0, lbl_00124D30
	li	$v1, -4
	lw	$v0, 4($s0)
	and	$a2, $v0, $v1
	sltu	$a0, $a2, $s1
	beqz	$a0, lbl_00124B60
	subu	$v0, $a2, $s1
	subu	$v0, $s1, $a2
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	b	lbl_00124B68
	dnegu	$t0, $v0
	nop
lbl_00124B60:
	dsll32	$v0, $v0, 0x0
	dsrl32	$t0, $v0, 0x0
lbl_00124B68:
	slti	$v0, $t0, 16
	bnezl	$v0, lbl_00124BC0
	addiu	$a0, $t7, 11144
	li	$v1, 1
	addu	$t1, $s0, $s1
	dsll32	$a3, $t0, 0x0
	dsra32	$a3, $a3, 0x0
	or	$v1, $t0, $v1
	addiu	$a1, $t7, 11144
	ori	$v0, $s1, 0x1
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	addu	$a2, $t1, $a3
	sw	$v0, 4($s0)
	move	$a0, $s3
	sw	$t1, 12($a1)
	sw	$t1, 8($a1)
	sw	$v1, 4($t1)
	sw	$a1, 8($t1)
	sw	$a3, 0($a2)
	b	lbl_0012509C
	sw	$a1, 12($t1)
lbl_00124BC0:
	sw	$a0, 12($a0)
	bltz	$t0, lbl_00124BE8
	sw	$a0, 8($a0)
	addu	$v1, $s0, $a2
	move	$a0, $s3
	lw	$v0, 4($v1)
	ori	$v0, $v0, 0x1
	b	lbl_0012509C
	sw	$v0, 4($v1)
	nop
lbl_00124BE8:
	sltiu	$v0, $a2, 512
	beqz	$v0, lbl_00124C38
	srl	$v1, $a2, 0x9
	srl	$a1, $a2, 0x3
	addiu	$a0, $a0, -8
	sll	$v1, $a1, 0x3
	srl	$a1, $a1, 0x2
	li	$v0, 1
	addu	$t3, $v1, $a0
	dsllv	$v0, $v0, $a1
	lw	$v1, 4($a0)
	lw	$t0, 8($t3)
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	or	$v1, $v1, $v0
	sw	$t3, 12($s0)
	sw	$t0, 8($s0)
	b	lbl_00124D28
	sw	$v1, 4($a0)
	nop
lbl_00124C38:
	beqz	$v1, lbl_00124CA0
	srl	$a1, $a2, 0x3
	sltiu	$v0, $v1, 5
	beqz	$v0, lbl_00124C58
	sltiu	$v0, $v1, 21
	srl	$v0, $a2, 0x6
	b	lbl_00124CA0
	addiu	$a1, $v0, 56
lbl_00124C58:
	bnez	$v0, lbl_00124CA0
	addiu	$a1, $v1, 91
	sltiu	$v0, $v1, 85
	beqz	$v0, lbl_00124C78
	sltiu	$v0, $v1, 341
	srl	$v0, $a2, 0xc
	b	lbl_00124CA0
	addiu	$a1, $v0, 110
lbl_00124C78:
	beqz	$v0, lbl_00124C90
	sltiu	$v0, $v1, 1365
	srl	$v0, $a2, 0xf
	b	lbl_00124CA0
	addiu	$a1, $v0, 119
	nop
lbl_00124C90:
	beqzl	$v0, lbl_00124CA0
	li	$a1, 126
	srl	$v0, $a2, 0x12
	addiu	$a1, $v0, 124
lbl_00124CA0:
	addiu	$v0, $t7, 11144
	sll	$v1, $a1, 0x3
	addiu	$a3, $v0, -8
	addu	$t3, $v1, $a3
	lw	$t0, 8($t3)
	bnel	$t0, $t3, lbl_00124CF0
	lw	$v0, 4($t0)
	addiu	$a0, $a1, 3
	slti	$v1, $a1, 0
	movn	$a1, $a0, $v1
	lw	$v1, 4($a3)
	li	$v0, 1
	sra	$a0, $a1, 0x2
	dsllv	$v0, $v0, $a0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	or	$v1, $v1, $v0
	b	lbl_00124D20
	sw	$v1, 4($a3)
	nop
lbl_00124CF0:
	b	lbl_00124D04
	li	$v1, -4
lbl_00124CF8:
	beql	$t0, $t3, lbl_00124D20
	lw	$t3, 12($t0)
	lw	$v0, 4($t0)
lbl_00124D04:
	and	$v0, $v0, $v1
	sltu	$v0, $a2, $v0
	nop
	nop
	bnezl	$v0, lbl_00124CF8
	lw	$t0, 8($t0)
	lw	$t3, 12($t0)
lbl_00124D20:
	sw	$t3, 12($s0)
	sw	$t0, 8($s0)
lbl_00124D28:
	sw	$s0, 8($t3)
	sw	$s0, 12($t0)
lbl_00124D30:
	slti	$v0, $t2, 0
	addiu	$a1, $t2, 3
	move	$a0, $t2
	lui	$s4, 0x13
	movn	$a0, $a1, $v0
	li	$v0, 1
	addiu	$v1, $s4, 11136
	sra	$a0, $a0, 0x2
	lwu	$a2, 4($v1)
	dsllv	$t1, $v0, $a0
	sltu	$v1, $a2, $t1
	bnezl	$v1, lbl_00124EE4
	addiu	$a0, $s4, 11136
	and	$v0, $t1, $a2
	bnez	$v0, lbl_00124DB0
	lui	$v0, 0x13
	li	$v0, -4
	dsll	$t1, $t1, 0x1
	and	$v0, $t2, $v0
	and	$v1, $t1, $a2
	bnez	$v1, lbl_00124DAC
	addiu	$t2, $v0, 4
	move	$v1, $a2
	nop
lbl_00124D90:
	dsll	$t1, $t1, 0x1
	and	$v0, $t1, $v1
	nop
	nop
	nop
	beqz	$v0, lbl_00124D90
	addiu	$t2, $t2, 4
lbl_00124DAC:
	lui	$v0, 0x13
lbl_00124DB0:
	addiu	$t5, $v0, 11136
	move	$t6, $v0
	move	$s2, $t5
	sll	$v0, $t2, 0x3
lbl_00124DC0:
	move	$t3, $t2
	addu	$a0, $v0, $t5
	move	$a1, $a0
	lw	$s0, 12($a1)
lbl_00124DD0:
	beq	$s0, $a1, lbl_00124E2C
	slti	$v0, $t2, 63
	li	$t4, -4
	lw	$v0, 4($s0)
lbl_00124DE0:
	and	$a2, $v0, $t4
	subu	$v1, $s1, $a2
	subu	$v0, $a2, $s1
	dsll32	$v1, $v1, 0x0
	dsll32	$a3, $v0, 0x0
	dsrl32	$v1, $v1, 0x0
	sltu	$v0, $a2, $s1
	bnez	$v0, lbl_00124E08
	dnegu	$t0, $v1
	dsrl32	$t0, $a3, 0x0
lbl_00124E08:
	slti	$v0, $t0, 16
	beqzl	$v0, lbl_00124FF0
	li	$v1, 1
	bgezl	$t0, lbl_00125048
	addu	$v1, $s0, $a2
	lw	$s0, 12($s0)
	bnel	$s0, $a1, lbl_00124DE0
	lw	$v0, 4($s0)
	slti	$v0, $t2, 63
lbl_00124E2C:
	beqz	$v0, lbl_00124E3C
	addiu	$a1, $a1, 8
	addiu	$a1, $a1, 8
	addiu	$t2, $t2, 1
lbl_00124E3C:
	addiu	$t2, $t2, 1
	andi	$v0, $t2, 0x3
	bnezl	$v0, lbl_00124DD0
	lw	$s0, 12($a1)
	dsll32	$v0, $t1, 0x0
	dsra32	$v0, $v0, 0x0
	addiu	$a1, $t6, 11136
	nor	$v1, $zero, $v0
	andi	$v0, $t3, 0x3
lbl_00124E60:
	bnez	$v0, lbl_00124E78
	addiu	$t3, $t3, -1
	lw	$v0, 4($a1)
	and	$v0, $v0, $v1
	b	lbl_00124E8C
	sw	$v0, 4($a1)
lbl_00124E78:
	addiu	$a0, $a0, -8
	lw	$v0, 8($a0)
	nop
	beq	$v0, $a0, lbl_00124E60
	andi	$v0, $t3, 0x3
lbl_00124E8C:
	lwu	$v1, 4($t5)
	dsll	$t1, $t1, 0x1
	sltu	$v0, $v1, $t1
	bnezl	$v0, lbl_00124EE4
	addiu	$a0, $s4, 11136
	beqz	$t1, lbl_00124EE0
	and	$v0, $t1, $v1
	bnez	$v0, lbl_00124DC0
	sll	$v0, $t2, 0x3
	lwu	$v1, 4($s2)
	nop
lbl_00124EB8:
	dsll	$t1, $t1, 0x1
	and	$v0, $t1, $v1
	nop
	nop
	nop
	beqz	$v0, lbl_00124EB8
	addiu	$t2, $t2, 4
	b	lbl_00124DC0
	sll	$v0, $t2, 0x3
	nop
lbl_00124EE0:
	addiu	$a0, $s4, 11136
lbl_00124EE4:
	li	$a1, -4
	lw	$v0, 8($a0)
	lw	$v1, 4($v0)
	and	$v1, $v1, $a1
	sltu	$v0, $v1, $s1
	beqz	$v0, lbl_00124F18
	subu	$v0, $v1, $s1
	subu	$v0, $s1, $v1
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	b	lbl_00124F20
	dnegu	$t0, $v0
	nop
lbl_00124F18:
	dsll32	$v0, $v0, 0x0
	dsrl32	$t0, $v0, 0x0
lbl_00124F20:
	addiu	$s0, $s4, 11136
	li	$s2, -4
	lw	$v1, 8($s0)
	lw	$v0, 4($v1)
	and	$v0, $v0, $s2
	sltu	$v0, $v0, $s1
	bnez	$v0, lbl_00124F50
	move	$a0, $s3
	slti	$v0, $t0, 16
	beqz	$v0, lbl_00125070
	addiu	$a2, $s4, 11136
	move	$a0, $s3
lbl_00124F50:
	jal	sub_00124748
	move	$a1, $s1
	lw	$v0, 8($s0)
	lw	$v1, 4($v0)
	and	$v1, $v1, $s2
	sltu	$v0, $v1, $s1
	beqz	$v0, lbl_00124F88
	subu	$v0, $v1, $s1
	subu	$v0, $s1, $v1
	dsll32	$v0, $v0, 0x0
	dsrl32	$v0, $v0, 0x0
	b	lbl_00124F90
	dnegu	$t0, $v0
	nop
lbl_00124F88:
	dsll32	$v0, $v0, 0x0
	dsrl32	$t0, $v0, 0x0
lbl_00124F90:
	addiu	$a0, $s4, 11136
	li	$a1, -4
	lw	$v1, 8($a0)
	lw	$v0, 4($v1)
	and	$v0, $v0, $a1
	sltu	$v0, $v0, $s1
	bnez	$v0, lbl_00124FB8
	slti	$v0, $t0, 16
	beqz	$v0, lbl_00125070
	addiu	$a2, $s4, 11136
lbl_00124FB8:
	jal	sub_00125450
	move	$a0, $s3
	b	lbl_001250A8
	move	$v0, $zero
lbl_00124FC8:
	lw	$t3, 12($s0)
	lw	$v0, 4($v1)
	move	$a0, $s3
	lw	$t0, 8($s0)
	ori	$v0, $v0, 0x1
	sw	$v0, 4($v1)
	sw	$t3, 12($t0)
	b	lbl_0012509C
	sw	$t0, 8($t3)
	nop
lbl_00124FF0:
	lw	$t3, 12($s0)
	addu	$t1, $s0, $s1
	dsll32	$a3, $t0, 0x0
	dsra32	$a3, $a3, 0x0
	or	$v1, $t0, $v1
	lw	$t0, 8($s0)
	addiu	$a1, $t7, 11144
	ori	$v0, $s1, 0x1
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	addu	$a2, $t1, $a3
	sw	$t3, 12($t0)
	move	$a0, $s3
	sw	$t0, 8($t3)
	sw	$v0, 4($s0)
	sw	$t1, 12($a1)
	sw	$t1, 8($a1)
	sw	$v1, 4($t1)
	sw	$a1, 8($t1)
	sw	$a3, 0($a2)
	b	lbl_0012509C
	sw	$a1, 12($t1)
lbl_00125048:
	lw	$t3, 12($s0)
	lw	$v0, 4($v1)
	move	$a0, $s3
	lw	$t0, 8($s0)
	ori	$v0, $v0, 0x1
	sw	$v0, 4($v1)
	sw	$t3, 12($t0)
	b	lbl_0012509C
	sw	$t0, 8($t3)
	nop
lbl_00125070:
	li	$v0, 1
	lw	$s0, 8($a2)
	or	$v0, $t0, $v0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	ori	$v1, $s1, 0x1
	addu	$a1, $s0, $s1
	sw	$v1, 4($s0)
	sw	$a1, 8($a2)
	move	$a0, $s3
	sw	$v0, 4($a1)
lbl_0012509C:
	jal	sub_00125450
	nop
	addiu	$v0, $s0, 8
lbl_001250A8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_001250C8:
	sltiu	$v0, $a2, 16
	bnez	$v0, lbl_00125114
	or	$v0, $a0, $a1
	andi	$v0, $v0, 0xf
	bnez	$v0, lbl_00125114
	nop
lbl_001250E0:
	lq	$v1, 0($a0)
	sltiu	$a3, $a2, 32
	lq	$v0, 0($a1)
	addiu	$a0, $a0, 16
	pxor	$t0, $v0, $v1
	addiu	$v0, $a1, 16
	pcpyud	$t2, $t0, $a3
	or	$t1, $t2, $t0
	movz	$a1, $v0, $t1
	bnezl	$t1, lbl_00125114
	addiu	$a0, $a0, -16
	beqz	$a3, lbl_001250E0
	addiu	$a2, $a2, -16
lbl_00125114:
	lui	$v0, 0xffff
	addiu	$a2, $a2, -1
	ori	$v0, $v0, 0xffff
	beq	$a2, $v0, lbl_00125154
	nop
	lui	$a3, 0xffff
	ori	$a3, $a3, 0xffff
lbl_00125130:
	lbu	$v1, 0($a0)
	lbu	$v0, 0($a1)
	beq	$v1, $v0, lbl_00125148
	addiu	$a0, $a0, 1
	jr	$ra
	subu	$v0, $v1, $v0
lbl_00125148:
	addiu	$a2, $a2, -1
	bne	$a2, $a3, lbl_00125130
	addiu	$a1, $a1, 1
lbl_00125154:
	jr	$ra
	move	$v0, $zero

sub_0012515C:
	move	$t0, $a0
	sltiu	$v0, $a2, 32
	bnez	$v0, lbl_001251D8
	move	$v1, $t0
	or	$v0, $a1, $t0
	andi	$v0, $v0, 0xf
	bnezl	$v0, lbl_001251DC
	addiu	$a2, $a2, -1
	move	$a3, $t0
lbl_00125180:
	lq	$v1, 0($a1)
	addiu	$a2, $a2, -32
	addiu	$a1, $a1, 16
	sltiu	$a0, $a2, 32
	sq	$v1, 0($a3)
	addiu	$a3, $a3, 16
	lq	$v0, 0($a1)
	addiu	$a1, $a1, 16
	sq	$v0, 0($a3)
	beqz	$a0, lbl_00125180
	addiu	$a3, $a3, 16
	sltiu	$v0, $a2, 8
	bnez	$v0, lbl_001251D8
	move	$v1, $a3
lbl_001251B8:
	ld	$v1, 0($a1)
	addiu	$a2, $a2, -8
	addiu	$a1, $a1, 8
	sltiu	$v0, $a2, 8
	sd	$v1, 0($a3)
	beqz	$v0, lbl_001251B8
	addiu	$a3, $a3, 8
	move	$v1, $a3
lbl_001251D8:
	addiu	$a2, $a2, -1
lbl_001251DC:
	li	$v0, -1
	beq	$a2, $v0, lbl_00125204
	move	$a0, $v0
lbl_001251E8:
	lbu	$v0, 0($a1)
	addiu	$a2, $a2, -1
	addiu	$a1, $a1, 1
	sb	$v0, 0($v1)
	addiu	$v1, $v1, 1
	bne	$a2, $a0, lbl_001251E8
	nop
lbl_00125204:
	jr	$ra
	move	$v0, $t0

sub_0012520C:
	move	$t0, $a0
	sltu	$v0, $a1, $t0
	beqz	$v0, lbl_00125264
	move	$v1, $t0
	addu	$a3, $a1, $a2
	sltu	$v0, $t0, $a3
	beqz	$v0, lbl_00125264
	li	$v0, -1
	addu	$v1, $t0, $a2
	addiu	$a2, $a2, -1
	beq	$a2, $v0, lbl_00125308
	move	$a1, $a3
	move	$a0, $v0
lbl_00125240:
	addiu	$a1, $a1, -1
	addiu	$v1, $v1, -1
	lbu	$v0, 0($a1)
	addiu	$a2, $a2, -1
	sb	$v0, 0($v1)
	bne	$a2, $a0, lbl_00125240
	nop
	jr	$ra
	move	$v0, $t0
lbl_00125264:
	sltiu	$v0, $a2, 32
	bnezl	$v0, lbl_001252E0
	addiu	$a2, $a2, -1
	or	$v0, $a1, $v1
	andi	$v0, $v0, 0xf
	bnezl	$v0, lbl_001252E0
	addiu	$a2, $a2, -1
	move	$a3, $v1
lbl_00125284:
	lq	$v1, 0($a1)
	addiu	$a2, $a2, -32
	addiu	$a1, $a1, 16
	sltiu	$a0, $a2, 32
	sq	$v1, 0($a3)
	addiu	$a3, $a3, 16
	lq	$v0, 0($a1)
	addiu	$a1, $a1, 16
	sq	$v0, 0($a3)
	beqz	$a0, lbl_00125284
	addiu	$a3, $a3, 16
	sltiu	$v0, $a2, 8
	bnez	$v0, lbl_001252DC
	move	$v1, $a3
lbl_001252BC:
	ld	$v1, 0($a1)
	addiu	$a2, $a2, -8
	addiu	$a1, $a1, 8
	sltiu	$v0, $a2, 8
	sd	$v1, 0($a3)
	beqz	$v0, lbl_001252BC
	addiu	$a3, $a3, 8
	move	$v1, $a3
lbl_001252DC:
	addiu	$a2, $a2, -1
lbl_001252E0:
	li	$v0, -1
	beq	$a2, $v0, lbl_00125308
	move	$a0, $v0
lbl_001252EC:
	lbu	$v0, 0($a1)
	addiu	$a2, $a2, -1
	addiu	$a1, $a1, 1
	sb	$v0, 0($v1)
	addiu	$v1, $v1, 1
	bne	$a2, $a0, lbl_001252EC
	nop
lbl_00125308:
	jr	$ra
	move	$v0, $t0

sub_00125310:
	sltiu	$v0, $a2, 8
	bnez	$v0, lbl_00125390
	move	$v1, $a0
	andi	$v0, $a0, 0xf
	bnez	$v0, lbl_00125390
	move	$a3, $a0
	andi	$t1, $a1, 0xff
	sltiu	$t2, $a2, 32
	move	$t0, $t1
	dsll	$v1, $t0, 0x8
	or	$t0, $v1, $t1
	pcpyh	$v1, $t0
	bnez	$t2, lbl_0012537C
	sltiu	$v0, $a2, 8
	pcpyld	$t0, $v1, $v1
lbl_0012534C:
	sq	$t0, 0($a3)
	addiu	$a2, $a2, -32
	addiu	$a3, $a3, 16
	sltiu	$v0, $a2, 32
	sq	$t0, 0($a3)
	beqz	$v0, lbl_0012534C
	addiu	$a3, $a3, 16
	b	lbl_0012537C
	sltiu	$v0, $a2, 8
lbl_00125370:
	addiu	$a2, $a2, -8
	addiu	$a3, $a3, 8
	sltiu	$v0, $a2, 8
lbl_0012537C:
	nop
	nop
	beqzl	$v0, lbl_00125370
	sd	$v1, 0($a3)
	move	$v1, $a3
lbl_00125390:
	lui	$v0, 0xffff
	addiu	$a2, $a2, -1
	ori	$v0, $v0, 0xffff
	beq	$a2, $v0, lbl_001253C8
	nop
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffff
lbl_001253AC:
	sb	$a1, 0($v1)
	addiu	$a2, $a2, -1
	addiu	$v1, $v1, 1
	nop
	nop
	bne	$a2, $v0, lbl_001253AC
	nop
lbl_001253C8:
	jr	$ra
	move	$v0, $a0

sub_001253D0:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	jal	sub_001067D0
	nop
	lui	$v1, 0x13
	move	$s0, $v0
	addiu	$s1, $v1, 12248
	lui	$v0, 0x13
	addiu	$a0, $v0, 12252
	lw	$v0, 0($s1)
	bne	$v0, $s0, lbl_00125418
	lui	$v0, 0x13
	lw	$v0, 0($a0)
	addiu	$v0, $v0, 1
	b	lbl_00125438
	sw	$v0, 0($a0)
lbl_00125418:
	jal	sub_00106920
	lw	$a0, -1808($v0)
	lui	$v1, 0x13
	sw	$s0, 0($s1)
	addiu	$v1, $v1, 12252
	lw	$v0, 0($v1)
	addiu	$v0, $v0, 1
	sw	$v0, 0($v1)
lbl_00125438:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00125450:
	addiu	$sp, $sp, -16
	lui	$v1, 0x13
	sd	$ra, 0($sp)
	addiu	$v1, $v1, 12252
	lw	$v0, 0($v1)
	addiu	$v0, $v0, -1
	bnez	$v0, lbl_00125490
	sw	$v0, 0($v1)
	lui	$v0, 0x13
	ld	$ra, 0($sp)
	lw	$a0, -1808($v0)
	lui	$a1, 0x13
	li	$v1, -1
	sw	$v1, 12248($a1)
	j	sub_00106900
	addiu	$sp, $sp, 16
lbl_00125490:
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -96
	sd	$ra, 0($sp)
	sd	$a2, 48($sp)
	move	$a2, $a1
	sd	$a3, 56($sp)
	addiu	$a3, $sp, 48
	sd	$t0, 64($sp)
	sd	$t1, 72($sp)
	sd	$t2, 80($sp)
	sd	$t3, 88($sp)
	swc1	$f12, 16($sp)
	swc1	$f13, 20($sp)
	swc1	$f14, 24($sp)
	swc1	$f15, 28($sp)
	swc1	$f16, 32($sp)
	swc1	$f17, 36($sp)
	swc1	$f18, 40($sp)
	swc1	$f19, 44($sp)
	jal	sub_001268E8
	lw	$a1, 8($a0)
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop

sub_00125500:
	addiu	$sp, $sp, -112
	lui	$t4, 0x13
	sd	$ra, 0($sp)
	sd	$a1, 56($sp)
	move	$a1, $a0
	sd	$a2, 64($sp)
	addiu	$a2, $sp, 56
	sd	$a3, 72($sp)
	sd	$t0, 80($sp)
	sd	$t1, 88($sp)
	sd	$t2, 96($sp)
	sd	$t3, 104($sp)
	swc1	$f12, 24($sp)
	swc1	$f13, 28($sp)
	swc1	$f14, 32($sp)
	swc1	$f15, 36($sp)
	swc1	$f16, 40($sp)
	swc1	$f17, 44($sp)
	swc1	$f18, 48($sp)
	swc1	$f19, 52($sp)
	lw	$v0, 11128($t4)
	lw	$v1, 8($v0)
	sw	$v0, 84($v1)
	jal	sub_00126870
	lw	$a0, 8($v0)
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 112

sub_00125570:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	sd	$ra, 16($sp)
	jal	sub_001118D0
	sw	$zero, 0($s1)
	move	$a0, $v0
	li	$v1, -1
	bnel	$a0, $v1, lbl_001255B8
	ld	$s0, 0($sp)
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_001255B4
	sw	$v1, 0($s0)
lbl_001255B4:
	ld	$s0, 0($sp)
lbl_001255B8:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_001255C8:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	lw	$v0, 468($s0)
	bnezl	$v0, lbl_00125628
	move	$v0, $zero
	jal	sub_001249A0
	li	$a1, 128
	move	$v1, $v0
	li	$v0, -1
	beqz	$v1, lbl_00125628
	sw	$v1, 468($s0)
	addiu	$v0, $v1, 124
	li	$v1, 31
	nop
lbl_00125608:
	addiu	$v1, $v1, -1
	sw	$zero, 0($v0)
	nop
	nop
	nop
	bgez	$v1, lbl_00125608
	addiu	$v0, $v0, -4
	move	$v0, $zero
lbl_00125628:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
lbl_00125638:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	move	$s1, $a1
	sltiu	$v0, $s1, 32
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$ra, 24($sp)
	bnez	$v0, lbl_00125670
	move	$s0, $a0
	li	$v1, 22
	li	$v0, -1
	b	lbl_001256A0
	sw	$v1, 0($s0)
lbl_00125670:
	lw	$v0, 468($s0)
	bnez	$v0, lbl_00125694
	sll	$v1, $s1, 0x2
	jal	sub_001255C8
	nop
	bnez	$v0, lbl_001256A0
	li	$v0, -1
	lw	$v0, 468($s0)
	sll	$v1, $s1, 0x2
lbl_00125694:
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	sw	$s2, 0($v1)
lbl_001256A0:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
lbl_001256B8:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	move	$s1, $a1
	sltiu	$v0, $s1, 32
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	bnez	$v0, lbl_001256E8
	move	$s0, $a0
	li	$v1, 22
	li	$v0, -1
	b	lbl_0012577C
	sw	$v1, 0($s0)
lbl_001256E8:
	lw	$v1, 468($s0)
	bnez	$v1, lbl_0012570C
	sll	$v0, $s1, 0x2
	jal	sub_001255C8
	nop
	bnez	$v0, lbl_0012577C
	li	$v0, -1
	lw	$v1, 468($s0)
	sll	$v0, $s1, 0x2
lbl_0012570C:
	addu	$a0, $v0, $v1
	lw	$a1, 0($a0)
	bnezl	$a1, lbl_00125748
	li	$v1, 1
	jal	sub_00125910
	move	$a0, $s0
	move	$a0, $s0
	move	$a2, $s1
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	move	$a1, $v0
	ld	$ra, 16($sp)
	j	lbl_001258B0
	addiu	$sp, $sp, 32
	nop
lbl_00125748:
	beq	$a1, $v1, lbl_0012577C
	move	$v0, $zero
	li	$v0, -1
	bnel	$a1, $v0, lbl_00125770
	sw	$zero, 0($a0)
	li	$v1, 22
	li	$v0, 1
	b	lbl_0012577C
	sw	$v1, 0($s0)
	nop
lbl_00125770:
	jalr	$a1
	move	$a0, $s1
	move	$v0, $zero
lbl_0012577C:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
lbl_00125790:
	addiu	$sp, $sp, -32
	li	$v0, -1
	sd	$s0, 0($sp)
	move	$s0, $a1
	sltiu	$v1, $s0, 32
	sd	$s1, 8($sp)
	sd	$ra, 16($sp)
	beqz	$v1, lbl_00125814
	move	$s1, $a0
	lw	$a1, 468($s1)
	bnez	$a1, lbl_001257DC
	sll	$v1, $s0, 0x2
	jal	sub_001255C8
	nop
	beqzl	$v0, lbl_001257D8
	lw	$a1, 468($s1)
	b	lbl_00125814
	li	$v0, -1
lbl_001257D8:
	sll	$v1, $s0, 0x2
lbl_001257DC:
	addu	$a0, $v1, $a1
	lw	$a1, 0($a0)
	beqz	$a1, lbl_00125814
	li	$v0, 1
	li	$v1, -1
	beq	$a1, $v1, lbl_00125814
	li	$v0, 2
	li	$v1, 1
	beq	$a1, $v1, lbl_00125814
	li	$v0, 3
	sw	$zero, 0($a0)
	jalr	$a1
	move	$a0, $s0
	move	$v0, $zero
lbl_00125814:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00125828:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	move	$a1, $a0
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_001256B8
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	move	$a2, $a1
	move	$a1, $a0
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_00125638
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	sub_001255C8
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	move	$a1, $a0
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_00125790
	addiu	$sp, $sp, 16
lbl_001258B0:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	move	$a1, $a2
	sd	$ra, 16($sp)
	jal	sub_001119A8
	sw	$zero, 0($s1)
	move	$v1, $v0
	li	$a0, -1
	bnel	$v1, $a0, lbl_001258FC
	ld	$s0, 0($sp)
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_001258F8
	sw	$v1, 0($s0)
lbl_001258F8:
	ld	$s0, 0($sp)
lbl_001258FC:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_00125910:
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	lbl_001119A0
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -192
	lui	$v0, 0x7fff
	move	$v1, $a1
	move	$a1, $a2
	sw	$a0, 84($sp)
	move	$a0, $sp
	ori	$v0, $v0, 0xffff
	li	$t4, 520
	addiu	$a2, $sp, 152
	sd	$ra, 96($sp)
	sw	$v1, 16($sp)
	sw	$v1, 0($sp)
	sd	$a3, 152($sp)
	sd	$t0, 160($sp)
	sd	$t1, 168($sp)
	sd	$t2, 176($sp)
	sd	$t3, 184($sp)
	swc1	$f12, 120($sp)
	swc1	$f13, 124($sp)
	swc1	$f14, 128($sp)
	swc1	$f15, 132($sp)
	swc1	$f16, 136($sp)
	swc1	$f17, 140($sp)
	swc1	$f18, 144($sp)
	swc1	$f19, 148($sp)
	sh	$t4, 12($sp)
	sw	$v0, 20($sp)
	jal	sub_00126870
	sw	$v0, 8($sp)
	lw	$v1, 0($sp)
	ld	$ra, 96($sp)
	sb	$zero, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 192

sub_001259B0:
	lui	$v0, 0x13
	addiu	$sp, $sp, -192
	lw	$t5, 11128($v0)
	li	$v0, 520
	lui	$v1, 0x7fff
	move	$t4, $a0
	ori	$v1, $v1, 0xffff
	sd	$a2, 144($sp)
	move	$a0, $sp
	addiu	$a2, $sp, 144
	sd	$ra, 96($sp)
	sw	$v1, 20($sp)
	sw	$v1, 8($sp)
	sd	$a3, 152($sp)
	sd	$t0, 160($sp)
	sd	$t1, 168($sp)
	sd	$t2, 176($sp)
	sd	$t3, 184($sp)
	swc1	$f12, 112($sp)
	swc1	$f13, 116($sp)
	swc1	$f14, 120($sp)
	swc1	$f15, 124($sp)
	swc1	$f16, 128($sp)
	swc1	$f17, 132($sp)
	swc1	$f18, 136($sp)
	swc1	$f19, 140($sp)
	sh	$v0, 12($sp)
	sw	$t4, 16($sp)
	sw	$t5, 84($sp)
	jal	sub_00126870
	sw	$t4, 0($sp)
	lw	$v1, 0($sp)
	ld	$ra, 96($sp)
	sb	$zero, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 192
	jr	$ra
	move	$v0, $zero

sub_00125A48:
	addiu	$sp, $sp, -192
	move	$v0, $a0
	li	$v1, 4
	sd	$s0, 96($sp)
	sd	$ra, 104($sp)
	move	$s0, $a1
	sd	$a2, 144($sp)
	sd	$a3, 152($sp)
	sh	$v1, 12($sp)
	sd	$t0, 160($sp)
	sd	$t1, 168($sp)
	sd	$t2, 176($sp)
	sd	$t3, 184($sp)
	swc1	$f12, 112($sp)
	swc1	$f13, 116($sp)
	swc1	$f14, 120($sp)
	swc1	$f15, 124($sp)
	swc1	$f16, 128($sp)
	swc1	$f17, 132($sp)
	swc1	$f18, 136($sp)
	swc1	$f19, 140($sp)
	sw	$v0, 16($sp)
	jal	sub_00126004
	sw	$v0, 0($sp)
	lui	$a0, 0x13
	lui	$v1, 0x12
	lw	$a3, 11128($a0)
	move	$a0, $sp
	addiu	$v1, $v1, 23104
	move	$a1, $s0
	addiu	$a2, $sp, 144
	sw	$v0, 20($sp)
	sw	$v1, 32($sp)
	sw	$a3, 84($sp)
	sw	$v0, 4($sp)
	sw	$zero, 48($sp)
	jal	sub_001281F8
	sw	$zero, 68($sp)
	ld	$s0, 96($sp)
	ld	$ra, 104($sp)
	jr	$ra
	addiu	$sp, $sp, 192

sub_00125AF0:
	addiu	$sp, $sp, -32
	sq	$s0, 0($sp)
	move	$s0, $a0
	andi	$v0, $s0, 0x7
	bnez	$v0, lbl_00125BE4
	sq	$ra, 16($sp)
	andi	$v0, $s0, 0xf
	lui	$v1, 0x101
	ori	$v1, $v1, 0x101
	dsll	$v1, $v1, 0x10
	ori	$v1, $v1, 0x101
	dsll	$v1, $v1, 0x10
	ori	$v1, $v1, 0x101
	lui	$a0, 0x8080
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	bnez	$v0, lbl_00125BA0
	ld	$a2, 0($s0)
	lq	$v0, 0($s0)
	pcpyld	$a3, $v1, $v1
	pcpyld	$t0, $a0, $a0
	psubb	$v1, $v0, $a3
	pnor	$v0, $zero, $v0
	pand	$v1, $v1, $v0
	pand	$v1, $v1, $t0
	pcpyud	$v0, $v1, $v1
	or	$v1, $v0, $v1
	bnez	$v1, lbl_00125BE4
	move	$a0, $s0
	addiu	$a2, $a0, 16
lbl_00125B74:
	lq	$v0, 0($a2)
	pnor	$v1, $zero, $v0
	psubb	$v0, $v0, $a3
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t0
	pcpyud	$v1, $v0, $v0
	or	$v0, $v0, $v1
	beqzl	$v0, lbl_00125B74
	addiu	$a2, $a2, 16
	b	lbl_00125BE4
	move	$a0, $a2
lbl_00125BA0:
	move	$a3, $v1
	move	$t0, $a0
	dsubu	$v1, $a2, $v1
	nor	$v0, $zero, $a2
	and	$v1, $v1, $v0
	and	$v1, $v1, $a0
	bnez	$v1, lbl_00125BE4
	move	$a0, $s0
	addiu	$a2, $s0, 8
lbl_00125BC4:
	ld	$v0, 0($a2)
	nor	$v1, $zero, $v0
	dsubu	$v0, $v0, $a3
	and	$v0, $v0, $v1
	and	$v0, $v0, $t0
	beqzl	$v0, lbl_00125BC4
	addiu	$a2, $a2, 8
	move	$a0, $a2
lbl_00125BE4:
	lb	$v0, 0($a0)
	nop
	nop
	nop
	nop
	bnezl	$v0, lbl_00125BE4
	addiu	$a0, $a0, 1
	jal	sub_00125EF0
	nop
	move	$v0, $s0
	lq	$ra, 16($sp)
	lq	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_00125C1C:
	andi	$v0, $a0, 0x7
	bnez	$v0, lbl_00125D8C
	andi	$a1, $a1, 0xff
	dsll	$v1, $a1, 0x8
	lui	$a2, 0x101
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	daddu	$t2, $v1, $a1
	andi	$v1, $a0, 0xf
	dsll	$v0, $t2, 0x10
	lui	$t0, 0x8080
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	daddu	$v0, $v0, $t2
	dsll32	$t2, $v0, 0x0
	bnez	$v1, lbl_00125D04
	daddu	$a3, $v0, $t2
lbl_00125C78:
	lq	$t1, 0($a0)
	pcpyld	$t2, $a2, $a2
	pnor	$v1, $zero, $t1
	psubb	$v0, $t1, $t2
	pcpyld	$a2, $t0, $t0
	pand	$v0, $v0, $v1
	pcpyld	$t0, $a3, $a3
	pand	$v0, $v0, $a2
	pcpyud	$v1, $v0, $a3
	or	$v1, $v0, $v1
	bnezl	$v1, lbl_00125D90
	lbu	$v0, 0($a0)
	pxor	$v0, $t1, $t0
	psubb	$v1, $v0, $t2
	pnor	$v0, $zero, $v0
	lui	$t0, 0x8080
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	pand	$v1, $v1, $v0
	pand	$v1, $v1, $a2
	lui	$a2, 0x101
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	pcpyud	$v0, $v1, $a1
	or	$v1, $v0, $v1
	beqzl	$v1, lbl_00125C78
	addiu	$a0, $a0, 16
	b	lbl_00125D90
	lbu	$v0, 0($a0)
lbl_00125D04:
	ld	$t1, 0($a0)
	nor	$v1, $zero, $t1
	dsubu	$v0, $t1, $a2
	and	$v0, $v0, $v1
	and	$v0, $v0, $t0
	bnezl	$v0, lbl_00125D90
	lbu	$v0, 0($a0)
	xor	$v0, $t1, $a3
	dsubu	$v1, $v0, $a2
	nor	$v0, $zero, $v0
	and	$v1, $v1, $v0
	and	$v1, $v1, $t0
	bnezl	$v1, lbl_00125D90
	lbu	$v0, 0($a0)
	move	$t1, $a2
	addiu	$a0, $a0, 8
lbl_00125D44:
	ld	$a2, 0($a0)
	dsubu	$v0, $a2, $t1
	nor	$v1, $zero, $a2
	and	$v0, $v0, $v1
	and	$v0, $v0, $t0
	bnez	$v0, lbl_00125D8C
	xor	$v0, $a2, $a3
	nor	$v1, $zero, $v0
	dsubu	$v0, $v0, $t1
	and	$v0, $v0, $v1
	and	$v0, $v0, $t0
	beqzl	$v0, lbl_00125D44
	addiu	$a0, $a0, 8
	b	lbl_00125D90
	lbu	$v0, 0($a0)
lbl_00125D80:
	beql	$v0, $a1, lbl_00125D9C
	lbu	$v1, 0($a0)
	addiu	$a0, $a0, 1
lbl_00125D8C:
	lbu	$v0, 0($a0)
lbl_00125D90:
	bnez	$v0, lbl_00125D80
	nop
	lbu	$v1, 0($a0)
lbl_00125D9C:
	move	$v0, $zero
	xor	$v1, $v1, $a1
	jr	$ra
	movz	$v0, $a0, $v1

sub_00125DAC:
	or	$t0, $a0, $a1
	andi	$v0, $t0, 0x7
	bnezl	$v0, lbl_00125EDC
	lb	$v0, 0($a0)
	andi	$t1, $t0, 0xf
	lui	$a3, 0x101
	ori	$a3, $a3, 0x101
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x101
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x101
	lui	$a2, 0x8080
	ori	$a2, $a2, 0x8080
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x8080
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x8080
	bnez	$t1, lbl_00125E70
	ld	$v0, 0($a1)
	lq	$v1, 0($a0)
	pcpyld	$t0, $a3, $a3
	lq	$v0, 0($a1)
	pcpyld	$t2, $a2, $a2
	psubw	$a3, $v0, $v1
	pcpyud	$a2, $a3, $a0
	or	$v1, $a2, $a3
	bnezl	$v1, lbl_00125EDC
	lb	$v0, 0($a0)
	lq	$v0, 0($a0)
	pnor	$v1, $zero, $v0
lbl_00125E24:
	psubb	$v0, $v0, $t0
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t2
	pcpyud	$v1, $v0, $a0
	or	$a2, $v1, $v0
	beqz	$a2, lbl_00125E48
	addiu	$a0, $a0, 16
	jr	$ra
	move	$v0, $zero
lbl_00125E48:
	addiu	$a1, $a1, 16
	lq	$v0, 0($a0)
	lq	$v1, 0($a1)
	psubw	$a3, $v0, $v1
	pcpyud	$a2, $a3, $a0
	or	$t1, $a2, $a3
	beqzl	$t1, lbl_00125E24
	pnor	$v1, $zero, $v0
	b	lbl_00125EDC
	lb	$v0, 0($a0)
lbl_00125E70:
	ld	$v1, 0($a0)
	bnel	$v1, $v0, lbl_00125EDC
	lb	$v0, 0($a0)
	ld	$v0, 0($a0)
	nor	$t0, $zero, $v0
lbl_00125E84:
	dsubu	$v0, $v0, $a3
	and	$v0, $v0, $t0
	and	$v0, $v0, $a2
	beqz	$v0, lbl_00125EA0
	addiu	$a0, $a0, 8
	jr	$ra
	move	$v0, $zero
lbl_00125EA0:
	addiu	$a1, $a1, 8
	ld	$v0, 0($a0)
	ld	$v1, 0($a1)
	beql	$v1, $v0, lbl_00125E84
	nor	$t0, $zero, $v0
	b	lbl_00125EDC
	lb	$v0, 0($a0)
lbl_00125EBC:
	sll	$v0, $v1, 0x18
	lb	$v1, 0($a1)
	sra	$v0, $v0, 0x18
	bnel	$v0, $v1, lbl_00125EE4
	lbu	$v1, 0($a0)
	addiu	$a0, $a0, 1
	addiu	$a1, $a1, 1
	lb	$v0, 0($a0)
lbl_00125EDC:
	bnez	$v0, lbl_00125EBC
	lbu	$v1, 0($a0)
lbl_00125EE4:
	lbu	$v0, 0($a1)
	jr	$ra
	subu	$v0, $v1, $v0

sub_00125EF0:
	move	$a3, $a0
	or	$t0, $a1, $a3
	andi	$v0, $t0, 0x7
	bnez	$v0, lbl_00125FE0
	move	$v1, $a3
	andi	$v0, $t0, 0xf
	lui	$t1, 0x101
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	lui	$a0, 0x8080
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	bnezl	$v0, lbl_00125FA0
	ld	$t2, 0($a1)
	pcpyld	$t2, $t1, $t1
	lq	$t1, 0($a1)
	pcpyld	$t0, $a0, $a0
	psubb	$v0, $t1, $t2
	pnor	$v1, $zero, $t1
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t0
	pcpyud	$a0, $v0, $t1
	or	$v1, $v0, $a0
	bnez	$v1, lbl_00125FDC
	move	$a2, $a3
lbl_00125F6C:
	sq	$t1, 0($a2)
	addiu	$a1, $a1, 16
	lq	$t1, 0($a1)
	psubb	$v0, $t1, $t2
	pnor	$v1, $zero, $t1
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t0
	pcpyud	$a0, $v0, $t1
	or	$v1, $v0, $a0
	beqz	$v1, lbl_00125F6C
	addiu	$a2, $a2, 16
	b	lbl_00125FE0
	move	$v1, $a2
lbl_00125FA0:
	dsubu	$v0, $t2, $t1
	nor	$v1, $zero, $t2
	and	$v0, $v0, $v1
	and	$v0, $v0, $a0
	bnez	$v0, lbl_00125FDC
	move	$a2, $a3
lbl_00125FB8:
	sd	$t2, 0($a2)
	addiu	$a1, $a1, 8
	ld	$t2, 0($a1)
	nor	$v0, $zero, $t2
	dsubu	$v1, $t2, $t1
	and	$v1, $v1, $v0
	and	$v1, $v1, $a0
	beqz	$v1, lbl_00125FB8
	addiu	$a2, $a2, 8
lbl_00125FDC:
	move	$v1, $a2
lbl_00125FE0:
	lbu	$v0, 0($a1)
	addiu	$a1, $a1, 1
	sb	$v0, 0($v1)
	sll	$v0, $v0, 0x18
	addiu	$v1, $v1, 1
	bnez	$v0, lbl_00125FE0
	nop
	jr	$ra
	move	$v0, $a3

sub_00126004:
	andi	$v0, $a0, 0x7
	bnez	$v0, lbl_00126118
	move	$a3, $a0
	andi	$v1, $a0, 0xf
	lui	$v0, 0x101
	ori	$v0, $v0, 0x101
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0x101
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0x101
	bnez	$v1, lbl_001260A8
	move	$a1, $a0
	lq	$v1, 0($a1)
	pcpyld	$t0, $v0, $v0
	lui	$a0, 0x8080
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	psubb	$v0, $v1, $t0
	pnor	$v1, $zero, $v1
	pcpyld	$t1, $a0, $a0
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t1
	pcpyud	$v1, $v0, $t0
	or	$a2, $v1, $v0
	bnezl	$a2, lbl_00126118
	move	$a0, $a1
	addiu	$a1, $a1, 16
lbl_0012607C:
	lq	$v0, 0($a1)
	pnor	$v1, $zero, $v0
	psubb	$v0, $v0, $t0
	pand	$v0, $v0, $v1
	pand	$a0, $v0, $t1
	pcpyud	$v1, $a0, $a2
	or	$v1, $v1, $a0
	beqzl	$v1, lbl_0012607C
	addiu	$a1, $a1, 16
	b	lbl_00126118
	move	$a0, $a1
lbl_001260A8:
	ld	$v1, 0($a1)
	lui	$a0, 0x8080
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	dsll	$a0, $a0, 0x10
	ori	$a0, $a0, 0x8080
	dsubu	$v0, $v1, $v0
	nor	$v1, $zero, $v1
	and	$v0, $v0, $v1
	and	$v0, $v0, $a0
	bnezl	$v0, lbl_00126118
	move	$a0, $a1
	lui	$a2, 0x101
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	dsll	$a2, $a2, 0x10
	ori	$a2, $a2, 0x101
	addiu	$a1, $a1, 8
lbl_001260F8:
	ld	$v0, 0($a1)
	nor	$v1, $zero, $v0
	dsubu	$v0, $v0, $a2
	and	$v0, $v0, $v1
	and	$v0, $v0, $a0
	beqzl	$v0, lbl_001260F8
	addiu	$a1, $a1, 8
	move	$a0, $a1
lbl_00126118:
	lb	$v0, 0($a0)
	nop
	nop
	nop
	nop
	bnezl	$v0, lbl_00126118
	addiu	$a0, $a0, 1
	jr	$ra
	subu	$v0, $a0, $a3
	nop

sub_00126140:
	bnez	$a2, lbl_00126150
	or	$v1, $a0, $a1
lbl_00126148:
	jr	$ra
	move	$v0, $zero
lbl_00126150:
	andi	$v0, $v1, 0x7
	bnez	$v0, lbl_001262AC
	move	$v0, $a2
	andi	$v0, $v1, 0xf
	sltiu	$a3, $a2, 16
	lui	$t1, 0x101
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	or	$v0, $v0, $a3
	bnez	$v0, lbl_00126228
	move	$a3, $a0
	lq	$v1, 0($a0)
	pcpyld	$t2, $t1, $t1
	lq	$v0, 0($a1)
	lui	$t0, 0x8080
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	dsll	$t0, $t0, 0x10
	ori	$t0, $t0, 0x8080
	psubw	$v1, $v1, $v0
	pcpyld	$t1, $t0, $t0
	pcpyud	$v0, $v1, $a0
	move	$t0, $a1
	or	$v1, $v0, $v1
	bnez	$v1, lbl_001262AC
	move	$v0, $a2
	addiu	$a2, $a2, -16
lbl_001261CC:
	beqz	$a2, lbl_00126148
	nop
	lq	$v0, 0($a3)
	pnor	$v1, $zero, $v0
	psubb	$v0, $v0, $t2
	pand	$v0, $v0, $v1
	pand	$v1, $v0, $t1
	pcpyud	$v0, $v1, $a0
	or	$v0, $v0, $v1
	bnez	$v0, lbl_00126148
	addiu	$a3, $a3, 16
	sltiu	$v0, $a2, 16
	lq	$v1, 0($a3)
	bnez	$v0, lbl_001262A0
	addiu	$t0, $t0, 16
	lq	$v0, 0($t0)
	psubw	$v1, $v1, $v0
	pcpyud	$v0, $v1, $a0
	or	$v0, $v0, $v1
	beqzl	$v0, lbl_001261CC
	addiu	$a2, $a2, -16
	b	lbl_001262A4
	move	$a0, $a3
lbl_00126228:
	sltiu	$v0, $a2, 8
	bnez	$v0, lbl_001262A0
	move	$t0, $a1
	ld	$v1, 0($a0)
	ld	$v0, 0($a1)
	bne	$v1, $v0, lbl_001262AC
	move	$v0, $a2
	addiu	$a2, $a2, -8
	lui	$t2, 0x8080
	ori	$t2, $t2, 0x8080
	dsll	$t2, $t2, 0x10
	ori	$t2, $t2, 0x8080
	dsll	$t2, $t2, 0x10
	ori	$t2, $t2, 0x8080
lbl_00126260:
	beqz	$a2, lbl_00126148
	nop
	ld	$v0, 0($a3)
	nor	$v1, $zero, $v0
	dsubu	$v0, $v0, $t1
	and	$v0, $v0, $v1
	and	$v0, $v0, $t2
	bnez	$v0, lbl_00126148
	addiu	$a3, $a3, 8
	sltiu	$v0, $a2, 8
	bnez	$v0, lbl_001262A0
	addiu	$t0, $t0, 8
	ld	$v1, 0($a3)
	ld	$v0, 0($t0)
	beql	$v1, $v0, lbl_00126260
	addiu	$a2, $a2, -8
lbl_001262A0:
	move	$a0, $a3
lbl_001262A4:
	move	$a1, $t0
	move	$v0, $a2
lbl_001262AC:
	beqz	$v0, lbl_001262E8
	addiu	$a2, $a2, -1
	b	lbl_001262DC
	lb	$v1, 0($a0)
	nop
lbl_001262C0:
	beqz	$a2, lbl_00126148
	nop
	beqz	$a3, lbl_00126148
	addiu	$a0, $a0, 1
	addiu	$a1, $a1, 1
	lb	$v1, 0($a0)
	addiu	$a2, $a2, -1
lbl_001262DC:
	lb	$v0, 0($a1)
	beq	$v1, $v0, lbl_001262C0
	lbu	$a3, 0($a0)
lbl_001262E8:
	lbu	$v0, 0($a1)
	lbu	$v1, 0($a0)
	jr	$ra
	subu	$v0, $v1, $v0

sub_001262F8:
	move	$t0, $a0
	or	$a3, $a1, $a0
	li	$t2, 16
	andi	$v0, $a3, 0x7
	li	$t1, 8
	bnez	$v0, lbl_00126460
	andi	$v0, $a3, 0xf
	movz	$t1, $t2, $v0
	bnez	$v0, lbl_001263CC
	sltu	$v0, $a2, $t1
	bnez	$v0, lbl_00126460
	nop
	lui	$a3, 0x101
	ori	$a3, $a3, 0x101
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x101
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x101
	lq	$v1, 0($a1)
	pcpyld	$t1, $a3, $a3
	pnor	$v1, $zero, $v1
	lui	$a3, 0x8080
	ori	$a3, $a3, 0x8080
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x8080
	dsll	$a3, $a3, 0x10
	ori	$a3, $a3, 0x8080
	psubb	$v0, $v1, $t1
	pcpyld	$t2, $a3, $a3
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t2
	pcpyud	$v1, $v0, $a0
	or	$v1, $v0, $v1
	bnez	$v1, lbl_0012645C
	move	$a3, $t0
	lq	$v1, 0($a1)
	addiu	$a2, $a2, -16
	addiu	$a1, $a1, 16
	sltiu	$v0, $a2, 16
	sq	$v1, 0($a3)
	bnez	$v0, lbl_0012645C
	addiu	$a3, $a3, 16
	lq	$v0, 0($a1)
	pnor	$v1, $zero, $v0
	psubb	$v0, $v0, $t1
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t2
	pcpyud	$v1, $v0, $a0
	or	$v0, $v0, $v1
	beqzl	$v0, lbl_00126428
	lq	$v1, 0($a1)
	b	lbl_00126460
	move	$a0, $a3
lbl_001263CC:
	bnez	$v0, lbl_00126460
	nop
	ld	$v1, 0($a1)
	lui	$t1, 0x101
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	dsll	$t1, $t1, 0x10
	ori	$t1, $t1, 0x101
	lui	$t2, 0x8080
	ori	$t2, $t2, 0x8080
	dsll	$t2, $t2, 0x10
	ori	$t2, $t2, 0x8080
	dsll	$t2, $t2, 0x10
	ori	$t2, $t2, 0x8080
	dsubu	$v0, $v1, $t1
	nor	$v1, $zero, $v1
	and	$v0, $v0, $v1
	and	$v0, $v0, $t2
	bnez	$v0, lbl_0012645C
	move	$a3, $t0
	ld	$v1, 0($a1)
	nop
lbl_00126428:
	addiu	$a2, $a2, -8
	addiu	$a1, $a1, 8
	sltiu	$v0, $a2, 8
	sd	$v1, 0($a3)
	bnez	$v0, lbl_0012645C
	addiu	$a3, $a3, 8
	ld	$v0, 0($a1)
	nor	$v1, $zero, $v0
	dsubu	$v0, $v0, $t1
	and	$v0, $v0, $v1
	and	$v0, $v0, $t2
	beqzl	$v0, lbl_00126428
	ld	$v1, 0($a1)
lbl_0012645C:
	move	$a0, $a3
lbl_00126460:
	beqz	$a2, lbl_001264AC
	move	$v0, $a2
	lbu	$v0, 0($a1)
	addiu	$a2, $a2, -1
	addiu	$a1, $a1, 1
	sb	$v0, 0($a0)
	sll	$v0, $v0, 0x18
	bnez	$v0, lbl_00126460
	addiu	$a0, $a0, 1
	move	$v0, $a2
	beqz	$v0, lbl_001264AC
	addiu	$a2, $a2, -1
lbl_00126490:
	sb	$zero, 0($a0)
	move	$v0, $a2
	addiu	$a0, $a0, 1
	addiu	$a2, $a2, -1
	nop
	bnez	$v0, lbl_00126490
	nop
lbl_001264AC:
	jr	$ra
	move	$v0, $t0
	nop

sub_001264B8:
	lbu	$v1, 0($a0)
	sll	$a1, $a1, 0x18
	sra	$a1, $a1, 0x18
	move	$a2, $zero
	beqz	$v1, lbl_001264F0
	move	$v0, $v1
lbl_001264D0:
	sll	$v0, $v0, 0x18
	sra	$v0, $v0, 0x18
	xor	$v0, $v0, $a1
	movz	$a2, $a0, $v0
	addiu	$a0, $a0, 1
	lbu	$v1, 0($a0)
	bnez	$v1, lbl_001264D0
	move	$v0, $v1
lbl_001264F0:
	sll	$v1, $v1, 0x18
	move	$v0, $a0
	sra	$v1, $v1, 0x18
	xor	$v1, $v1, $a1
	jr	$ra
	movn	$v0, $a2, $v1
lbl_00126508:
	addiu	$sp, $sp, -96
	sd	$s5, 56($sp)
	move	$s5, $a1
	sd	$s0, 16($sp)
	sd	$s1, 24($sp)
	sd	$s4, 48($sp)
	sd	$s6, 64($sp)
	sd	$ra, 88($sp)
	sw	$a0, 0($sp)
	sd	$s2, 32($sp)
	move	$s2, $s5
	sd	$s3, 40($sp)
	move	$s3, $a3
	sd	$s7, 72($sp)
	move	$s7, $zero
	sd	$s8, 80($sp)
	move	$s8, $a2
	nop
lbl_00126550:
	lb	$s1, 0($s2)
	lui	$v0, 0x13
	addu	$v0, $v0, $s1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	nop
	nop
	bnez	$v0, lbl_00126550
	addiu	$s2, $s2, 1
	li	$v0, 45
	bne	$s1, $v0, lbl_00126590
	li	$v0, 43
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
	b	lbl_001265A0
	li	$s7, 1
lbl_00126590:
	bne	$s1, $v0, lbl_001265A0
	nop
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
lbl_001265A0:
	beqz	$s3, lbl_001265B0
	li	$v0, 16
	bne	$s3, $v0, lbl_001265DC
	nop
lbl_001265B0:
	li	$v0, 48
	bne	$s1, $v0, lbl_001265DC
	li	$v0, 120
	lb	$v1, 0($s2)
	beq	$v1, $v0, lbl_001265D0
	li	$v0, 88
	bne	$v1, $v0, lbl_001265DC
	nop
lbl_001265D0:
	lb	$s1, 1($s2)
	addiu	$s2, $s2, 2
	li	$s3, 16
lbl_001265DC:
	bnez	$s3, lbl_001265F0
	li	$v1, 10
	li	$s3, 8
	xori	$v0, $s1, 0x30
	movn	$s3, $v1, $v0
lbl_001265F0:
	li	$v0, -1
	dsrl	$v0, $v0, 0x1
	li	$s4, 0x8000
	dsll32	$s4, $s4, 0x10
	movz	$s4, $v0, $s7
	move	$s0, $s3
	move	$a0, $s4
	jal	sub_00121798
	move	$a1, $s0
	move	$a0, $s4
	dsll32	$s6, $v0, 0x0
	dsra32	$s6, $s6, 0x0
	jal	sub_00121218
	move	$a1, $s0
	move	$a2, $zero
	move	$s4, $v0
	b	lbl_00126688
	move	$a1, $zero
lbl_00126638:
	slt	$v0, $s1, $s3
	beqz	$v0, lbl_001266C8
	nop
	bltz	$a2, lbl_00126668
	sltu	$v0, $s4, $a1
	bnezl	$v0, lbl_00126680
	li	$a2, -1
	bne	$a1, $s4, lbl_00126670
	move	$a0, $a1
	slt	$v0, $s6, $s1
	beqz	$v0, lbl_00126670
	nop
lbl_00126668:
	b	lbl_00126680
	li	$a2, -1
lbl_00126670:
	jal	sub_00124098
	move	$a1, $s0
	li	$a2, 1
	daddu	$a1, $s1, $v0
lbl_00126680:
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
lbl_00126688:
	lui	$a0, 0x13
	addu	$a0, $a0, $s1
	lbu	$a0, 24401($a0)
	andi	$v0, $a0, 0x4
	beqz	$v0, lbl_001266A8
	andi	$v0, $a0, 0x3
	b	lbl_00126638
	addiu	$s1, $s1, -48
lbl_001266A8:
	beqz	$v0, lbl_001266C8
	addiu	$v0, $s1, -55
	addiu	$v1, $s1, -87
	andi	$a0, $a0, 0x1
	move	$s1, $v0
	b	lbl_00126638
	movz	$s1, $v1, $a0
	nop
lbl_001266C8:
	bgez	$a2, lbl_001266F8
	dnegu	$v0, $a1
	li	$v1, -1
	dsrl	$v1, $v1, 0x1
	li	$a1, 0x8000
	dsll32	$a1, $a1, 0x10
	movz	$a1, $v1, $s7
	lw	$v1, 0($sp)
	li	$v0, 34
	b	lbl_001266FC
	sw	$v0, 0($v1)
	nop
lbl_001266F8:
	movn	$a1, $v0, $s7
lbl_001266FC:
	beqz	$s8, lbl_0012670C
	addiu	$v0, $s2, -1
	movn	$s5, $v0, $a2
	sw	$s5, 0($s8)
lbl_0012670C:
	ld	$s0, 16($sp)
	move	$v0, $a1
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$s8, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_00126740:
	addiu	$sp, $sp, -16
	lui	$v1, 0x13
	sd	$ra, 0($sp)
	move	$v0, $a1
	move	$a1, $a0
	lw	$a0, 11128($v1)
	ld	$ra, 0($sp)
	move	$a3, $a2
	move	$a2, $v0
	j	lbl_00126508
	addiu	$sp, $sp, 16
	nop

sub_00126770:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$ra, 8($sp)
	lw	$v0, 8($s0)
	bnez	$v0, lbl_00126798
	move	$v0, $zero
	b	lbl_001267A8
	sw	$zero, 4($s0)
	nop
lbl_00126798:
	jal	sub_0012AF58
	nop
	sw	$zero, 4($s0)
	sw	$zero, 8($s0)
lbl_001267A8:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16

sub_001267B8:
	addiu	$sp, $sp, -1152
	li	$t2, 1024
	sd	$s0, 1120($sp)
	move	$s0, $a0
	sd	$s1, 1128($sp)
	addiu	$t3, $sp, 96
	sd	$ra, 1136($sp)
	move	$a0, $sp
	sw	$t3, 16($sp)
	lhu	$v0, 12($s0)
	lhu	$t1, 14($s0)
	lw	$t0, 84($s0)
	andi	$v0, $v0, 0xfffd
	lw	$v1, 28($s0)
	lw	$a3, 36($s0)
	sw	$t0, 84($sp)
	sh	$v0, 12($sp)
	sh	$t1, 14($sp)
	sw	$v1, 28($sp)
	sw	$a3, 36($sp)
	sw	$t2, 20($sp)
	sw	$t3, 0($sp)
	sw	$t2, 8($sp)
	jal	sub_00126870
	sw	$zero, 24($sp)
	move	$s1, $v0
	bltz	$s1, lbl_00126838
	move	$a0, $sp
	jal	sub_0012A618
	nop
	li	$v1, -1
	movn	$s1, $v1, $v0
lbl_00126838:
	lhu	$v0, 12($sp)
	andi	$v0, $v0, 0x40
	beqz	$v0, lbl_00126858
	move	$v0, $s1
	lhu	$v0, 12($s0)
	ori	$v0, $v0, 0x40
	sh	$v0, 12($s0)
	move	$v0, $s1
lbl_00126858:
	ld	$s0, 1120($sp)
	ld	$s1, 1128($sp)
	ld	$ra, 1136($sp)
	jr	$ra
	addiu	$sp, $sp, 1152
	nop

sub_00126870:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$ra, 24($sp)
	lw	$a0, 84($s0)
	bnez	$a0, lbl_001268A8
	lui	$v0, 0x13
	lw	$v0, 11128($v0)
	sw	$v0, 84($s0)
	move	$a0, $v0
lbl_001268A8:
	lw	$v0, 56($a0)
	bnez	$v0, lbl_001268C4
	move	$a1, $s0
	jal	sub_0012A940
	nop
	lw	$a0, 84($s0)
	move	$a1, $s0
lbl_001268C4:
	ld	$s0, 0($sp)
	move	$a2, $s1
	ld	$s1, 8($sp)
	move	$a3, $s2
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	j	sub_001268E8
	addiu	$sp, $sp, 32
	nop

sub_001268E8:
	addiu	$sp, $sp, -656
	sd	$s0, 576($sp)
	move	$s0, $a2
	sd	$s6, 624($sp)
	move	$s6, $a3
	sw	$a0, 484($sp)
	sd	$s1, 584($sp)
	sd	$s2, 592($sp)
	sd	$s3, 600($sp)
	sd	$s4, 608($sp)
	sd	$s5, 616($sp)
	sd	$s7, 632($sp)
	sd	$s8, 640($sp)
	sd	$ra, 648($sp)
	jal	sub_0012B498
	sw	$a1, 488($sp)
	lw	$a0, 488($sp)
	lw	$v0, 0($v0)
	lhu	$v1, 12($a0)
	sw	$v0, 500($sp)
	andi	$v0, $v1, 0x8
	beqz	$v0, lbl_00126950
	sw	$zero, 472($sp)
	lw	$v0, 16($a0)
	bnezl	$v0, lbl_0012696C
	andi	$v1, $v1, 0x1a
lbl_00126950:
	jal	sub_00129038
	lw	$a0, 488($sp)
	bnez	$v0, lbl_00127F28
	li	$v0, -1
	lw	$a1, 488($sp)
	lhu	$v1, 12($a1)
	andi	$v1, $v1, 0x1a
lbl_0012696C:
	li	$v0, 10
	bne	$v1, $v0, lbl_001269A0
	addiu	$s3, $sp, 32
	lw	$a2, 488($sp)
	lh	$v0, 14($a2)
	bltz	$v0, lbl_001269A0
	move	$a0, $a2
	move	$a2, $s6
	jal	sub_001267B8
	move	$a1, $s0
	b	lbl_00127F2C
	ld	$s0, 576($sp)
	nop
lbl_001269A0:
	sw	$zero, 24($sp)
	sw	$s3, 16($sp)
	move	$s2, $s0
	sw	$zero, 20($sp)
	sw	$zero, 492($sp)
	nop
lbl_001269B8:
	move	$s5, $s2
	li	$s1, 37
lbl_001269C0:
	lui	$v0, 0x13
	lui	$v1, 0x13
	lw	$a0, 11128($v0)
	addiu	$a1, $sp, 468
	lw	$a3, 12256($v1)
	move	$a2, $s2
	jal	sub_0012B610
	addiu	$t0, $sp, 472
	move	$s0, $v0
	blezl	$s0, lbl_00126A00
	subu	$s1, $s2, $s5
	lw	$v0, 468($sp)
	bne	$v0, $s1, lbl_001269C0
	addu	$s2, $s2, $s0
	addiu	$s2, $s2, -1
	subu	$s1, $s2, $s5
lbl_00126A00:
	beqz	$s1, lbl_00126A5C
	nop
	sw	$s1, 4($s3)
	sw	$s5, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addu	$v1, $v1, $s1
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00126A50
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a0, $sp, 32
	move	$s3, $a0
lbl_00126A50:
	lw	$a1, 492($sp)
	addu	$a1, $a1, $s1
	sw	$a1, 492($sp)
lbl_00126A5C:
	blez	$s0, lbl_00127EF4
	lw	$v0, 24($sp)
	sb	$zero, 465($sp)
	addiu	$s2, $s2, 1
	sw	$zero, 516($sp)
	move	$s7, $zero
	sw	$zero, 496($sp)
	li	$s4, -1
lbl_00126A7C:
	lbu	$a0, 0($s2)
lbl_00126A80:
	sll	$v0, $a0, 0x18
	addiu	$s2, $s2, 1
	sra	$s1, $v0, 0x18
lbl_00126A8C:
	addiu	$v1, $s1, -32
lbl_00126A90:
	sltiu	$v0, $v1, 89
	beqz	$v0, lbl_00127160
	sll	$v0, $v1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 24832($v1)
	jr	$v1
	nop
	lb	$v0, 465($sp)
	bnezl	$v0, lbl_00126A80
	lbu	$a0, 0($s2)
	b	lbl_00126AFC
	li	$v0, 32
	nop
	b	lbl_00126A7C
	ori	$s7, $s7, 0x1
	move	$v0, $s6
	addiu	$s6, $s6, 8
	lw	$v0, 0($v0)
	bgez	$v0, lbl_00126A7C
	sw	$v0, 496($sp)
	negu	$v0, $v0
	sw	$v0, 496($sp)
	b	lbl_00126A7C
	ori	$s7, $s7, 0x4
	nop
	li	$v0, 43
lbl_00126AFC:
	lbu	$a0, 0($s2)
	b	lbl_00126A80
	sb	$v0, 465($sp)
	lb	$s1, 0($s2)
	li	$v0, 42
	bne	$s1, $v0, lbl_00126B38
	addiu	$s2, $s2, 1
	move	$v0, $s6
	lw	$s0, 0($v0)
	move	$s4, $s0
	slti	$v0, $s4, -1
	beqz	$v0, lbl_00126A7C
	addiu	$s6, $s6, 8
	b	lbl_00126A7C
	li	$s4, -1
lbl_00126B38:
	addiu	$v0, $s1, -48
	sltiu	$v0, $v0, 10
	beqz	$v0, lbl_00126B70
	move	$s0, $zero
lbl_00126B48:
	sll	$v0, $s0, 0x2
	addu	$v0, $v0, $s0
	sll	$v0, $v0, 0x1
	addu	$v0, $v0, $s1
	lb	$s1, 0($s2)
	addiu	$s0, $v0, -48
	addiu	$v0, $s1, -48
	sltiu	$v0, $v0, 10
	bnez	$v0, lbl_00126B48
	addiu	$s2, $s2, 1
lbl_00126B70:
	move	$s4, $s0
	slti	$v0, $s4, -1
	bnezl	$v0, lbl_00126A8C
	li	$s4, -1
	b	lbl_00126A90
	addiu	$v1, $s1, -32
	b	lbl_00126A7C
	ori	$s7, $s7, 0x80
	move	$s0, $zero
	nop
lbl_00126B98:
	sll	$v0, $s0, 0x2
	addu	$v0, $v0, $s0
	sll	$v0, $v0, 0x1
	addu	$v0, $v0, $s1
	lb	$s1, 0($s2)
	addiu	$s0, $v0, -48
	addiu	$v0, $s1, -48
	sltiu	$v0, $v0, 10
	bnez	$v0, lbl_00126B98
	addiu	$s2, $s2, 1
	b	lbl_00126A8C
	sw	$s0, 496($sp)
	b	lbl_00126A7C
	ori	$s7, $s7, 0x8
	b	lbl_00126A7C
	ori	$s7, $s7, 0x40
	lb	$v1, 0($s2)
	li	$v0, 108
	bne	$v1, $v0, lbl_00126BF8
	lbu	$a0, 0($s2)
	addiu	$s2, $s2, 1
	b	lbl_00126A7C
	ori	$s7, $s7, 0x20
	nop
lbl_00126BF8:
	b	lbl_00126A80
	ori	$s7, $s7, 0x10
	move	$v0, $s6
	addiu	$s6, $s6, 8
	lbu	$v1, 0($v0)
	addiu	$s5, $sp, 96
	li	$s8, 1
	b	lbl_00127170
	sb	$v1, 0($s5)
	nop
	ori	$s7, $s7, 0x10
	andi	$v0, $s7, 0x10
	beqz	$v0, lbl_00126C40
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126C60
	ld	$s0, 0($v0)
	nop
lbl_00126C40:
	andi	$v0, $s7, 0x40
	beqz	$v0, lbl_00126C58
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126C60
	lh	$s0, 0($v0)
lbl_00126C58:
	addiu	$s6, $s6, 8
	lw	$s0, 0($v0)
lbl_00126C60:
	bgez	$s0, lbl_00127040
	li	$v1, 1
	li	$v0, 45
	dnegu	$s0, $s0
	b	lbl_00127040
	sb	$v0, 465($sp)
	li	$v0, -1
	bne	$s4, $v0, lbl_00126C90
	li	$v0, 103
	b	lbl_00126CA8
	li	$s4, 6
	nop
lbl_00126C90:
	beq	$s1, $v0, lbl_00126CA0
	li	$v0, 71
	bne	$s1, $v0, lbl_00126CAC
	andi	$v0, $s7, 0x8
lbl_00126CA0:
	li	$v0, 1
	movz	$s4, $v0, $s4
lbl_00126CA8:
	andi	$v0, $s7, 0x8
lbl_00126CAC:
	move	$v0, $s6
	ld	$v0, 0($v0)
	sd	$v0, 504($sp)
	ld	$a0, 504($sp)
	jal	sub_0012C8F8
	addiu	$s6, $s6, 8
	beqz	$v0, lbl_00126D00
	nop
	ld	$a0, 504($sp)
	move	$a1, $zero
	jal	sub_001228D8
	nop
	bgez	$v0, lbl_00126CF0
	lui	$v0, 0x13
	li	$v0, 45
	sb	$v0, 465($sp)
	lui	$v0, 0x13
lbl_00126CF0:
	li	$s8, 3
	b	lbl_00127174
	addiu	$s5, $v0, 24704
	nop
lbl_00126D00:
	ld	$a0, 504($sp)
	jal	sub_0012C940
	nop
	beqz	$v0, lbl_00126D20
	lui	$v0, 0x13
	li	$s8, 3
	b	lbl_00127174
	addiu	$s5, $v0, 24712
lbl_00126D20:
	ori	$s7, $s7, 0x100
	lw	$a0, 484($sp)
	ld	$a1, 504($sp)
	move	$a2, $s4
	move	$a3, $s7
	addiu	$t0, $sp, 464
	addiu	$t1, $sp, 476
	move	$t2, $s1
	jal	sub_00127F58
	addiu	$t3, $sp, 480
	move	$s5, $v0
	li	$v0, 103
	beq	$s1, $v0, lbl_00126D60
	li	$v0, 71
	bne	$s1, $v0, lbl_00126D90
	lw	$a3, 476($sp)
lbl_00126D60:
	lw	$a3, 476($sp)
	slti	$v0, $a3, -3
	bnez	$v0, lbl_00126D80
	li	$v0, 101
	slt	$v0, $s4, $a3
	beqzl	$v0, lbl_00126D90
	li	$s1, 103
	li	$v0, 101
lbl_00126D80:
	xori	$a0, $s1, 0x67
	li	$v1, 69
	move	$s1, $v0
	movn	$s1, $v1, $a0
lbl_00126D90:
	slti	$v0, $s1, 102
	beqzl	$v0, lbl_00126DE0
	li	$v0, 102
	addiu	$a3, $a3, -1
	move	$a2, $s1
	move	$a0, $sp
	move	$a1, $a3
	jal	sub_00128118
	sw	$a3, 476($sp)
	sw	$v0, 512($sp)
	lw	$v0, 480($sp)
	lw	$a2, 512($sp)
	slti	$v1, $v0, 2
	beqz	$v1, lbl_00126DD8
	addu	$s8, $a2, $v0
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00126E44
	lb	$v0, 464($sp)
lbl_00126DD8:
	b	lbl_00126E40
	addiu	$s8, $s8, 1
lbl_00126DE0:
	bne	$s1, $v0, lbl_00126E10
	lw	$a1, 480($sp)
	blez	$a3, lbl_00126E40
	addiu	$s8, $s4, 2
	bnez	$s4, lbl_00126E04
	move	$s8, $a3
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00126E44
	lb	$v0, 464($sp)
lbl_00126E04:
	addu	$v0, $a3, $s4
	b	lbl_00126E40
	addiu	$s8, $v0, 1
lbl_00126E10:
	slt	$v0, $a3, $a1
	bnez	$v0, lbl_00126E30
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00126E40
	move	$s8, $a3
	b	lbl_00126E40
	addiu	$s8, $a3, 1
	nop
lbl_00126E30:
	bgtzl	$a3, lbl_00126E40
	addiu	$s8, $a1, 1
	subu	$v0, $a1, $a3
	addiu	$s8, $v0, 2
lbl_00126E40:
	lb	$v0, 464($sp)
lbl_00126E44:
	beqz	$v0, lbl_00127174
	li	$v0, 45
	b	lbl_00127174
	sb	$v0, 465($sp)
	nop
	andi	$v0, $s7, 0x10
	beqz	$v0, lbl_00126E80
	andi	$v0, $s7, 0x40
	move	$v1, $s6
	addiu	$s6, $s6, 8
	lw	$v0, 0($v1)
	lw	$v1, 492($sp)
	b	lbl_001269B8
	sd	$v1, 0($v0)
	nop
lbl_00126E80:
	beqz	$v0, lbl_00126EA0
	move	$v1, $s6
	addiu	$s6, $s6, 8
	lw	$v0, 0($v1)
	lw	$a0, 492($sp)
	b	lbl_001269B8
	sh	$a0, 0($v0)
	nop
lbl_00126EA0:
	addiu	$s6, $s6, 8
	lw	$v0, 0($v1)
	lw	$a1, 492($sp)
	b	lbl_001269B8
	sw	$a1, 0($v0)
	nop
	ori	$s7, $s7, 0x10
	andi	$v0, $s7, 0x10
	beqz	$v0, lbl_00126ED8
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126EF8
	ld	$s0, 0($v0)
	nop
lbl_00126ED8:
	andi	$v0, $s7, 0x40
	beqz	$v0, lbl_00126EF0
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126EF8
	lhu	$s0, 0($v0)
lbl_00126EF0:
	addiu	$s6, $s6, 8
	lwu	$s0, 0($v0)
lbl_00126EF8:
	b	lbl_0012703C
	move	$v1, $zero
	lui	$v0, 0x13
	move	$v1, $s6
	addiu	$v0, $v0, 24720
	lw	$s0, 0($v1)
	addiu	$s6, $s6, 8
	ori	$s7, $s7, 0x2
	sw	$v0, 524($sp)
	li	$v1, 2
	b	lbl_0012703C
	li	$s1, 120
	move	$v0, $s6
	lw	$s5, 0($v0)
	bnez	$s5, lbl_00126F40
	addiu	$s6, $s6, 8
	lui	$v0, 0x13
	addiu	$s5, $v0, 24744
lbl_00126F40:
	bltz	$s4, lbl_00126F78
	move	$a1, $zero
	move	$a0, $s5
	jal	sub_0012B644
	move	$a2, $s4
	beqz	$v0, lbl_00127170
	move	$s8, $s4
	subu	$s8, $v0, $s5
	slt	$v0, $s4, $s8
	beqzl	$v0, lbl_00127174
	sb	$zero, 465($sp)
	b	lbl_00127170
	move	$s8, $s4
	nop
lbl_00126F78:
	jal	sub_00126004
	move	$a0, $s5
	b	lbl_00127170
	move	$s8, $v0
	ori	$s7, $s7, 0x10
	andi	$v0, $s7, 0x10
	beqz	$v0, lbl_00126FA8
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126FC8
	ld	$s0, 0($v0)
	nop
lbl_00126FA8:
	andi	$v0, $s7, 0x40
	beqz	$v0, lbl_00126FC0
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00126FC8
	lhu	$s0, 0($v0)
lbl_00126FC0:
	addiu	$s6, $s6, 8
	lwu	$s0, 0($v0)
lbl_00126FC8:
	b	lbl_0012703C
	li	$v1, 1
	lui	$v0, 0x13
	b	lbl_00126FE8
	addiu	$v0, $v0, 24752
	nop
	lui	$v0, 0x13
	addiu	$v0, $v0, 24720
lbl_00126FE8:
	sw	$v0, 524($sp)
	andi	$v0, $s7, 0x10
	beqz	$v0, lbl_00127008
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00127028
	ld	$s0, 0($v0)
	nop
lbl_00127008:
	andi	$v0, $s7, 0x40
	beqz	$v0, lbl_00127020
	move	$v0, $s6
	addiu	$s6, $s6, 8
	b	lbl_00127028
	lhu	$s0, 0($v0)
lbl_00127020:
	addiu	$s6, $s6, 8
	lwu	$s0, 0($v0)
lbl_00127028:
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_0012703C
	li	$v1, 2
	ori	$v0, $s7, 0x2
	movn	$s7, $v0, $s0
lbl_0012703C:
	sb	$zero, 465($sp)
lbl_00127040:
	bltz	$s4, lbl_00127050
	sw	$s4, 516($sp)
	li	$v0, -129
	and	$s7, $s7, $v0
lbl_00127050:
	bnez	$s0, lbl_00127064
	addiu	$s5, $sp, 444
	lw	$a2, 516($sp)
	beqz	$a2, lbl_00127154
	subu	$v0, $sp, $s5
lbl_00127064:
	li	$v0, 1
	beq	$v1, $v0, lbl_00127104
	sltiu	$v0, $s0, 10
	beqz	$v1, lbl_00127098
	li	$a0, 7
	li	$v0, 2
	beq	$v1, $v0, lbl_00127120
	lui	$v0, 0x13
	addiu	$s5, $v0, 24776
	jal	sub_00126004
	move	$a0, $s5
	b	lbl_00127174
	move	$s8, $v0
lbl_00127098:
	and	$v0, $s0, $a0
	dsrl	$s0, $s0, 0x3
	daddiu	$v0, $v0, 48
	addiu	$s5, $s5, -1
	andi	$v1, $v0, 0xff
	bnez	$s0, lbl_00127098
	sb	$v1, 0($s5)
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00127150
	li	$v0, 48
	beql	$v1, $v0, lbl_00127154
	subu	$v0, $sp, $s5
	addiu	$s5, $s5, -1
	b	lbl_00127150
	sb	$v0, 0($s5)
	nop
lbl_001270D8:
	jal	sub_00121798
	li	$a1, 10
	move	$a0, $s0
	daddiu	$v0, $v0, 48
	addiu	$s5, $s5, -1
	andi	$v0, $v0, 0xff
	li	$a1, 10
	jal	sub_00121218
	sb	$v0, 0($s5)
	move	$s0, $v0
	sltiu	$v0, $s0, 10
lbl_00127104:
	beqz	$v0, lbl_001270D8
	move	$a0, $s0
	daddiu	$v0, $s0, 48
	addiu	$s5, $s5, -1
	andi	$v0, $v0, 0xff
	b	lbl_00127150
	sb	$v0, 0($s5)
lbl_00127120:
	li	$a0, 15
	nop
lbl_00127128:
	lw	$v1, 524($sp)
	and	$v0, $s0, $a0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	addiu	$s5, $s5, -1
	addu	$v0, $v1, $v0
	dsrl	$s0, $s0, 0x4
	lbu	$v1, 0($v0)
	bnez	$s0, lbl_00127128
	sb	$v1, 0($s5)
lbl_00127150:
	subu	$v0, $sp, $s5
lbl_00127154:
	b	lbl_00127174
	addiu	$s8, $v0, 444
	nop
lbl_00127160:
	beqz	$s1, lbl_00127EF0
	addiu	$s5, $sp, 96
	li	$s8, 1
	sb	$s1, 0($s5)
lbl_00127170:
	sb	$zero, 465($sp)
lbl_00127174:
	lw	$a1, 516($sp)
	move	$a0, $s8
	move	$a2, $s8
	lb	$v1, 465($sp)
	slt	$v0, $a0, $a1
	lbu	$a0, 465($sp)
	movz	$a1, $a2, $v0
	sw	$s8, 520($sp)
	beqz	$v1, lbl_001271A8
	sw	$a1, 520($sp)
	addiu	$a1, $a1, 1
	b	lbl_001271B8
	sw	$a1, 520($sp)
lbl_001271A8:
	lw	$v1, 520($sp)
	andi	$v0, $s7, 0x2
	addu	$v1, $v0, $v1
	sw	$v1, 520($sp)
lbl_001271B8:
	andi	$a1, $s7, 0x84
	bnez	$a1, lbl_001272A8
	sw	$a1, 528($sp)
	lw	$a2, 496($sp)
	lw	$v0, 520($sp)
	subu	$s0, $a2, $v0
	blez	$s0, lbl_001272A8
	slti	$v0, $s0, 17
	bnez	$v0, lbl_00127258
	lui	$a3, 0x13
	li	$a2, 16
	addiu	$s4, $a3, 24672
	sw	$a2, 4($s3)
	nop
lbl_001271F0:
	sw	$s4, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00127240
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	sq	$a2, 544($sp)
	jal	sub_00126770
	sq	$a3, 560($sp)
	lq	$a2, 544($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$v1, $sp, 32
	move	$s3, $v1
lbl_00127240:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_001271F0
	sw	$a2, 4($s3)
	b	lbl_0012725C
	sw	$s0, 4($s3)
lbl_00127258:
	sw	$s0, 4($s3)
lbl_0012725C:
	addiu	$v0, $a3, 24672
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_001272A4
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a0, $sp, 32
	move	$s3, $a0
lbl_001272A4:
	lbu	$a0, 465($sp)
lbl_001272A8:
	beqz	$a0, lbl_00127300
	li	$v0, 1
	addiu	$v1, $sp, 465
	sw	$v0, 4($s3)
	sw	$v1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127364
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a1, $sp, 32
	b	lbl_00127364
	move	$s3, $a1
lbl_00127300:
	andi	$v0, $s7, 0x2
	beqz	$v0, lbl_00127364
	li	$v0, 48
	li	$a0, 2
	sb	$v0, 448($sp)
	addiu	$v1, $sp, 448
	sb	$s1, 449($sp)
	sw	$a0, 4($s3)
	sw	$v1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 2
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127364
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_00127364:
	lw	$v1, 528($sp)
	li	$v0, 128
	bne	$v1, $v0, lbl_00127458
	lw	$a0, 516($sp)
	lw	$a0, 496($sp)
	lw	$a1, 520($sp)
	subu	$s0, $a0, $a1
	blez	$s0, lbl_00127458
	lw	$a0, 516($sp)
	slti	$v0, $s0, 17
	bnez	$v0, lbl_00127408
	lui	$a3, 0x13
	li	$a2, 16
	addiu	$s4, $a3, 24688
	sw	$a2, 4($s3)
lbl_001273A0:
	sw	$s4, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_001273F0
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	sq	$a2, 544($sp)
	jal	sub_00126770
	sq	$a3, 560($sp)
	lq	$a2, 544($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$v0, $sp, 32
	move	$s3, $v0
lbl_001273F0:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_001273A0
	sw	$a2, 4($s3)
	b	lbl_0012740C
	sw	$s0, 4($s3)
lbl_00127408:
	sw	$s0, 4($s3)
lbl_0012740C:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127454
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v1, $sp, 32
	move	$s3, $v1
lbl_00127454:
	lw	$a0, 516($sp)
lbl_00127458:
	subu	$s0, $a0, $s8
	blez	$s0, lbl_00127538
	andi	$v0, $s7, 0x100
	slti	$v0, $s0, 17
	bnez	$v0, lbl_001274E8
	lui	$a3, 0x13
	li	$a2, 16
	addiu	$s4, $a3, 24688
	sw	$a2, 4($s3)
	nop
lbl_00127480:
	sw	$s4, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_001274D0
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	sq	$a2, 544($sp)
	jal	sub_00126770
	sq	$a3, 560($sp)
	lq	$a2, 544($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_001274D0:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_00127480
	sw	$a2, 4($s3)
	b	lbl_001274EC
	sw	$s0, 4($s3)
lbl_001274E8:
	sw	$s0, 4($s3)
lbl_001274EC:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127534
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_00127534:
	andi	$v0, $s7, 0x100
lbl_00127538:
	bnezl	$v0, lbl_00127560
	slti	$v0, $s1, 102
	sw	$s8, 4($s3)
	sw	$s5, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	b	lbl_00127D98
	addu	$v1, $v1, $s8
lbl_00127560:
	bnez	$v0, lbl_00127B68
	lw	$v0, 480($sp)
	ld	$a0, 504($sp)
	move	$a1, $zero
	jal	sub_001228D8
	nop
	bnez	$v0, lbl_001276F8
	lw	$v1, 476($sp)
	li	$s0, 1
	lui	$v0, 0x13
	sw	$s0, 4($s3)
	addiu	$v0, $v0, 24808
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_001275D4
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v1, $sp, 32
	move	$s3, $v1
lbl_001275D4:
	lw	$v0, 476($sp)
	lw	$v1, 480($sp)
	slt	$v0, $v0, $v1
	bnezl	$v0, lbl_001275F8
	sw	$s0, 4($s3)
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00127DCC
	andi	$v0, $s7, 0x4
	sw	$s0, 4($s3)
lbl_001275F8:
	lw	$v0, 20($sp)
	lw	$a0, 500($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	sw	$a0, 0($s3)
	addiu	$s3, $s3, 8
	addiu	$v1, $v1, 1
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00127640
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_00127640:
	lw	$v0, 480($sp)
	addiu	$s0, $v0, -1
	blez	$s0, lbl_00127DCC
	andi	$v0, $s7, 0x4
	slti	$v0, $s0, 17
	bnez	$v0, lbl_001276C8
	lui	$a3, 0x13
	li	$s4, 16
	addiu	$s1, $a3, 24688
	sw	$s4, 4($s3)
lbl_00127668:
	sw	$s1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_001276B0
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	jal	sub_00126770
	sq	$a3, 560($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_001276B0:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_00127668
	sw	$s4, 4($s3)
	b	lbl_001276CC
	sw	$s0, 4($s3)
lbl_001276C8:
	sw	$s0, 4($s3)
lbl_001276CC:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	b	lbl_00127DA4
	sw	$v1, 20($sp)
lbl_001276F8:
	bgtz	$v1, lbl_001278E0
	lw	$v0, 480($sp)
	li	$s0, 1
	lui	$v0, 0x13
	sw	$s0, 4($s3)
	addiu	$v0, $v0, 24808
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127754
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v1, $sp, 32
	move	$s3, $v1
lbl_00127754:
	lw	$v0, 476($sp)
	bnezl	$v0, lbl_00127770
	sw	$s0, 4($s3)
	lw	$v0, 480($sp)
	beqz	$v0, lbl_00127DCC
	andi	$v0, $s7, 0x4
	sw	$s0, 4($s3)
lbl_00127770:
	lw	$v0, 20($sp)
	lw	$a0, 500($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	sw	$a0, 0($s3)
	addiu	$s3, $s3, 8
	addiu	$v1, $v1, 1
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_001277B8
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_001277B8:
	lw	$v0, 476($sp)
	negu	$s0, $v0
	blezl	$s0, lbl_00127890
	sw	$s5, 0($s3)
	slti	$v0, $s0, 17
	bnez	$v0, lbl_00127840
	lui	$a3, 0x13
	li	$s4, 16
	addiu	$s1, $a3, 24688
	sw	$s4, 4($s3)
lbl_001277E0:
	sw	$s1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00127828
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	jal	sub_00126770
	sq	$a3, 560($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_00127828:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_001277E0
	sw	$s4, 4($s3)
	b	lbl_00127844
	sw	$s0, 4($s3)
lbl_00127840:
	sw	$s0, 4($s3)
lbl_00127844:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_0012788C
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v0, $sp, 32
	move	$s3, $v0
lbl_0012788C:
	sw	$s5, 0($s3)
lbl_00127890:
	lw	$v0, 480($sp)
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	lw	$a0, 480($sp)
	addiu	$v0, $v0, 1
	slti	$a1, $v0, 8
	sw	$v0, 20($sp)
	addu	$v1, $v1, $a0
	bnez	$a1, lbl_00127DC8
	sw	$v1, 24($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v1, $sp, 32
	b	lbl_00127DC8
	move	$s3, $v1
lbl_001278E0:
	slt	$v0, $v1, $v0
	bnez	$v0, lbl_00127A58
	sw	$s5, 0($s3)
	lw	$v0, 480($sp)
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	lw	$a1, 480($sp)
	addiu	$v0, $v0, 1
	slti	$a0, $v0, 8
	sw	$v0, 20($sp)
	addu	$v1, $v1, $a1
	bnez	$a0, lbl_0012793C
	sw	$v1, 24($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a0, $sp, 32
	lw	$a1, 480($sp)
	move	$s3, $a0
lbl_0012793C:
	lw	$v0, 476($sp)
	subu	$s0, $v0, $a1
	blez	$s0, lbl_00127A18
	andi	$v0, $s7, 0x1
	slti	$v0, $s0, 17
	bnez	$v0, lbl_001279C8
	lui	$a3, 0x13
	li	$s4, 16
	addiu	$s1, $a3, 24688
	sw	$s4, 4($s3)
	nop
lbl_00127968:
	sw	$s1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_001279B0
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	jal	sub_00126770
	sq	$a3, 560($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_001279B0:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_00127968
	sw	$s4, 4($s3)
	b	lbl_001279CC
	sw	$s0, 4($s3)
lbl_001279C8:
	sw	$s0, 4($s3)
lbl_001279CC:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127A14
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_00127A14:
	andi	$v0, $s7, 0x1
lbl_00127A18:
	beqz	$v0, lbl_00127DC8
	li	$v1, 1
	lui	$v0, 0x13
	sw	$v1, 4($s3)
	addiu	$v0, $v0, 24816
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	b	lbl_00127DA4
	sw	$v1, 20($sp)
	nop
lbl_00127A58:
	lw	$v0, 476($sp)
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	lw	$a3, 476($sp)
	addiu	$v0, $v0, 1
	slti	$a0, $v0, 8
	sw	$v0, 20($sp)
	addu	$v1, $v1, $a3
	bnez	$a0, lbl_00127AA8
	sw	$v1, 24($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v1, $sp, 32
	lw	$a3, 476($sp)
	move	$s3, $v1
lbl_00127AA8:
	li	$v1, 1
	lui	$v0, 0x13
	sw	$v1, 4($s3)
	addiu	$v0, $v0, 24816
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	addu	$s5, $s5, $a3
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127B00
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a0, $sp, 32
	move	$s3, $a0
lbl_00127B00:
	sw	$s5, 0($s3)
	lw	$v1, 476($sp)
	lw	$v0, 480($sp)
	subu	$v0, $v0, $v1
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$a0, 480($sp)
	lw	$a1, 476($sp)
	addiu	$v1, $v1, 1
	lw	$v0, 24($sp)
	slti	$a2, $v1, 8
	subu	$a0, $a0, $a1
	sw	$v1, 20($sp)
	addu	$v0, $v0, $a0
	bnez	$a2, lbl_00127DC8
	sw	$v0, 24($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a1, $sp, 32
	b	lbl_00127DC8
	move	$s3, $a1
	nop
lbl_00127B68:
	slti	$v0, $v0, 2
	beqzl	$v0, lbl_00127B84
	lbu	$v1, 0($s5)
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_00127D30
	li	$v0, 1
	lbu	$v1, 0($s5)
lbl_00127B84:
	addiu	$s5, $s5, 1
	li	$a0, 46
	li	$a1, 2
	sb	$v1, 448($sp)
	addiu	$v0, $sp, 448
	sb	$a0, 449($sp)
	sw	$a1, 4($s3)
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 2
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127BE4
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a2, $sp, 32
	move	$s3, $a2
lbl_00127BE4:
	ld	$a0, 504($sp)
	move	$a1, $zero
	jal	sub_001228D8
	nop
	beqz	$v0, lbl_00127C58
	lw	$v0, 480($sp)
	sw	$s5, 0($s3)
	lw	$v0, 480($sp)
	addiu	$v0, $v0, -1
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 24($sp)
	lw	$v0, 20($sp)
	lw	$a0, 480($sp)
	addiu	$v0, $v0, 1
	addu	$v1, $v1, $a0
	slti	$a1, $v0, 8
	addiu	$v1, $v1, -1
	sw	$v0, 20($sp)
	bnez	$a1, lbl_00127D78
	sw	$v1, 24($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v0, $sp, 32
	b	lbl_00127D78
	move	$s3, $v0
lbl_00127C58:
	addiu	$s0, $v0, -1
	blez	$s0, lbl_00127D7C
	lw	$a2, 512($sp)
	slti	$v0, $s0, 17
	bnez	$v0, lbl_00127CE0
	lui	$a3, 0x13
	li	$s4, 16
	addiu	$s1, $a3, 24688
	sw	$s4, 4($s3)
	nop
lbl_00127C80:
	sw	$s1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00127CC8
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	jal	sub_00126770
	sq	$a3, 560($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$v1, $sp, 32
	move	$s3, $v1
lbl_00127CC8:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_00127C80
	sw	$s4, 4($s3)
	b	lbl_00127CE4
	sw	$s0, 4($s3)
lbl_00127CE0:
	sw	$s0, 4($s3)
lbl_00127CE4:
	addiu	$v0, $a3, 24688
	sw	$v0, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127D78
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a0, $sp, 32
	b	lbl_00127D78
	move	$s3, $a0
lbl_00127D30:
	sw	$s5, 0($s3)
	sw	$v0, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addiu	$v0, $v0, 1
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127D78
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_00127D78:
	lw	$a2, 512($sp)
lbl_00127D7C:
	sw	$sp, 0($s3)
	sw	$a2, 4($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addu	$v1, $v1, $a2
lbl_00127D98:
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	sw	$v0, 20($sp)
lbl_00127DA4:
	bnez	$a0, lbl_00127DCC
	andi	$v0, $s7, 0x4
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
	addiu	$v0, $sp, 32
	move	$s3, $v0
lbl_00127DC8:
	andi	$v0, $s7, 0x4
lbl_00127DCC:
	beqz	$v0, lbl_00127EA0
	lw	$v1, 496($sp)
	lw	$a0, 520($sp)
	subu	$s0, $v1, $a0
	blez	$s0, lbl_00127EA8
	lw	$a2, 520($sp)
	slti	$v0, $s0, 17
	bnez	$v0, lbl_00127E60
	lui	$a3, 0x13
	li	$s4, 16
	addiu	$s1, $a3, 24672
	sw	$s4, 4($s3)
	nop
lbl_00127E00:
	sw	$s1, 0($s3)
	addiu	$s3, $s3, 8
	lw	$v0, 20($sp)
	lw	$v1, 24($sp)
	addiu	$v0, $v0, 1
	addiu	$v1, $v1, 16
	slti	$a0, $v0, 8
	sw	$v1, 24($sp)
	bnez	$a0, lbl_00127E48
	sw	$v0, 20($sp)
	lw	$a0, 488($sp)
	addiu	$a1, $sp, 16
	jal	sub_00126770
	sq	$a3, 560($sp)
	bnez	$v0, lbl_00127F10
	lq	$a3, 560($sp)
	addiu	$a1, $sp, 32
	move	$s3, $a1
lbl_00127E48:
	addiu	$s0, $s0, -16
	slti	$v0, $s0, 17
	beqzl	$v0, lbl_00127E00
	sw	$s4, 4($s3)
	b	lbl_00127E64
	sw	$s0, 4($s3)
lbl_00127E60:
	sw	$s0, 4($s3)
lbl_00127E64:
	addiu	$v0, $a3, 24672
	sw	$v0, 0($s3)
	lw	$v1, 20($sp)
	lw	$v0, 24($sp)
	addiu	$v1, $v1, 1
	addu	$v0, $v0, $s0
	slti	$a0, $v1, 8
	sw	$v0, 24($sp)
	bnez	$a0, lbl_00127EA0
	sw	$v1, 20($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
lbl_00127EA0:
	lw	$a2, 520($sp)
	lw	$v1, 496($sp)
lbl_00127EA8:
	lw	$a0, 496($sp)
	slt	$v0, $a2, $v1
	lw	$v1, 24($sp)
	lw	$a1, 492($sp)
	movz	$a0, $a2, $v0
	addu	$a1, $a1, $a0
	beqz	$v1, lbl_00127EDC
	sw	$a1, 492($sp)
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
lbl_00127EDC:
	addiu	$a2, $sp, 32
	sw	$zero, 20($sp)
	b	lbl_001269B8
	move	$s3, $a2
	nop
lbl_00127EF0:
	lw	$v0, 24($sp)
lbl_00127EF4:
	beqz	$v0, lbl_00127F0C
	lw	$a0, 488($sp)
	jal	sub_00126770
	addiu	$a1, $sp, 16
	bnez	$v0, lbl_00127F14
	lw	$v0, 488($sp)
lbl_00127F0C:
	sw	$zero, 20($sp)
lbl_00127F10:
	lw	$v0, 488($sp)
lbl_00127F14:
	lw	$a0, 492($sp)
	lhu	$v1, 12($v0)
	li	$v0, -1
	andi	$v1, $v1, 0x40
	movz	$v0, $a0, $v1
lbl_00127F28:
	ld	$s0, 576($sp)
lbl_00127F2C:
	ld	$s1, 584($sp)
	ld	$s2, 592($sp)
	ld	$s3, 600($sp)
	ld	$s4, 608($sp)
	ld	$s5, 616($sp)
	ld	$s6, 624($sp)
	ld	$s7, 632($sp)
	ld	$s8, 640($sp)
	ld	$ra, 648($sp)
	jr	$ra
	addiu	$sp, $sp, 656

sub_00127F58:
	addiu	$sp, $sp, -96
	li	$v0, 102
	sd	$s1, 24($sp)
	move	$s1, $t2
	sd	$s0, 16($sp)
	move	$s0, $t0
	sd	$s2, 32($sp)
	move	$s2, $a1
	sd	$s3, 40($sp)
	move	$s3, $a2
	sd	$s4, 48($sp)
	li	$s4, 3
	sd	$s5, 56($sp)
	move	$s5, $t1
	sd	$s6, 64($sp)
	move	$s6, $a0
	sd	$s7, 72($sp)
	move	$s7, $a3
	sd	$s8, 80($sp)
	move	$s8, $t3
	beq	$s1, $v0, lbl_00127FCC
	sd	$ra, 88($sp)
	li	$v0, 101
	beq	$s1, $v0, lbl_00127FC4
	li	$v0, 69
	bne	$s1, $v0, lbl_00127FCC
	li	$s4, 2
lbl_00127FC4:
	addiu	$s3, $s3, 1
	li	$s4, 2
lbl_00127FCC:
	move	$v0, $s2
	dsra32	$v0, $v0, 0x0
	bgezl	$v0, lbl_00127FF8
	sb	$zero, 0($s0)
	move	$a1, $s2
	move	$a0, $zero
	jal	sub_001224A8
	nop
	move	$s2, $v0
	li	$v0, 45
	sb	$v0, 0($s0)
lbl_00127FF8:
	move	$a2, $s4
	move	$a0, $s6
	move	$a1, $s2
	move	$a3, $s3
	move	$t0, $s5
	move	$t1, $sp
	jal	sub_001293B0
	addiu	$t2, $sp, 4
	move	$s4, $v0
	li	$v0, 103
	beq	$s1, $v0, lbl_00128030
	li	$v0, 71
	bne	$s1, $v0, lbl_0012803C
	li	$v0, 102
lbl_00128030:
	andi	$v0, $s7, 0x1
	beqz	$v0, lbl_001280D8
	li	$v0, 102
lbl_0012803C:
	bne	$s1, $v0, lbl_0012807C
	addu	$s0, $s4, $s3
	lb	$v1, 0($s4)
	li	$v0, 48
	bnel	$v1, $v0, lbl_00128078
	lw	$v0, 0($s5)
	move	$a0, $s2
	move	$a1, $zero
	jal	sub_001228D8
	nop
	beqz	$v0, lbl_00128074
	li	$v0, 1
	subu	$v0, $v0, $s3
	sw	$v0, 0($s5)
lbl_00128074:
	lw	$v0, 0($s5)
lbl_00128078:
	addu	$s0, $s0, $v0
lbl_0012807C:
	move	$a0, $s2
	move	$a1, $zero
	jal	sub_001228D8
	nop
	lw	$v1, 4($sp)
	xori	$v0, $v0, 0x0
	movz	$v1, $s0, $v0
	sltu	$v0, $v1, $s0
	sw	$v1, 4($sp)
	beqz	$v0, lbl_001280DC
	move	$a0, $v1
	li	$a1, 48
	nop
lbl_001280B0:
	addiu	$v1, $a0, 1
	sb	$a1, 0($a0)
	sltu	$v0, $v1, $s0
	sw	$v1, 4($sp)
	nop
	bnez	$v0, lbl_001280B0
	move	$a0, $v1
	b	lbl_001280E0
	subu	$v1, $v1, $s4
	nop
lbl_001280D8:
	lw	$v1, 4($sp)
lbl_001280DC:
	subu	$v1, $v1, $s4
lbl_001280E0:
	move	$v0, $s4
	sw	$v1, 0($s8)
	ld	$s0, 16($sp)
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$s8, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96

sub_00128118:
	sb	$a2, 0($a0)
	addiu	$a2, $a0, 1
	bgez	$a1, lbl_00128138
	addiu	$sp, $sp, -320
	li	$v0, 45
	b	lbl_0012813C
	negu	$a1, $a1
	nop
lbl_00128138:
	li	$v0, 43
lbl_0012813C:
	sb	$v0, 0($a2)
	addiu	$a2, $a0, 2
	addiu	$a3, $sp, 308
	slti	$v0, $a1, 10
	bnez	$v0, lbl_001281D0
	move	$t1, $a3
	li	$t0, 10
	div	$zero, $a1, $t0
	nop
lbl_00128160:
	addiu	$a3, $a3, -1
	beqzl	$t0, lbl_0012816C
	break	0x7
lbl_0012816C:
	mflo	$v1
	mfhi	$v0
	move	$a1, $v1
	addiu	$v0, $v0, 48
	slti	$v1, $a1, 10
	sb	$v0, 0($a3)
	beqzl	$v1, lbl_00128160
	div	$zero, $a1, $t0
	addiu	$a3, $a3, -1
	addiu	$v0, $a1, 48
	sltu	$v1, $a3, $t1
	beqz	$v1, lbl_001281E8
	sb	$v0, 0($a3)
	move	$a1, $t1
	nop
lbl_001281A8:
	lbu	$v0, 0($a3)
	addiu	$a3, $a3, 1
	sltu	$v1, $a3, $a1
	sb	$v0, 0($a2)
	nop
	bnez	$v1, lbl_001281A8
	addiu	$a2, $a2, 1
	b	lbl_001281EC
	subu	$v0, $a2, $a0
	nop
lbl_001281D0:
	li	$v0, 48
	addiu	$v1, $a1, 48
	sb	$v0, 0($a2)
	addiu	$a2, $a2, 1
	sb	$v1, 0($a2)
	addiu	$a2, $a2, 1
lbl_001281E8:
	subu	$v0, $a2, $a0
lbl_001281EC:
	jr	$ra
	addiu	$sp, $sp, 320
	nop

sub_001281F8:
	addiu	$sp, $sp, -752
	move	$t0, $zero
	sd	$s0, 672($sp)
	sd	$s1, 680($sp)
	sd	$s3, 696($sp)
	sd	$s4, 704($sp)
	sd	$s6, 720($sp)
	sd	$ra, 744($sp)
	sw	$zero, 612($sp)
	sw	$zero, 608($sp)
	sd	$s2, 688($sp)
	move	$s2, $a0
	sd	$s5, 712($sp)
	move	$s5, $a1
	sd	$s7, 728($sp)
	move	$s7, $a2
	sd	$s8, 736($sp)
	move	$s8, $zero
lbl_00128240:
	lb	$v1, 0($s5)
lbl_00128244:
	addiu	$s5, $s5, 1
	beqz	$v1, lbl_00128E54
	lw	$v0, 608($sp)
	li	$v0, 1
	bne	$v0, $v0, lbl_001282E0
	li	$v0, 37
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	beqzl	$v0, lbl_001282E0
	li	$v0, 37
	b	lbl_00128298
	lw	$v0, 4($s2)
	nop
lbl_00128280:
	addiu	$v0, $a0, 1
	sw	$v0, 0($s2)
	addiu	$t0, $t0, 1
	addiu	$v1, $v1, -1
	sw	$v1, 4($s2)
	lw	$v0, 4($s2)
lbl_00128298:
	bgtzl	$v0, lbl_001282B8
	lw	$a0, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	bnez	$v0, lbl_00128E50
	lq	$t0, 656($sp)
	lw	$a0, 0($s2)
lbl_001282B8:
	lbu	$v1, 0($a0)
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	bnezl	$v0, lbl_00128280
	lw	$v1, 4($s2)
	b	lbl_00128244
	lb	$v1, 0($s5)
	nop
lbl_001282E0:
	bne	$v1, $v0, lbl_0012831C
	addiu	$s1, $s5, -1
	move	$s4, $zero
	move	$s1, $zero
lbl_001282F0:
	lb	$s0, 0($s5)
	sltiu	$v0, $s0, 121
	beqz	$v0, lbl_001284F8
	addiu	$s5, $s5, 1
	sll	$v0, $s0, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 25248($v1)
	jr	$v1
	nop
	addiu	$s1, $s5, -1
lbl_0012831C:
	move	$s0, $zero
lbl_00128320:
	lw	$v0, 4($s2)
	bgtzl	$v0, lbl_00128344
	lw	$a0, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	bnez	$v0, lbl_00128E40
	lq	$t0, 656($sp)
	lw	$a0, 0($s2)
lbl_00128344:
	lb	$v1, 0($s1)
	lbu	$v0, 0($a0)
	bne	$v0, $v1, lbl_00128E54
	lw	$v0, 608($sp)
	lw	$v0, 4($s2)
	addiu	$v1, $a0, 1
	addiu	$s0, $s0, 1
	sw	$v1, 0($s2)
	addiu	$v0, $v0, -1
	addiu	$t0, $t0, 1
	sw	$v0, 4($s2)
	blez	$s0, lbl_00128320
	addiu	$s1, $s1, 1
	b	lbl_00128244
	lb	$v1, 0($s5)
	b	lbl_001282F0
	ori	$s1, $s1, 0x8
	b	lbl_001282F0
	ori	$s1, $s1, 0x1
	b	lbl_001282F0
	ori	$s1, $s1, 0x2
	b	lbl_001282F0
	ori	$s1, $s1, 0x4
	sll	$v0, $s4, 0x2
	addu	$v0, $v0, $s4
	sll	$v0, $v0, 0x1
	addu	$v0, $v0, $s0
	b	lbl_001282F0
	addiu	$s4, $v0, -48
	ori	$s1, $s1, 0x1
	lui	$v0, 0x12
	li	$s0, 3
	b	lbl_00128414
	addiu	$v0, $v0, 26432
	nop
	lui	$v0, 0x12
	li	$s0, 3
	addiu	$v0, $v0, 26432
	move	$s8, $zero
	b	lbl_00128520
	sw	$v0, 612($sp)
	ori	$s1, $s1, 0x1
	lui	$v0, 0x13
	li	$s0, 3
	addiu	$v0, $v0, -9080
	li	$s8, 8
	b	lbl_00128520
	sw	$v0, 612($sp)
	nop
	lui	$v0, 0x13
	li	$s0, 3
	addiu	$v0, $v0, -9080
lbl_00128414:
	li	$s8, 10
	b	lbl_00128520
	sw	$v0, 612($sp)
	lui	$v0, 0x13
	b	lbl_00128480
	ori	$s1, $s1, 0x100
	nop
	b	lbl_00128520
	li	$s0, 4
	b	lbl_00128520
	li	$s0, 2
	move	$a1, $s5
	move	$a0, $sp
	jal	sub_00128E88
	sq	$t0, 656($sp)
	move	$s5, $v0
	ori	$s1, $s1, 0x20
	li	$s0, 1
	b	lbl_00128520
	lq	$t0, 656($sp)
	nop
	ori	$s1, $s1, 0x20
	b	lbl_00128520
	move	$s0, $zero
	nop
	lui	$v0, 0x13
	ori	$s1, $s1, 0x110
lbl_00128480:
	addiu	$v0, $v0, -9080
	li	$s0, 3
	sw	$v0, 612($sp)
	b	lbl_00128520
	li	$s8, 16
	nop
	andi	$v0, $s1, 0x8
	bnezl	$v0, lbl_00128244
	lb	$v1, 0($s5)
	andi	$v0, $s1, 0x4
	beqzl	$v0, lbl_001284C8
	andi	$v0, $s1, 0x1
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$v1, 0($v0)
	b	lbl_00128240
	sh	$t0, 0($v1)
	nop
lbl_001284C8:
	beqz	$v0, lbl_001284E0
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$v0, 0($v0)
	b	lbl_00128240
	sd	$t0, 0($v0)
lbl_001284E0:
	addiu	$s7, $s7, 8
	lw	$v1, 0($v0)
	b	lbl_00128240
	sw	$t0, 0($v1)
	b	lbl_00128E54
	li	$v0, -1
lbl_001284F8:
	lui	$v0, 0x13
	addu	$v0, $v0, $s0
	lbu	$v0, 24401($v0)
	li	$s0, 3
	lui	$v1, 0x12
	li	$s8, 10
	addiu	$v1, $v1, 26432
	andi	$v0, $v0, 0x1
	sw	$v1, 612($sp)
	or	$s1, $s1, $v0
lbl_00128520:
	lw	$v0, 4($s2)
	bgtzl	$v0, lbl_00128544
	andi	$v0, $s1, 0x20
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	bnez	$v0, lbl_00128E40
	lq	$t0, 656($sp)
	andi	$v0, $s1, 0x20
lbl_00128544:
	bnez	$v0, lbl_001285B0
	sltiu	$v0, $s0, 5
	b	lbl_00128590
	lw	$a0, 0($s2)
	nop
lbl_00128558:
	addiu	$t0, $t0, 1
	addiu	$v0, $v0, -1
	blez	$v0, lbl_00128578
	sw	$v0, 4($s2)
	addiu	$v0, $a0, 1
	b	lbl_0012858C
	sw	$v0, 0($s2)
	nop
lbl_00128578:
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	bnez	$v0, lbl_00128E40
	lq	$t0, 656($sp)
lbl_0012858C:
	lw	$a0, 0($s2)
lbl_00128590:
	lbu	$v1, 0($a0)
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	bnezl	$v0, lbl_00128558
	lw	$v0, 4($s2)
	sltiu	$v0, $s0, 5
lbl_001285B0:
	beqzl	$v0, lbl_00128244
	lb	$v1, 0($s5)
	sll	$v0, $s0, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 25744($v1)
	jr	$v1
	nop
	li	$v0, 1
	andi	$v1, $s1, 0x8
	beqz	$v1, lbl_00128650
	movz	$s4, $v0, $s4
	move	$s1, $zero
	nop
lbl_001285E8:
	lw	$s0, 4($s2)
	sltu	$v0, $s0, $s4
	beqzl	$v0, lbl_00128630
	lw	$v1, 0($s2)
	lw	$v0, 0($s2)
	move	$a0, $s2
	sq	$t0, 656($sp)
	addu	$s1, $s1, $s0
	addu	$v0, $v0, $s0
	subu	$s4, $s4, $s0
	jal	sub_0012C778
	sw	$v0, 0($s2)
	beqz	$v0, lbl_001285E8
	lq	$t0, 656($sp)
	bnezl	$s1, lbl_00128240
	addu	$t0, $t0, $s1
	b	lbl_00128E44
	lw	$a0, 608($sp)
lbl_00128630:
	subu	$v0, $s0, $s4
	sw	$v0, 4($s2)
	addu	$s1, $s1, $s4
	addu	$v1, $v1, $s4
	sw	$v1, 0($s2)
	b	lbl_00128240
	addu	$t0, $t0, $s1
	nop
lbl_00128650:
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$a0, 0($v0)
	move	$a2, $s4
	li	$a1, 1
	move	$a3, $s2
	jal	sub_0012A9D0
	sq	$t0, 656($sp)
	beqz	$v0, lbl_00128E40
	lq	$t0, 656($sp)
	addu	$t0, $t0, $v0
	lw	$v0, 608($sp)
	addiu	$v0, $v0, 1
	b	lbl_00128240
	sw	$v0, 608($sp)
	nop
	li	$v0, -1
	andi	$v1, $s1, 0x8
	beqz	$v1, lbl_00128710
	movz	$s4, $v0, $s4
	move	$s0, $zero
	nop
lbl_001286A8:
	lw	$a1, 0($s2)
lbl_001286AC:
	lbu	$v0, 0($a1)
	addu	$v1, $sp, $v0
	lb	$a0, 0($v1)
	beqz	$a0, lbl_00128700
	addiu	$v0, $a1, 1
	lw	$v1, 4($s2)
	addiu	$s4, $s4, -1
	sw	$v0, 0($s2)
	addiu	$v1, $v1, -1
	addiu	$s0, $s0, 1
	beqz	$s4, lbl_00128700
	sw	$v1, 4($s2)
	bgtzl	$v1, lbl_001286AC
	lw	$a1, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	beqz	$v0, lbl_001286A8
	lq	$t0, 656($sp)
	beqz	$s0, lbl_00128E44
	lw	$a0, 608($sp)
lbl_00128700:
	bnezl	$s0, lbl_00128240
	addu	$t0, $t0, $s0
	b	lbl_00128E54
	lw	$v0, 608($sp)
lbl_00128710:
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$s3, 0($v0)
	move	$s0, $s3
lbl_00128720:
	lw	$a1, 0($s2)
lbl_00128724:
	lbu	$v0, 0($a1)
	addu	$v1, $sp, $v0
	lb	$a0, 0($v1)
	beqz	$a0, lbl_00128784
	addiu	$a0, $a1, 1
	lw	$v0, 4($s2)
	addiu	$s4, $s4, -1
	addiu	$v0, $v0, -1
	sw	$v0, 4($s2)
	lbu	$v1, 0($a1)
	sb	$v1, 0($s3)
	addiu	$s3, $s3, 1
	beqz	$s4, lbl_00128784
	sw	$a0, 0($s2)
	lw	$v0, 4($s2)
	bgtzl	$v0, lbl_00128724
	lw	$a1, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	beqz	$v0, lbl_00128720
	lq	$t0, 656($sp)
	beq	$s3, $s0, lbl_00128E44
	lw	$a0, 608($sp)
lbl_00128784:
	subu	$s0, $s3, $s0
	beqz	$s0, lbl_00128E54
	lw	$v0, 608($sp)
	sb	$zero, 0($s3)
	lw	$v1, 608($sp)
	addiu	$v1, $v1, 1
	b	lbl_0012881C
	sw	$v1, 608($sp)
	nop
	li	$v0, -1
	andi	$v1, $s1, 0x8
	beqz	$v1, lbl_00128828
	movz	$s4, $v0, $s4
	move	$s0, $zero
	nop
lbl_001287C0:
	lw	$a0, 0($s2)
lbl_001287C4:
	lbu	$v1, 0($a0)
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	bnezl	$v0, lbl_00128240
	addu	$t0, $t0, $s0
	lw	$v1, 4($s2)
	addiu	$v0, $a0, 1
	addiu	$s4, $s4, -1
	sw	$v0, 0($s2)
	addiu	$v1, $v1, -1
	addiu	$s0, $s0, 1
	beqz	$s4, lbl_0012881C
	sw	$v1, 4($s2)
	bgtzl	$v1, lbl_001287C4
	lw	$a0, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	beqz	$v0, lbl_001287C0
	lq	$t0, 656($sp)
lbl_0012881C:
	b	lbl_00128240
	addu	$t0, $t0, $s0
	nop
lbl_00128828:
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$s3, 0($v0)
	move	$s0, $s3
lbl_00128838:
	lw	$a1, 0($s2)
lbl_0012883C:
	lbu	$v1, 0($a1)
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	bnezl	$v0, lbl_001288A4
	sb	$zero, 0($s3)
	lw	$v0, 4($s2)
	addiu	$a0, $a1, 1
	addiu	$s4, $s4, -1
	addiu	$v0, $v0, -1
	sw	$v0, 4($s2)
	lbu	$v1, 0($a1)
	sb	$v1, 0($s3)
	addiu	$s3, $s3, 1
	beqz	$s4, lbl_001288A0
	sw	$a0, 0($s2)
	lw	$v0, 4($s2)
	bgtzl	$v0, lbl_0012883C
	lw	$a1, 0($s2)
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	beqz	$v0, lbl_00128838
	lq	$t0, 656($sp)
lbl_001288A0:
	sb	$zero, 0($s3)
lbl_001288A4:
	subu	$v0, $s3, $s0
	addu	$t0, $t0, $v0
	lw	$a0, 608($sp)
	addiu	$a0, $a0, 1
	b	lbl_00128240
	sw	$a0, 608($sp)
	nop
	addiu	$s4, $s4, -1
	li	$v1, 348
	sltiu	$v0, $s4, 349
	ori	$s1, $s1, 0x2c0
	movz	$s4, $v1, $v0
	addiu	$v0, $sp, 256
	addiu	$s4, $s4, 1
	beqz	$s4, lbl_00128A20
	move	$s3, $v0
	lw	$v0, 0($s2)
lbl_001288E8:
	lbu	$s0, 0($v0)
	addiu	$v1, $s0, -43
	sltiu	$v0, $v1, 78
	beqz	$v0, lbl_00128A24
	andi	$v0, $s1, 0x80
	sll	$v0, $v1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 25776($v1)
	jr	$v1
	nop
	nop
	bnez	$s8, lbl_0012892C
	andi	$v0, $s1, 0x200
	li	$s8, 8
	ori	$s1, $s1, 0x100
	andi	$v0, $s1, 0x200
lbl_0012892C:
	beqzl	$v0, lbl_001289D4
	li	$v0, -449
	b	lbl_001289D4
	li	$v0, -705
	nop
	sll	$v0, $s8, 0x1
	li	$v1, -449
	lui	$s8, 0x13
	addu	$s8, $s8, $v0
	lh	$s8, 25200($s8)
	b	lbl_001289D8
	and	$s1, $s1, $v1
	nop
	sll	$v0, $s8, 0x1
	lui	$s8, 0x13
	addu	$s8, $s8, $v0
	lh	$s8, 25200($s8)
	slti	$v1, $s8, 9
	bnezl	$v1, lbl_00128A24
	andi	$v0, $s1, 0x80
	b	lbl_001289D4
	li	$v0, -449
	nop
	slti	$v0, $s8, 11
	bnezl	$v0, lbl_00128A24
	andi	$v0, $s1, 0x80
	b	lbl_001289D4
	li	$v0, -449
	nop
	andi	$v0, $s1, 0x40
	beqz	$v0, lbl_00128A20
	li	$v0, -65
	b	lbl_001289D8
	and	$s1, $s1, $v0
	nop
	andi	$v0, $s1, 0x100
	beqz	$v0, lbl_00128A20
	addiu	$v0, $sp, 257
	bne	$s3, $v0, lbl_00128A24
	andi	$v0, $s1, 0x80
	li	$v0, -257
	li	$s8, 16
lbl_001289D4:
	and	$s1, $s1, $v0
lbl_001289D8:
	sb	$s0, 0($s3)
	addiu	$s3, $s3, 1
	lw	$v0, 4($s2)
	addiu	$v0, $v0, -1
	blez	$v0, lbl_00128A00
	sw	$v0, 4($s2)
	lw	$v0, 0($s2)
	addiu	$v0, $v0, 1
	b	lbl_00128A14
	sw	$v0, 0($s2)
lbl_00128A00:
	move	$a0, $s2
	jal	sub_0012C778
	sq	$t0, 656($sp)
	bnez	$v0, lbl_00128A20
	lq	$t0, 656($sp)
lbl_00128A14:
	addiu	$s4, $s4, -1
	bnezl	$s4, lbl_001288E8
	lw	$v0, 0($s2)
lbl_00128A20:
	andi	$v0, $s1, 0x80
lbl_00128A24:
	beqzl	$v0, lbl_00128A50
	lb	$s0, -1($s3)
	addiu	$v1, $sp, 256
	sltu	$v0, $v1, $s3
	beqzl	$v0, lbl_00128E54
	lw	$v0, 608($sp)
	lb	$a0, -1($s3)
	jal	sub_0012DDA0
	move	$a1, $s2
	b	lbl_00128E54
	lw	$v0, 608($sp)
lbl_00128A50:
	li	$v0, 120
	beq	$s0, $v0, lbl_00128A64
	li	$v0, 88
	bne	$s0, $v0, lbl_00128A80
	andi	$v0, $s1, 0x8
lbl_00128A64:
	move	$a0, $s0
	move	$a1, $s2
	jal	sub_0012DDA0
	sq	$t0, 656($sp)
	lq	$t0, 656($sp)
	addiu	$s3, $s3, -1
	andi	$v0, $s1, 0x8
lbl_00128A80:
	bnez	$v0, lbl_00128B38
	addiu	$v1, $sp, 256
	sb	$zero, 0($s3)
	addiu	$v0, $sp, 256
	sq	$t0, 656($sp)
	move	$a1, $zero
	lw	$v1, 612($sp)
	move	$a0, $v0
	jalr	$v1
	move	$a2, $s8
	move	$a1, $v0
	andi	$v0, $s1, 0x10
	beqz	$v0, lbl_00128AD8
	lq	$t0, 656($sp)
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$a0, 0($v0)
	dsll32	$v1, $a1, 0x0
	dsra32	$v1, $v1, 0x0
	b	lbl_00128B28
	sw	$v1, 0($a0)
	nop
lbl_00128AD8:
	andi	$v0, $s1, 0x4
	beqz	$v0, lbl_00128AF8
	move	$v1, $s7
	addiu	$s7, $s7, 8
	lw	$v1, 0($v1)
	andi	$v0, $a1, 0xffff
	b	lbl_00128B28
	sh	$v0, 0($v1)
lbl_00128AF8:
	andi	$v0, $s1, 0x1
	beqzl	$v0, lbl_00128B18
	addiu	$s7, $s7, 8
	move	$v0, $s7
	addiu	$s7, $s7, 8
	lw	$v0, 0($v0)
	b	lbl_00128B28
	sd	$a1, 0($v0)
lbl_00128B18:
	lw	$v1, 0($v1)
	dsll32	$v0, $a1, 0x0
	dsra32	$v0, $v0, 0x0
	sw	$v0, 0($v1)
lbl_00128B28:
	lw	$a0, 608($sp)
	addiu	$a0, $a0, 1
	sw	$a0, 608($sp)
	addiu	$v1, $sp, 256
lbl_00128B38:
	subu	$v0, $s3, $v1
	b	lbl_00128240
	addu	$t0, $t0, $v0
	nop
	addiu	$s4, $s4, -1
	li	$v1, 348
	sltiu	$v0, $s4, 349
	addiu	$a0, $sp, 256
	movz	$s4, $v1, $v0
	ori	$s1, $s1, 0x3c0
	addiu	$s4, $s4, 1
	move	$s6, $zero
	move	$a3, $zero
	beqz	$s4, lbl_00128C94
	move	$s3, $a0
	lw	$v0, 0($s2)
lbl_00128B78:
	lbu	$s0, 0($v0)
	addiu	$v1, $s0, -43
	sltiu	$v0, $v1, 59
	beqz	$v0, lbl_00128C94
	sll	$v0, $v1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 26096($v1)
	jr	$v1
	nop
	andi	$v0, $s1, 0x80
	beqz	$v0, lbl_00128BB8
	li	$v0, -65
	daddiu	$s6, $s6, 1
	b	lbl_00128C4C
	and	$s1, $s1, $v0
lbl_00128BB8:
	li	$v0, -193
	b	lbl_00128C40
	and	$s1, $s1, $v0
	nop
	andi	$v0, $s1, 0x40
	beqz	$v0, lbl_00128C94
	li	$v0, -65
	b	lbl_00128C40
	and	$s1, $s1, $v0
	nop
	andi	$v0, $s1, 0x100
	beqz	$v0, lbl_00128C94
	li	$v0, -321
	sd	$s6, 616($sp)
	b	lbl_00128C40
	and	$s1, $s1, $v0
	andi	$v1, $s1, 0x280
	li	$v0, 512
	beq	$v1, $v0, lbl_00128C18
	andi	$v0, $s1, 0x200
	beqz	$v0, lbl_00128C94
	nop
	beqz	$s6, lbl_00128CA4
	andi	$v0, $s1, 0x80
lbl_00128C18:
	andi	$v0, $s1, 0x100
	bnez	$v0, lbl_00128C34
	li	$v0, -769
	ld	$v0, 616($sp)
	sw	$s3, 624($sp)
	dsubu	$a3, $s6, $v0
	li	$v0, -769
lbl_00128C34:
	move	$s6, $zero
	and	$v0, $s1, $v0
	ori	$s1, $v0, 0xc0
lbl_00128C40:
	sb	$s0, 0($s3)
	addiu	$s3, $s3, 1
	addiu	$s4, $s4, -1
lbl_00128C4C:
	lw	$v0, 4($s2)
	addiu	$t0, $t0, 1
	addiu	$v0, $v0, -1
	blez	$v0, lbl_00128C70
	sw	$v0, 4($s2)
	lw	$v0, 0($s2)
	addiu	$v0, $v0, 1
	b	lbl_00128C8C
	sw	$v0, 0($s2)
lbl_00128C70:
	move	$a0, $s2
	sq	$a3, 640($sp)
	jal	sub_0012C778
	sq	$t0, 656($sp)
	lq	$a3, 640($sp)
	bnez	$v0, lbl_00128C94
	lq	$t0, 656($sp)
lbl_00128C8C:
	bnezl	$s4, lbl_00128B78
	lw	$v0, 0($s2)
lbl_00128C94:
	beqz	$s6, lbl_00128CA0
	li	$v0, -129
	and	$s1, $s1, $v0
lbl_00128CA0:
	andi	$v0, $s1, 0x80
lbl_00128CA4:
	beqz	$v0, lbl_00128D4C
	andi	$v0, $s1, 0x200
	beqzl	$v0, lbl_00128CF0
	addiu	$s3, $s3, -1
	addiu	$v1, $sp, 256
	sltu	$v0, $v1, $s3
	beqz	$v0, lbl_00128E54
	lw	$v0, 608($sp)
	addiu	$s3, $s3, -1
lbl_00128CC8:
	move	$a1, $s2
	jal	sub_0012DDA0
	lb	$a0, 0($s3)
	addiu	$a0, $sp, 256
	sltu	$v1, $a0, $s3
	bnez	$v1, lbl_00128CC8
	addiu	$s3, $s3, -1
	b	lbl_00128E54
	lw	$v0, 608($sp)
	nop
lbl_00128CF0:
	li	$v0, 101
	lb	$s0, 0($s3)
	beq	$s0, $v0, lbl_00128D30
	addiu	$t0, $t0, -1
	li	$v0, 69
	beq	$s0, $v0, lbl_00128D30
	move	$a0, $s0
	move	$a1, $s2
	sq	$a3, 640($sp)
	addiu	$s3, $s3, -1
	jal	sub_0012DDA0
	sq	$t0, 656($sp)
	lq	$t0, 656($sp)
	lb	$s0, 0($s3)
	lq	$a3, 640($sp)
	addiu	$t0, $t0, -1
lbl_00128D30:
	move	$a0, $s0
	move	$a1, $s2
	sq	$a3, 640($sp)
	jal	sub_0012DDA0
	sq	$t0, 656($sp)
	lq	$t0, 656($sp)
	lq	$a3, 640($sp)
lbl_00128D4C:
	andi	$v0, $s1, 0x8
	bnezl	$v0, lbl_00128244
	lb	$v1, 0($s5)
	andi	$v1, $s1, 0x300
	li	$v0, 512
	bne	$v1, $v0, lbl_00128D80
	sb	$zero, 0($s3)
	ld	$v0, 616($sp)
	sw	$s3, 624($sp)
	dsubu	$a3, $s6, $v0
	b	lbl_00128DA4
	dnegu	$a2, $a3
	nop
lbl_00128D80:
	beqz	$a3, lbl_00128DD4
	lw	$v1, 624($sp)
	sq	$a3, 640($sp)
	addiu	$a0, $v1, 1
	jal	sub_00129160
	sq	$t0, 656($sp)
	lq	$a3, 640($sp)
	lq	$t0, 656($sp)
	dsubu	$a2, $v0, $a3
lbl_00128DA4:
	beqz	$a3, lbl_00128DD4
	addiu	$v0, $sp, 585
	lw	$a0, 624($sp)
	addiu	$v1, $sp, 584
	lui	$a1, 0x13
	sltu	$v0, $a0, $v0
	addiu	$a1, $a1, 25240
	movz	$a0, $v1, $v0
	sq	$t0, 656($sp)
	jal	sub_001259B0
	sw	$a0, 624($sp)
	lq	$t0, 656($sp)
lbl_00128DD4:
	addiu	$v0, $sp, 256
	sq	$t0, 656($sp)
	jal	sub_00129148
	move	$a0, $v0
	move	$a0, $v0
	andi	$v0, $s1, 0x1
	bnez	$v0, lbl_00128E00
	lq	$t0, 656($sp)
	andi	$v0, $s1, 0x2
	beqzl	$v0, lbl_00128E18
	move	$v0, $s7
lbl_00128E00:
	move	$v1, $s7
	lw	$v0, 0($v1)
	sd	$a0, 0($v0)
	b	lbl_00128E30
	addiu	$s7, $s7, 8
	nop
lbl_00128E18:
	addiu	$s7, $s7, 8
	lw	$s0, 0($v0)
	jal	sub_00122A10
	sq	$t0, 656($sp)
	swc1	$f0, 0($s0)
	lq	$t0, 656($sp)
lbl_00128E30:
	lw	$v1, 608($sp)
	addiu	$v1, $v1, 1
	b	lbl_00128240
	sw	$v1, 608($sp)
lbl_00128E40:
	lw	$a0, 608($sp)
lbl_00128E44:
	li	$v0, -1
	b	lbl_00128E54
	movn	$v0, $a0, $a0
lbl_00128E50:
	lw	$v0, 608($sp)
lbl_00128E54:
	ld	$s0, 672($sp)
	ld	$s1, 680($sp)
	ld	$s2, 688($sp)
	ld	$s3, 696($sp)
	ld	$s4, 704($sp)
	ld	$s5, 712($sp)
	ld	$s6, 720($sp)
	ld	$s7, 728($sp)
	ld	$s8, 736($sp)
	ld	$ra, 744($sp)
	jr	$ra
	addiu	$sp, $sp, 752
	nop

sub_00128E88:
	lb	$a2, 0($a1)
	li	$v0, 94
	bne	$a2, $v0, lbl_00128EA8
	addiu	$a1, $a1, 1
	lb	$a2, 0($a1)
	addiu	$a1, $a1, 1
	b	lbl_00128EAC
	li	$t0, 1
lbl_00128EA8:
	move	$t0, $zero
lbl_00128EAC:
	li	$a3, 255
	addiu	$v0, $a0, 255
	nop
lbl_00128EB8:
	addiu	$a3, $a3, -1
	sb	$t0, 0($v0)
	nop
	nop
	nop
	bgez	$a3, lbl_00128EB8
	addiu	$v0, $v0, -1
	beqz	$a2, lbl_00128F80
	addiu	$v0, $a1, -1
	li	$v0, 1
	li	$t2, 45
	subu	$t0, $v0, $t0
	li	$t1, 93
	nop
lbl_00128EF0:
	addu	$v0, $a0, $a2
lbl_00128EF4:
	sb	$t0, 0($v0)
	lb	$a3, 0($a1)
lbl_00128EFC:
	beq	$a3, $t2, lbl_00128F30
	addiu	$a1, $a1, 1
	slti	$v0, $a3, 46
	beqz	$v0, lbl_00128F20
	nop
	beqz	$a3, lbl_00128F80
	addiu	$v0, $a1, -1
	b	lbl_00128EF0
	move	$a2, $a3
lbl_00128F20:
	beq	$a3, $t1, lbl_00128F80
	move	$v0, $a1
	b	lbl_00128F78
	move	$a2, $a3
lbl_00128F30:
	lb	$a3, 0($a1)
	beql	$a3, $t1, lbl_00128EF0
	li	$a2, 45
	slt	$v0, $a3, $a2
	beqzl	$v0, lbl_00128F50
	addiu	$a1, $a1, 1
	b	lbl_00128EF0
	li	$a2, 45
lbl_00128F50:
	addiu	$a2, $a2, 1
	addu	$v0, $a0, $a2
	slt	$v1, $a2, $a3
	nop
	nop
	bnez	$v1, lbl_00128F50
	sb	$t0, 0($v0)
	b	lbl_00128EFC
	lb	$a3, 0($a1)
	nop
lbl_00128F78:
	b	lbl_00128EF4
	addu	$v0, $a0, $a2
lbl_00128F80:
	jr	$ra
	nop

sub_00128F88:
	lui	$v0, 0x13
	addiu	$sp, $sp, -112
	lw	$t0, 11128($v0)
	li	$v0, 520
	lui	$v1, 0x7fff
	move	$a3, $a0
	ori	$v1, $v1, 0xffff
	move	$a0, $sp
	sd	$ra, 96($sp)
	sw	$v1, 20($sp)
	sw	$v1, 8($sp)
	sh	$v0, 12($sp)
	sw	$a3, 16($sp)
	sw	$t0, 84($sp)
	jal	sub_00126870
	sw	$a3, 0($sp)
	lw	$v1, 0($sp)
	ld	$ra, 96($sp)
	sb	$zero, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 112
	nop
	addiu	$sp, $sp, -112
	lui	$v1, 0x7fff
	move	$t0, $a1
	move	$a1, $a2
	ori	$v1, $v1, 0xffff
	sw	$a0, 84($sp)
	move	$a2, $a3
	li	$v0, 520
	move	$a0, $sp
	sd	$ra, 96($sp)
	sw	$v1, 20($sp)
	sw	$v1, 8($sp)
	sh	$v0, 12($sp)
	sw	$t0, 16($sp)
	jal	sub_00126870
	sw	$t0, 0($sp)
	lw	$v1, 0($sp)
	ld	$ra, 96($sp)
	sb	$zero, 0($v1)
	jr	$ra
	addiu	$sp, $sp, 112
	nop

sub_00129038:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	lw	$v1, 84($s0)
	bnezl	$v1, lbl_00129068
	lw	$v0, 56($v1)
	lui	$v0, 0x13
	lw	$v1, 11128($v0)
	sw	$v1, 84($s0)
	lw	$v0, 56($v1)
	nop
lbl_00129068:
	bnezl	$v0, lbl_0012907C
	lhu	$a0, 12($s0)
	jal	sub_0012A940
	move	$a0, $v1
	lhu	$a0, 12($s0)
lbl_0012907C:
	andi	$v0, $a0, 0x8
	bnezl	$v0, lbl_001290E8
	lw	$a1, 16($s0)
	andi	$v1, $a0, 0x10
	beqz	$v1, lbl_00129134
	li	$v0, -1
	andi	$v0, $a0, 0x4
	beqzl	$v0, lbl_001290E0
	lw	$a1, 16($s0)
	lw	$a1, 48($s0)
	beqz	$a1, lbl_001290C4
	addiu	$v0, $s0, 64
	beql	$a1, $v0, lbl_001290C4
	sw	$zero, 48($s0)
	jal	sub_0012AAF0
	lw	$a0, 84($s0)
	lhu	$a0, 12($s0)
	sw	$zero, 48($s0)
lbl_001290C4:
	li	$v0, -37
	lw	$a1, 16($s0)
	and	$v0, $a0, $v0
	sw	$zero, 4($s0)
	sh	$v0, 12($s0)
	move	$a0, $v0
	sw	$a1, 0($s0)
lbl_001290E0:
	ori	$v0, $a0, 0x8
	sh	$v0, 12($s0)
lbl_001290E8:
	bnezl	$a1, lbl_001290FC
	lhu	$v1, 12($s0)
	jal	sub_0012B4B8
	move	$a0, $s0
	lhu	$v1, 12($s0)
lbl_001290FC:
	andi	$v0, $v1, 0x1
	beqz	$v0, lbl_00129120
	andi	$v0, $v1, 0x2
	lw	$v0, 20($s0)
	sw	$zero, 8($s0)
	negu	$v0, $v0
	b	lbl_00129130
	sw	$v0, 24($s0)
	nop
lbl_00129120:
	bnez	$v0, lbl_0012912C
	move	$v1, $zero
	lw	$v1, 20($s0)
lbl_0012912C:
	sw	$v1, 8($s0)
lbl_00129130:
	move	$v0, $zero
lbl_00129134:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_00129148:
	addiu	$sp, $sp, -16
	move	$a1, $zero
	sd	$ra, 0($sp)
	ld	$ra, 0($sp)
	j	sub_0012DA08
	addiu	$sp, $sp, 16

sub_00129160:
	addiu	$sp, $sp, -16
	move	$a1, $zero
	sd	$ra, 0($sp)
	li	$a2, 10
	ld	$ra, 0($sp)
	j	sub_00126740
	addiu	$sp, $sp, 16
	nop

sub_00129180:
	addiu	$sp, $sp, -64
	move	$t6, $a1
	sd	$s4, 32($sp)
	move	$s4, $a0
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$s5, 40($sp)
	sd	$s6, 48($sp)
	sd	$ra, 56($sp)
	lw	$s0, 16($t6)
	lw	$v1, 16($s4)
	slt	$v1, $v1, $s0
	bnez	$v1, lbl_00129384
	move	$v0, $zero
	addiu	$s0, $s0, -1
	addiu	$t3, $t6, 20
	sll	$v0, $s0, 0x2
	addiu	$s1, $s4, 20
	addu	$s3, $t3, $v0
	addu	$t1, $s1, $v0
	lw	$v1, 0($s3)
	move	$s6, $t3
	lw	$t5, 0($t1)
	move	$t2, $s1
	addiu	$v1, $v1, 1
	divu	$zero, $t5, $v1
	beqzl	$v1, lbl_001291F8
	break	0x7
lbl_001291F8:
	mflo	$s5
	move	$s2, $s5
	beqz	$s2, lbl_001292B0
	move	$t4, $zero
	move	$v1, $zero
	nop
lbl_00129210:
	lw	$a0, 0($t3)
	addiu	$t3, $t3, 4
	lw	$a2, 0($t2)
	sltu	$a3, $s3, $t3
	andi	$v0, $a0, 0xffff
	srl	$a0, $a0, 0x10
	mult	$a1, $v0, $s2
	mult	$a0, $a0, $s2
	addu	$v0, $a1, $v1
	andi	$v1, $a2, 0xffff
	andi	$a1, $v0, 0xffff
	srl	$v0, $v0, 0x10
	addu	$t0, $a0, $v0
	subu	$v1, $v1, $a1
	addu	$v1, $v1, $t4
	srl	$a2, $a2, 0x10
	andi	$v0, $t0, 0xffff
	sra	$t4, $v1, 0x10
	subu	$a2, $a2, $v0
	sh	$v1, 0($t2)
	addu	$a1, $a2, $t4
	srl	$v1, $t0, 0x10
	sh	$a1, 2($t2)
	addiu	$t2, $t2, 4
	beqz	$a3, lbl_00129210
	sra	$t4, $a1, 0x10
	bnezl	$t5, lbl_001292B4
	move	$a1, $t6
	b	lbl_0012928C
	addiu	$t1, $t1, -4
lbl_00129288:
	addiu	$s0, $s0, -1
lbl_0012928C:
	sltu	$v0, $s1, $t1
	beqzl	$v0, lbl_001292B0
	sw	$s0, 16($s4)
	lw	$v0, 0($t1)
	nop
	nop
	beqzl	$v0, lbl_00129288
	addiu	$t1, $t1, -4
	sw	$s0, 16($s4)
lbl_001292B0:
	move	$a1, $t6
lbl_001292B4:
	jal	sub_0012C018
	move	$a0, $s4
	bltz	$v0, lbl_00129380
	move	$t3, $s6
	addiu	$s2, $s5, 1
	move	$t4, $zero
	move	$v1, $zero
	move	$t2, $s1
	nop
lbl_001292D8:
	lw	$a0, 0($t3)
	addiu	$t3, $t3, 4
	lw	$a1, 0($t2)
	sltu	$a3, $s3, $t3
	andi	$v0, $a0, 0xffff
	srl	$a2, $a0, 0x10
	addu	$v0, $v0, $v1
	andi	$v1, $a1, 0xffff
	andi	$a0, $v0, 0xffff
	srl	$v0, $v0, 0x10
	addu	$t0, $a2, $v0
	subu	$v1, $v1, $a0
	addu	$v1, $v1, $t4
	srl	$a1, $a1, 0x10
	andi	$v0, $t0, 0xffff
	sra	$t4, $v1, 0x10
	subu	$a1, $a1, $v0
	sh	$v1, 0($t2)
	addu	$a1, $a1, $t4
	srl	$v1, $t0, 0x10
	sh	$a1, 2($t2)
	addiu	$t2, $t2, 4
	beqz	$a3, lbl_001292D8
	sra	$t4, $a1, 0x10
	sll	$v0, $s0, 0x2
	addu	$t1, $s1, $v0
	lw	$v1, 0($t1)
	bnez	$v1, lbl_00129384
	move	$v0, $s2
	b	lbl_0012935C
	addiu	$t1, $t1, -4
	nop
lbl_00129358:
	addiu	$s0, $s0, -1
lbl_0012935C:
	sltu	$v0, $s1, $t1
	beqzl	$v0, lbl_00129380
	sw	$s0, 16($s4)
	lw	$v0, 0($t1)
	nop
	nop
	beqzl	$v0, lbl_00129358
	addiu	$t1, $t1, -4
	sw	$s0, 16($s4)
lbl_00129380:
	move	$v0, $s2
lbl_00129384:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_001293B0:
	addiu	$sp, $sp, -176
	sd	$s0, 96($sp)
	move	$s0, $t1
	sd	$s4, 128($sp)
	move	$s4, $a1
	sd	$s7, 152($sp)
	move	$s7, $a0
	sd	$s1, 104($sp)
	sd	$s2, 112($sp)
	sd	$s3, 120($sp)
	sd	$s5, 136($sp)
	sd	$s6, 144($sp)
	sd	$s8, 160($sp)
	sd	$ra, 168($sp)
	sw	$a2, 8($sp)
	lw	$t3, 64($s7)
	sw	$a3, 12($sp)
	sw	$t0, 16($sp)
	beqz	$t3, lbl_00129424
	sw	$t2, 20($sp)
	lw	$a2, 68($s7)
	li	$v1, 1
	move	$a1, $t3
	sw	$a2, 4($t3)
	lw	$v0, 68($s7)
	sllv	$v1, $v1, $v0
	jal	sub_0012B7D0
	sw	$v1, 8($t3)
	sw	$zero, 64($s7)
lbl_00129424:
	dsrl32	$v0, $s4, 0x0
	dsll32	$a0, $v0, 0x0
	dsra32	$a0, $a0, 0x0
	bgezl	$a0, lbl_00129464
	sw	$zero, 0($s0)
	lui	$v0, 0x7fff
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	ori	$v0, $v0, 0xffff
	and	$s4, $s4, $v1
	and	$v0, $a0, $v0
	li	$v1, 1
	dsll32	$v0, $v0, 0x0
	sw	$v1, 0($s0)
	or	$s4, $s4, $v0
	dsrl32	$v0, $s4, 0x0
lbl_00129464:
	dsll32	$s0, $v0, 0x0
	dsra32	$s0, $s0, 0x0
	lui	$v1, 0x7ff0
	and	$v0, $s0, $v1
	bne	$v0, $v1, lbl_001294D0
	lw	$a0, 16($sp)
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	li	$v1, 9999
	and	$v0, $s4, $v0
	bnez	$v0, lbl_001294A0
	sw	$v1, 0($a0)
	lui	$v0, 0x13
	b	lbl_001294A8
	addiu	$s5, $v0, 26336
lbl_001294A0:
	lui	$v0, 0x13
	addiu	$s5, $v0, 26352
lbl_001294A8:
	lw	$v0, 20($sp)
	beqz	$v0, lbl_00129510
	addiu	$v1, $s5, 8
	lb	$v0, 3($s5)
	addiu	$a0, $s5, 3
	movz	$v1, $a0, $v0
	lw	$a0, 20($sp)
	b	lbl_00129510
	sw	$v1, 0($a0)
	nop
lbl_001294D0:
	move	$a0, $s4
	move	$a1, $zero
	jal	sub_001228D8
	nop
	bnez	$v0, lbl_00129518
	move	$a0, $s7
	lw	$a0, 16($sp)
	li	$v0, 1
	lui	$v1, 0x13
	sw	$v0, 0($a0)
	lw	$v0, 20($sp)
	beqz	$v0, lbl_00129510
	addiu	$s5, $v1, 26360
	lw	$v1, 20($sp)
	addiu	$v0, $s5, 1
	sw	$v0, 0($v1)
lbl_00129510:
	b	lbl_0012A5E4
	move	$v0, $s5
lbl_00129518:
	move	$a1, $s4
	move	$a2, $sp
	jal	sub_0012C478
	addiu	$a3, $sp, 4
	sw	$v0, 68($sp)
	srl	$v0, $s0, 0x14
	andi	$s3, $v0, 0x7ff
	beqz	$s3, lbl_00129588
	lui	$v0, 0xf
	move	$s6, $s4
	dsra32	$v1, $s6, 0x0
	ori	$v0, $v0, 0xffff
	and	$v1, $v1, $v0
	lui	$a1, 0xffff
	dsrl32	$a1, $a1, 0x0
	dsll32	$v1, $v1, 0x0
	and	$s6, $s6, $a1
	or	$s6, $s6, $v1
	lui	$a0, 0x3ff0
	dsra32	$v0, $s6, 0x0
	and	$s6, $s6, $a1
	or	$v0, $v0, $a0
	addiu	$s3, $s3, -1023
	dsll32	$v0, $v0, 0x0
	sw	$zero, 64($sp)
	or	$s6, $s6, $v0
	b	lbl_00129628
	lw	$s2, 4($sp)
lbl_00129588:
	lw	$v0, 0($sp)
	lw	$s2, 4($sp)
	addu	$a0, $s2, $v0
	addiu	$s3, $a0, 1074
	slti	$v0, $s3, 33
	bnez	$v0, lbl_001295C8
	negu	$v0, $s3
	addiu	$a0, $a0, 1042
	negu	$v1, $s3
	dsll32	$v0, $s4, 0x0
	dsra32	$v0, $v0, 0x0
	sllv	$v1, $s0, $v1
	srlv	$v0, $v0, $a0
	b	lbl_001295D4
	or	$s0, $v1, $v0
	nop
lbl_001295C8:
	dsll32	$v1, $s4, 0x0
	dsra32	$v1, $v1, 0x0
	sllv	$s0, $v1, $v0
lbl_001295D4:
	jal	sub_00122928
	move	$a0, $s0
	bgez	$s0, lbl_001295F8
	nop
	li	$a1, 0x83e0
	dsll32	$a1, $a1, 0xf
	move	$a0, $v0
	jal	sub_00122450
	nop
lbl_001295F8:
	move	$s6, $v0
	lui	$v0, 0xfe10
	dsra32	$v1, $s6, 0x0
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	and	$s6, $s6, $a0
	li	$a0, 1
	addu	$v1, $v1, $v0
	sw	$a0, 64($sp)
	dsll32	$v1, $v1, 0x0
	addiu	$s3, $s3, -1075
	or	$s6, $s6, $v1
lbl_00129628:
	li	$a1, 0xffe0
	dsll32	$a1, $a1, 0xe
	move	$a0, $s6
	jal	sub_001224A8
	nop
	lui	$at, 0x13
	ld	$a1, 26368($at)
	move	$a0, $v0
	jal	sub_00122510
	nop
	lui	$at, 0x13
	ld	$a1, 26376($at)
	move	$a0, $v0
	jal	sub_00122450
	nop
	move	$s0, $v0
	jal	sub_00122928
	move	$a0, $s3
	lui	$at, 0x13
	ld	$a1, 26384($at)
	move	$a0, $v0
	jal	sub_00122510
	nop
	move	$a0, $s0
	move	$a1, $v0
	jal	sub_00122450
	nop
	move	$s1, $v0
	move	$a0, $s1
	jal	sub_0012EA50
	nop
	move	$a0, $s1
	move	$a1, $zero
	jal	sub_001228D8
	move	$s8, $v0
	bgez	$v0, lbl_001296E0
	li	$v1, 1
	jal	sub_00122928
	move	$a0, $s8
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_001228D8
	nop
	addiu	$v1, $s8, -1
	movn	$s8, $v1, $v0
	li	$v1, 1
lbl_001296E0:
	sltiu	$v0, $s8, 23
	beqz	$v0, lbl_00129714
	sw	$v1, 48($sp)
	sll	$v0, $s8, 0x3
	move	$a0, $s4
	lui	$a1, 0x13
	addu	$a1, $a1, $v0
	ld	$a1, 26512($a1)
	jal	sub_001228D8
	sw	$zero, 48($sp)
	addiu	$v1, $s8, -1
	slti	$v0, $v0, 0
	movn	$s8, $v1, $v0
lbl_00129714:
	subu	$v0, $s2, $s3
	addiu	$s0, $v0, -1
	bltzl	$s0, lbl_00129730
	negu	$s0, $s0
	sw	$s0, 56($sp)
	b	lbl_00129738
	sw	$zero, 24($sp)
lbl_00129730:
	sw	$zero, 56($sp)
	sw	$s0, 24($sp)
lbl_00129738:
	bltz	$s8, lbl_00129758
	lw	$a0, 56($sp)
	sw	$zero, 28($sp)
	addu	$a0, $a0, $s8
	sw	$s8, 60($sp)
	b	lbl_00129770
	sw	$a0, 56($sp)
	nop
lbl_00129758:
	lw	$v0, 24($sp)
	negu	$v1, $s8
	sw	$v1, 28($sp)
	subu	$v0, $v0, $s8
	sw	$zero, 60($sp)
	sw	$v0, 24($sp)
lbl_00129770:
	lw	$a0, 8($sp)
	li	$s1, 1
	sltiu	$v1, $a0, 10
	movz	$a0, $zero, $v1
	slti	$v0, $a0, 6
	bnez	$v0, lbl_00129798
	sw	$a0, 8($sp)
	addiu	$a0, $a0, -4
	move	$s1, $zero
	sw	$a0, 8($sp)
lbl_00129798:
	lw	$v1, 8($sp)
	li	$a0, 1
	sw	$a0, 52($sp)
	sltiu	$v0, $v1, 6
	li	$v1, -1
	sw	$v1, 40($sp)
	beqz	$v0, lbl_00129834
	sw	$v1, 32($sp)
	lw	$a0, 8($sp)
	sll	$v0, $a0, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 26400($v1)
	jr	$v1
	nop
	nop
	li	$s3, 18
	b	lbl_00129834
	sw	$zero, 12($sp)
	nop
	sw	$zero, 52($sp)
	lw	$v1, 12($sp)
	li	$s3, 1
	slt	$v0, $zero, $v1
	movn	$s3, $v1, $v0
	sw	$s3, 12($sp)
	sw	$s3, 40($sp)
	b	lbl_00129834
	sw	$s3, 32($sp)
	nop
	sw	$zero, 52($sp)
	lw	$a0, 12($sp)
	addu	$v0, $a0, $s8
	li	$a0, 1
	addiu	$s3, $v0, 1
	sw	$v0, 40($sp)
	slt	$v1, $zero, $s3
	sw	$s3, 32($sp)
	movz	$s3, $a0, $v1
lbl_00129834:
	sltiu	$v0, $s3, 24
	sw	$zero, 68($s7)
	bnez	$v0, lbl_00129868
	li	$s0, 4
	move	$v1, $zero
lbl_00129848:
	sll	$s0, $s0, 0x1
	addiu	$v0, $s0, 20
	sltu	$v0, $s3, $v0
	nop
	nop
	beqz	$v0, lbl_00129848
	addiu	$v1, $v1, 1
	sw	$v1, 68($s7)
lbl_00129868:
	lw	$a1, 68($s7)
	jal	sub_0012B728
	move	$a0, $s7
	sw	$v0, 84($sp)
	lw	$v1, 32($sp)
	lw	$a0, 84($sp)
	sltiu	$v0, $v1, 15
	sw	$a0, 64($s7)
	beqz	$v0, lbl_00129CD8
	lw	$s5, 84($sp)
	beqzl	$s1, lbl_00129CDC
	lw	$v1, 0($sp)
	move	$s6, $s4
	sw	$s8, 44($sp)
	sw	$v1, 36($sp)
	blez	$s8, lbl_00129940
	li	$s3, 2
	andi	$v0, $s8, 0xf
	sra	$s0, $s8, 0x4
	sll	$v0, $v0, 0x3
	andi	$v1, $s0, 0x10
	lui	$s1, 0x13
	addu	$s1, $s1, $v0
	ld	$s1, 26512($s1)
	beqz	$v1, lbl_001298E8
	lui	$v0, 0x13
	move	$a0, $s4
	ld	$a1, 26744($v0)
	andi	$s0, $s0, 0xf
	jal	sub_00122798
	li	$s3, 3
	move	$s4, $v0
lbl_001298E8:
	beqz	$s0, lbl_00129924
	lui	$v0, 0x13
	addiu	$s2, $v0, 26712
	nop
lbl_001298F8:
	andi	$v0, $s0, 0x1
	beqzl	$v0, lbl_0012991C
	sra	$s0, $s0, 0x1
	ld	$a1, 0($s2)
	move	$a0, $s1
	jal	sub_00122510
	addiu	$s3, $s3, 1
	move	$s1, $v0
	sra	$s0, $s0, 0x1
lbl_0012991C:
	bnez	$s0, lbl_001298F8
	addiu	$s2, $s2, 8
lbl_00129924:
	move	$a0, $s4
	move	$a1, $s1
	jal	sub_00122798
	nop
	b	lbl_001299A4
	move	$s4, $v0
	nop
lbl_00129940:
	negu	$s1, $s8
	beqz	$s1, lbl_001299A4
	andi	$v0, $s1, 0xf
	move	$a1, $s4
	sll	$v0, $v0, 0x3
	lui	$a0, 0x13
	addu	$a0, $a0, $v0
	ld	$a0, 26512($a0)
	jal	sub_00122510
	sra	$s0, $s1, 0x4
	beqz	$s0, lbl_001299A4
	move	$s4, $v0
	lui	$v0, 0x13
	addiu	$s1, $v0, 26712
lbl_00129978:
	andi	$v0, $s0, 0x1
	beqzl	$v0, lbl_0012999C
	sra	$s0, $s0, 0x1
	ld	$a0, 0($s1)
	move	$a1, $s4
	jal	sub_00122510
	addiu	$s3, $s3, 1
	move	$s4, $v0
	sra	$s0, $s0, 0x1
lbl_0012999C:
	bnez	$s0, lbl_00129978
	addiu	$s1, $s1, 8
lbl_001299A4:
	lw	$v0, 48($sp)
	beqz	$v0, lbl_00129A00
	nop
	li	$a1, 0xffc0
	dsll32	$a1, $a1, 0xe
	move	$a0, $s4
	jal	sub_001228D8
	nop
	bgez	$v0, lbl_00129A00
	lw	$v1, 32($sp)
	blez	$v1, lbl_00129A00
	lw	$a0, 40($sp)
	blez	$a0, lbl_00129CC8
	lw	$v0, 36($sp)
	lw	$v0, 40($sp)
	move	$a1, $s4
	li	$a0, 0x8048
	dsll32	$a0, $a0, 0xf
	addiu	$s8, $s8, -1
	sw	$v0, 32($sp)
	jal	sub_00122510
	addiu	$s3, $s3, 1
	move	$s4, $v0
lbl_00129A00:
	jal	sub_00122928
	move	$a0, $s3
	move	$a1, $s4
	move	$a0, $v0
	jal	sub_00122510
	nop
	li	$a1, 0x8038
	dsll32	$a1, $a1, 0xf
	move	$a0, $v0
	jal	sub_00122450
	nop
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	move	$s2, $v0
	lui	$v0, 0xfcc0
	dsra32	$v1, $s2, 0x0
	and	$s2, $s2, $a0
	addu	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	or	$s2, $s2, $v1
	lw	$v1, 32($sp)
	bnez	$v1, lbl_00129AC0
	lw	$a0, 52($sp)
	li	$a1, 0x8028
	dsll32	$a1, $a1, 0xf
	move	$a0, $s4
	sw	$zero, 76($sp)
	jal	sub_001224A8
	sw	$zero, 80($sp)
	move	$s0, $v0
	move	$a1, $s2
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bgtz	$v0, lbl_0012A218
	lw	$v1, 84($sp)
	move	$a1, $s2
	move	$a0, $zero
	jal	sub_001224A8
	nop
	move	$a0, $s0
	move	$a1, $v0
	jal	sub_001228D8
	nop
	bltz	$v0, lbl_0012A208
	lw	$v0, 36($sp)
	b	lbl_00129CC8
	nop
lbl_00129AC0:
	beqz	$a0, lbl_00129BC0
	lw	$v1, 32($sp)
	li	$a0, 0xff80
	dsll32	$a0, $a0, 0xe
	sll	$v0, $v1, 0x3
	lui	$a1, 0x13
	addu	$a1, $a1, $v0
	ld	$a1, 26504($a1)
	jal	sub_00122798
	move	$s3, $zero
	move	$a1, $s2
	move	$a0, $v0
	jal	sub_001224A8
	nop
	b	lbl_00129B2C
	move	$s2, $v0
lbl_00129B00:
	li	$a0, 0x8048
	dsll32	$a0, $a0, 0xf
	move	$a1, $s2
	jal	sub_00122510
	nop
	li	$a0, 0x8048
	dsll32	$a0, $a0, 0xf
	move	$a1, $s1
	jal	sub_00122510
	move	$s2, $v0
	move	$s4, $v0
lbl_00129B2C:
	move	$a0, $s4
	jal	sub_0012EA50
	nop
	move	$s0, $v0
	jal	sub_00122928
	move	$a0, $s0
	move	$a0, $s4
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$a1, $s2
	move	$s1, $v0
	addiu	$v0, $s0, 48
	sb	$v0, 0($s5)
	move	$a0, $s1
	jal	sub_001228D8
	addiu	$s5, $s5, 1
	bltz	$v0, lbl_0012A5BC
	lw	$a1, 68($sp)
	li	$a0, 0xffc0
	dsll32	$a0, $a0, 0xe
	move	$a1, $s1
	jal	sub_001224A8
	nop
	move	$a1, $s2
	move	$a0, $v0
	jal	sub_001228D8
	nop
	bltz	$v0, lbl_00129E04
	li	$v1, 57
	lw	$a0, 32($sp)
	addiu	$s3, $s3, 1
	slt	$v0, $s3, $a0
	bnez	$v0, lbl_00129B00
	lw	$v0, 36($sp)
	b	lbl_00129CC8
	nop
lbl_00129BC0:
	move	$a1, $s2
	sll	$v0, $v1, 0x3
	lui	$a0, 0x13
	addu	$a0, $a0, $v0
	ld	$a0, 26504($a0)
	jal	sub_00122510
	li	$s3, 1
	move	$s2, $v0
lbl_00129BE0:
	move	$a0, $s4
	jal	sub_0012EA50
	nop
	move	$s0, $v0
	jal	sub_00122928
	move	$a0, $s0
	move	$a0, $s4
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$s1, $v0
	addiu	$v0, $s0, 48
	sb	$v0, 0($s5)
	lw	$a0, 32($sp)
	bne	$s3, $a0, lbl_00129CA8
	addiu	$s5, $s5, 1
	li	$a0, 0xff80
	dsll32	$a0, $a0, 0xe
	move	$a1, $s2
	jal	sub_00122450
	nop
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_001228D8
	nop
	bgtz	$v0, lbl_00129E04
	li	$v1, 57
	li	$a0, 0xff80
	dsll32	$a0, $a0, 0xe
	move	$a1, $s2
	jal	sub_001224A8
	nop
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_001228D8
	nop
	bgez	$v0, lbl_00129CC8
	lw	$v0, 36($sp)
	li	$v1, 48
	addiu	$s5, $s5, -1
lbl_00129C80:
	lb	$v0, 0($s5)
	nop
	nop
	nop
	nop
	beql	$v0, $v1, lbl_00129C80
	addiu	$s5, $s5, -1
	b	lbl_0012A5B8
	addiu	$s5, $s5, 1
	nop
lbl_00129CA8:
	li	$a0, 0x8048
	dsll32	$a0, $a0, 0xf
	move	$a1, $s1
	jal	sub_00122510
	addiu	$s3, $s3, 1
	b	lbl_00129BE0
	move	$s4, $v0
	nop
lbl_00129CC8:
	move	$s4, $s6
	lw	$s8, 44($sp)
	sw	$v0, 32($sp)
	lw	$s5, 84($sp)
lbl_00129CD8:
	lw	$v1, 0($sp)
lbl_00129CDC:
	bltz	$v1, lbl_00129E88
	slti	$v0, $s8, 15
	beqz	$v0, lbl_00129E8C
	lw	$v0, 8($sp)
	lw	$v1, 12($sp)
	sll	$v0, $s8, 0x3
	lui	$s1, 0x13
	addu	$s1, $s1, $v0
	ld	$s1, 26512($s1)
	bgez	$v1, lbl_00129D58
	li	$s3, 1
	lw	$a0, 32($sp)
	bgtz	$a0, lbl_00129D58
	nop
	sw	$zero, 76($sp)
	bltz	$a0, lbl_0012A208
	sw	$zero, 80($sp)
	li	$a1, 0x8028
	dsll32	$a1, $a1, 0xf
	move	$a0, $s1
	jal	sub_00122510
	nop
	move	$a0, $s4
	move	$a1, $v0
	jal	sub_001228D8
	nop
	blez	$v0, lbl_0012A20C
	lw	$v0, 12($sp)
	b	lbl_0012A218
	lw	$v1, 84($sp)
	nop
lbl_00129D58:
	move	$a1, $s1
	move	$a0, $s4
	jal	sub_00122798
	nop
	move	$a0, $v0
	jal	sub_0012EA50
	nop
	move	$s0, $v0
	jal	sub_00122928
	move	$a0, $s0
	move	$a1, $s1
	move	$a0, $v0
	jal	sub_00122510
	nop
	move	$a0, $s4
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$a1, $v0
	addiu	$v0, $s0, 48
	sb	$v0, 0($s5)
	lw	$v0, 32($sp)
	bne	$s3, $v0, lbl_00129E50
	addiu	$s5, $s5, 1
	move	$a0, $a1
	jal	sub_00122450
	nop
	move	$a1, $s1
	move	$s2, $v0
	move	$a0, $s2
	jal	sub_001228D8
	nop
	bgtz	$v0, lbl_00129E04
	li	$v1, 57
	move	$a0, $s2
	move	$a1, $s1
	jal	sub_001228D8
	nop
	bnez	$v0, lbl_0012A5BC
	lw	$a1, 68($sp)
	andi	$v0, $s0, 0x1
	beqz	$v0, lbl_0012A5BC
	li	$v1, 57
lbl_00129E04:
	li	$a1, 48
	addiu	$s5, $s5, -1
	nop
lbl_00129E10:
	lb	$v0, 0($s5)
	bne	$v0, $v1, lbl_00129E40
	lbu	$a0, 0($s5)
	lw	$a0, 84($sp)
	nop
	nop
	nop
	bnel	$s5, $a0, lbl_00129E10
	addiu	$s5, $s5, -1
	sb	$a1, 0($a0)
	move	$a0, $a1
	addiu	$s8, $s8, 1
lbl_00129E40:
	addiu	$v0, $a0, 1
	sb	$v0, 0($s5)
	b	lbl_0012A5B8
	addiu	$s5, $s5, 1
lbl_00129E50:
	li	$a0, 0x8048
	dsll32	$a0, $a0, 0xf
	jal	sub_00122510
	nop
	move	$a1, $zero
	move	$a0, $v0
	move	$s4, $v0
	jal	sub_001228D8
	nop
	beqz	$v0, lbl_0012A5B8
	addiu	$s3, $s3, 1
	b	lbl_00129D58
	nop
	nop
lbl_00129E88:
	lw	$v0, 8($sp)
lbl_00129E8C:
	lw	$a0, 52($sp)
	lw	$s1, 24($sp)
	slti	$s6, $v0, 2
	lw	$s2, 28($sp)
	sw	$zero, 72($sp)
	beqz	$a0, lbl_00129F44
	sw	$zero, 76($sp)
	beqzl	$s6, lbl_00129ED0
	lw	$v1, 32($sp)
	lw	$v0, 64($sp)
	bnez	$v0, lbl_00129F1C
	addiu	$s3, $v1, 1075
	lw	$v1, 4($sp)
	li	$v0, 54
	b	lbl_00129F1C
	subu	$s3, $v0, $v1
	nop
lbl_00129ED0:
	lw	$a0, 28($sp)
	addiu	$s0, $v1, -1
	slt	$v0, $a0, $s0
	beqz	$v0, lbl_00129F04
	subu	$s2, $a0, $s0
	lw	$v0, 28($sp)
	move	$s2, $zero
	lw	$v1, 60($sp)
	subu	$s0, $s0, $v0
	addu	$v0, $v0, $s0
	addu	$v1, $v1, $s0
	sw	$v0, 28($sp)
	sw	$v1, 60($sp)
lbl_00129F04:
	lw	$s3, 32($sp)
	bgez	$s3, lbl_00129F20
	lw	$v0, 56($sp)
	lw	$a0, 24($sp)
	subu	$s1, $a0, $s3
	move	$s3, $zero
lbl_00129F1C:
	lw	$v0, 56($sp)
lbl_00129F20:
	move	$a0, $s7
	li	$a1, 1
	addu	$v0, $v0, $s3
	jal	sub_0012BB78
	sw	$v0, 56($sp)
	lw	$v1, 24($sp)
	sw	$v0, 76($sp)
	addu	$v1, $v1, $s3
	sw	$v1, 24($sp)
lbl_00129F44:
	blez	$s1, lbl_00129F7C
	lw	$v1, 28($sp)
	lw	$a0, 56($sp)
	blez	$a0, lbl_00129F7C
	move	$s3, $a0
	slt	$v0, $s1, $s3
	movn	$s3, $s1, $v0
	lw	$v0, 24($sp)
	subu	$a0, $a0, $s3
	subu	$s1, $s1, $s3
	subu	$v0, $v0, $s3
	sw	$a0, 56($sp)
	sw	$v0, 24($sp)
	lw	$v1, 28($sp)
lbl_00129F7C:
	blez	$v1, lbl_0012A00C
	move	$a0, $s7
	lw	$a0, 52($sp)
	beqz	$a0, lbl_00129FF8
	lw	$a1, 68($sp)
	blez	$s2, lbl_00129FD4
	lw	$v0, 28($sp)
	lw	$a1, 76($sp)
	move	$a0, $s7
	jal	sub_0012BDC0
	move	$a2, $s2
	move	$a0, $s7
	lw	$a2, 68($sp)
	move	$a1, $v0
	jal	sub_0012BBB0
	sw	$v0, 76($sp)
	move	$a0, $s7
	lw	$a1, 68($sp)
	jal	sub_0012B7D0
	move	$s0, $v0
	sw	$s0, 68($sp)
	lw	$v0, 28($sp)
lbl_00129FD4:
	subu	$s0, $v0, $s2
	beqzl	$s0, lbl_0012A00C
	move	$a0, $s7
	lw	$a1, 68($sp)
	move	$a2, $s0
	jal	sub_0012BDC0
	move	$a0, $s7
	b	lbl_0012A008
	sw	$v0, 68($sp)
lbl_00129FF8:
	move	$a0, $s7
	jal	sub_0012BDC0
	lw	$a2, 28($sp)
	sw	$v0, 68($sp)
lbl_0012A008:
	move	$a0, $s7
lbl_0012A00C:
	jal	sub_0012BB78
	li	$a1, 1
	lw	$v1, 60($sp)
	blez	$v1, lbl_0012A034
	sw	$v0, 80($sp)
	move	$a1, $v0
	move	$a0, $s7
	jal	sub_0012BDC0
	move	$a2, $v1
	sw	$v0, 80($sp)
lbl_0012A034:
	beqz	$s6, lbl_0012A07C
	move	$s0, $zero
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $s4, $v0
	bnez	$v0, lbl_0012A080
	lw	$v1, 60($sp)
	dsra32	$v0, $s4, 0x0
	lui	$v1, 0x7ff0
	and	$v0, $v0, $v1
	beqz	$v0, lbl_0012A07C
	lw	$a0, 24($sp)
	li	$s0, 1
	lw	$v0, 56($sp)
	addiu	$a0, $a0, 1
	addiu	$v0, $v0, 1
	sw	$a0, 24($sp)
	sw	$v0, 56($sp)
lbl_0012A07C:
	lw	$v1, 60($sp)
lbl_0012A080:
	beqz	$v1, lbl_0012A0A8
	lw	$a0, 80($sp)
	lw	$v0, 16($a0)
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $a0
	jal	sub_0012BA38
	lw	$a0, 16($v0)
	lw	$v1, 56($sp)
	b	lbl_0012A0B0
	subu	$v0, $v1, $v0
lbl_0012A0A8:
	lw	$a0, 56($sp)
	addiu	$v0, $a0, 1
lbl_0012A0B0:
	andi	$s3, $v0, 0x1f
	beqz	$s3, lbl_0012A0C0
	li	$v0, 32
	subu	$s3, $v0, $s3
lbl_0012A0C0:
	slti	$v0, $s3, 5
	bnez	$v0, lbl_0012A0F0
	slti	$v0, $s3, 4
	lw	$v0, 56($sp)
	addiu	$s3, $s3, -4
	lw	$v1, 24($sp)
	addu	$s1, $s1, $s3
	addu	$v0, $v0, $s3
	addu	$v1, $v1, $s3
	sw	$v0, 56($sp)
	b	lbl_0012A118
	sw	$v1, 24($sp)
lbl_0012A0F0:
	beqz	$v0, lbl_0012A11C
	lw	$v1, 24($sp)
	lw	$a0, 56($sp)
	addiu	$s3, $s3, 28
	lw	$v0, 24($sp)
	addu	$s1, $s1, $s3
	addu	$a0, $a0, $s3
	addu	$v0, $v0, $s3
	sw	$a0, 56($sp)
	sw	$v0, 24($sp)
lbl_0012A118:
	lw	$v1, 24($sp)
lbl_0012A11C:
	blezl	$v1, lbl_0012A13C
	lw	$a0, 56($sp)
	lw	$a1, 68($sp)
	move	$a2, $v1
	jal	sub_0012BEC0
	move	$a0, $s7
	sw	$v0, 68($sp)
	lw	$a0, 56($sp)
lbl_0012A13C:
	blez	$a0, lbl_0012A15C
	lw	$v0, 48($sp)
	lw	$a1, 80($sp)
	move	$a2, $a0
	jal	sub_0012BEC0
	move	$a0, $s7
	sw	$v0, 80($sp)
	lw	$v0, 48($sp)
lbl_0012A15C:
	beqz	$v0, lbl_0012A1B8
	lw	$a0, 68($sp)
	jal	sub_0012C018
	lw	$a1, 80($sp)
	bgezl	$v0, lbl_0012A1BC
	lw	$v0, 32($sp)
	lw	$a1, 68($sp)
	move	$a0, $s7
	li	$a2, 10
	jal	sub_0012B800
	move	$a3, $zero
	addiu	$s8, $s8, -1
	lw	$v1, 52($sp)
	beqz	$v1, lbl_0012A1B0
	sw	$v0, 68($sp)
	lw	$a1, 76($sp)
	move	$a0, $s7
	li	$a2, 10
	jal	sub_0012B800
	move	$a3, $zero
	sw	$v0, 76($sp)
lbl_0012A1B0:
	lw	$a0, 40($sp)
	sw	$a0, 32($sp)
lbl_0012A1B8:
	lw	$v0, 32($sp)
lbl_0012A1BC:
	bgtz	$v0, lbl_0012A230
	lw	$a0, 52($sp)
	lw	$v1, 8($sp)
	slti	$v0, $v1, 3
	bnez	$v0, lbl_0012A230
	nop
	lw	$a0, 32($sp)
	bltz	$a0, lbl_0012A208
	lw	$a1, 80($sp)
	move	$a0, $s7
	li	$a2, 5
	jal	sub_0012B800
	move	$a3, $zero
	lw	$a0, 68($sp)
	move	$a1, $v0
	jal	sub_0012C018
	sw	$v0, 80($sp)
	bgtzl	$v0, lbl_0012A218
	lw	$v1, 84($sp)
lbl_0012A208:
	lw	$v0, 12($sp)
lbl_0012A20C:
	b	lbl_0012A57C
	nor	$s8, $zero, $v0
	nop
lbl_0012A218:
	li	$v0, 49
	addiu	$s8, $s8, 1
	addiu	$s5, $v1, 1
	b	lbl_0012A57C
	sb	$v0, 0($v1)
	nop
lbl_0012A230:
	beqz	$a0, lbl_0012A49C
	li	$s3, 1
	blez	$s1, lbl_0012A258
	lw	$v0, 76($sp)
	lw	$a1, 76($sp)
	move	$a2, $s1
	jal	sub_0012BEC0
	move	$a0, $s7
	sw	$v0, 76($sp)
	lw	$v0, 76($sp)
lbl_0012A258:
	beqz	$s0, lbl_0012A2A0
	sw	$v0, 72($sp)
	lw	$a1, 4($v0)
	jal	sub_0012B728
	move	$a0, $s7
	lw	$v1, 72($sp)
	addiu	$a0, $v0, 12
	sw	$v0, 76($sp)
	addiu	$a1, $v1, 12
	lw	$a2, 16($v1)
	sll	$a2, $a2, 0x2
	jal	sub_0012515C
	addiu	$a2, $a2, 8
	move	$a0, $s7
	lw	$a1, 76($sp)
	jal	sub_0012BEC0
	li	$a2, 1
	sw	$v0, 76($sp)
lbl_0012A2A0:
	dsll32	$v0, $s4, 0x0
	dsra32	$v0, $v0, 0x0
	li	$s3, 1
	b	lbl_0012A330
	andi	$s6, $v0, 0x1
	nop
lbl_0012A2B8:
	lw	$a1, 68($sp)
	move	$a0, $s7
	li	$a2, 10
	jal	sub_0012B800
	move	$a3, $zero
	sw	$v0, 68($sp)
	lw	$a0, 72($sp)
	lw	$v0, 76($sp)
	bne	$a0, $v0, lbl_0012A300
	lw	$a1, 72($sp)
	move	$a1, $v0
	move	$a0, $s7
	li	$a2, 10
	jal	sub_0012B800
	move	$a3, $zero
	sw	$v0, 76($sp)
	b	lbl_0012A32C
	sw	$v0, 72($sp)
lbl_0012A300:
	li	$a2, 10
	move	$a3, $zero
	jal	sub_0012B800
	move	$a0, $s7
	move	$a0, $s7
	lw	$a1, 76($sp)
	li	$a2, 10
	move	$a3, $zero
	jal	sub_0012B800
	sw	$v0, 72($sp)
	sw	$v0, 76($sp)
lbl_0012A32C:
	addiu	$s3, $s3, 1
lbl_0012A330:
	lw	$a0, 68($sp)
	jal	sub_00129180
	lw	$a1, 80($sp)
	lw	$a0, 68($sp)
	addiu	$s4, $v0, 48
	jal	sub_0012C018
	lw	$a1, 72($sp)
	move	$a0, $s7
	lw	$a1, 80($sp)
	move	$s0, $v0
	jal	sub_0012C080
	lw	$a2, 76($sp)
	move	$s2, $v0
	lw	$v0, 12($s2)
	bnez	$v0, lbl_0012A380
	li	$s1, 1
	lw	$a0, 68($sp)
	jal	sub_0012C018
	move	$a1, $s2
	move	$s1, $v0
lbl_0012A380:
	move	$a1, $s2
	jal	sub_0012B7D0
	move	$a0, $s7
	bnez	$s1, lbl_0012A3B8
	lw	$v1, 8($sp)
	bnez	$v1, lbl_0012A3B8
	nop
	bnez	$s6, lbl_0012A3B8
	li	$a0, 57
	beq	$s4, $a0, lbl_0012A44C
	slt	$v0, $s1, $s0
	addu	$s4, $s4, $v0
	b	lbl_0012A578
	sb	$s4, 0($s5)
lbl_0012A3B8:
	bltz	$s0, lbl_0012A3D8
	nop
	bnez	$s0, lbl_0012A438
	lw	$v0, 8($sp)
	bnez	$v0, lbl_0012A438
	nop
	bnez	$s6, lbl_0012A438
	nop
lbl_0012A3D8:
	blezl	$s1, lbl_0012A578
	sb	$s4, 0($s5)
	lw	$a1, 68($sp)
	li	$a2, 1
	jal	sub_0012BEC0
	move	$a0, $s7
	lw	$a1, 80($sp)
	move	$a0, $v0
	jal	sub_0012C018
	sw	$v0, 68($sp)
	move	$s1, $v0
	bgtzl	$s1, lbl_0012A424
	addiu	$s4, $s4, 1
	bnezl	$s1, lbl_0012A578
	sb	$s4, 0($s5)
	andi	$v0, $s4, 0x1
	beqzl	$v0, lbl_0012A578
	sb	$s4, 0($s5)
	addiu	$s4, $s4, 1
lbl_0012A424:
	li	$v0, 58
	beql	$s4, $v0, lbl_0012A450
	li	$a0, 57
	b	lbl_0012A578
	sb	$s4, 0($s5)
lbl_0012A438:
	blezl	$s1, lbl_0012A468
	sb	$s4, 0($s5)
	li	$v1, 57
	bne	$s4, $v1, lbl_0012A460
	addiu	$v0, $s4, 1
lbl_0012A44C:
	li	$a0, 57
lbl_0012A450:
	sb	$a0, 0($s5)
	b	lbl_0012A500
	addiu	$s5, $s5, 1
	nop
lbl_0012A460:
	b	lbl_0012A578
	sb	$v0, 0($s5)
lbl_0012A468:
	lw	$v0, 32($sp)
	bne	$s3, $v0, lbl_0012A2B8
	addiu	$s5, $s5, 1
	b	lbl_0012A4C4
	lw	$a1, 68($sp)
	nop
lbl_0012A480:
	lw	$a1, 68($sp)
	move	$a0, $s7
	li	$a2, 10
	jal	sub_0012B800
	move	$a3, $zero
	addiu	$s3, $s3, 1
	sw	$v0, 68($sp)
lbl_0012A49C:
	lw	$a0, 68($sp)
	jal	sub_00129180
	lw	$a1, 80($sp)
	lw	$a0, 32($sp)
	addiu	$s4, $v0, 48
	sb	$s4, 0($s5)
	slt	$v1, $s3, $a0
	bnez	$v1, lbl_0012A480
	addiu	$s5, $s5, 1
	lw	$a1, 68($sp)
lbl_0012A4C4:
	li	$a2, 1
	jal	sub_0012BEC0
	move	$a0, $s7
	lw	$a1, 80($sp)
	move	$a0, $v0
	jal	sub_0012C018
	sw	$v0, 68($sp)
	move	$s0, $v0
	bgtzl	$s0, lbl_0012A504
	addiu	$s5, $s5, -1
	bnez	$s0, lbl_0012A558
	li	$v1, 48
	andi	$v0, $s4, 0x1
	beqzl	$v0, lbl_0012A55C
	addiu	$s5, $s5, -1
lbl_0012A500:
	addiu	$s5, $s5, -1
lbl_0012A504:
	b	lbl_0012A520
	li	$v1, 57
	nop
lbl_0012A510:
	lw	$v0, 84($sp)
	beql	$s5, $v0, lbl_0012A540
	lw	$v1, 84($sp)
	addiu	$s5, $s5, -1
lbl_0012A520:
	lb	$v0, 0($s5)
	nop
	nop
	beq	$v0, $v1, lbl_0012A510
	lbu	$a0, 0($s5)
	addiu	$v0, $a0, 1
	b	lbl_0012A578
	sb	$v0, 0($s5)
lbl_0012A540:
	li	$v0, 49
	addiu	$s8, $s8, 1
	sb	$v0, 0($v1)
	b	lbl_0012A57C
	addiu	$s5, $v1, 1
	nop
lbl_0012A558:
	addiu	$s5, $s5, -1
lbl_0012A55C:
	lb	$v0, 0($s5)
	nop
	nop
	nop
	nop
	beql	$v0, $v1, lbl_0012A55C
	addiu	$s5, $s5, -1
lbl_0012A578:
	addiu	$s5, $s5, 1
lbl_0012A57C:
	lw	$a1, 80($sp)
	jal	sub_0012B7D0
	move	$a0, $s7
	lw	$a0, 76($sp)
	beqz	$a0, lbl_0012A5B8
	lw	$v0, 72($sp)
	beqz	$v0, lbl_0012A5B0
	lw	$a1, 76($sp)
	beq	$v0, $a0, lbl_0012A5AC
	move	$a1, $v0
	jal	sub_0012B7D0
	move	$a0, $s7
lbl_0012A5AC:
	lw	$a1, 76($sp)
lbl_0012A5B0:
	jal	sub_0012B7D0
	move	$a0, $s7
lbl_0012A5B8:
	lw	$a1, 68($sp)
lbl_0012A5BC:
	jal	sub_0012B7D0
	move	$a0, $s7
	sb	$zero, 0($s5)
	addiu	$v0, $s8, 1
	lw	$v1, 16($sp)
	sw	$v0, 0($v1)
	lw	$a0, 20($sp)
	bnezl	$a0, lbl_0012A5E0
	sw	$s5, 0($a0)
lbl_0012A5E0:
	lw	$v0, 84($sp)
lbl_0012A5E4:
	ld	$s0, 96($sp)
	ld	$s1, 104($sp)
	ld	$s2, 112($sp)
	ld	$s3, 120($sp)
	ld	$s4, 128($sp)
	ld	$s5, 136($sp)
	ld	$s6, 144($sp)
	ld	$s7, 152($sp)
	ld	$s8, 160($sp)
	ld	$ra, 168($sp)
	jr	$ra
	addiu	$sp, $sp, 176
	nop

sub_0012A618:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	bnez	$s1, lbl_0012A660
	sd	$ra, 24($sp)
	lui	$v0, 0x13
	lui	$a1, 0x13
	lw	$a0, 11128($v0)
	addiu	$a1, $a1, -23016
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	j	sub_0012B338
	addiu	$sp, $sp, 32
	nop
lbl_0012A660:
	lw	$v1, 84($s1)
	bnezl	$v1, lbl_0012A680
	lw	$v0, 56($v1)
	lui	$v0, 0x13
	lw	$v1, 11128($v0)
	sw	$v1, 84($s1)
	lw	$v0, 56($v1)
	nop
lbl_0012A680:
	bnezl	$v0, lbl_0012A694
	lh	$v1, 12($s1)
	jal	sub_0012A940
	move	$a0, $v1
	lh	$v1, 12($s1)
lbl_0012A694:
	andi	$v0, $v1, 0x8
	beqz	$v0, lbl_0012A714
	move	$v0, $zero
	lw	$s2, 16($s1)
	beqz	$s2, lbl_0012A714
	move	$a0, $zero
	lw	$v0, 0($s1)
	andi	$v1, $v1, 0x3
	sw	$s2, 0($s1)
	bnez	$v1, lbl_0012A6E0
	subu	$s0, $v0, $s2
	b	lbl_0012A6E0
	lw	$a0, 20($s1)
lbl_0012A6C8:
	lhu	$v1, 12($s1)
	li	$v0, -1
	ori	$v1, $v1, 0x40
	b	lbl_0012A714
	sh	$v1, 12($s1)
	nop
lbl_0012A6E0:
	blez	$s0, lbl_0012A710
	sw	$a0, 8($s1)
lbl_0012A6E8:
	lw	$v0, 36($s1)
	move	$a2, $s0
	lw	$a0, 28($s1)
	jalr	$v0
	move	$a1, $s2
	move	$v1, $v0
	blez	$v1, lbl_0012A6C8
	subu	$s0, $s0, $v1
	bgtz	$s0, lbl_0012A6E8
	addu	$s2, $s2, $v1
lbl_0012A710:
	move	$v0, $zero
lbl_0012A714:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0012A730:
	lui	$v0, 0x13
	lui	$v1, 0x13
	lui	$t0, 0x13
	lui	$t1, 0x13
	addiu	$v0, $v0, -13952
	addiu	$v1, $v1, -13848
	addiu	$t0, $t0, -13720
	addiu	$t1, $t1, -13616
	sw	$a3, 84($a0)
	sh	$a1, 12($a0)
	sh	$a2, 14($a0)
	sw	$v0, 32($a0)
	sw	$v1, 36($a0)
	sw	$t0, 40($a0)
	sw	$t1, 44($a0)
	sw	$zero, 0($a0)
	sw	$zero, 4($a0)
	sw	$zero, 8($a0)
	sw	$zero, 16($a0)
	sw	$zero, 20($a0)
	sw	$zero, 24($a0)
	jr	$ra
	sw	$a0, 28($a0)
	nop

sub_0012A790:
	addiu	$sp, $sp, -32
	sd	$s2, 16($sp)
	move	$s2, $a1
	sd	$s0, 0($sp)
	sll	$s0, $s2, 0x1
	addu	$s0, $s0, $s2
	sd	$s1, 8($sp)
	sll	$s0, $s0, 0x2
	sd	$ra, 24($sp)
	subu	$s0, $s0, $s2
	sll	$s0, $s0, 0x3
	jal	sub_001249A0
	addiu	$a1, $s0, 12
	move	$a1, $zero
	move	$s1, $v0
	move	$a2, $s0
	addiu	$v1, $s1, 12
	beqz	$s1, lbl_0012A7F0
	move	$a0, $v1
	sw	$s2, 4($s1)
	sw	$zero, 0($s1)
	jal	sub_00125310
	sw	$v1, 8($s1)
	move	$v0, $s1
lbl_0012A7F0:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$ra, 24($sp)
	lw	$v0, 56($s1)
	bnez	$v0, lbl_0012A834
	addiu	$s0, $s1, 472
	jal	sub_0012A940
	nop
lbl_0012A834:
	li	$s2, 12
lbl_0012A838:
	lw	$v1, 4($s0)
	addiu	$v1, $v1, -1
	bltz	$v1, lbl_0012A86C
	lw	$a0, 8($s0)
lbl_0012A848:
	lh	$v0, 12($a0)
	beqz	$v0, lbl_0012A8A8
	addiu	$v1, $v1, -1
	nop
	nop
	nop
	nop
	bgez	$v1, lbl_0012A848
	addiu	$a0, $a0, 88
lbl_0012A86C:
	lw	$a0, 0($s0)
	nop
	bnezl	$a0, lbl_0012A838
	move	$s0, $a0
	move	$a0, $s1
	jal	sub_0012A790
	li	$a1, 4
	move	$v1, $v0
	sw	$v1, 0($s0)
	bnez	$v1, lbl_0012A8A0
	move	$a0, $v1
	b	lbl_0012A8E8
	sw	$s2, 0($s1)
lbl_0012A8A0:
	b	lbl_0012A838
	move	$s0, $a0
lbl_0012A8A8:
	li	$v1, -1
	li	$v0, 1
	sh	$v1, 14($a0)
	sw	$s1, 84($a0)
	sw	$zero, 0($a0)
	sw	$zero, 8($a0)
	sw	$zero, 4($a0)
	sw	$zero, 16($a0)
	sw	$zero, 20($a0)
	sw	$zero, 24($a0)
	sw	$zero, 48($a0)
	sw	$zero, 52($a0)
	sw	$zero, 68($a0)
	sw	$zero, 72($a0)
	sh	$v0, 12($a0)
	move	$v0, $a0
lbl_0012A8E8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
lbl_0012A900:
	addiu	$sp, $sp, -16
	lui	$a1, 0x13
	sd	$ra, 0($sp)
	addiu	$a1, $a1, -23016
	ld	$ra, 0($sp)
	j	sub_0012B338
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_0012A900
	addiu	$sp, $sp, 16
	nop

sub_0012A940:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	addiu	$v0, $v0, -22272
	li	$v1, 1
	sd	$s1, 8($sp)
	addiu	$s1, $s0, 484
	sd	$ra, 16($sp)
	move	$a0, $s1
	sw	$v0, 60($s0)
	move	$a3, $s0
	sw	$v1, 56($s0)
	li	$a1, 4
	jal	sub_0012A730
	move	$a2, $zero
	addiu	$a0, $s0, 572
	move	$a3, $s0
	li	$a1, 9
	jal	sub_0012A730
	li	$a2, 1
	addiu	$a0, $s0, 660
	move	$a3, $s0
	li	$a1, 10
	jal	sub_0012A730
	li	$a2, 2
	sw	$zero, 472($s0)
	li	$v0, 3
	sw	$s1, 480($s0)
	sw	$v0, 476($s0)
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0012A9D0:
	addiu	$sp, $sp, -64
	sd	$s4, 32($sp)
	move	$s4, $a1
	sd	$s6, 48($sp)
	move	$s6, $a2
	sd	$s3, 24($sp)
	mult	$s3, $s6, $s4
	sd	$s1, 8($sp)
	move	$s1, $a3
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$s5, 40($sp)
	bnez	$s3, lbl_0012AA28
	sd	$ra, 56($sp)
	b	lbl_0012AAC4
	move	$v0, $zero
lbl_0012AA10:
	beqzl	$s4, lbl_0012AA18
	break	0x7
lbl_0012AA18:
	divu	$zero, $v0, $s4
	mflo	$v0
	b	lbl_0012AAC8
	ld	$s0, 0($sp)
lbl_0012AA28:
	lw	$a2, 4($s1)
	bgez	$a2, lbl_0012AA40
	move	$s0, $a2
	sw	$zero, 4($s1)
	move	$a2, $zero
	move	$s0, $a2
lbl_0012AA40:
	move	$s2, $a0
	sltu	$v0, $s0, $s3
	beqz	$v0, lbl_0012AA98
	move	$s5, $s3
	lw	$a1, 0($s1)
	nop
lbl_0012AA58:
	move	$a0, $s2
	move	$a2, $s0
	jal	sub_0012515C
	subu	$s3, $s3, $s0
	lw	$v1, 0($s1)
	move	$a0, $s1
	addu	$s2, $s2, $s0
	addu	$v1, $v1, $s0
	jal	sub_0012C778
	sw	$v1, 0($s1)
	bnez	$v0, lbl_0012AA10
	subu	$v0, $s5, $s3
	lw	$s0, 4($s1)
	sltu	$v0, $s0, $s3
	bnezl	$v0, lbl_0012AA58
	lw	$a1, 0($s1)
lbl_0012AA98:
	lw	$a1, 0($s1)
	move	$a0, $s2
	jal	sub_0012515C
	move	$a2, $s3
	lw	$v1, 4($s1)
	lw	$a0, 0($s1)
	move	$v0, $s6
	subu	$v1, $v1, $s3
	addu	$a0, $a0, $s3
	sw	$v1, 4($s1)
	sw	$a0, 0($s1)
lbl_0012AAC4:
	ld	$s0, 0($sp)
lbl_0012AAC8:
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$ra, 56($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop

sub_0012AAF0:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	move	$s1, $a0
	beqz	$s0, lbl_0012ADD0
	sd	$ra, 16($sp)
	jal	sub_001253D0
	nop
	addiu	$t1, $s0, -8
	lw	$a2, 4($t1)
	li	$v0, -2
	lui	$t4, 0x13
	li	$a0, -4
	and	$t0, $a2, $v0
	addiu	$t2, $t4, 11136
	addu	$a1, $t1, $t0
	lw	$v1, 8($t2)
	lw	$v0, 4($a1)
	bne	$a1, $v1, lbl_0012ABB8
	and	$a0, $v0, $a0
	andi	$v0, $a2, 0x1
	bnez	$v0, lbl_0012AB6C
	addu	$t0, $t0, $a0
	lw	$v1, 0($t1)
	subu	$t1, $t1, $v1
	addu	$t0, $t0, $v1
	lw	$a3, 12($t1)
	lw	$a2, 8($t1)
	sw	$a3, 12($a2)
	sw	$a2, 8($a3)
lbl_0012AB6C:
	ori	$v1, $t0, 0x1
	sw	$t1, 8($t2)
	sw	$v1, 4($t1)
	lui	$a0, 0x13
	dsll32	$v0, $t0, 0x0
	ld	$v1, 12168($a0)
	dsrl32	$v0, $v0, 0x0
	sltu	$v0, $v0, $v1
	bnez	$v0, lbl_0012ABA4
	move	$a0, $s1
	lui	$v0, 0x13
	jal	sub_0012ADE8
	lw	$a1, 12176($v0)
	move	$a0, $s1
lbl_0012ABA4:
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	j	sub_00125450
	addiu	$sp, $sp, 32
lbl_0012ABB8:
	andi	$v0, $a2, 0x1
	sw	$a0, 4($a1)
	bnez	$v0, lbl_0012ABFC
	move	$t3, $zero
	lw	$v1, 0($t1)
	addiu	$v0, $t2, 8
	subu	$t1, $t1, $v1
	addu	$t0, $t0, $v1
	lw	$v1, 8($t1)
	bnel	$v1, $v0, lbl_0012ABF0
	lw	$a3, 12($t1)
	b	lbl_0012ABFC
	li	$t3, 1
	nop
lbl_0012ABF0:
	move	$a2, $v1
	sw	$a3, 12($a2)
	sw	$a2, 8($a3)
lbl_0012ABFC:
	addu	$v1, $a1, $a0
	lw	$v0, 4($v1)
	andi	$v0, $v0, 0x1
	bnez	$v0, lbl_0012AC60
	ori	$v0, $t0, 0x1
	bnez	$t3, lbl_0012AC48
	addu	$t0, $t0, $a0
	lui	$v0, 0x13
	lw	$v1, 8($a1)
	addiu	$v0, $v0, 11152
	addiu	$v0, $v0, -8
	bnel	$v1, $v0, lbl_0012AC50
	lw	$a3, 12($a1)
	sw	$t1, 12($v1)
	li	$t3, 1
	sw	$t1, 8($v1)
	sw	$v1, 8($t1)
	b	lbl_0012AC5C
	sw	$v1, 12($t1)
lbl_0012AC48:
	lw	$v1, 8($a1)
	lw	$a3, 12($a1)
lbl_0012AC50:
	move	$a2, $v1
	sw	$a3, 12($a2)
	sw	$a2, 8($a3)
lbl_0012AC5C:
	ori	$v0, $t0, 0x1
lbl_0012AC60:
	addu	$v1, $t1, $t0
	sw	$v0, 4($t1)
	bnez	$t3, lbl_0012ADB8
	sw	$t0, 0($v1)
	sltiu	$v0, $t0, 512
	beqzl	$v0, lbl_0012ACC0
	srl	$v1, $t0, 0x9
	srl	$a1, $t0, 0x3
	addiu	$a0, $t4, 11136
	sll	$v1, $a1, 0x3
	srl	$a1, $a1, 0x2
	li	$v0, 1
	addu	$a3, $v1, $a0
	dsllv	$v0, $v0, $a1
	lw	$v1, 4($a0)
	lw	$a2, 8($a3)
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	or	$v1, $v1, $v0
	sw	$a3, 12($t1)
	sw	$a2, 8($t1)
	b	lbl_0012ADB0
	sw	$v1, 4($a0)
	nop
lbl_0012ACC0:
	beqz	$v1, lbl_0012AD28
	srl	$a1, $t0, 0x3
	sltiu	$v0, $v1, 5
	beqz	$v0, lbl_0012ACE0
	sltiu	$v0, $v1, 21
	srl	$v0, $t0, 0x6
	b	lbl_0012AD28
	addiu	$a1, $v0, 56
lbl_0012ACE0:
	bnez	$v0, lbl_0012AD28
	addiu	$a1, $v1, 91
	sltiu	$v0, $v1, 85
	beqz	$v0, lbl_0012AD00
	sltiu	$v0, $v1, 341
	srl	$v0, $t0, 0xc
	b	lbl_0012AD28
	addiu	$a1, $v0, 110
lbl_0012AD00:
	beqz	$v0, lbl_0012AD18
	sltiu	$v0, $v1, 1365
	srl	$v0, $t0, 0xf
	b	lbl_0012AD28
	addiu	$a1, $v0, 119
	nop
lbl_0012AD18:
	beqzl	$v0, lbl_0012AD28
	li	$a1, 126
	srl	$v0, $t0, 0x12
	addiu	$a1, $v0, 124
lbl_0012AD28:
	lui	$v0, 0x13
	sll	$v1, $a1, 0x3
	addiu	$v0, $v0, 11144
	addiu	$t2, $v0, -8
	addu	$a3, $v1, $t2
	lw	$a2, 8($a3)
	bnel	$a2, $a3, lbl_0012AD78
	lw	$v0, 4($a2)
	addiu	$a0, $a1, 3
	slti	$v1, $a1, 0
	movn	$a1, $a0, $v1
	lw	$v1, 4($t2)
	li	$v0, 1
	sra	$a0, $a1, 0x2
	dsllv	$v0, $v0, $a0
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	or	$v1, $v1, $v0
	b	lbl_0012ADA8
	sw	$v1, 4($t2)
lbl_0012AD78:
	b	lbl_0012AD8C
	li	$v1, -4
lbl_0012AD80:
	beql	$a2, $a3, lbl_0012ADA8
	lw	$a3, 12($a2)
	lw	$v0, 4($a2)
lbl_0012AD8C:
	and	$v0, $v0, $v1
	sltu	$v0, $t0, $v0
	nop
	nop
	bnezl	$v0, lbl_0012AD80
	lw	$a2, 8($a2)
	lw	$a3, 12($a2)
lbl_0012ADA8:
	sw	$a3, 12($t1)
	sw	$a2, 8($t1)
lbl_0012ADB0:
	sw	$t1, 8($a3)
	sw	$t1, 12($a2)
lbl_0012ADB8:
	move	$a0, $s1
	ld	$s1, 8($sp)
	ld	$s0, 0($sp)
	ld	$ra, 16($sp)
	j	sub_00125450
	addiu	$sp, $sp, 32
lbl_0012ADD0:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0012ADE8:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s2, 16($sp)
	dsll32	$s0, $s0, 0x0
	sd	$s4, 32($sp)
	sd	$s3, 24($sp)
	sd	$ra, 40($sp)
	jal	sub_001253D0
	dsrl32	$s0, $s0, 0x0
	lui	$v0, 0x13
	li	$a2, -4
	addiu	$s4, $v0, 11136
	move	$a0, $s1
	lw	$v1, 8($s4)
	lw	$v0, 4($v1)
	and	$v0, $v0, $a2
	dsll32	$v0, $v0, 0x0
	dsrl32	$s2, $v0, 0x0
	dsubu	$s0, $s2, $s0
	daddiu	$s0, $s0, 4079
	dsrl	$s0, $s0, 0xc
	daddiu	$s0, $s0, -1
	dsll	$s0, $s0, 0xc
	slti	$v0, $s0, 4096
	bnez	$v0, lbl_0012AEF0
	move	$a1, $zero
	jal	sub_00125570
	move	$a0, $s1
	lw	$v1, 8($s4)
	dsll32	$a1, $s2, 0x0
	dsra32	$a1, $a1, 0x0
	addu	$v1, $v1, $a1
	bne	$v0, $v1, lbl_0012AEF0
	move	$a0, $s1
	dsll32	$s3, $s0, 0x0
	dsra32	$s3, $s3, 0x0
	move	$a0, $s1
	jal	sub_00125570
	negu	$a1, $s3
	move	$a0, $s1
	lui	$v1, 0x13
	li	$a2, -1
	move	$a1, $zero
	bne	$v0, $a2, lbl_0012AF00
	addiu	$a3, $v1, 12208
	jal	sub_00125570
	nop
	lw	$a2, 8($s4)
	move	$a3, $v0
	li	$v0, 1
	subu	$s2, $a3, $a2
	or	$v0, $s2, $v0
	slti	$v1, $s2, 16
	dsll32	$a1, $v0, 0x0
	dsra32	$a1, $a1, 0x0
	bnez	$v1, lbl_0012AEF0
	move	$a0, $s1
	lui	$v0, 0x13
	lw	$v1, 12184($v0)
	lui	$v0, 0x13
	subu	$v1, $a3, $v1
	sw	$v1, 12208($v0)
	sw	$a1, 4($a2)
lbl_0012AEF0:
	jal	sub_00125450
	nop
	b	lbl_0012AF34
	move	$v0, $zero
lbl_0012AF00:
	li	$v0, 1
	dsubu	$v1, $s2, $s0
	lw	$a1, 8($s4)
	or	$v1, $v1, $v0
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	move	$a0, $s1
	sw	$v1, 4($a1)
	lw	$v0, 0($a3)
	subu	$v0, $v0, $s3
	jal	sub_00125450
	sw	$v0, 0($a3)
	li	$v0, 1
lbl_0012AF34:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0012AF58:
	addiu	$sp, $sp, -80
	move	$v0, $zero
	sd	$s1, 8($sp)
	sd	$s6, 48($sp)
	move	$s6, $a1
	sd	$s0, 0($sp)
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	sd	$s4, 32($sp)
	sd	$s5, 40($sp)
	sd	$s7, 56($sp)
	sd	$ra, 64($sp)
	lw	$s2, 8($s6)
	beqz	$s2, lbl_0012B30C
	move	$s1, $a0
	lhu	$v1, 12($s1)
	andi	$v0, $v1, 0x8
	beqz	$v0, lbl_0012AFB0
	nop
	lw	$v0, 16($s1)
	bnez	$v0, lbl_0012AFC8
	andi	$v0, $v1, 0x2
lbl_0012AFB0:
	jal	sub_00129038
	nop
	bnez	$v0, lbl_0012B30C
	li	$v0, -1
	lhu	$v1, 12($s1)
	andi	$v0, $v1, 0x2
lbl_0012AFC8:
	lw	$s4, 0($s6)
	beqz	$v0, lbl_0012B048
	move	$s2, $zero
	li	$s5, 1024
lbl_0012AFD8:
	bnezl	$s2, lbl_0012B000
	sltiu	$v1, $s2, 1025
lbl_0012AFE0:
	lw	$s2, 4($s4)
	lw	$s3, 0($s4)
	nop
	nop
	nop
	beqz	$s2, lbl_0012AFE0
	addiu	$s4, $s4, 8
	sltiu	$v1, $s2, 1025
lbl_0012B000:
	lw	$v0, 36($s1)
	lw	$a0, 28($s1)
	move	$a2, $s5
	movn	$a2, $s2, $v1
	jalr	$v0
	move	$a1, $s3
	move	$s0, $v0
	blezl	$s0, lbl_0012B300
	lhu	$v1, 12($s1)
	lw	$v0, 8($s6)
	addu	$s3, $s3, $s0
	subu	$s2, $s2, $s0
	subu	$v0, $v0, $s0
	bnez	$v0, lbl_0012AFD8
	sw	$v0, 8($s6)
	b	lbl_0012B30C
	move	$v0, $zero
	nop
lbl_0012B048:
	andi	$v0, $v1, 0x1
	bnez	$v0, lbl_0012B198
	move	$s7, $zero
	b	lbl_0012B068
	nop
	nop
lbl_0012B060:
	lhu	$v1, 12($s1)
	nop
lbl_0012B068:
	bnez	$s2, lbl_0012B090
	andi	$v0, $v1, 0x200
lbl_0012B070:
	lw	$s2, 4($s4)
	lw	$s3, 0($s4)
	nop
	nop
	nop
	beqz	$s2, lbl_0012B070
	addiu	$s4, $s4, 8
	andi	$v0, $v1, 0x200
lbl_0012B090:
	beqz	$v0, lbl_0012B0C8
	lw	$s0, 8($s1)
	sltu	$v0, $s2, $s0
	lw	$a0, 0($s1)
	movn	$s0, $s2, $v0
	move	$a1, $s3
	jal	sub_0012520C
	move	$a2, $s0
	lw	$v1, 8($s1)
	lw	$v0, 0($s1)
	subu	$v1, $v1, $s0
	addu	$v0, $v0, $s0
	b	lbl_0012B16C
	move	$s0, $s2
lbl_0012B0C8:
	lw	$a0, 0($s1)
	lw	$v0, 16($s1)
	sltu	$v0, $v0, $a0
	beqzl	$v0, lbl_0012B118
	lw	$s0, 20($s1)
	sltu	$v0, $s0, $s2
	beqzl	$v0, lbl_0012B118
	lw	$s0, 20($s1)
	move	$a1, $s3
	jal	sub_0012520C
	move	$a2, $s0
	lw	$v1, 0($s1)
	move	$a0, $s1
	addu	$v1, $v1, $s0
	jal	sub_0012A618
	sw	$v1, 0($s1)
	beqzl	$v0, lbl_0012B178
	lw	$v0, 8($s6)
	b	lbl_0012B300
	lhu	$v1, 12($s1)
lbl_0012B118:
	sltu	$v0, $s2, $s0
	bnezl	$v0, lbl_0012B150
	move	$s0, $s2
	lw	$v0, 36($s1)
	move	$a2, $s0
	lw	$a0, 28($s1)
	jalr	$v0
	move	$a1, $s3
	move	$s0, $v0
	bgtzl	$s0, lbl_0012B178
	lw	$v0, 8($s6)
	b	lbl_0012B300
	lhu	$v1, 12($s1)
	nop
lbl_0012B150:
	move	$a1, $s3
	jal	sub_0012520C
	move	$a2, $s0
	lw	$v1, 8($s1)
	lw	$v0, 0($s1)
	subu	$v1, $v1, $s0
	addu	$v0, $v0, $s0
lbl_0012B16C:
	sw	$v1, 8($s1)
	sw	$v0, 0($s1)
	lw	$v0, 8($s6)
lbl_0012B178:
	addu	$s3, $s3, $s0
	subu	$s2, $s2, $s0
	subu	$v0, $v0, $s0
	bnez	$v0, lbl_0012B060
	sw	$v0, 8($s6)
	b	lbl_0012B30C
	move	$v0, $zero
	nop
lbl_0012B198:
	bnez	$s2, lbl_0012B1C4
	nop
	move	$s7, $zero
	nop
lbl_0012B1A8:
	lw	$s2, 4($s4)
	lw	$s3, 0($s4)
	nop
	nop
	nop
	beqz	$s2, lbl_0012B1A8
	addiu	$s4, $s4, 8
lbl_0012B1C4:
	bnezl	$s7, lbl_0012B1FC
	lw	$t0, 0($s1)
	move	$a0, $s3
	li	$a1, 10
	jal	sub_0012B644
	move	$a2, $s2
	beqz	$v0, lbl_0012B1F0
	subu	$v0, $v0, $s3
	b	lbl_0012B1F4
	addiu	$s5, $v0, 1
	nop
lbl_0012B1F0:
	addiu	$s5, $s2, 1
lbl_0012B1F4:
	li	$s7, 1
	lw	$t0, 0($s1)
lbl_0012B1FC:
	sltu	$v0, $s2, $s5
	lw	$v1, 16($s1)
	move	$a1, $s2
	lw	$a0, 8($s1)
	movz	$a1, $s5, $v0
	lw	$a3, 20($s1)
	sltu	$v1, $v1, $t0
	beqz	$v1, lbl_0012B260
	addu	$s0, $a0, $a3
	slt	$v0, $s0, $a1
	beqzl	$v0, lbl_0012B264
	move	$s0, $a3
	move	$a0, $t0
	move	$a1, $s3
	jal	sub_0012520C
	move	$a2, $s0
	lw	$v1, 0($s1)
	move	$a0, $s1
	addu	$v1, $v1, $s0
	jal	sub_0012A618
	sw	$v1, 0($s1)
	beqz	$v0, lbl_0012B2C4
	subu	$s5, $s5, $s0
	b	lbl_0012B300
	lhu	$v1, 12($s1)
lbl_0012B260:
	move	$s0, $a3
lbl_0012B264:
	slt	$v0, $a1, $s0
	bnezl	$v0, lbl_0012B298
	move	$s0, $a1
	lw	$v0, 36($s1)
	move	$a2, $s0
	lw	$a0, 28($s1)
	jalr	$v0
	move	$a1, $s3
	move	$s0, $v0
	bgtz	$s0, lbl_0012B2C4
	subu	$s5, $s5, $s0
	b	lbl_0012B300
	lhu	$v1, 12($s1)
lbl_0012B298:
	move	$a1, $s3
	move	$a0, $t0
	jal	sub_0012520C
	move	$a2, $s0
	lw	$v1, 8($s1)
	lw	$v0, 0($s1)
	subu	$v1, $v1, $s0
	addu	$v0, $v0, $s0
	sw	$v1, 8($s1)
	sw	$v0, 0($s1)
	subu	$s5, $s5, $s0
lbl_0012B2C4:
	bnezl	$s5, lbl_0012B2E4
	lw	$v0, 8($s6)
	jal	sub_0012A618
	move	$a0, $s1
	bnezl	$v0, lbl_0012B300
	lhu	$v1, 12($s1)
	move	$s7, $zero
	lw	$v0, 8($s6)
lbl_0012B2E4:
	addu	$s3, $s3, $s0
	subu	$s2, $s2, $s0
	subu	$v0, $v0, $s0
	bnez	$v0, lbl_0012B198
	sw	$v0, 8($s6)
	b	lbl_0012B30C
	move	$v0, $zero
lbl_0012B300:
	li	$v0, -1
	ori	$v1, $v1, 0x40
	sh	$v1, 12($s1)
lbl_0012B30C:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$ra, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0012B338:
	addiu	$sp, $sp, -48
	sd	$s2, 16($sp)
	addiu	$s2, $a0, 472
	sd	$s3, 24($sp)
	move	$s3, $zero
	sd	$s4, 32($sp)
	move	$s4, $a1
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	beqz	$s2, lbl_0012B3A8
	sd	$ra, 40($sp)
	lw	$s0, 4($s2)
lbl_0012B368:
	addiu	$s0, $s0, -1
	bltz	$s0, lbl_0012B39C
	lw	$s1, 8($s2)
	nop
lbl_0012B378:
	lh	$v0, 12($s1)
	beqzl	$v0, lbl_0012B394
	addiu	$s0, $s0, -1
	jalr	$s4
	move	$a0, $s1
	or	$s3, $s3, $v0
	addiu	$s0, $s0, -1
lbl_0012B394:
	bgez	$s0, lbl_0012B378
	addiu	$s1, $s1, 88
lbl_0012B39C:
	lw	$s2, 0($s2)
	bnezl	$s2, lbl_0012B368
	lw	$s0, 4($s2)
lbl_0012B3A8:
	move	$v0, $s3
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
lbl_0012B3D0:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a2
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s2, 16($sp)
	move	$s2, $a1
	sd	$s3, 24($sp)
	move	$a0, $s0
	beqz	$s0, lbl_0012B438
	sd	$ra, 32($sp)
	lui	$s3, 0x13
	jal	sub_00125DAC
	addiu	$a1, $s3, 26488
	lui	$a1, 0x13
	addiu	$a1, $a1, 26472
	beqz	$v0, lbl_0012B428
	move	$a0, $s0
	jal	sub_00125DAC
	nop
	bnez	$v0, lbl_0012B440
	move	$v0, $zero
lbl_0012B428:
	sw	$s0, 52($s1)
	b	lbl_0012B43C
	sw	$s2, 48($s1)
	nop
lbl_0012B438:
	lui	$s3, 0x13
lbl_0012B43C:
	addiu	$v0, $s3, 26488
lbl_0012B440:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
lbl_0012B460:
	lui	$v0, 0x13
	jr	$ra
	addiu	$v0, $v0, 26424
	nop
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	move	$a2, $a1
	move	$a1, $a0
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_0012B3D0
	addiu	$sp, $sp, 16
	nop

sub_0012B498:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_0012B460
	addiu	$sp, $sp, 16
	nop

sub_0012B4B8:
	addiu	$sp, $sp, -144
	sd	$s0, 112($sp)
	move	$s0, $a0
	sd	$s1, 120($sp)
	sd	$s2, 128($sp)
	sd	$ra, 136($sp)
	lhu	$v1, 12($s0)
	andi	$v0, $v1, 0x2
	beqz	$v0, lbl_0012B4F8
	li	$v0, 1
	addiu	$v1, $s0, 67
	sw	$v0, 20($s0)
	sw	$v1, 16($s0)
	b	lbl_0012B5F4
	sw	$v1, 0($s0)
	nop
lbl_0012B4F8:
	lh	$a1, 14($s0)
	bltz	$a1, lbl_0012B520
	ori	$v0, $v1, 0x800
	lw	$a0, 84($s0)
	jal	sub_0012E098
	move	$a2, $sp
	bgez	$v0, lbl_0012B530
	lw	$v0, 4($sp)
	lhu	$v1, 12($s0)
	ori	$v0, $v1, 0x800
lbl_0012B520:
	move	$s2, $zero
	sh	$v0, 12($s0)
	b	lbl_0012B574
	li	$s1, 1024
lbl_0012B530:
	li	$a0, 0x8000
	li	$s1, 1024
	andi	$v0, $v0, 0xf000
	xori	$v1, $v0, 0x2000
	bne	$v0, $a0, lbl_0012B568
	sltiu	$s2, $v1, 1
	lui	$v0, 0x13
	lw	$v1, 40($s0)
	addiu	$v0, $v0, -13720
	bne	$v1, $v0, lbl_0012B56C
	lhu	$v0, 12($s0)
	sw	$s1, 76($s0)
	b	lbl_0012B570
	ori	$v0, $v0, 0x400
lbl_0012B568:
	lhu	$v0, 12($s0)
lbl_0012B56C:
	ori	$v0, $v0, 0x800
lbl_0012B570:
	sh	$v0, 12($s0)
lbl_0012B574:
	lw	$a0, 84($s0)
	jal	sub_001249A0
	li	$a1, 1024
	move	$a1, $v0
	bnez	$a1, lbl_0012B5B0
	lhu	$v0, 12($s0)
	addiu	$a0, $s0, 67
	li	$v1, 1
	sw	$a0, 16($s0)
	ori	$v0, $v0, 0x2
	sw	$v1, 20($s0)
	sh	$v0, 12($s0)
	b	lbl_0012B5F4
	sw	$a0, 0($s0)
	nop
lbl_0012B5B0:
	lui	$v1, 0x13
	lw	$a0, 84($s0)
	addiu	$v1, $v1, -22272
	ori	$v0, $v0, 0x80
	sw	$a1, 16($s0)
	sw	$v1, 60($a0)
	sh	$v0, 12($s0)
	sw	$s1, 20($s0)
	beqz	$s2, lbl_0012B5F4
	sw	$a1, 0($s0)
	jal	sub_00111980
	lh	$a0, 14($s0)
	beqzl	$v0, lbl_0012B5F8
	ld	$s0, 112($sp)
	lhu	$v0, 12($s0)
	ori	$v0, $v0, 0x1
	sh	$v0, 12($s0)
lbl_0012B5F4:
	ld	$s0, 112($sp)
lbl_0012B5F8:
	ld	$s1, 120($sp)
	ld	$s2, 128($sp)
	ld	$ra, 136($sp)
	jr	$ra
	addiu	$sp, $sp, 144
	nop

sub_0012B610:
	addiu	$sp, $sp, -16
	move	$v0, $zero
	move	$v1, $sp
	beqz	$a2, lbl_0012B63C
	movn	$v1, $a1, $a1
	beqz	$a3, lbl_0012B63C
	li	$v0, -1
	lbu	$v0, 0($a2)
	sw	$v0, 0($v1)
	lbu	$v0, 0($a2)
	sltu	$v0, $zero, $v0
lbl_0012B63C:
	jr	$ra
	addiu	$sp, $sp, 16

sub_0012B644:
	sltiu	$v0, $a2, 16
	bnez	$v0, lbl_0012B6E4
	andi	$a1, $a1, 0xff
	andi	$v0, $a0, 0xf
	bnez	$v0, lbl_0012B6E4
	move	$a3, $a0
	dsll	$v1, $a1, 0x8
	lui	$v0, 0x101
	ori	$v0, $v0, 0x101
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0x101
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0x101
	daddu	$t2, $v1, $a1
	lui	$v1, 0x8080
	ori	$v1, $v1, 0x8080
	dsll	$v1, $v1, 0x10
	ori	$v1, $v1, 0x8080
	dsll	$v1, $v1, 0x10
	ori	$v1, $v1, 0x8080
	pcpyh	$t0, $t2
	pcpyld	$t1, $t0, $t0
	move	$a0, $v0
	pcpyld	$t0, $v1, $v1
lbl_0012B6A4:
	lq	$v0, 0($a3)
	pxor	$v0, $v0, $t1
	pcpyld	$t2, $a0, $a0
	pnor	$v1, $zero, $v0
	psubb	$v0, $v0, $t2
	pand	$v0, $v0, $v1
	pand	$v0, $v0, $t0
	pcpyud	$v1, $v0, $t1
	or	$v0, $v0, $v1
	bnezl	$v0, lbl_0012B6E4
	move	$a0, $a3
	addiu	$a2, $a2, -16
	sltiu	$v0, $a2, 16
	beqz	$v0, lbl_0012B6A4
	addiu	$a3, $a3, 16
	move	$a0, $a3
lbl_0012B6E4:
	lui	$v0, 0xffff
	addiu	$a2, $a2, -1
	ori	$v0, $v0, 0xffff
	beq	$a2, $v0, lbl_0012B714
	nop
	lui	$v1, 0xffff
	ori	$v1, $v1, 0xffff
lbl_0012B700:
	lbu	$v0, 0($a0)
	beq	$v0, $a1, lbl_0012B71C
	addiu	$a2, $a2, -1
	bne	$a2, $v1, lbl_0012B700
	addiu	$a0, $a0, 1
lbl_0012B714:
	jr	$ra
	move	$v0, $zero
lbl_0012B71C:
	jr	$ra
	move	$v0, $a0
	nop

sub_0012B728:
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$ra, 16($sp)
	lw	$v1, 76($s0)
	bnez	$v1, lbl_0012B760
	li	$a1, 4
	jal	sub_0012DF88
	li	$a2, 16
	move	$v1, $v0
	beqz	$v1, lbl_0012B7B8
	sw	$v1, 76($s0)
lbl_0012B760:
	sll	$v0, $s1, 0x2
	addu	$a0, $v0, $v1
	lw	$v1, 0($a0)
	beqz	$v1, lbl_0012B780
	li	$v0, 1
	lw	$v0, 0($v1)
	b	lbl_0012B7AC
	sw	$v0, 0($a0)
lbl_0012B780:
	move	$a0, $s0
	sllv	$s0, $v0, $s1
	li	$a1, 1
	sll	$a2, $s0, 0x2
	jal	sub_0012DF88
	addiu	$a2, $a2, 20
	move	$v1, $v0
	beqzl	$v1, lbl_0012B7BC
	ld	$s0, 0($sp)
	sw	$s1, 4($v1)
	sw	$s0, 8($v1)
lbl_0012B7AC:
	sw	$zero, 16($v1)
	move	$v0, $v1
	sw	$zero, 12($v1)
lbl_0012B7B8:
	ld	$s0, 0($sp)
lbl_0012B7BC:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0012B7D0:
	beqz	$a1, lbl_0012B7F4
	nop
	lw	$v0, 4($a1)
	lw	$a0, 76($a0)
	sll	$v0, $v0, 0x2
	addu	$v0, $v0, $a0
	lw	$v1, 0($v0)
	sw	$v1, 0($a1)
	sw	$a1, 0($v0)
lbl_0012B7F4:
	jr	$ra
	nop
	nop

sub_0012B800:
	addiu	$sp, $sp, -48
	move	$t0, $a2
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$s3, 24($sp)
	move	$s3, $a3
	sd	$s4, 32($sp)
	move	$s4, $a0
	sd	$s0, 0($sp)
	addiu	$a3, $s1, 20
	sd	$s2, 16($sp)
	move	$t1, $zero
	sd	$ra, 40($sp)
	lw	$s2, 16($s1)
lbl_0012B838:
	lw	$v1, 0($a3)
	addiu	$t1, $t1, 1
	slt	$a2, $t1, $s2
	andi	$a0, $v1, 0xffff
	srl	$v1, $v1, 0x10
	mult	$v0, $a0, $t0
	mult	$v1, $v1, $t0
	addu	$a0, $v0, $s3
	srl	$a1, $a0, 0x10
	andi	$a0, $a0, 0xffff
	addu	$v1, $v1, $a1
	sll	$v0, $v1, 0x10
	srl	$s3, $v1, 0x10
	addu	$v0, $v0, $a0
	sw	$v0, 0($a3)
	bnez	$a2, lbl_0012B838
	addiu	$a3, $a3, 4
	beqz	$s3, lbl_0012B8E8
	move	$v0, $s1
	lw	$v0, 8($s1)
	slt	$v0, $s2, $v0
	bnez	$v0, lbl_0012B8D4
	sll	$v0, $s2, 0x2
	lw	$a1, 4($s1)
	move	$a0, $s4
	jal	sub_0012B728
	addiu	$a1, $a1, 1
	lw	$a2, 16($s1)
	move	$s0, $v0
	addiu	$a1, $s1, 12
	sll	$a2, $a2, 0x2
	addiu	$a0, $s0, 12
	jal	sub_0012515C
	addiu	$a2, $a2, 8
	move	$a0, $s4
	move	$a1, $s1
	jal	sub_0012B7D0
	move	$s1, $s0
	sll	$v0, $s2, 0x2
lbl_0012B8D4:
	addiu	$s2, $s2, 1
	addu	$v0, $v0, $s1
	sw	$s3, 20($v0)
	sw	$s2, 16($s1)
	move	$v0, $s1
lbl_0012B8E8:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0012B908:
	addiu	$sp, $sp, -48
	li	$v0, 9
	sd	$s4, 32($sp)
	move	$s4, $a3
	addiu	$v1, $s4, 8
	li	$a3, 1
	div	$zero, $v1, $v0
	sd	$s0, 0($sp)
	sd	$s1, 8($sp)
	move	$s1, $t0
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$s3, 24($sp)
	move	$s3, $a0
	sd	$ra, 40($sp)
	beqzl	$v0, lbl_0012B94C
	break	0x7
lbl_0012B94C:
	move	$s0, $a1
	mflo	$v1
	slt	$v0, $a3, $v1
	beqz	$v0, lbl_0012B97C
	move	$a1, $zero
lbl_0012B960:
	sll	$a3, $a3, 0x1
	slt	$v0, $a3, $v1
	nop
	nop
	nop
	bnez	$v0, lbl_0012B960
	addiu	$a1, $a1, 1
lbl_0012B97C:
	jal	sub_0012B728
	move	$a0, $s3
	slti	$v1, $s2, 10
	move	$a1, $v0
	li	$v0, 1
	sw	$s1, 20($a1)
	li	$s1, 9
	bnez	$v1, lbl_0012B9D8
	sw	$v0, 16($a1)
	addiu	$s0, $s0, 9
	lb	$a3, 0($s0)
lbl_0012B9A8:
	addiu	$s0, $s0, 1
	move	$a0, $s3
	li	$a2, 10
	addiu	$a3, $a3, -48
	jal	sub_0012B800
	addiu	$s1, $s1, 1
	move	$a1, $v0
	slt	$v0, $s1, $s2
	bnezl	$v0, lbl_0012B9A8
	lb	$a3, 0($s0)
	b	lbl_0012B9DC
	addiu	$s0, $s0, 1
lbl_0012B9D8:
	addiu	$s0, $s0, 10
lbl_0012B9DC:
	slt	$v0, $s1, $s4
	beqzl	$v0, lbl_0012BA18
	ld	$s0, 0($sp)
	subu	$s1, $s4, $s1
	nop
lbl_0012B9F0:
	lb	$a3, 0($s0)
	addiu	$s0, $s0, 1
	move	$a0, $s3
	li	$a2, 10
	addiu	$a3, $a3, -48
	jal	sub_0012B800
	addiu	$s1, $s1, -1
	bnez	$s1, lbl_0012B9F0
	move	$a1, $v0
	ld	$s0, 0($sp)
lbl_0012BA18:
	move	$v0, $a1
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0012BA38:
	lui	$v0, 0xffff
	and	$v0, $a0, $v0
	bnez	$v0, lbl_0012BA50
	move	$a1, $zero
	li	$a1, 16
	sll	$a0, $a0, 0x10
lbl_0012BA50:
	lui	$v0, 0xff00
	and	$v0, $a0, $v0
	bnez	$v0, lbl_0012BA68
	lui	$v0, 0xf000
	addiu	$a1, $a1, 8
	sll	$a0, $a0, 0x8
lbl_0012BA68:
	and	$v0, $a0, $v0
	bnez	$v0, lbl_0012BA7C
	lui	$v0, 0xc000
	addiu	$a1, $a1, 4
	sll	$a0, $a0, 0x4
lbl_0012BA7C:
	and	$v0, $a0, $v0
	bnez	$v0, lbl_0012BA90
	nop
	addiu	$a1, $a1, 2
	sll	$a0, $a0, 0x2
lbl_0012BA90:
	bltz	$a0, lbl_0012BAB0
	move	$v0, $a1
	lui	$v1, 0x4000
	addiu	$a1, $a1, 1
	and	$v1, $a0, $v1
	beqz	$v1, lbl_0012BAB0
	li	$v0, 32
	move	$v0, $a1
lbl_0012BAB0:
	jr	$ra
	nop

sub_0012BAB8:
	lw	$a1, 0($a0)
	andi	$v0, $a1, 0x7
	beqz	$v0, lbl_0012BAF8
	andi	$v1, $a1, 0x1
	bnez	$v1, lbl_0012BB6C
	move	$v0, $zero
	andi	$v0, $a1, 0x2
	beqz	$v0, lbl_0012BAE8
	srl	$v1, $a1, 0x1
	li	$v0, 1
	jr	$ra
	sw	$v1, 0($a0)
lbl_0012BAE8:
	srl	$v1, $a1, 0x2
	li	$v0, 2
	jr	$ra
	sw	$v1, 0($a0)
lbl_0012BAF8:
	andi	$v0, $a1, 0xffff
	bnez	$v0, lbl_0012BB0C
	move	$v1, $zero
	li	$v1, 16
	srl	$a1, $a1, 0x10
lbl_0012BB0C:
	andi	$v0, $a1, 0xff
	bnez	$v0, lbl_0012BB24
	andi	$v0, $a1, 0xf
	addiu	$v1, $v1, 8
	srl	$a1, $a1, 0x8
	andi	$v0, $a1, 0xf
lbl_0012BB24:
	bnez	$v0, lbl_0012BB38
	andi	$v0, $a1, 0x3
	addiu	$v1, $v1, 4
	srl	$a1, $a1, 0x4
	andi	$v0, $a1, 0x3
lbl_0012BB38:
	bnez	$v0, lbl_0012BB4C
	andi	$v0, $a1, 0x1
	addiu	$v1, $v1, 2
	srl	$a1, $a1, 0x2
	andi	$v0, $a1, 0x1
lbl_0012BB4C:
	bnezl	$v0, lbl_0012BB68
	sw	$a1, 0($a0)
	srl	$a1, $a1, 0x1
	addiu	$v1, $v1, 1
	beqz	$a1, lbl_0012BB6C
	li	$v0, 32
	sw	$a1, 0($a0)
lbl_0012BB68:
	move	$v0, $v1
lbl_0012BB6C:
	jr	$ra
	nop
	nop

sub_0012BB78:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$ra, 8($sp)
	jal	sub_0012B728
	li	$a1, 1
	li	$v1, 1
	move	$a0, $v0
	ld	$ra, 8($sp)
	sw	$s0, 20($a0)
	ld	$s0, 0($sp)
	sw	$v1, 16($a0)
	jr	$ra
	addiu	$sp, $sp, 16

sub_0012BBB0:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$s1, 8($sp)
	sd	$s3, 24($sp)
	sd	$s4, 32($sp)
	sd	$ra, 40($sp)
	lw	$s3, 16($s0)
	lw	$s1, 16($s2)
	slt	$v0, $s3, $s1
	beqzl	$v0, lbl_0012BC00
	lw	$a1, 8($s0)
	move	$t8, $s0
	move	$s0, $s2
	move	$s2, $t8
	move	$s3, $s1
	lw	$s1, 16($s2)
	lw	$a1, 8($s0)
lbl_0012BC00:
	addu	$s4, $s3, $s1
	lw	$v0, 4($s0)
	slt	$a1, $a1, $s4
	jal	sub_0012B728
	addu	$a1, $v0, $a1
	sll	$t9, $s4, 0x2
	move	$t8, $v0
	addiu	$t7, $t8, 20
	addu	$t5, $t7, $t9
	sltu	$v0, $t7, $t5
	beqz	$v0, lbl_0012BC54
	move	$t0, $t7
	sw	$zero, 0($t0)
	nop
lbl_0012BC38:
	addiu	$t0, $t0, 4
	sltu	$v0, $t0, $t5
	nop
	nop
	nop
	bnezl	$v0, lbl_0012BC38
	sw	$zero, 0($t0)
lbl_0012BC54:
	addiu	$t3, $s2, 20
	sll	$v0, $s1, 0x2
	addu	$s1, $t3, $v0
	sll	$v0, $s3, 0x2
	addiu	$t5, $s0, 20
	sltu	$v1, $t3, $s1
	addu	$t6, $t5, $v0
	beqz	$v1, lbl_0012BD6C
	move	$t4, $t7
lbl_0012BC78:
	lw	$v0, 0($t3)
	andi	$t1, $v0, 0xffff
	beqz	$t1, lbl_0012BCE8
	move	$a3, $t4
	move	$t0, $t5
	move	$t2, $zero
lbl_0012BC90:
	lw	$v1, 0($t0)
	addiu	$t0, $t0, 4
	lw	$a1, 0($a3)
	sltu	$a2, $t0, $t6
	andi	$v0, $v1, 0xffff
	srl	$v1, $v1, 0x10
	mult	$v0, $v0, $t1
	mult1	$v1, $v1, $t1
	andi	$a0, $a1, 0xffff
	srl	$a1, $a1, 0x10
	addu	$v0, $v0, $a0
	addu	$v1, $v1, $a1
	addu	$v0, $v0, $t2
	srl	$t2, $v0, 0x10
	sh	$v0, 0($a3)
	addu	$v0, $v1, $t2
	sh	$v0, 2($a3)
	addiu	$a3, $a3, 4
	bnez	$a2, lbl_0012BC90
	srl	$t2, $v0, 0x10
	sw	$t2, 0($a3)
	lw	$v0, 0($t3)
lbl_0012BCE8:
	srl	$t1, $v0, 0x10
	beqz	$t1, lbl_0012BD5C
	move	$a3, $t4
	move	$t0, $t5
	lw	$v0, 0($a3)
	move	$t2, $zero
	move	$a0, $v0
	nop
lbl_0012BD08:
	lw	$v1, 0($t0)
	addiu	$t0, $t0, 4
	sh	$v0, 0($a3)
	srl	$a0, $a0, 0x10
	andi	$v0, $v1, 0xffff
	srl	$v1, $v1, 0x10
	mult	$v0, $v0, $t1
	mult1	$v1, $v1, $t1
	sltu	$a1, $t0, $t6
	addu	$v0, $v0, $a0
	addu	$v0, $v0, $t2
	sh	$v0, 2($a3)
	addiu	$a3, $a3, 4
	lw	$a0, 0($a3)
	srl	$t2, $v0, 0x10
	andi	$v0, $a0, 0xffff
	addu	$v1, $v1, $v0
	addu	$v0, $v1, $t2
	bnez	$a1, lbl_0012BD08
	srl	$t2, $v0, 0x10
	sw	$v0, 0($a3)
lbl_0012BD5C:
	addiu	$t3, $t3, 4
	sltu	$v0, $t3, $s1
	bnez	$v0, lbl_0012BC78
	addiu	$t4, $t4, 4
lbl_0012BD6C:
	addu	$a3, $t7, $t9
lbl_0012BD70:
	blezl	$s4, lbl_0012BD98
	sw	$s4, 16($t8)
	addiu	$a3, $a3, -4
	lw	$v0, 0($a3)
	nop
	nop
	nop
	beqzl	$v0, lbl_0012BD70
	addiu	$s4, $s4, -1
	sw	$s4, 16($t8)
lbl_0012BD98:
	move	$v0, $t8
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0012BDC0:
	addiu	$sp, $sp, -48
	sd	$s1, 8($sp)
	move	$s1, $a2
	andi	$v0, $s1, 0x3
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	move	$s3, $a0
	sd	$s0, 0($sp)
	move	$s2, $a1
	beqz	$v0, lbl_0012BE08
	sd	$ra, 32($sp)
	sll	$v0, $v0, 0x2
	lui	$a2, 0x13
	addu	$a2, $a2, $v0
	lw	$a2, 26492($a2)
	jal	sub_0012B800
	move	$a3, $zero
	move	$s2, $v0
lbl_0012BE08:
	sra	$s1, $s1, 0x2
	beqz	$s1, lbl_0012BEA0
	move	$v0, $s2
	lw	$s0, 72($s3)
	bnez	$s0, lbl_0012BE6C
	andi	$v0, $s1, 0x1
	move	$a0, $s3
	jal	sub_0012BB78
	li	$a1, 625
	move	$s0, $v0
	sw	$v0, 72($s3)
	b	lbl_0012BE68
	sw	$zero, 0($s0)
	nop
lbl_0012BE40:
	bnezl	$v1, lbl_0012BE68
	move	$s0, $v1
	move	$a1, $s0
	move	$a2, $s0
	jal	sub_0012BBB0
	move	$a0, $s3
	move	$v1, $v0
	sw	$v0, 0($s0)
	sw	$zero, 0($v1)
	move	$s0, $v1
lbl_0012BE68:
	andi	$v0, $s1, 0x1
lbl_0012BE6C:
	beqz	$v0, lbl_0012BE94
	sra	$s1, $s1, 0x1
	move	$a1, $s2
	move	$a0, $s3
	jal	sub_0012BBB0
	move	$a2, $s0
	move	$a0, $s3
	move	$a1, $s2
	jal	sub_0012B7D0
	move	$s2, $v0
lbl_0012BE94:
	bnezl	$s1, lbl_0012BE40
	lw	$v1, 0($s0)
	move	$v0, $s2
lbl_0012BEA0:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop

sub_0012BEC0:
	addiu	$sp, $sp, -64
	sd	$s0, 0($sp)
	move	$s0, $a2
	sd	$s1, 8($sp)
	sra	$s1, $s0, 0x5
	sd	$s2, 16($sp)
	sd	$s3, 24($sp)
	move	$s3, $a1
	sd	$s5, 40($sp)
	move	$s5, $a0
	sd	$s4, 32($sp)
	sd	$ra, 48($sp)
	lw	$v1, 16($s3)
	lw	$a2, 8($s3)
	addu	$v1, $s1, $v1
	addiu	$s2, $v1, 1
	slt	$v0, $a2, $s2
	beqz	$v0, lbl_0012BF2C
	lw	$a1, 4($s3)
	nop
lbl_0012BF10:
	sll	$a2, $a2, 0x1
	slt	$v0, $a2, $s2
	nop
	nop
	nop
	bnez	$v0, lbl_0012BF10
	addiu	$a1, $a1, 1
lbl_0012BF2C:
	jal	sub_0012B728
	move	$a0, $s5
	move	$s4, $v0
	blez	$s1, lbl_0012BF64
	addiu	$a3, $s4, 20
	move	$a2, $s1
	nop
lbl_0012BF48:
	addiu	$a2, $a2, -1
	sw	$zero, 0($a3)
	nop
	nop
	nop
	bnez	$a2, lbl_0012BF48
	addiu	$a3, $a3, 4
lbl_0012BF64:
	lw	$v0, 16($s3)
	addiu	$a0, $s3, 20
	andi	$s0, $s0, 0x1f
	sll	$v0, $v0, 0x2
	beqz	$s0, lbl_0012BFC0
	addu	$a2, $a0, $v0
	li	$v0, 32
	move	$v1, $zero
	subu	$a1, $v0, $s0
lbl_0012BF88:
	lw	$v0, 0($a0)
	sllv	$v0, $v0, $s0
	or	$v0, $v0, $v1
	sw	$v0, 0($a3)
	addiu	$a3, $a3, 4
	lw	$v1, 0($a0)
	addiu	$a0, $a0, 4
	sltu	$v0, $a0, $a2
	bnez	$v0, lbl_0012BF88
	srlv	$v1, $v1, $a1
	beqz	$v1, lbl_0012BFDC
	sw	$v1, 0($a3)
	b	lbl_0012BFDC
	addiu	$s2, $s2, 1
lbl_0012BFC0:
	lw	$v0, 0($a0)
	addiu	$a0, $a0, 4
	sltu	$v1, $a0, $a2
	sw	$v0, 0($a3)
	nop
	bnez	$v1, lbl_0012BFC0
	addiu	$a3, $a3, 4
lbl_0012BFDC:
	addiu	$v0, $s2, -1
	move	$a0, $s5
	sw	$v0, 16($s4)
	jal	sub_0012B7D0
	move	$a1, $s3
	move	$v0, $s4
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$ra, 48($sp)
	jr	$ra
	addiu	$sp, $sp, 64

sub_0012C018:
	lw	$v0, 16($a0)
	lw	$v1, 16($a1)
	subu	$v0, $v0, $v1
	bnez	$v0, lbl_0012C078
	nop
	sll	$v1, $v1, 0x2
	addiu	$t2, $a0, 20
	addiu	$v0, $a1, 20
	addu	$a3, $t2, $v1
	addu	$t1, $v0, $v1
	addiu	$a3, $a3, -4
	nop
lbl_0012C048:
	addiu	$t1, $t1, -4
	lw	$a1, 0($a3)
	li	$a2, 1
	lw	$a0, 0($t1)
	li	$v0, -1
	sltu	$t0, $t2, $a3
	sltu	$v1, $a1, $a0
	bne	$a1, $a0, lbl_0012C078
	movz	$v0, $a2, $v1
	bnezl	$t0, lbl_0012C048
	addiu	$a3, $a3, -4
	move	$v0, $zero
lbl_0012C078:
	jr	$ra
	nop

sub_0012C080:
	addiu	$sp, $sp, -48
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$s3, 24($sp)
	move	$s3, $a0
	move	$a1, $s2
	sd	$s0, 0($sp)
	sd	$ra, 32($sp)
	jal	sub_0012C018
	move	$a0, $s1
	move	$s0, $v0
	bnez	$s0, lbl_0012C0D8
	move	$a0, $s3
	jal	sub_0012B728
	move	$a1, $zero
	li	$v1, 1
	move	$t3, $v0
	sw	$v1, 16($t3)
	b	lbl_0012C1F4
	sw	$zero, 20($t3)
lbl_0012C0D8:
	bgezl	$s0, lbl_0012C0F0
	move	$s0, $zero
	move	$t3, $s1
	move	$s1, $s2
	li	$s0, 1
	move	$s2, $t3
lbl_0012C0F0:
	lw	$a1, 4($s1)
	jal	sub_0012B728
	move	$a0, $s3
	addiu	$t0, $s1, 20
	move	$t3, $v0
	addiu	$t1, $s2, 20
	sw	$s0, 12($t3)
	addiu	$a3, $t3, 20
	move	$t2, $zero
	lw	$t4, 16($s1)
	lw	$v0, 16($s2)
	sll	$v1, $t4, 0x2
	sll	$v0, $v0, 0x2
	addu	$t5, $t0, $v1
	addu	$a2, $t1, $v0
	nop
lbl_0012C130:
	lw	$a1, 0($t0)
	addiu	$t0, $t0, 4
	lw	$v0, 0($t1)
	addiu	$t1, $t1, 4
	andi	$v1, $a1, 0xffff
	srl	$a1, $a1, 0x10
	andi	$a0, $v0, 0xffff
	srl	$v0, $v0, 0x10
	subu	$v1, $v1, $a0
	subu	$a1, $a1, $v0
	addu	$v1, $v1, $t2
	sltu	$v0, $t1, $a2
	sra	$t2, $v1, 0x10
	sh	$v1, 0($a3)
	addu	$a1, $a1, $t2
	sh	$a1, 2($a3)
	addiu	$a3, $a3, 4
	bnez	$v0, lbl_0012C130
	sra	$t2, $a1, 0x10
	sltu	$v0, $t0, $t5
	beqzl	$v0, lbl_0012C1C0
	addiu	$a3, $a3, -4
lbl_0012C188:
	lw	$v0, 0($t0)
	addiu	$t0, $t0, 4
	sltu	$a0, $t0, $t5
	andi	$v1, $v0, 0xffff
	srl	$v0, $v0, 0x10
	addu	$v1, $v1, $t2
	sra	$t2, $v1, 0x10
	sh	$v1, 0($a3)
	addu	$a1, $v0, $t2
	sh	$a1, 2($a3)
	addiu	$a3, $a3, 4
	bnez	$a0, lbl_0012C188
	sra	$t2, $a1, 0x10
	addiu	$a3, $a3, -4
lbl_0012C1C0:
	lw	$v0, 0($a3)
	bnezl	$v0, lbl_0012C1F0
	sw	$t4, 16($t3)
	nop
lbl_0012C1D0:
	addiu	$a3, $a3, -4
	lw	$v0, 0($a3)
	nop
	nop
	nop
	beqz	$v0, lbl_0012C1D0
	addiu	$t4, $t4, -1
	sw	$t4, 16($t3)
lbl_0012C1F0:
	move	$v0, $t3
lbl_0012C1F4:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$ra, 32($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0012C210:
	lui	$v0, 0x7ff0
	dsra32	$a0, $a0, 0x0
	and	$a0, $a0, $v0
	lui	$v1, 0xfcc0
	addu	$a0, $a0, $v1
	negu	$v0, $a0
	blez	$a0, lbl_0012C250
	dsll32	$a2, $a0, 0x0
	lui	$v0, 0xffff
	dsrl32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	and	$a1, $a1, $v0
	or	$a1, $a1, $a2
	b	lbl_0012C2D4
	and	$a1, $a1, $v1
lbl_0012C250:
	sra	$a0, $v0, 0x14
	slti	$v0, $a0, 20
	beqzl	$v0, lbl_0012C290
	addiu	$a0, $a0, -20
	lui	$v0, 0x8
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	srav	$v0, $v0, $a0
	and	$a1, $a1, $v1
	dsll32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	or	$a1, $a1, $v0
	b	lbl_0012C2D4
	and	$a1, $a1, $v1
	nop
lbl_0012C290:
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	slti	$v0, $a0, 31
	nor	$a2, $zero, $a0
	beqz	$v0, lbl_0012C2B8
	and	$a1, $a1, $v1
	li	$v0, 1
	b	lbl_0012C2BC
	sllv	$v0, $v0, $a2
	nop
lbl_0012C2B8:
	li	$v0, 1
lbl_0012C2BC:
	dsll32	$v0, $v0, 0x0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$a1, $a1, $v1
	or	$a1, $a1, $v0
lbl_0012C2D4:
	move	$v0, $a1
	jr	$ra
	nop

sub_0012C2E0:
	addiu	$sp, $sp, -48
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$s2, 16($sp)
	sd	$s4, 32($sp)
	addiu	$s4, $a0, 20
	sd	$s1, 8($sp)
	sd	$s3, 24($sp)
	sd	$ra, 40($sp)
	lw	$v0, 16($a0)
	sll	$v0, $v0, 0x2
	addu	$s2, $s4, $v0
	addiu	$s2, $s2, -4
	lw	$s3, 0($s2)
	jal	sub_0012BA38
	move	$a0, $s3
	move	$a2, $v0
	li	$v0, 32
	subu	$v0, $v0, $a2
	slti	$v1, $a2, 11
	beqz	$v1, lbl_0012C3A0
	sw	$v0, 0($s0)
	li	$v0, 11
	lui	$a0, 0x3ff0
	subu	$v0, $v0, $a2
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	srlv	$v0, $s3, $v0
	and	$s1, $s1, $v1
	or	$v0, $v0, $a0
	move	$a0, $zero
	dsll32	$v0, $v0, 0x0
	sltu	$v1, $s4, $s2
	beqz	$v1, lbl_0012C370
	or	$s1, $s1, $v0
	lw	$a0, -4($s2)
lbl_0012C370:
	li	$v0, 11
	addiu	$v1, $a2, 21
	subu	$v0, $v0, $a2
	sllv	$v1, $s3, $v1
	srlv	$v0, $a0, $v0
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	or	$v1, $v1, $v0
	and	$s1, $s1, $a0
	dsll32	$v1, $v1, 0x0
	b	lbl_0012C450
	dsrl32	$v1, $v1, 0x0
lbl_0012C3A0:
	sltu	$v0, $s4, $s2
	beqzl	$v0, lbl_0012C3B4
	move	$a3, $zero
	addiu	$s2, $s2, -4
	lw	$a3, 0($s2)
lbl_0012C3B4:
	addiu	$a2, $a2, -11
	beqz	$a2, lbl_0012C420
	negu	$v1, $a2
	sllv	$v0, $s3, $a2
	srlv	$v1, $a3, $v1
	lui	$a1, 0x3ff0
	or	$v0, $v0, $v1
	sltu	$v1, $s4, $s2
	lui	$a0, 0xffff
	dsrl32	$a0, $a0, 0x0
	or	$v0, $v0, $a1
	and	$s1, $s1, $a0
	dsll32	$v0, $v0, 0x0
	or	$s1, $s1, $v0
	beqz	$v1, lbl_0012C3F8
	move	$s3, $zero
	lw	$s3, -4($s2)
lbl_0012C3F8:
	negu	$v0, $a2
	sllv	$v1, $a3, $a2
	srlv	$v0, $s3, $v0
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	or	$v1, $v1, $v0
	and	$s1, $s1, $a0
	dsll32	$v1, $v1, 0x0
	b	lbl_0012C450
	dsrl32	$v1, $v1, 0x0
lbl_0012C420:
	lui	$v0, 0x3ff0
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	or	$v0, $s3, $v0
	and	$s1, $s1, $v1
	dsll32	$v0, $v0, 0x0
	li	$a0, -1
	dsll32	$a0, $a0, 0x0
	dsll32	$v1, $a3, 0x0
	or	$s1, $s1, $v0
	dsrl32	$v1, $v1, 0x0
	and	$s1, $s1, $a0
lbl_0012C450:
	or	$s1, $s1, $v1
	move	$v0, $s1
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0012C478:
	addiu	$sp, $sp, -80
	sd	$s0, 16($sp)
	move	$s0, $a1
	li	$a1, 1
	sd	$s1, 24($sp)
	sd	$s2, 32($sp)
	sd	$s3, 40($sp)
	sd	$s4, 48($sp)
	move	$s4, $a2
	sd	$s5, 56($sp)
	sd	$ra, 64($sp)
	jal	sub_0012B728
	move	$s5, $a3
	move	$s3, $v0
	lui	$v0, 0x7fff
	dsra32	$a0, $s0, 0x0
	ori	$v0, $v0, 0xffff
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	and	$v0, $a0, $v0
	and	$s0, $s0, $v1
	lui	$v1, 0xf
	dsll32	$v0, $v0, 0x0
	ori	$v1, $v1, 0xffff
	or	$s0, $s0, $v0
	and	$a0, $a0, $v1
	dsrl32	$s2, $s0, 0x14
	sw	$a0, 4($sp)
	beqz	$s2, lbl_0012C4FC
	addiu	$s1, $s3, 20
	lui	$v0, 0x10
	or	$v0, $a0, $v0
	sw	$v0, 4($sp)
lbl_0012C4FC:
	dsll32	$a1, $s0, 0x0
	dsra32	$a1, $a1, 0x0
	beqz	$a1, lbl_0012C570
	move	$a0, $sp
	jal	sub_0012BAB8
	sw	$a1, 0($sp)
	move	$a1, $v0
	beqz	$a1, lbl_0012C548
	lw	$v0, 4($sp)
	negu	$a0, $a1
	lw	$v1, 0($sp)
	sllv	$v0, $v0, $a0
	or	$v1, $v1, $v0
	sw	$v1, 0($s1)
	lw	$v0, 4($sp)
	srlv	$v0, $v0, $a1
	b	lbl_0012C550
	sw	$v0, 4($sp)
	nop
lbl_0012C548:
	lw	$v0, 0($sp)
	sw	$v0, 0($s1)
lbl_0012C550:
	lw	$a0, 4($sp)
	li	$v1, 1
	li	$v0, 2
	movz	$v0, $v1, $a0
	sw	$a0, 4($s1)
	move	$s0, $v0
	b	lbl_0012C590
	sw	$v0, 16($s3)
lbl_0012C570:
	addiu	$a0, $sp, 4
	jal	sub_0012BAB8
	li	$s0, 1
	li	$a0, 1
	lw	$v1, 4($sp)
	addiu	$a1, $v0, 32
	sw	$v1, 0($s1)
	sw	$a0, 16($s3)
lbl_0012C590:
	beqz	$s2, lbl_0012C5B0
	addu	$v0, $s2, $a1
	li	$v1, 53
	subu	$v1, $v1, $a1
	addiu	$v0, $v0, -1075
	b	lbl_0012C5D0
	sw	$v0, 0($s4)
	nop
lbl_0012C5B0:
	addiu	$v1, $a1, -1074
	sll	$v0, $s0, 0x2
	sw	$v1, 0($s4)
	addu	$v0, $s1, $v0
	jal	sub_0012BA38
	lw	$a0, -4($v0)
	sll	$v1, $s0, 0x5
	subu	$v1, $v1, $v0
lbl_0012C5D0:
	sw	$v1, 0($s5)
	move	$v0, $s3
	ld	$s0, 16($sp)
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$ra, 64($sp)
	jr	$ra
	addiu	$sp, $sp, 80
	nop

sub_0012C600:
	addiu	$sp, $sp, -48
	sd	$s1, 24($sp)
	move	$s1, $a1
	move	$a1, $sp
	sd	$s0, 16($sp)
	sd	$s2, 32($sp)
	sd	$ra, 40($sp)
	jal	sub_0012C2E0
	move	$s0, $a0
	addiu	$a1, $sp, 4
	move	$a0, $s1
	jal	sub_0012C2E0
	move	$s2, $v0
	lw	$v1, 16($s0)
	move	$t0, $v0
	lw	$a2, 16($s1)
	dsra32	$a1, $s2, 0x0
	lw	$a0, 4($sp)
	dsra32	$a3, $t0, 0x0
	lw	$v0, 0($sp)
	subu	$v1, $v1, $a2
	sll	$v1, $v1, 0x5
	subu	$v0, $v0, $a0
	addu	$v0, $v0, $v1
	sll	$a0, $v0, 0x14
	move	$v1, $a0
	addu	$a1, $a1, $a0
	subu	$v1, $a3, $v1
	blez	$v0, lbl_0012C690
	dsll32	$a1, $a1, 0x0
	lui	$v0, 0xffff
	dsrl32	$v0, $v0, 0x0
	and	$s2, $s2, $v0
	b	lbl_0012C6A4
	or	$s2, $s2, $a1
	nop
lbl_0012C690:
	lui	$v0, 0xffff
	dsrl32	$v0, $v0, 0x0
	dsll32	$v1, $v1, 0x0
	and	$t0, $t0, $v0
	or	$t0, $t0, $v1
lbl_0012C6A4:
	move	$a0, $s2
	move	$a1, $t0
	jal	sub_00122798
	nop
	ld	$s0, 16($sp)
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48
	nop
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	slti	$v0, $s0, 24
	li	$a0, 0xffc0
	dsll32	$a0, $a0, 0xe
	beqz	$v0, lbl_0012C708
	sd	$ra, 8($sp)
	sll	$v1, $s0, 0x3
	lui	$v0, 0x13
	addu	$v0, $v0, $v1
	ld	$v0, 26512($v0)
	b	lbl_0012C734
	ld	$s0, 0($sp)
lbl_0012C708:
	blez	$s0, lbl_0012C72C
	nop
lbl_0012C710:
	li	$a1, 0x8048
	dsll32	$a1, $a1, 0xf
	jal	sub_00122510
	addiu	$s0, $s0, -1
	move	$a0, $v0
	bgtz	$s0, lbl_0012C710
	nop
lbl_0012C72C:
	move	$v0, $a0
	ld	$s0, 0($sp)
lbl_0012C734:
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	li	$v1, 9
	sd	$ra, 0($sp)
	lhu	$v0, 12($a0)
	andi	$v0, $v0, 0x9
	bne	$v0, $v1, lbl_0012C768
	ld	$ra, 0($sp)
	j	sub_0012A618
	addiu	$sp, $sp, 16
	nop
lbl_0012C768:
	move	$v0, $zero
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0012C778:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	lw	$v1, 84($s0)
	bnezl	$v1, lbl_0012C7A8
	lw	$v0, 56($v1)
	lui	$v0, 0x13
	lw	$v1, 11128($v0)
	sw	$v1, 84($s0)
	lw	$v0, 56($v1)
	nop
lbl_0012C7A8:
	bnezl	$v0, lbl_0012C7BC
	lhu	$a0, 12($s0)
	jal	sub_0012A940
	move	$a0, $v1
	lhu	$a0, 12($s0)
lbl_0012C7BC:
	li	$v0, -1
	andi	$v1, $a0, 0x20
	bnez	$v1, lbl_0012C8E4
	sw	$zero, 4($s0)
	andi	$v0, $a0, 0x4
	bnezl	$v0, lbl_0012C828
	lw	$a1, 48($s0)
	andi	$v1, $a0, 0x10
	beqz	$v1, lbl_0012C8E4
	li	$v0, -1
	andi	$v0, $a0, 0x8
	beqzl	$v0, lbl_0012C81C
	ori	$v0, $a0, 0x4
	jal	sub_0012A618
	move	$a0, $s0
	bnez	$v0, lbl_0012C8E4
	li	$v0, -1
	lhu	$v0, 12($s0)
	sw	$zero, 8($s0)
	andi	$v0, $v0, 0xfff7
	sw	$zero, 24($s0)
	sh	$v0, 12($s0)
	move	$a0, $v0
	ori	$v0, $a0, 0x4
lbl_0012C81C:
	b	lbl_0012C860
	sh	$v0, 12($s0)
	nop
lbl_0012C828:
	beqz	$a1, lbl_0012C860
	addiu	$v0, $s0, 64
	beql	$a1, $v0, lbl_0012C844
	lw	$v0, 60($s0)
	jal	sub_0012AAF0
	lw	$a0, 84($s0)
	lw	$v0, 60($s0)
lbl_0012C844:
	sw	$zero, 48($s0)
	beqz	$v0, lbl_0012C860
	sw	$v0, 4($s0)
	lw	$v1, 56($s0)
	move	$v0, $zero
	b	lbl_0012C8E4
	sw	$v1, 0($s0)
lbl_0012C860:
	lw	$v0, 16($s0)
	bnezl	$v0, lbl_0012C878
	lhu	$v0, 12($s0)
	jal	sub_0012B4B8
	move	$a0, $s0
	lhu	$v0, 12($s0)
lbl_0012C878:
	andi	$v0, $v0, 0x3
	beqz	$v0, lbl_0012C890
	lui	$a1, 0x13
	lw	$a0, 84($s0)
	jal	sub_0012B338
	addiu	$a1, $a1, -14528
lbl_0012C890:
	lw	$a1, 16($s0)
	lw	$a0, 28($s0)
	lw	$v0, 32($s0)
	sw	$a1, 0($s0)
	jalr	$v0
	lw	$a2, 20($s0)
	lhu	$v1, 12($s0)
	move	$a0, $v0
	move	$v0, $zero
	andi	$v1, $v1, 0xdfff
	sw	$a0, 4($s0)
	bgtz	$a0, lbl_0012C8E4
	sh	$v1, 12($s0)
	bnezl	$a0, lbl_0012C8D8
	ori	$v0, $v1, 0x40
	b	lbl_0012C8DC
	ori	$v0, $v1, 0x20
	nop
lbl_0012C8D8:
	sw	$zero, 4($s0)
lbl_0012C8DC:
	sh	$v0, 12($s0)
	li	$v0, -1
lbl_0012C8E4:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop

sub_0012C8F8:
	dsll32	$v1, $a0, 0x0
	dsra32	$v1, $v1, 0x0
	dsra32	$a0, $a0, 0x0
	lui	$v0, 0x7fff
	lui	$a2, 0x7ff0
	negu	$a1, $v1
	ori	$v0, $v0, 0xffff
	or	$v1, $v1, $a1
	and	$a0, $a0, $v0
	srl	$v1, $v1, 0x1f
	li	$v0, 1
	or	$a0, $a0, $v1
	subu	$a0, $a2, $a0
	negu	$v1, $a0
	or	$a0, $a0, $v1
	srl	$a0, $a0, 0x1f
	jr	$ra
	subu	$v0, $v0, $a0

sub_0012C940:
	move	$v0, $a0
	dsll32	$a0, $v0, 0x0
	dsra32	$a0, $a0, 0x0
	dsra32	$v0, $v0, 0x0
	lui	$v1, 0x7fff
	lui	$a2, 0x7ff0
	negu	$a1, $a0
	ori	$v1, $v1, 0xffff
	or	$a0, $a0, $a1
	and	$v0, $v0, $v1
	srl	$a0, $a0, 0x1f
	or	$v0, $v0, $a0
	subu	$v0, $a2, $v0
	jr	$ra
	srl	$v0, $v0, 0x1f
	nop
	addiu	$sp, $sp, -16
	move	$a3, $a2
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	move	$a2, $a1
	lw	$a0, 84($s0)
	jal	sub_0012E158
	lh	$a1, 14($s0)
	dsll32	$a0, $v0, 0x0
	dsra32	$a0, $a0, 0x0
	bltz	$a0, lbl_0012C9C8
	move	$v0, $a0
	lw	$v1, 80($s0)
	addu	$v1, $v1, $a0
	b	lbl_0012C9D4
	sw	$v1, 80($s0)
	nop
lbl_0012C9C8:
	lhu	$v1, 12($s0)
	andi	$v1, $v1, 0xefff
	sh	$v1, 12($s0)
lbl_0012C9D4:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -32
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$ra, 24($sp)
	lhu	$v0, 12($s0)
	andi	$v0, $v0, 0x100
	beqz	$v0, lbl_0012CA28
	move	$a2, $zero
	lw	$a0, 84($s0)
	li	$a3, 2
	jal	sub_0012E0F8
	lh	$a1, 14($s0)
lbl_0012CA28:
	lhu	$v0, 12($s0)
	move	$a2, $s1
	lh	$a1, 14($s0)
	move	$a3, $s2
	andi	$v0, $v0, 0xefff
	lw	$a0, 84($s0)
	jal	sub_0012DF28
	sh	$v0, 12($s0)
	ld	$s0, 0($sp)
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$ra, 24($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	addiu	$sp, $sp, -16
	move	$a3, $a2
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$ra, 8($sp)
	move	$a2, $a1
	lw	$a0, 84($s0)
	jal	sub_0012E0F8
	lh	$a1, 14($s0)
	li	$a0, -1
	move	$v1, $v0
	dsll32	$a1, $v1, 0x0
	dsra32	$a1, $a1, 0x0
	bne	$v1, $a0, lbl_0012CAB0
	lhu	$v1, 12($s0)
	b	lbl_0012CAB8
	andi	$v1, $v1, 0xefff
	nop
lbl_0012CAB0:
	sw	$a1, 80($s0)
	ori	$v1, $v1, 0x1000
lbl_0012CAB8:
	sh	$v1, 12($s0)
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	lh	$a1, 14($a0)
	ld	$ra, 0($sp)
	lw	$a0, 84($a0)
	j	lbl_0012E040
	addiu	$sp, $sp, 16
	nop
lbl_0012CAF0:
	addiu	$sp, $sp, -160
	move	$a3, $zero
	sd	$s0, 80($sp)
	move	$t2, $zero
	sd	$s1, 88($sp)
	sd	$s2, 96($sp)
	sd	$s4, 112($sp)
	sd	$s5, 120($sp)
	sd	$s7, 136($sp)
	sd	$ra, 152($sp)
	sw	$a2, 8($sp)
	sw	$zero, 12($sp)
	sd	$s3, 104($sp)
	move	$s3, $zero
	sd	$s6, 128($sp)
	move	$s6, $a1
	sd	$s8, 144($sp)
	move	$s8, $a0
lbl_0012CB38:
	lb	$v1, 0($s6)
	sltiu	$v0, $v1, 46
	beqz	$v0, lbl_0012CB88
	lbu	$a0, 0($s6)
	sll	$v0, $v1, 0x2
	lui	$v1, 0x13
	addu	$v1, $v1, $v0
	lw	$v1, 26800($v1)
	jr	$v1
	nop
	li	$v0, 1
	sw	$v0, 12($sp)
	addiu	$s6, $s6, 1
	lb	$v0, 0($s6)
	bnez	$v0, lbl_0012CB88
	lbu	$a0, 0($s6)
	b	lbl_0012D9A8
	move	$s6, $a1
	b	lbl_0012CB38
	addiu	$s6, $s6, 1
lbl_0012CB88:
	sll	$v0, $a0, 0x18
	li	$v1, 48
	sra	$v0, $v0, 0x18
	bne	$v0, $v1, lbl_0012CBC4
	sll	$v0, $a0, 0x18
	li	$t2, 1
lbl_0012CBA0:
	addiu	$s6, $s6, 1
	lb	$v0, 0($s6)
	nop
	nop
	nop
	beq	$v0, $v1, lbl_0012CBA0
	lbu	$a0, 0($s6)
	beqz	$v0, lbl_0012D9A8
	sll	$v0, $a0, 0x18
lbl_0012CBC4:
	sw	$s6, 24($sp)
	sra	$a0, $v0, 0x18
	move	$s1, $zero
	slti	$v0, $a0, 48
	sw	$zero, 32($sp)
	move	$t0, $zero
	b	lbl_0012CC3C
	move	$s2, $zero
	nop
lbl_0012CBE8:
	beqz	$v0, lbl_0012CC10
	slti	$v0, $s2, 16
	lw	$v1, 32($sp)
	sll	$v0, $v1, 0x2
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 0x1
	addu	$v0, $v0, $a0
	addiu	$v0, $v0, -48
	b	lbl_0012CC2C
	sw	$v0, 32($sp)
lbl_0012CC10:
	beqzl	$v0, lbl_0012CC30
	addiu	$s6, $s6, 1
	dsll	$v0, $s1, 0x2
	daddu	$v0, $v0, $s1
	dsll	$v0, $v0, 0x1
	daddu	$v0, $a0, $v0
	daddiu	$s1, $v0, -48
lbl_0012CC2C:
	addiu	$s6, $s6, 1
lbl_0012CC30:
	addiu	$s2, $s2, 1
	lb	$a0, 0($s6)
	slti	$v0, $a0, 48
lbl_0012CC3C:
	bnez	$v0, lbl_0012CC54
	li	$v0, 46
	slti	$v0, $a0, 58
	bnez	$v0, lbl_0012CBE8
	slti	$v0, $s2, 9
	li	$v0, 46
lbl_0012CC54:
	bne	$a0, $v0, lbl_0012CD9C
	move	$s7, $s2
	addiu	$s6, $s6, 1
	bnez	$s2, lbl_0012CCB8
	lb	$a0, 0($s6)
	li	$v0, 48
	bnel	$a0, $v0, lbl_0012CC98
	addiu	$v0, $a0, -49
	nop
lbl_0012CC78:
	addiu	$s6, $s6, 1
	lb	$a0, 0($s6)
	nop
	nop
	nop
	beq	$a0, $v0, lbl_0012CC78
	addiu	$a3, $a3, 1
	addiu	$v0, $a0, -49
lbl_0012CC98:
	sltiu	$v0, $v0, 9
	beqz	$v0, lbl_0012CDA0
	li	$v0, 101
	move	$t0, $a3
	move	$a3, $zero
	addiu	$a2, $a0, -48
	b	lbl_0012CCC8
	sw	$s6, 24($sp)
lbl_0012CCB8:
	addiu	$a2, $a0, -48
	sltiu	$v0, $a2, 10
	beqz	$v0, lbl_0012CDA0
	li	$v0, 101
lbl_0012CCC8:
	beqz	$a2, lbl_0012CD80
	addiu	$a3, $a3, 1
	li	$a0, 1
	slt	$v0, $a0, $a3
	beqz	$v0, lbl_0012CD34
	addu	$t0, $t0, $a3
	addiu	$a0, $a3, -1
	move	$v0, $s2
lbl_0012CCE8:
	slti	$v0, $v0, 9
	beqz	$v0, lbl_0012CD10
	addiu	$s2, $s2, 1
	lw	$v1, 32($sp)
	sll	$v0, $v1, 0x2
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 0x1
	b	lbl_0012CD28
	sw	$v0, 32($sp)
	nop
lbl_0012CD10:
	slti	$v0, $s2, 17
	beqzl	$v0, lbl_0012CD2C
	addiu	$a0, $a0, -1
	dsll	$v0, $s1, 0x2
	daddu	$v0, $v0, $s1
	dsll	$s1, $v0, 0x1
lbl_0012CD28:
	addiu	$a0, $a0, -1
lbl_0012CD2C:
	bnez	$a0, lbl_0012CCE8
	move	$v0, $s2
lbl_0012CD34:
	move	$v0, $s2
	slti	$v0, $v0, 9
	beqz	$v0, lbl_0012CD60
	addiu	$s2, $s2, 1
	lw	$a0, 32($sp)
	sll	$v0, $a0, 0x2
	addu	$v0, $v0, $a0
	sll	$v0, $v0, 0x1
	addu	$v0, $v0, $a2
	b	lbl_0012CD7C
	sw	$v0, 32($sp)
lbl_0012CD60:
	slti	$v0, $s2, 17
	beqz	$v0, lbl_0012CD80
	move	$a3, $zero
	dsll	$v0, $s1, 0x2
	daddu	$v0, $v0, $s1
	dsll	$v0, $v0, 0x1
	daddu	$s1, $a2, $v0
lbl_0012CD7C:
	move	$a3, $zero
lbl_0012CD80:
	addiu	$s6, $s6, 1
	lb	$a0, 0($s6)
	addiu	$v0, $a0, -48
	move	$a2, $v0
	sltiu	$v1, $a2, 10
	bnez	$v1, lbl_0012CCC8
	nop
lbl_0012CD9C:
	li	$v0, 101
lbl_0012CDA0:
	beq	$a0, $v0, lbl_0012CDB4
	sd	$zero, 16($sp)
	li	$v0, 69
	bne	$a0, $v0, lbl_0012CECC
	nop
lbl_0012CDB4:
	bnezl	$s2, lbl_0012CDD0
	move	$a1, $s6
	bnezl	$a3, lbl_0012CDD0
	move	$a1, $s6
	beqzl	$t2, lbl_0012D9A8
	move	$s6, $a1
	move	$a1, $s6
lbl_0012CDD0:
	addiu	$s6, $s6, 1
	lb	$a0, 0($s6)
	li	$v0, 43
	beq	$a0, $v0, lbl_0012CDF4
	move	$t1, $zero
	li	$v0, 45
	bne	$a0, $v0, lbl_0012CE00
	addiu	$v0, $a0, -48
	li	$t1, 1
lbl_0012CDF4:
	addiu	$s6, $s6, 1
	lb	$a0, 0($s6)
	addiu	$v0, $a0, -48
lbl_0012CE00:
	sltiu	$v0, $v0, 10
	beqzl	$v0, lbl_0012CECC
	move	$s6, $a1
	li	$v0, 48
	bnel	$a0, $v0, lbl_0012CE40
	addiu	$v0, $a0, -49
	addiu	$s6, $s6, 1
	nop
lbl_0012CE20:
	lb	$a0, 0($s6)
	nop
	nop
	nop
	nop
	beql	$a0, $v0, lbl_0012CE20
	addiu	$s6, $s6, 1
	addiu	$v0, $a0, -49
lbl_0012CE40:
	sltiu	$v0, $v0, 9
	beqzl	$v0, lbl_0012CECC
	sd	$zero, 16($sp)
	addiu	$a0, $a0, -48
	move	$a2, $s6
	sd	$a0, 16($sp)
	addiu	$s6, $s6, 1
	lb	$a0, 0($s6)
	slti	$v0, $a0, 48
	bnezl	$v0, lbl_0012CEA8
	ld	$a0, 16($sp)
lbl_0012CE6C:
	slti	$v0, $a0, 58
	beqzl	$v0, lbl_0012CEA8
	ld	$a0, 16($sp)
	ld	$v1, 16($sp)
	addiu	$s6, $s6, 1
	dsll	$v0, $v1, 0x2
	daddu	$v0, $v0, $v1
	dsll	$v0, $v0, 0x1
	daddu	$v0, $a0, $v0
	lb	$a0, 0($s6)
	daddiu	$v0, $v0, -48
	slti	$v1, $a0, 48
	beqz	$v1, lbl_0012CE6C
	sd	$v0, 16($sp)
	ld	$a0, 16($sp)
lbl_0012CEA8:
	subu	$v0, $s6, $a2
	lui	$v1, 0x98
	ori	$v1, $v1, 0x967f
	slti	$v0, $v0, 9
	movz	$a0, $v1, $v0
	beqz	$t1, lbl_0012CECC
	sd	$a0, 16($sp)
	dnegu	$a0, $a0
	sd	$a0, 16($sp)
lbl_0012CECC:
	bnez	$s2, lbl_0012CEF0
	ld	$v0, 16($sp)
	bnez	$a3, lbl_0012D9AC
	lw	$v1, 8($sp)
	bnez	$t2, lbl_0012D9AC
	nop
	b	lbl_0012D9A8
	move	$s6, $a1
	nop
lbl_0012CEF0:
	li	$s4, 16
	lw	$a0, 32($sp)
	movz	$s7, $s2, $s7
	dsubu	$v0, $v0, $t0
	sd	$v0, 16($sp)
	slti	$v0, $s2, 17
	movn	$s4, $s2, $v0
	ld	$v1, 16($sp)
	dsll32	$v1, $v1, 0x0
	dsra32	$v1, $v1, 0x0
	jal	sub_00122928
	sw	$v1, 72($sp)
	move	$a0, $v0
	lw	$v0, 32($sp)
	bgez	$v0, lbl_0012CF44
	lw	$s0, 72($sp)
	li	$a1, 0x83e0
	dsll32	$a1, $a1, 0xf
	jal	sub_00122450
	nop
	move	$a0, $v0
lbl_0012CF44:
	slti	$v0, $s4, 10
	move	$s3, $a0
	bnez	$v0, lbl_0012CFC4
	subu	$v0, $s2, $s4
	sll	$v0, $s4, 0x3
	move	$a1, $a0
	lui	$a0, 0x13
	addu	$a0, $a0, $v0
	ld	$a0, 26440($a0)
	jal	sub_00122510
	nop
	move	$s3, $v0
	bltzl	$s1, lbl_0012CF90
	dsrl	$v0, $s1, 0x1
	jal	sub_00124110
	move	$a0, $s1
	b	lbl_0012CFAC
	nop
	nop
lbl_0012CF90:
	andi	$a0, $s1, 0x1
	jal	sub_00124110
	or	$a0, $a0, $v0
	move	$a0, $v0
	move	$a1, $a0
	jal	sub_00122450
	nop
lbl_0012CFAC:
	move	$a0, $s3
	move	$a1, $v0
	jal	sub_00122450
	nop
	move	$s3, $v0
	subu	$v0, $s2, $s4
lbl_0012CFC4:
	addu	$s0, $s0, $v0
	blez	$s0, lbl_0012D120
	sw	$zero, 56($sp)
	andi	$a0, $s0, 0xf
	beqz	$a0, lbl_0012CFF8
	sll	$v0, $a0, 0x3
	move	$a1, $s3
	lui	$a0, 0x13
	addu	$a0, $a0, $v0
	ld	$a0, 26512($a0)
	jal	sub_00122510
	nop
	move	$s3, $v0
lbl_0012CFF8:
	li	$v0, -16
	and	$s0, $s0, $v0
	beqz	$s0, lbl_0012D288
	slti	$v0, $s0, 309
	bnezl	$v0, lbl_0012D038
	sra	$s0, $s0, 0x4
	li	$v0, 34
lbl_0012D014:
	lui	$v1, 0x13
	sw	$v0, 0($s8)
	ld	$s3, 27008($v1)
	lw	$v1, 56($sp)
	beqz	$v1, lbl_0012D9AC
	lw	$v1, 8($sp)
	b	lbl_0012D970
	lw	$a1, 48($sp)
	nop
lbl_0012D038:
	beqz	$s0, lbl_0012D288
	slti	$v0, $s0, 2
	bnez	$v0, lbl_0012D088
	move	$s4, $zero
	lui	$s5, 0x13
	addiu	$s1, $s5, 26712
lbl_0012D050:
	andi	$v0, $s0, 0x1
	beqz	$v0, lbl_0012D070
	sra	$s0, $s0, 0x1
	ld	$a0, 0($s1)
	move	$a1, $s3
	jal	sub_00122510
	nop
	move	$s3, $v0
lbl_0012D070:
	addiu	$s1, $s1, 8
	slti	$v0, $s0, 2
	beqz	$v0, lbl_0012D050
	addiu	$s4, $s4, 1
	b	lbl_0012D090
	addiu	$a0, $s5, 26712
lbl_0012D088:
	lui	$s5, 0x13
	addiu	$a0, $s5, 26712
lbl_0012D090:
	dsra32	$a1, $s3, 0x0
	lui	$v0, 0xfcb0
	sll	$v1, $s4, 0x3
	addu	$v1, $v1, $a0
	addu	$a1, $a1, $v0
	lui	$s0, 0xffff
	dsrl32	$s0, $s0, 0x0
	ld	$a0, 0($v1)
	and	$s3, $s3, $s0
	dsll32	$a1, $a1, 0x0
	jal	sub_00122510
	or	$a1, $s3, $a1
	lui	$v1, 0x7ff0
	move	$s3, $v0
	lui	$v0, 0x7ca0
	dsra32	$a0, $s3, 0x0
	and	$s1, $a0, $v1
	sltu	$v0, $v0, $s1
	bnez	$v0, lbl_0012D014
	li	$v0, 34
	lui	$v0, 0x7c90
	sltu	$v0, $v0, $s1
	beqz	$v0, lbl_0012D108
	and	$s3, $s3, $s0
	lui	$v0, 0x7fef
	ori	$v0, $v0, 0xffff
	dsll32	$v0, $v0, 0x0
	or	$s3, $s3, $v0
	b	lbl_0012D288
	or	$s3, $s3, $s0
lbl_0012D108:
	lui	$v0, 0x350
	addu	$v0, $v0, $a0
	dsll32	$v0, $v0, 0x0
	b	lbl_0012D288
	or	$s3, $s3, $v0
	nop
lbl_0012D120:
	bgez	$s0, lbl_0012D28C
	lw	$a1, 24($sp)
	negu	$s0, $s0
	andi	$a0, $s0, 0xf
	beqz	$a0, lbl_0012D154
	sll	$v0, $a0, 0x3
	move	$a0, $s3
	lui	$a1, 0x13
	addu	$a1, $a1, $v0
	ld	$a1, 26512($a1)
	jal	sub_00122798
	nop
	move	$s3, $v0
lbl_0012D154:
	li	$v0, -16
	and	$s0, $s0, $v0
	beqz	$s0, lbl_0012D288
	sra	$s0, $s0, 0x4
	slti	$v0, $s0, 32
	beqz	$v0, lbl_0012D244
	li	$v0, 34
	slti	$v0, $s0, 2
	bnez	$v0, lbl_0012D1C0
	move	$s4, $zero
	lui	$s5, 0x13
	addiu	$s1, $s5, 26752
	nop
lbl_0012D188:
	andi	$v0, $s0, 0x1
	beqz	$v0, lbl_0012D1A8
	sra	$s0, $s0, 0x1
	ld	$a0, 0($s1)
	move	$a1, $s3
	jal	sub_00122510
	nop
	move	$s3, $v0
lbl_0012D1A8:
	addiu	$s1, $s1, 8
	slti	$v0, $s0, 2
	beqz	$v0, lbl_0012D188
	addiu	$s4, $s4, 1
	b	lbl_0012D1C8
	addiu	$v0, $s5, 26752
lbl_0012D1C0:
	lui	$s5, 0x13
	addiu	$v0, $s5, 26752
lbl_0012D1C8:
	sll	$v1, $s4, 0x3
	addu	$v1, $v1, $v0
	move	$a1, $s3
	ld	$s0, 0($v1)
	move	$s1, $zero
	move	$s4, $s3
	move	$a0, $s0
	jal	sub_00122510
	nop
	move	$a1, $s1
	move	$a0, $v0
	move	$s3, $v0
	jal	sub_001228D8
	nop
	bnez	$v0, lbl_0012D28C
	lw	$a1, 24($sp)
	move	$a0, $s4
	move	$a1, $a0
	jal	sub_00122450
	nop
	move	$a0, $s0
	move	$a1, $v0
	jal	sub_00122510
	nop
	move	$a1, $s1
	move	$a0, $v0
	jal	sub_001228D8
	nop
	bnez	$v0, lbl_0012D288
	li	$s3, 1
lbl_0012D240:
	li	$v0, 34
lbl_0012D244:
	move	$s3, $zero
	sw	$v0, 0($s8)
	lw	$a0, 56($sp)
	beqz	$a0, lbl_0012D9AC
	lw	$v1, 8($sp)
	b	lbl_0012D970
	lw	$a1, 48($sp)
lbl_0012D260:
	move	$a0, $s3
	jal	sub_0012C210
	nop
	move	$a1, $s3
	move	$a0, $v0
	jal	sub_00122450
	nop
	b	lbl_0012D96C
	move	$s3, $v0
	nop
lbl_0012D288:
	lw	$a1, 24($sp)
lbl_0012D28C:
	move	$a2, $s7
	lw	$t0, 32($sp)
	move	$a3, $s2
	jal	sub_0012B908
	move	$a0, $s8
	sw	$v0, 56($sp)
	addiu	$v0, $v0, 12
	b	lbl_0012D794
	sw	$v0, 68($sp)
lbl_0012D2B0:
	move	$a0, $s8
	jal	sub_0012BEC0
	li	$a2, 1
	lw	$a1, 60($sp)
	move	$a0, $v0
	jal	sub_0012C018
	sw	$v0, 64($sp)
	blez	$v0, lbl_0012D970
	lw	$a1, 48($sp)
	b	lbl_0012D34C
	nop
	nop
lbl_0012D2E0:
	bnez	$a0, lbl_0012D3F0
	lw	$a1, 60($sp)
	beqz	$s5, lbl_0012D338
	nop
	li	$v1, -1
	dsrl	$v1, $v1, 0xc
	and	$v0, $s3, $v1
	bne	$v0, $v1, lbl_0012D390
	lui	$v1, 0x7ff0
	dsra32	$v0, $s3, 0x0
	and	$v0, $v0, $v1
	lui	$v1, 0xffff
	dsrl32	$v1, $v1, 0x0
	lui	$a0, 0x10
	and	$s3, $s3, $v1
	daddu	$v0, $v0, $a0
	li	$v1, -1
	dsll32	$v1, $v1, 0x0
	dsll32	$v0, $v0, 0x0
	or	$s3, $s3, $v0
	b	lbl_0012D96C
	and	$s3, $s3, $v1
lbl_0012D338:
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $s3, $v0
	bnez	$v0, lbl_0012D390
	nop
lbl_0012D34C:
	dsra32	$v0, $s3, 0x0
	lui	$v1, 0x7ff0
	and	$v0, $v0, $v1
	li	$v1, -1
	dsll32	$v1, $v1, 0xc
	dsrl	$v1, $v1, 0xc
	lui	$a0, 0xfff0
	lui	$a1, 0xffff
	dsrl32	$a1, $a1, 0x0
	addu	$v0, $v0, $a0
	and	$s3, $s3, $a1
	dsll32	$v0, $v0, 0x0
	or	$v1, $v1, $v0
	or	$s3, $s3, $v1
	b	lbl_0012D96C
	or	$s3, $s3, $a1
	nop
lbl_0012D390:
	dsll32	$v0, $s3, 0x0
	dsra32	$v0, $v0, 0x0
	andi	$v0, $v0, 0x1
	beqz	$v0, lbl_0012D970
	lw	$a1, 48($sp)
	bnez	$s5, lbl_0012D260
	nop
	move	$a0, $s3
	jal	sub_0012C210
	nop
	move	$a0, $s3
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$a1, $zero
	move	$a0, $v0
	move	$s3, $v0
	jal	sub_001228D8
	nop
	beqz	$v0, lbl_0012D240
	lw	$a1, 48($sp)
	b	lbl_0012D970
	nop
	nop
lbl_0012D3F0:
	jal	sub_0012C600
	lw	$a0, 64($sp)
	li	$a1, 0x8000
	dsll32	$a1, $a1, 0xf
	move	$s0, $v0
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bgtz	$v0, lbl_0012D4D0
	nop
	beqz	$s5, lbl_0012D438
	nop
	li	$s0, 0xffc0
	dsll32	$s0, $s0, 0xe
	move	$s1, $s0
	b	lbl_0012D520
	nop
	nop
lbl_0012D438:
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $s3, $v0
	beqz	$v0, lbl_0012D470
	li	$v0, 1
	beq	$s3, $v0, lbl_0012D244
	li	$v0, 34
	li	$s0, 0xffc0
	dsll32	$s0, $s0, 0xe
	li	$s1, 0xbff0
	dsll32	$s1, $s1, 0x10
	b	lbl_0012D520
	nop
	nop
lbl_0012D470:
	li	$a1, 0xffc0
	dsll32	$a1, $a1, 0xe
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bgez	$v0, lbl_0012D4A0
	nop
	li	$s0, 0xff80
	dsll32	$s0, $s0, 0xe
	b	lbl_0012D4B8
	nop
	nop
lbl_0012D4A0:
	li	$a1, 0xff80
	dsll32	$a1, $a1, 0xe
	move	$a0, $s0
	jal	sub_00122510
	nop
	move	$s0, $v0
lbl_0012D4B8:
	move	$a0, $zero
	move	$a1, $s0
	jal	sub_001224A8
	nop
	b	lbl_0012D51C
	nop
lbl_0012D4D0:
	li	$s2, 0xff80
	dsll32	$s2, $s2, 0xe
	move	$a0, $s0
	move	$a1, $s2
	jal	sub_00122510
	nop
	move	$s0, $v0
	move	$s1, $v0
	bnez	$s5, lbl_0012D50C
	nop
	move	$a0, $zero
	move	$a1, $s0
	jal	sub_001224A8
	nop
	move	$s1, $v0
lbl_0012D50C:
	move	$a0, $s1
	move	$a1, $s2
	jal	sub_00122450
	nop
lbl_0012D51C:
	move	$s1, $v0
lbl_0012D520:
	dsra32	$v1, $s3, 0x0
	lui	$s7, 0x7ff0
	and	$a0, $v1, $s7
	lui	$v0, 0x7fe0
	bne	$a0, $v0, lbl_0012D5F8
	sw	$a0, 32($sp)
	lui	$v0, 0xfcb0
	lui	$s2, 0xffff
	dsrl32	$s2, $s2, 0x0
	addu	$v0, $v1, $v0
	move	$s4, $s3
	dsll32	$v0, $v0, 0x0
	and	$s3, $s3, $s2
	or	$s3, $s3, $v0
	move	$a0, $s3
	jal	sub_0012C210
	nop
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_00122510
	nop
	move	$a1, $s3
	move	$a0, $v0
	jal	sub_00122450
	nop
	lui	$v1, 0x7c9f
	move	$s3, $v0
	ori	$v1, $v1, 0xffff
	dsra32	$a0, $s3, 0x0
	and	$v0, $a0, $s7
	sltu	$v1, $v1, $v0
	beqz	$v1, lbl_0012D5E0
	and	$s3, $s3, $s2
	lui	$v0, 0x7fef
	ori	$v0, $v0, 0xffff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	dsll	$v0, $v0, 0x10
	ori	$v0, $v0, 0xffff
	beq	$s4, $v0, lbl_0012D014
	li	$v0, 34
	lui	$v0, 0x7fef
	ori	$v0, $v0, 0xffff
	dsll32	$v0, $v0, 0x0
	or	$s3, $s3, $v0
	b	lbl_0012D764
	or	$s3, $s3, $s2
	nop
lbl_0012D5E0:
	lui	$v0, 0x350
	addu	$v0, $v0, $a0
	dsll32	$v0, $v0, 0x0
	b	lbl_0012D6A0
	or	$s3, $s3, $v0
	nop
lbl_0012D5F8:
	lw	$v1, 32($sp)
	lui	$v0, 0x340
	sltu	$v0, $v0, $v1
	bnez	$v0, lbl_0012D670
	nop
	li	$a1, 0xffc0
	dsll32	$a1, $a1, 0xe
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bltz	$v0, lbl_0012D670
	nop
	li	$a1, 0xff80
	dsll32	$a1, $a1, 0xe
	move	$a0, $s0
	jal	sub_00122450
	nop
	move	$a0, $v0
	jal	sub_0012EA50
	nop
	jal	sub_00122928
	move	$a0, $v0
	move	$s1, $v0
	bnez	$s5, lbl_0012D670
	nop
	move	$a1, $s1
	move	$a0, $zero
	jal	sub_001224A8
	nop
	move	$s1, $v0
lbl_0012D670:
	move	$a0, $s3
	jal	sub_0012C210
	nop
	move	$a0, $s1
	move	$a1, $v0
	jal	sub_00122510
	nop
	move	$a1, $s3
	move	$a0, $v0
	jal	sub_00122450
	nop
	move	$s3, $v0
lbl_0012D6A0:
	lw	$a0, 32($sp)
	lui	$v1, 0x7ff0
	dsll32	$v0, $a0, 0x0
	dsra32	$a0, $s3, 0x0
	dsrl32	$v0, $v0, 0x0
	and	$s1, $a0, $v1
	bne	$v0, $s1, lbl_0012D768
	lw	$a1, 48($sp)
	move	$a0, $s0
	jal	sub_0012E9D8
	nop
	jal	sub_00124110
	move	$a0, $v0
	move	$a0, $s0
	move	$a1, $v0
	jal	sub_001224A8
	nop
	move	$s0, $v0
	bnez	$s5, lbl_0012D704
	nop
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $s3, $v0
	beqz	$v0, lbl_0012D748
	nop
lbl_0012D704:
	lui	$at, 0x13
	ld	$a1, 26984($at)
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bltz	$v0, lbl_0012D970
	lw	$a1, 48($sp)
	lui	$at, 0x13
	ld	$a1, 26992($at)
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bgtz	$v0, lbl_0012D970
	lw	$a1, 48($sp)
	b	lbl_0012D768
	nop
	nop
lbl_0012D748:
	lui	$at, 0x13
	ld	$a1, 27000($at)
	move	$a0, $s0
	jal	sub_001228D8
	nop
	bltz	$v0, lbl_0012D970
	lw	$a1, 48($sp)
lbl_0012D764:
	lw	$a1, 48($sp)
lbl_0012D768:
	jal	sub_0012B7D0
	move	$a0, $s8
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 52($sp)
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 60($sp)
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 64($sp)
lbl_0012D794:
	lw	$v0, 56($sp)
	move	$a0, $s8
	jal	sub_0012B728
	lw	$a1, 4($v0)
	sw	$v0, 52($sp)
	addiu	$a0, $v0, 12
	lw	$v1, 56($sp)
	lw	$a1, 68($sp)
	lw	$a2, 16($v1)
	sll	$a2, $a2, 0x2
	jal	sub_0012515C
	addiu	$a2, $a2, 8
	move	$a0, $s8
	move	$a1, $s3
	move	$a2, $sp
	jal	sub_0012C478
	addiu	$a3, $sp, 4
	move	$a0, $s8
	li	$a1, 1
	jal	sub_0012BB78
	sw	$v0, 48($sp)
	ld	$a0, 16($sp)
	bltz	$a0, lbl_0012D808
	sw	$v0, 60($sp)
	lw	$s1, 72($sp)
	move	$a2, $zero
	move	$s2, $zero
	b	lbl_0012D81C
	move	$s7, $s1
lbl_0012D808:
	lw	$v0, 72($sp)
	move	$s7, $zero
	move	$s1, $zero
	negu	$s2, $v0
	move	$a2, $s2
lbl_0012D81C:
	lw	$v0, 0($sp)
	bltzl	$v0, lbl_0012D82C
	subu	$s1, $s1, $v0
	addu	$s2, $s2, $v0
lbl_0012D82C:
	lw	$a1, 4($sp)
	addiu	$s4, $v0, 1075
	addu	$v0, $v0, $a1
	addiu	$a0, $v0, -1
	slti	$v1, $a0, -1022
	bnez	$v1, lbl_0012D850
	move	$s5, $s2
	li	$v0, 54
	subu	$s4, $v0, $a1
lbl_0012D850:
	addu	$a0, $s1, $s4
	addu	$s2, $s2, $s4
	slt	$v1, $s2, $a0
	move	$s1, $a0
	movn	$a0, $s2, $v1
	slt	$v0, $s5, $a0
	movn	$a0, $s5, $v0
	blez	$a0, lbl_0012D880
	nop
	subu	$s5, $s5, $a0
	subu	$s2, $s2, $a0
	subu	$s1, $s1, $a0
lbl_0012D880:
	blez	$a2, lbl_0012D8B8
	lw	$a1, 60($sp)
	jal	sub_0012BDC0
	move	$a0, $s8
	move	$a0, $s8
	lw	$a2, 48($sp)
	move	$a1, $v0
	jal	sub_0012BBB0
	sw	$v0, 60($sp)
	move	$a0, $s8
	lw	$a1, 48($sp)
	jal	sub_0012B7D0
	move	$s0, $v0
	sw	$s0, 48($sp)
lbl_0012D8B8:
	blez	$s2, lbl_0012D8D0
	lw	$a1, 48($sp)
	move	$a2, $s2
	jal	sub_0012BEC0
	move	$a0, $s8
	sw	$v0, 48($sp)
lbl_0012D8D0:
	blez	$s7, lbl_0012D8E8
	lw	$a1, 52($sp)
	move	$a2, $s7
	jal	sub_0012BDC0
	move	$a0, $s8
	sw	$v0, 52($sp)
lbl_0012D8E8:
	blez	$s1, lbl_0012D900
	lw	$a1, 52($sp)
	move	$a2, $s1
	jal	sub_0012BEC0
	move	$a0, $s8
	sw	$v0, 52($sp)
lbl_0012D900:
	blez	$s5, lbl_0012D920
	lw	$a1, 48($sp)
	lw	$a1, 60($sp)
	move	$a2, $s5
	jal	sub_0012BEC0
	move	$a0, $s8
	sw	$v0, 60($sp)
	lw	$a1, 48($sp)
lbl_0012D920:
	move	$a0, $s8
	jal	sub_0012C080
	lw	$a2, 52($sp)
	sw	$v0, 64($sp)
	move	$a0, $v0
	lw	$a1, 60($sp)
	lw	$s5, 12($v0)
	jal	sub_0012C018
	sw	$zero, 12($a0)
	move	$a0, $v0
	bgez	$a0, lbl_0012D2E0
	nop
	bnez	$s5, lbl_0012D970
	lw	$a1, 48($sp)
	li	$v0, -1
	dsrl	$v0, $v0, 0xc
	and	$v0, $s3, $v0
	beqz	$v0, lbl_0012D2B0
	lw	$a1, 64($sp)
lbl_0012D96C:
	lw	$a1, 48($sp)
lbl_0012D970:
	jal	sub_0012B7D0
	move	$a0, $s8
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 52($sp)
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 60($sp)
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 56($sp)
	move	$a0, $s8
	jal	sub_0012B7D0
	lw	$a1, 64($sp)
lbl_0012D9A8:
	lw	$v1, 8($sp)
lbl_0012D9AC:
	bnezl	$v1, lbl_0012D9B4
	sw	$s6, 0($v1)
lbl_0012D9B4:
	lw	$a0, 12($sp)
	move	$v0, $s3
	beqz	$a0, lbl_0012D9D8
	ld	$s0, 80($sp)
	move	$a1, $v0
	move	$a0, $zero
	jal	sub_001224A8
	nop
	ld	$s0, 80($sp)
lbl_0012D9D8:
	ld	$s1, 88($sp)
	ld	$s2, 96($sp)
	ld	$s3, 104($sp)
	ld	$s4, 112($sp)
	ld	$s5, 120($sp)
	ld	$s6, 128($sp)
	ld	$s7, 136($sp)
	ld	$s8, 144($sp)
	ld	$ra, 152($sp)
	jr	$ra
	addiu	$sp, $sp, 160
	nop

sub_0012DA08:
	addiu	$sp, $sp, -16
	lui	$v0, 0x13
	sd	$ra, 0($sp)
	move	$a2, $a1
	move	$a1, $a0
	lw	$a0, 11128($v0)
	ld	$ra, 0($sp)
	j	lbl_0012CAF0
	addiu	$sp, $sp, 16
	nop
	addiu	$sp, $sp, -16
	sd	$ra, 0($sp)
	jal	sub_0012DA08
	nop
	move	$a0, $v0
	jal	sub_00122A10
	nop
	ld	$ra, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 16
lbl_0012DA58:
	addiu	$sp, $sp, -96
	sd	$s5, 56($sp)
	move	$s5, $a1
	sd	$s0, 16($sp)
	sd	$s1, 24($sp)
	sd	$s4, 48($sp)
	sd	$s6, 64($sp)
	sd	$s7, 72($sp)
	sd	$ra, 88($sp)
	sw	$a0, 0($sp)
	sw	$zero, 4($sp)
	sd	$s2, 32($sp)
	move	$s2, $s5
	sd	$s3, 40($sp)
	move	$s3, $a3
	sd	$s8, 80($sp)
	move	$s8, $a2
	nop
lbl_0012DAA0:
	lb	$s1, 0($s2)
	lui	$v0, 0x13
	addu	$v0, $v0, $s1
	lbu	$v0, 24401($v0)
	andi	$v0, $v0, 0x8
	nop
	nop
	bnez	$v0, lbl_0012DAA0
	addiu	$s2, $s2, 1
	li	$v0, 45
	bne	$s1, $v0, lbl_0012DAE8
	li	$v0, 43
	li	$v0, 1
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
	b	lbl_0012DAF8
	sw	$v0, 4($sp)
	nop
lbl_0012DAE8:
	bne	$s1, $v0, lbl_0012DAF8
	nop
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
lbl_0012DAF8:
	beqz	$s3, lbl_0012DB08
	li	$v0, 16
	bne	$s3, $v0, lbl_0012DB34
	nop
lbl_0012DB08:
	li	$v0, 48
	bne	$s1, $v0, lbl_0012DB34
	li	$v0, 120
	lb	$v1, 0($s2)
	beq	$v1, $v0, lbl_0012DB28
	li	$v0, 88
	bne	$v1, $v0, lbl_0012DB34
	nop
lbl_0012DB28:
	lb	$s1, 1($s2)
	addiu	$s2, $s2, 2
	li	$s3, 16
lbl_0012DB34:
	bnezl	$s3, lbl_0012DB50
	move	$s0, $s3
	li	$v1, 10
	li	$s3, 8
	xori	$v0, $s1, 0x30
	movn	$s3, $v1, $v0
	move	$s0, $s3
lbl_0012DB50:
	li	$a0, -1
	move	$a1, $s0
	jal	sub_00121218
	move	$s7, $s0
	li	$a0, -1
	move	$a1, $s0
	move	$s0, $zero
	jal	sub_00121798
	move	$s4, $v0
	dsll32	$s6, $v0, 0x0
	dsra32	$s6, $s6, 0x0
	b	lbl_0012DBD8
	move	$a1, $zero
	nop
lbl_0012DB88:
	slt	$v0, $s1, $s3
	beqz	$v0, lbl_0012DC18
	nop
	bltz	$s0, lbl_0012DBB8
	sltu	$v0, $s4, $a1
	bnezl	$v0, lbl_0012DBD0
	li	$s0, -1
	bne	$a1, $s4, lbl_0012DBC0
	move	$a0, $a1
	slt	$v0, $s6, $s1
	beqz	$v0, lbl_0012DBC0
	nop
lbl_0012DBB8:
	b	lbl_0012DBD0
	li	$s0, -1
lbl_0012DBC0:
	jal	sub_00124098
	move	$a1, $s7
	li	$s0, 1
	daddu	$a1, $s1, $v0
lbl_0012DBD0:
	lb	$s1, 0($s2)
	addiu	$s2, $s2, 1
lbl_0012DBD8:
	lui	$a0, 0x13
	addu	$a0, $a0, $s1
	lbu	$a0, 24401($a0)
	andi	$v0, $a0, 0x4
	beqz	$v0, lbl_0012DBF8
	andi	$v0, $a0, 0x3
	b	lbl_0012DB88
	addiu	$s1, $s1, -48
lbl_0012DBF8:
	beqz	$v0, lbl_0012DC18
	addiu	$v0, $s1, -55
	addiu	$v1, $s1, -87
	andi	$a0, $a0, 0x1
	move	$s1, $v0
	b	lbl_0012DB88
	movz	$s1, $v1, $a0
	nop
lbl_0012DC18:
	bgez	$s0, lbl_0012DC38
	lw	$v1, 4($sp)
	lw	$v1, 0($sp)
	li	$v0, 34
	li	$a1, -1
	b	lbl_0012DC40
	sw	$v0, 0($v1)
	nop
lbl_0012DC38:
	dnegu	$v0, $a1
	movn	$a1, $v0, $v1
lbl_0012DC40:
	beqz	$s8, lbl_0012DC50
	addiu	$v0, $s2, -1
	movn	$s5, $v0, $s0
	sw	$s5, 0($s8)
lbl_0012DC50:
	ld	$s0, 16($sp)
	move	$v0, $a1
	ld	$s1, 24($sp)
	ld	$s2, 32($sp)
	ld	$s3, 40($sp)
	ld	$s4, 48($sp)
	ld	$s5, 56($sp)
	ld	$s6, 64($sp)
	ld	$s7, 72($sp)
	ld	$s8, 80($sp)
	ld	$ra, 88($sp)
	jr	$ra
	addiu	$sp, $sp, 96
	nop
	addiu	$sp, $sp, -16
	lui	$v1, 0x13
	sd	$ra, 0($sp)
	move	$v0, $a1
	move	$a1, $a0
	lw	$a0, 11128($v1)
	ld	$ra, 0($sp)
	move	$a3, $a2
	move	$a2, $v0
	j	lbl_0012DA58
	addiu	$sp, $sp, 16
	nop

sub_0012DCB8:
	addiu	$sp, $sp, -48
	sd	$s2, 16($sp)
	move	$s2, $a0
	sd	$s0, 0($sp)
	addiu	$v0, $s2, 64
	sd	$s1, 8($sp)
	sd	$s3, 24($sp)
	sd	$s4, 32($sp)
	sd	$ra, 40($sp)
	lw	$a1, 48($s2)
	bnel	$a1, $v0, lbl_0012DD40
	lw	$s3, 52($s2)
	lw	$a0, 84($s2)
	jal	sub_001249A0
	li	$a1, 1024
	move	$s1, $v0
	beqz	$s1, lbl_0012DD80
	li	$v0, -1
	li	$v0, 1024
	sw	$s1, 48($s2)
	sw	$v0, 52($s2)
	li	$s3, 2
	addiu	$s1, $s1, 1021
	addiu	$a0, $s2, 66
lbl_0012DD18:
	lbu	$v1, 0($a0)
	addiu	$a0, $a0, -1
	addu	$v0, $s1, $s3
	addiu	$s3, $s3, -1
	nop
	bgez	$s3, lbl_0012DD18
	sb	$v1, 0($v0)
	sw	$s1, 0($s2)
	b	lbl_0012DD80
	move	$v0, $zero
lbl_0012DD40:
	lw	$a0, 84($s2)
	sll	$s4, $s3, 0x1
	jal	sub_0012E1B8
	move	$a2, $s4
	move	$s1, $v0
	beqz	$s1, lbl_0012DD80
	li	$v0, -1
	addu	$s0, $s1, $s3
	move	$a2, $s3
	move	$a0, $s0
	jal	sub_0012515C
	move	$a1, $s1
	sw	$s0, 0($s2)
	sw	$s4, 52($s2)
	move	$v0, $zero
	sw	$s1, 48($s2)
lbl_0012DD80:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$ra, 40($sp)
	jr	$ra
	addiu	$sp, $sp, 48

sub_0012DDA0:
	addiu	$sp, $sp, -32
	li	$v1, -1
	sd	$s1, 8($sp)
	move	$s1, $a0
	sd	$s0, 0($sp)
	move	$s0, $a1
	sd	$ra, 16($sp)
	beq	$s1, $v1, lbl_0012DF14
	li	$v0, -1
	lw	$v1, 84($s0)
	bnezl	$v1, lbl_0012DDE0
	lw	$v0, 56($v1)
	lui	$v0, 0x13
	lw	$v1, 11128($v0)
	sw	$v1, 84($s0)
	lw	$v0, 56($v1)
lbl_0012DDE0:
	bnezl	$v0, lbl_0012DDF4
	lhu	$v0, 12($s0)
	jal	sub_0012A940
	move	$a0, $v1
	lhu	$v0, 12($s0)
lbl_0012DDF4:
	andi	$a0, $v0, 0xffdf
	andi	$v1, $a0, 0x4
	bnez	$v1, lbl_0012DE4C
	sh	$a0, 12($s0)
	andi	$v1, $a0, 0x10
	beqz	$v1, lbl_0012DF14
	li	$v0, -1
	andi	$v0, $a0, 0x8
	beqzl	$v0, lbl_0012DE44
	lhu	$v0, 12($s0)
	jal	sub_0012A618
	move	$a0, $s0
	bnez	$v0, lbl_0012DF14
	li	$v0, -1
	lhu	$v0, 12($s0)
	sw	$zero, 8($s0)
	andi	$v0, $v0, 0xfff7
	sw	$zero, 24($s0)
	sh	$v0, 12($s0)
	lhu	$v0, 12($s0)
lbl_0012DE44:
	ori	$v0, $v0, 0x4
	sh	$v0, 12($s0)
lbl_0012DE4C:
	lw	$v0, 48($s0)
	beqz	$v0, lbl_0012DEA0
	andi	$s1, $s1, 0xff
	lw	$v0, 4($s0)
	lw	$v1, 52($s0)
	slt	$v0, $v0, $v1
	bnezl	$v0, lbl_0012DE88
	lw	$a0, 0($s0)
	jal	sub_0012DCB8
	move	$a0, $s0
	beqzl	$v0, lbl_0012DE88
	lw	$a0, 0($s0)
	b	lbl_0012DF14
	li	$v0, -1
	nop
lbl_0012DE88:
	move	$v0, $s1
	addiu	$a0, $a0, -1
	sw	$a0, 0($s0)
	sb	$s1, 0($a0)
	b	lbl_0012DED0
	lw	$v1, 4($s0)
lbl_0012DEA0:
	lw	$v0, 16($s0)
	beqz	$v0, lbl_0012DEE0
	lw	$a3, 0($s0)
	sltu	$v0, $v0, $a3
	beqz	$v0, lbl_0012DEE4
	lw	$v1, 4($s0)
	lbu	$v0, -1($a3)
	bne	$v0, $s1, lbl_0012DEE4
	nop
	addiu	$v0, $a3, -1
	sw	$v0, 0($s0)
	move	$v0, $s1
lbl_0012DED0:
	addiu	$v1, $v1, 1
	b	lbl_0012DF14
	sw	$v1, 4($s0)
	nop
lbl_0012DEE0:
	lw	$v1, 4($s0)
lbl_0012DEE4:
	addiu	$a0, $s0, 64
	li	$a1, 3
	addiu	$a2, $s0, 66
	li	$v0, 1
	sw	$v1, 60($s0)
	sw	$a3, 56($s0)
	sw	$a0, 48($s0)
	sw	$a1, 52($s0)
	sw	$a2, 0($s0)
	sb	$s1, 66($s0)
	sw	$v0, 4($s0)
	move	$v0, $s1
lbl_0012DF14:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0012DF28:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	sd	$ra, 16($sp)
	jal	sub_00111798
	sw	$zero, 0($s1)
	move	$v1, $v0
	li	$a0, -1
	bne	$v1, $a0, lbl_0012DF74
	move	$v0, $v1
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_0012DF74
	sw	$v1, 0($s0)
lbl_0012DF74:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0012DF88:
	addiu	$sp, $sp, -16
	sd	$s0, 0($sp)
	sd	$ra, 8($sp)
	jal	sub_001249A0
	mult	$a1, $a1, $a2
	move	$s0, $v0
	beqz	$s0, lbl_0012E02C
	li	$v1, -4
	lw	$v0, -4($s0)
	and	$v0, $v0, $v1
	addiu	$a3, $v0, -4
	move	$a1, $zero
	sltiu	$v0, $a3, 37
	move	$a2, $a3
	move	$a0, $s0
	beqz	$v0, lbl_0012E020
	sltiu	$t0, $a3, 20
	bnez	$t0, lbl_0012E008
	move	$v1, $s0
	sltiu	$v0, $a3, 28
	sw	$zero, 0($s0)
	sw	$zero, 4($s0)
	bnez	$v0, lbl_0012E008
	addiu	$v1, $s0, 8
	sltiu	$v0, $a3, 36
	sw	$zero, 0($v1)
	addiu	$v1, $s0, 16
	bnez	$v0, lbl_0012E008
	sw	$zero, 12($s0)
	sw	$zero, 0($v1)
	addiu	$v1, $s0, 24
	sw	$zero, 20($s0)
lbl_0012E008:
	sw	$zero, 0($v1)
	addiu	$v1, $v1, 4
	sw	$zero, 4($v1)
	b	lbl_0012E028
	sw	$zero, 0($v1)
	nop
lbl_0012E020:
	jal	sub_00125310
	nop
lbl_0012E028:
	move	$v0, $s0
lbl_0012E02C:
	ld	$s0, 0($sp)
	ld	$ra, 8($sp)
	jr	$ra
	addiu	$sp, $sp, 16
	nop
lbl_0012E040:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	sd	$ra, 16($sp)
	jal	sub_001118B8
	sw	$zero, 0($s1)
	move	$a0, $v0
	li	$v1, -1
	bnel	$a0, $v1, lbl_0012E088
	ld	$s0, 0($sp)
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_0012E084
	sw	$v1, 0($s0)
lbl_0012E084:
	ld	$s0, 0($sp)
lbl_0012E088:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0012E098:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	move	$a1, $a2
	sd	$ra, 16($sp)
	jal	sub_00111988
	sw	$zero, 0($s1)
	move	$v1, $v0
	li	$a0, -1
	bnel	$v1, $a0, lbl_0012E0E4
	ld	$s0, 0($sp)
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_0012E0E0
	sw	$v1, 0($s0)
lbl_0012E0E0:
	ld	$s0, 0($sp)
lbl_0012E0E4:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop

sub_0012E0F8:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	sd	$ra, 16($sp)
	jal	sub_001118C8
	sw	$zero, 0($s1)
	move	$a0, $v0
	li	$v1, -1
	bnel	$a0, $v1, lbl_0012E148
	ld	$s0, 0($sp)
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_0012E144
	sw	$v1, 0($s0)
lbl_0012E144:
	ld	$s0, 0($sp)
lbl_0012E148:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0012E158:
	addiu	$sp, $sp, -32
	lui	$v0, 0x13
	sd	$s0, 0($sp)
	move	$s0, $a0
	sd	$s1, 8($sp)
	addiu	$s1, $v0, 28296
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	sd	$ra, 16($sp)
	jal	sub_00111818
	sw	$zero, 0($s1)
	move	$v1, $v0
	li	$a0, -1
	bne	$v1, $a0, lbl_0012E1A4
	move	$v0, $v1
	lw	$v1, 0($s1)
	bnezl	$v1, lbl_0012E1A4
	sw	$v1, 0($s0)
lbl_0012E1A4:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32

sub_0012E1B8:
	addiu	$sp, $sp, -80
	sd	$s1, 8($sp)
	move	$s1, $a1
	sd	$s2, 16($sp)
	move	$s2, $a2
	sd	$s8, 64($sp)
	move	$s8, $a0
	sd	$s0, 0($sp)
	sd	$s3, 24($sp)
	sd	$s4, 32($sp)
	sd	$s5, 40($sp)
	sd	$s6, 48($sp)
	sd	$s7, 56($sp)
	bnez	$s1, lbl_0012E228
	sd	$ra, 72($sp)
	move	$a1, $s2
	ld	$s2, 16($sp)
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	j	sub_001249A0
	addiu	$sp, $sp, 80
lbl_0012E228:
	jal	sub_001253D0
	addiu	$s0, $s1, -8
	lw	$a1, 4($s0)
	li	$v1, -4
	addiu	$a0, $s2, 19
	move	$s3, $s0
	and	$s7, $a1, $v1
	sltiu	$v0, $a0, 31
	bnez	$v0, lbl_0012E260
	move	$s5, $s7
	li	$v0, -16
	b	lbl_0012E264
	and	$s6, $a0, $v0
	nop
lbl_0012E260:
	li	$s6, 16
lbl_0012E264:
	sltu	$v0, $s5, $s6
	beqzl	$v0, lbl_0012E6B8
	addiu	$s2, $s3, 8
	lui	$v0, 0x13
	addu	$a2, $s3, $s5
	addiu	$t1, $v0, 11136
	lw	$t0, 8($t1)
	beq	$a2, $t0, lbl_0012E2B0
	li	$v0, -2
	lw	$a0, 4($a2)
	and	$v0, $a0, $v0
	addu	$v0, $a2, $v0
	lw	$v1, 4($v0)
	andi	$v1, $v1, 0x1
	bnezl	$v1, lbl_0012E338
	move	$a2, $zero
	b	lbl_0012E2B8
	li	$v0, -4
	nop
lbl_0012E2B0:
	lw	$a0, 4($a2)
	li	$v0, -4
lbl_0012E2B8:
	bne	$a2, $t0, lbl_0012E308
	and	$a3, $a0, $v0
	addu	$v1, $a3, $s5
	addiu	$v0, $s6, 16
	sltu	$v0, $v1, $v0
	bnezl	$v0, lbl_0012E340
	lw	$v0, 4($s3)
	subu	$v0, $v1, $s6
	addu	$v1, $s3, $s6
	ori	$v0, $v0, 0x1
	sw	$v1, 8($t1)
	sw	$v0, 4($v1)
	move	$a0, $s8
	lw	$v0, 4($s3)
	andi	$v0, $v0, 0x1
	or	$v0, $v0, $s6
	jal	sub_00125450
	sw	$v0, 4($s3)
	b	lbl_0012E728
	addiu	$v0, $s3, 8
lbl_0012E308:
	addu	$v1, $a3, $s5
	sltu	$v0, $v1, $s6
	bnezl	$v0, lbl_0012E340
	lw	$v0, 4($s3)
	lw	$a0, 8($a2)
	move	$s7, $v1
	lw	$v0, 12($a2)
	addiu	$s2, $s3, 8
	sw	$v0, 12($a0)
	b	lbl_0012E6B8
	sw	$a0, 8($v0)
	nop
lbl_0012E338:
	move	$a3, $zero
	lw	$v0, 4($s3)
lbl_0012E340:
	andi	$v0, $v0, 0x1
	bnez	$v0, lbl_0012E59C
	move	$a1, $s2
	lw	$v0, 0($s3)
	li	$a0, -4
	subu	$s4, $s3, $v0
	lw	$v1, 4($s4)
	beqz	$a2, lbl_0012E4B8
	and	$a0, $v1, $a0
	lui	$v1, 0x13
	addiu	$v0, $v1, 11136
	lw	$v1, 8($v0)
	bne	$a2, $v1, lbl_0012E480
	addu	$v0, $a3, $a0
	addu	$v1, $a3, $a0
	addiu	$v0, $s6, 16
	addu	$s7, $v1, $s5
	sltu	$v0, $s7, $v0
	bnez	$v0, lbl_0012E4B8
	move	$s0, $s4
	lw	$v0, 12($s4)
	lw	$a0, 8($s4)
	sw	$v0, 12($a0)
	sw	$a0, 8($v0)
	addiu	$a2, $s5, -4
	sltiu	$v0, $a2, 37
	beqz	$v0, lbl_0012E440
	addiu	$s2, $s0, 8
	sltiu	$v0, $a2, 20
	move	$t0, $s1
	bnez	$v0, lbl_0012E418
	move	$a3, $s2
	lw	$v0, 0($s1)
	sltiu	$a0, $a2, 28
	addiu	$t0, $s1, 8
	addiu	$a3, $s0, 16
	sw	$v0, 0($s2)
	lw	$v1, 4($s1)
	bnez	$a0, lbl_0012E418
	sw	$v1, 12($s0)
	lw	$v0, 0($t0)
	addiu	$t0, $s1, 16
	sltiu	$v1, $a2, 36
	sw	$v0, 0($a3)
	addiu	$a3, $s0, 24
	lw	$v0, 12($s1)
	bnez	$v1, lbl_0012E418
	sw	$v0, 20($s0)
	lw	$v0, 0($t0)
	addiu	$t0, $s1, 24
	sw	$v0, 0($a3)
	addiu	$a3, $s0, 32
	lw	$v0, 20($s1)
	sw	$v0, 28($s0)
lbl_0012E418:
	lw	$v0, 0($t0)
	addiu	$t0, $t0, 4
	sw	$v0, 0($a3)
	addiu	$a3, $a3, 4
	lw	$v0, 0($t0)
	sw	$v0, 0($a3)
	lw	$v1, 4($t0)
	b	lbl_0012E44C
	sw	$v1, 4($a3)
	nop
lbl_0012E440:
	move	$a1, $s1
	jal	sub_0012515C
	move	$a0, $s2
lbl_0012E44C:
	subu	$v0, $s7, $s6
	addu	$a1, $s4, $s6
	ori	$v0, $v0, 0x1
	lui	$a0, 0x13
	sw	$v0, 4($a1)
	addiu	$v1, $a0, 11136
	sw	$a1, 8($v1)
	move	$a0, $s8
	lw	$v0, 4($s4)
	andi	$v0, $v0, 0x1
	or	$v0, $v0, $s6
	b	lbl_0012E71C
	sw	$v0, 4($s4)
lbl_0012E480:
	addu	$a1, $v0, $s5
	sltu	$v1, $a1, $s6
	bnez	$v1, lbl_0012E4B8
	move	$s0, $s4
	lw	$a0, 8($a2)
	lw	$v0, 12($a2)
	move	$s7, $a1
	addiu	$s2, $s0, 8
	sw	$v0, 12($a0)
	sw	$a0, 8($v0)
	lw	$v0, 12($s4)
	b	lbl_0012E4E0
	lw	$a0, 8($s4)
	nop
lbl_0012E4B8:
	beqz	$s4, lbl_0012E598
	addu	$v1, $a0, $s5
	sltu	$v0, $v1, $s6
	bnez	$v0, lbl_0012E59C
	move	$a1, $s2
	lw	$v0, 12($s4)
	move	$s0, $s4
	lw	$a0, 8($s4)
	move	$s7, $v1
	addiu	$s2, $s0, 8
lbl_0012E4E0:
	sw	$v0, 12($a0)
	sw	$a0, 8($v0)
	addiu	$a2, $s5, -4
	sltiu	$v0, $a2, 37
	beqz	$v0, lbl_0012E588
	move	$a1, $s1
	sltiu	$v0, $a2, 20
	move	$t0, $s1
	bnez	$v0, lbl_0012E560
	move	$a3, $s2
	lw	$v0, 0($s1)
	sltiu	$a0, $a2, 28
	addiu	$t0, $s1, 8
	addiu	$a3, $s0, 16
	sw	$v0, 0($s2)
	lw	$v1, 4($s1)
	bnez	$a0, lbl_0012E560
	sw	$v1, 12($s0)
	lw	$v0, 0($t0)
	addiu	$t0, $s1, 16
	sltiu	$v1, $a2, 36
	sw	$v0, 0($a3)
	addiu	$a3, $s0, 24
	lw	$v0, 12($s1)
	bnez	$v1, lbl_0012E560
	sw	$v0, 20($s0)
	lw	$v0, 0($t0)
	addiu	$t0, $s1, 24
	sw	$v0, 0($a3)
	addiu	$a3, $s0, 32
	lw	$v0, 20($s1)
	sw	$v0, 28($s0)
lbl_0012E560:
	lw	$v0, 0($t0)
	addiu	$t0, $t0, 4
	sw	$v0, 0($a3)
	addiu	$a3, $a3, 4
	lw	$v0, 0($t0)
	sw	$v0, 0($a3)
	lw	$v1, 4($t0)
	sw	$v1, 4($a3)
	b	lbl_0012E6B8
	lw	$a1, 4($s4)
lbl_0012E588:
	jal	sub_0012515C
	move	$a0, $s2
	b	lbl_0012E6B8
	lw	$a1, 4($s0)
lbl_0012E598:
	move	$a1, $s2
lbl_0012E59C:
	jal	sub_001249A0
	move	$a0, $s8
	move	$s2, $v0
	bnezl	$s2, lbl_0012E5C0
	lw	$a1, 4($s3)
	jal	sub_00125450
	move	$a0, $s8
	b	lbl_0012E728
	move	$v0, $zero
lbl_0012E5C0:
	li	$v0, -2
	addiu	$s0, $s2, -8
	and	$v0, $a1, $v0
	addu	$v0, $s3, $v0
	bne	$s0, $v0, lbl_0012E5F8
	addiu	$a2, $s5, -4
	lw	$v0, 4($s0)
	move	$s0, $s3
	li	$v1, -4
	addiu	$s2, $s0, 8
	and	$v0, $v0, $v1
	b	lbl_0012E6B8
	addu	$s7, $s5, $v0
	nop
lbl_0012E5F8:
	sltiu	$v0, $a2, 37
	beqz	$v0, lbl_0012E698
	move	$a0, $s2
	sltiu	$v0, $a2, 20
	move	$a3, $s1
	bnez	$v0, lbl_0012E670
	move	$a1, $s2
	lw	$v0, 0($s1)
	sltiu	$a0, $a2, 28
	addiu	$a3, $s1, 8
	addiu	$a1, $s2, 8
	sw	$v0, 0($s2)
	lw	$v1, 4($s1)
	bnez	$a0, lbl_0012E670
	sw	$v1, 4($s2)
	lw	$v0, 0($a3)
	addiu	$a3, $s1, 16
	sltiu	$v1, $a2, 36
	sw	$v0, 0($a1)
	addiu	$a1, $s2, 16
	lw	$v0, 12($s1)
	bnez	$v1, lbl_0012E670
	sw	$v0, 12($s2)
	lw	$v0, 0($a3)
	addiu	$a3, $s1, 24
	sw	$v0, 0($a1)
	addiu	$a1, $s2, 24
	lw	$v0, 20($s1)
	sw	$v0, 20($s2)
	nop
lbl_0012E670:
	lw	$v0, 0($a3)
	addiu	$a3, $a3, 4
	sw	$v0, 0($a1)
	addiu	$a1, $a1, 4
	lw	$v0, 0($a3)
	sw	$v0, 0($a1)
	lw	$v1, 4($a3)
	b	lbl_0012E6A0
	sw	$v1, 4($a1)
	nop
lbl_0012E698:
	jal	sub_0012515C
	move	$a1, $s1
lbl_0012E6A0:
	move	$a1, $s1
	jal	sub_0012AAF0
	move	$a0, $s8
	b	lbl_0012E71C
	move	$a0, $s8
	nop
lbl_0012E6B8:
	subu	$a0, $s7, $s6
	sltiu	$v0, $a0, 16
	bnez	$v0, lbl_0012E700
	andi	$v0, $a1, 0x1
	addu	$a1, $s0, $s6
	or	$v0, $v0, $s6
	ori	$v1, $a0, 0x1
	sw	$v0, 4($s0)
	addu	$a2, $a1, $a0
	sw	$v1, 4($a1)
	addiu	$a1, $a1, 8
	move	$a0, $s8
	lw	$v0, 4($a2)
	ori	$v0, $v0, 0x1
	jal	sub_0012AAF0
	sw	$v0, 4($a2)
	b	lbl_0012E71C
	move	$a0, $s8
lbl_0012E700:
	addu	$a0, $s0, $s7
	or	$v0, $v0, $s7
	sw	$v0, 4($s0)
	lw	$v1, 4($a0)
	ori	$v1, $v1, 0x1
	sw	$v1, 4($a0)
	move	$a0, $s8
lbl_0012E71C:
	jal	sub_00125450
	nop
	move	$v0, $s2
lbl_0012E728:
	ld	$s0, 0($sp)
	ld	$s1, 8($sp)
	ld	$s2, 16($sp)
	ld	$s3, 24($sp)
	ld	$s4, 32($sp)
	ld	$s5, 40($sp)
	ld	$s6, 48($sp)
	ld	$s7, 56($sp)
	ld	$s8, 64($sp)
	ld	$ra, 72($sp)
	jr	$ra
	addiu	$sp, $sp, 80

sub_0012E758:
	lui	$a3, 0xffff
	move	$a2, $zero
	ori	$a3, $a3, 0xf000
	nop
lbl_0012E768:
	sync
	cache	0x10, 0($a2)
	sync
	mfc0	$v0, $28
	and	$v0, $v0, $a3
	addu	$v0, $v0, $a2
	sltu	$v1, $a1, $v0
	sltu	$v0, $v0, $a0
	bnez	$v0, lbl_0012E7A4
	nop
	bnez	$v1, lbl_0012E7A4
	nop
	sync
	cache	0x14, 0($a2)
	sync
lbl_0012E7A4:
	sync
	cache	0x10, 1($a2)
	sync
	mfc0	$v0, $28
	and	$v0, $v0, $a3
	addu	$v0, $v0, $a2
	sltu	$v1, $a1, $v0
	sltu	$v0, $v0, $a0
	bnez	$v0, lbl_0012E7E0
	nop
	bnez	$v1, lbl_0012E7E0
	nop
	sync
	cache	0x14, 1($a2)
	sync
lbl_0012E7E0:
	sync
	addiu	$a2, $a2, 64
	slti	$v0, $a2, 4096
	bnez	$v0, lbl_0012E768
	nop
	jr	$ra
	nop
	nop

sub_0012E800:
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a0
	sd	$ra, 48($sp)
	move	$s1, $a1
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_0012E838
	nop
	jal	sub_0010F420
	nop
lbl_0012E838:
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xffc0
	and	$a1, $s1, $a0
	jal	sub_0012E758
	and	$a0, $s2, $a0
	beqz	$s0, lbl_0012E868
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 64
lbl_0012E868:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffc0
	and	$a1, $a1, $v0
	j	sub_0012E758
	and	$a0, $a0, $v0
	nop

sub_0012E898:
	lui	$a3, 0xffff
	move	$a2, $zero
	ori	$a3, $a3, 0xf000
	nop
lbl_0012E8A8:
	sync
	cache	0x10, 0($a2)
	sync
	mfc0	$v0, $28
	and	$v0, $v0, $a3
	addu	$v0, $v0, $a2
	sltu	$v1, $a1, $v0
	sltu	$v0, $v0, $a0
	bnez	$v0, lbl_0012E8E4
	nop
	bnez	$v1, lbl_0012E8E4
	nop
	sync
	cache	0x16, 0($a2)
	sync
lbl_0012E8E4:
	sync
	cache	0x10, 1($a2)
	sync
	mfc0	$v0, $28
	and	$v0, $v0, $a3
	addu	$v0, $v0, $a2
	sltu	$v1, $a1, $v0
	sltu	$v0, $v0, $a0
	bnez	$v0, lbl_0012E920
	nop
	bnez	$v1, lbl_0012E920
	nop
	sync
	cache	0x16, 1($a2)
	sync
lbl_0012E920:
	sync
	addiu	$a2, $a2, 64
	slti	$v0, $a2, 4096
	bnez	$v0, lbl_0012E8A8
	nop
	jr	$ra
	nop
	nop
	addiu	$sp, $sp, -64
	sd	$s2, 32($sp)
	sd	$s1, 16($sp)
	move	$s2, $a0
	sd	$ra, 48($sp)
	move	$s1, $a1
	sd	$s0, 0($sp)
	mfc0	$s0, $12
	lui	$v0, 0x1
	and	$s0, $s0, $v0
	beqz	$s0, lbl_0012E978
	nop
	jal	sub_0010F420
	nop
lbl_0012E978:
	lui	$a0, 0xffff
	ori	$a0, $a0, 0xffc0
	and	$a1, $s1, $a0
	jal	sub_0012E898
	and	$a0, $s2, $a0
	beqz	$s0, lbl_0012E9A8
	ld	$ra, 48($sp)
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	j	sub_0010F470
	addiu	$sp, $sp, 64
lbl_0012E9A8:
	ld	$s2, 32($sp)
	ld	$s1, 16($sp)
	ld	$s0, 0($sp)
	jr	$ra
	addiu	$sp, $sp, 64
	nop
	lui	$v0, 0xffff
	ori	$v0, $v0, 0xffc0
	and	$a1, $a1, $v0
	j	sub_0012E898
	and	$a0, $a0, $v0
	nop

sub_0012E9D8:
	addiu	$sp, $sp, -32
	sd	$s1, 8($sp)
	move	$s1, $zero
	move	$a1, $s1
	sd	$s0, 0($sp)
	sd	$ra, 16($sp)
	move	$s0, $a0
	jal	sub_001228D8
	nop
	move	$a0, $s0
	move	$a1, $s0
	bgezl	$v0, lbl_0012EA40
	ld	$s0, 0($sp)
	move	$a0, $s1
	jal	sub_001224A8
	nop
	move	$a0, $v0
	jal	sub_00121DE8
	nop
	ld	$s0, 0($sp)
	dnegu	$v0, $v0
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 32
	nop
lbl_0012EA40:
	ld	$s1, 8($sp)
	ld	$ra, 16($sp)
	j	sub_00121DE8
	addiu	$sp, $sp, 32

sub_0012EA50:
	addiu	$sp, $sp, -64
	sd	$a0, 32($sp)
	addiu	$a0, $sp, 32
	sd	$ra, 48($sp)
	jal	sub_00124320
	move	$a1, $sp
	move	$v0, $zero
	lw	$a0, 0($sp)
	xori	$v1, $a0, 0x2
	beqz	$v1, lbl_0012EAE0
	sltiu	$a1, $a0, 2
	bnez	$a1, lbl_0012EAE4
	ld	$ra, 48($sp)
	xori	$v0, $a0, 0x4
	beqz	$v0, lbl_0012EAAC
	lw	$v1, 4($sp)
	lw	$a1, 8($sp)
	move	$v0, $zero
	bltz	$a1, lbl_0012EAE4
	slti	$v1, $a1, 31
	bnez	$v1, lbl_0012EAC0
	li	$v1, 60
	lw	$v1, 4($sp)
lbl_0012EAAC:
	lui	$v0, 0x7fff
	lui	$a0, 0x8000
	ori	$v0, $v0, 0xffff
	b	lbl_0012EAE0
	movn	$v0, $a0, $v1
lbl_0012EAC0:
	ld	$v0, 16($sp)
	subu	$v1, $v1, $a1
	lw	$a0, 4($sp)
	dsrlv	$v0, $v0, $v1
	dsll32	$v0, $v0, 0x0
	dsra32	$v0, $v0, 0x0
	negu	$v1, $v0
	movn	$v0, $v1, $a0
lbl_0012EAE0:
	ld	$ra, 48($sp)
lbl_0012EAE4:
	jr	$ra
	addiu	$sp, $sp, 64


.section .text_nop, "aw"
.align 0
.skip 0x00000008


// .section .reginfo, "a"
// .align 2
// .incbin "data/baserom.elf", 0x0002FAF4, 0x00000018


.section .data, "aw"
.align 7
.incbin "data/baserom.elf", 0x0002FB80, 0x00004464


.section .ctors, "aw"
.align 2
.incbin "data/baserom.elf", 0x00033FE4, 0x00000008


.section .dtors, "aw"
.align 2
.incbin "data/baserom.elf", 0x00033FEC, 0x00000008


.section .eh_frame, "aw"
.align 3
.incbin "data/baserom.elf", 0x00033FF8, 0x00000004


.section .rodata, "a"
.align 4
.incbin "data/baserom.elf", 0x00034000, 0x00003988


.section .lit4, "aw"
.align 2
.incbin "data/baserom.elf", 0x00037A00, 0x00000004


.section .data_nop, "aw"
.align 0
.skip 0x00000008


.section .sdata, "aw"
.align 3
.incbin "data/baserom.elf", 0x00037A80, 0x00000398


.section .sbss, "aw"
.align 2
.skip 0x0000000c


.section .bss, "aw"
.align 7
.skip 0x0002e0e8


.section .mdebug.eabi64, ""
.align 0
.skip 0x00000000


