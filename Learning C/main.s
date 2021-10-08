	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_fizzBuzz                       ; -- Begin function fizzBuzz
	.p2align	2
_fizzBuzz:                              ; @fizzBuzz
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, LBB0_2
; %bb.1:
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB0_10
LBB0_2:
	ldr	w8, [sp, #8]
	mov	w10, #3
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB0_5
; %bb.3:
	ldr	w8, [sp, #8]
	mov	w10, #5
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB0_5
; %bb.4:
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_10
LBB0_5:
	ldr	w8, [sp, #8]
	mov	w10, #3
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB0_7
; %bb.6:
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	LBB0_10
LBB0_7:
	ldr	w8, [sp, #8]
	mov	w10, #5
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, LBB0_9
; %bb.8:
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	mov	w8, #3
	stur	w8, [x29, #-4]
	b	LBB0_10
LBB0_9:
	stur	wzr, [x29, #-4]
LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_createSimpleFizzBuzz           ; -- Begin function createSimpleFizzBuzz
	.p2align	2
_createSimpleFizzBuzz:                  ; @createSimpleFizzBuzz
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	wzr, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	wzr, [sp, #16]
	str	wzr, [sp, #12]
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.gt	LBB1_10
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	w0, [sp, #12]
	bl	_fizzBuzz
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1                      ; =1
	b.ne	LBB1_4
; %bb.3:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #16]
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #2                      ; =2
	b.ne	LBB1_6
; %bb.5:                                ;   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1                      ; =1
	stur	w8, [x29, #-8]
LBB1_6:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #3                      ; =3
	b.ne	LBB1_8
; %bb.7:                                ;   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1                      ; =1
	stur	w8, [x29, #-12]
LBB1_8:                                 ;   in Loop: Header=BB1_1 Depth=1
; %bb.9:                                ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #12]
	b	LBB1_1
LBB1_10:
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldr	w9, [sp, #16]
                                        ; implicit-def: $x8
	mov	x8, x9
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	mov	x9, sp
	str	x8, [x9]
	bl	_printf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	w0, #200
	bl	_createSimpleFizzBuzz
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d \n"

l_.str.1:                               ; @.str.1
	.asciz	"%d FizzBuzz \n"

l_.str.2:                               ; @.str.2
	.asciz	"%d Fizz \n"

l_.str.3:                               ; @.str.3
	.asciz	"%d Buzz \n"

l_.str.4:                               ; @.str.4
	.asciz	"Total de Fizz: %d \n"

l_.str.5:                               ; @.str.5
	.asciz	"Total de Buzz: %d \n"

l_.str.6:                               ; @.str.6
	.asciz	"Total de FizzBuzz: %d \n"

.subsections_via_symbols
