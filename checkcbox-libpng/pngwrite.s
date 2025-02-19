	.text
	.file	"pngwrite.c"
	.globl	png_write_info_before_PLTE      # -- Begin function png_write_info_before_PLTE
	.p2align	4, 0x90
	.type	png_write_info_before_PLTE,@function
png_write_info_before_PLTE:             # @png_write_info_before_PLTE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	jmp	.LBB0_27
.LBB0_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB0_27
# %bb.4:                                # %if.then3
	movq	-8(%rbp), %rdi
	callq	png_write_sig
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$4096, %eax                     # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.5:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 1008(%rax)
	je	.LBB0_7
# %bb.6:                                # %if.then8
	movq	-8(%rbp), %rdi
	movabsq	$.L.str, %rsi
	callq	png_warning
	movq	-8(%rbp), %rax
	movl	$0, 1008(%rax)
.LBB0_7:                                # %if.end10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	36(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %r8d
	movq	-16(%rbp), %rax
	movzbl	38(%rax), %r9d
	movq	-16(%rbp), %rax
	movzbl	39(%rax), %r10d
	movq	-16(%rbp), %rax
	movzbl	40(%rax), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	png_write_IHDR
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$32768, %eax                    # imm = 0x8000
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.8:                                # %land.lhs.true19
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.9:                                # %land.lhs.true26
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.10:                               # %if.then30
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	52(%rax), %esi
	callq	png_write_gAMA_fixed
.LBB0_11:                               # %if.end32
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$32768, %eax                    # imm = 0x8000
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.12:                               # %land.lhs.true39
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$4096, %eax                     # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB0_16
# %bb.13:                               # %if.then44
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2048, %eax                     # imm = 0x800
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.14:                               # %if.then49
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.1, %rsi
	callq	png_app_warning
.LBB0_15:                               # %if.end50
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdx
	callq	png_write_iCCP
	jmp	.LBB0_20
.LBB0_16:                               # %if.else
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$32768, %eax                    # imm = 0x8000
	cmpl	$0, %eax
	jne	.LBB0_19
# %bb.17:                               # %land.lhs.true57
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2048, %eax                     # imm = 0x800
	cmpl	$0, %eax
	je	.LBB0_19
# %bb.18:                               # %if.then62
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzwl	124(%rax), %esi
	callq	png_write_sRGB
.LBB0_19:                               # %if.end65
	jmp	.LBB0_20
.LBB0_20:                               # %if.end66
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_22
# %bb.21:                               # %if.then71
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$176, %rsi
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %edx
	callq	png_write_sBIT
.LBB0_22:                               # %if.end74
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$32768, %eax                    # imm = 0x8000
	cmpl	$0, %eax
	jne	.LBB0_26
# %bb.23:                               # %land.lhs.true81
	movq	-16(%rbp), %rax
	movzwl	126(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# %bb.24:                               # %land.lhs.true88
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# %bb.25:                               # %if.then93
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$52, %rsi
	addq	$4, %rsi
	callq	png_write_cHRM_fixed
.LBB0_26:                               # %if.end95
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$1, %edx
	callq	write_unknown_chunks
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	orl	$1024, %ecx                     # imm = 0x400
	movl	%ecx, 300(%rax)
.LBB0_27:                               # %if.end97
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	png_write_info_before_PLTE, .Lfunc_end0-png_write_info_before_PLTE
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function write_unknown_chunks
	.type	write_unknown_chunks,@function
write_unknown_chunks:                   # @write_unknown_chunks
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 312(%rax)
	je	.LBB1_16
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	304(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	312(%rdx), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_15
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	-20(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB1_13
# %bb.4:                                # %if.then6
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	png_handle_as_unknown
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	je	.LBB1_12
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB1_9
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3, -36(%rbp)
	je	.LBB1_9
# %bb.7:                                # %lor.lhs.false14
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB1_12
# %bb.8:                                # %land.lhs.true17
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$3, 976(%rax)
	jne	.LBB1_12
.LBB1_9:                                # %if.then20
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB1_11
# %bb.10:                               # %if.then23
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	png_warning
.LBB1_11:                               # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	callq	png_write_chunk
.LBB1_12:                               # %if.end27
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %if.end28
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_14
.LBB1_14:                               # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_2
.LBB1_15:                               # %for.end
	jmp	.LBB1_16
.LBB1_16:                               # %if.end29
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	write_unknown_chunks, .Lfunc_end1-write_unknown_chunks
	.cfi_endproc
                                        # -- End function
	.globl	png_write_info                  # -- Begin function png_write_info
	.p2align	4, 0x90
	.type	png_write_info,@function
png_write_info:                         # @png_write_info
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# %bb.1:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
.LBB2_2:                                # %if.then
	jmp	.LBB2_57
.LBB2_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_write_info_before_PLTE
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB2_5
# %bb.4:                                # %if.then3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movzwl	32(%rax), %edx
	callq	png_write_PLTE
	jmp	.LBB2_8
.LBB2_5:                                # %if.else
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB2_7
# %bb.6:                                # %if.then7
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.2, %rsi
	callq	png_error
.LBB2_7:                                # %if.end8
	jmp	.LBB2_8
.LBB2_8:                                # %if.end9
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB2_19
# %bb.9:                                # %if.then14
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	andl	$524288, %eax                   # imm = 0x80000
	cmpl	$0, %eax
	je	.LBB2_18
# %bb.10:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB2_18
# %bb.11:                               # %if.then22
	movq	-16(%rbp), %rax
	movzwl	34(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jle	.LBB2_13
# %bb.12:                               # %if.then26
	movl	$256, -28(%rbp)                 # imm = 0x100
.LBB2_13:                               # %if.end27
	movl	$0, -24(%rbp)
.LBB2_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_17
# %bb.15:                               # %for.body
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movslq	-24(%rbp), %rcx
	movzbl	(%rax,%rcx), %ecx
	movl	$255, %eax
	subl	%ecx, %eax
	movb	%al, %dl
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movslq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.16:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_14
.LBB2_17:                               # %for.end
	jmp	.LBB2_18
.LBB2_18:                               # %if.end35
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	movq	-16(%rbp), %rdx
	addq	$192, %rdx
	movq	-16(%rbp), %rax
	movzwl	34(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %r8d
	callq	png_write_tRNS
.LBB2_19:                               # %if.end41
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB2_21
# %bb.20:                               # %if.then46
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$202, %rsi
	movq	-16(%rbp), %rax
	movzbl	37(%rax), %edx
	callq	png_write_bKGD
.LBB2_21:                               # %if.end49
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$65536, %eax                    # imm = 0x10000
	cmpl	$0, %eax
	je	.LBB2_23
# %bb.22:                               # %if.then54
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	236(%rax), %edx
	callq	png_write_eXIf
.LBB2_23:                               # %if.end55
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB2_25
# %bb.24:                               # %if.then60
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	256(%rax), %rsi
	movq	-16(%rbp), %rax
	movzwl	32(%rax), %edx
	callq	png_write_hIST
.LBB2_25:                               # %if.end63
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$256, %eax                      # imm = 0x100
	cmpl	$0, %eax
	je	.LBB2_27
# %bb.26:                               # %if.then68
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	212(%rax), %esi
	movq	-16(%rbp), %rax
	movl	216(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	220(%rax), %ecx
	callq	png_write_oFFs
.LBB2_27:                               # %if.end70
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB2_29
# %bb.28:                               # %if.then75
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	264(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	272(%rax), %edx
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	296(%rax), %r8d
	movq	-16(%rbp), %rax
	movzbl	297(%rax), %r9d
	movq	-16(%rbp), %rax
	movq	280(%rax), %r10
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	png_write_pCAL
.LBB2_29:                               # %if.end78
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$16384, %eax                    # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB2_31
# %bb.30:                               # %if.then83
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	332(%rax), %esi
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	344(%rax), %rcx
	callq	png_write_sCAL_s
.LBB2_31:                               # %if.end85
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB2_33
# %bb.32:                               # %if.then90
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	224(%rax), %esi
	movq	-16(%rbp), %rax
	movl	228(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	232(%rax), %ecx
	callq	png_write_pHYs
.LBB2_33:                               # %if.end92
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	je	.LBB2_35
# %bb.34:                               # %if.then97
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	callq	png_write_tIME
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	orl	$512, %ecx                      # imm = 0x200
	movl	%ecx, 300(%rax)
.LBB2_35:                               # %if.end98
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB2_41
# %bb.36:                               # %if.then103
	movl	$0, -20(%rbp)
.LBB2_37:                               # %for.cond104
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	328(%rcx), %eax
	jge	.LBB2_40
# %bb.38:                               # %for.body107
                                        #   in Loop: Header=BB2_37 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	320(%rax), %rsi
	movslq	-20(%rbp), %rax
	shlq	$5, %rax
	addq	%rax, %rsi
	callq	png_write_sPLT
# %bb.39:                               # %for.inc108
                                        #   in Loop: Header=BB2_37 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_37
.LBB2_40:                               # %for.end110
	jmp	.LBB2_41
.LBB2_41:                               # %if.end111
	movl	$0, -20(%rbp)
.LBB2_42:                               # %for.cond112
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	148(%rcx), %eax
	jge	.LBB2_56
# %bb.43:                               # %for.body115
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jle	.LBB2_48
# %bb.44:                               # %if.then120
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rax
	movq	48(%rax), %r8
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %r9
	imulq	$56, %r9, %r9
	addq	%r9, %rax
	movq	16(%rax), %r9
	callq	png_write_iTXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$-1, (%rax)
	jne	.LBB2_46
# %bb.45:                               # %if.then144
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-3, (%rax)
	jmp	.LBB2_47
.LBB2_46:                               # %if.else149
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-2, (%rax)
.LBB2_47:                               # %if.end154
                                        #   in Loop: Header=BB2_42 Depth=1
	jmp	.LBB2_54
.LBB2_48:                               # %if.else155
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB2_50
# %bb.49:                               # %if.then162
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	callq	png_write_zTXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-2, (%rax)
	jmp	.LBB2_53
.LBB2_50:                               # %if.else179
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$-1, (%rax)
	jne	.LBB2_52
# %bb.51:                               # %if.then186
                                        #   in Loop: Header=BB2_42 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	png_write_tEXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-3, (%rax)
.LBB2_52:                               # %if.end199
                                        #   in Loop: Header=BB2_42 Depth=1
	jmp	.LBB2_53
.LBB2_53:                               # %if.end200
                                        #   in Loop: Header=BB2_42 Depth=1
	jmp	.LBB2_54
.LBB2_54:                               # %if.end201
                                        #   in Loop: Header=BB2_42 Depth=1
	jmp	.LBB2_55
.LBB2_55:                               # %for.inc202
                                        #   in Loop: Header=BB2_42 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_42
.LBB2_56:                               # %for.end204
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$2, %edx
	callq	write_unknown_chunks
.LBB2_57:                               # %return
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	png_write_info, .Lfunc_end2-png_write_info
	.cfi_endproc
                                        # -- End function
	.globl	png_write_end                   # -- Begin function png_write_end
	.p2align	4, 0x90
	.type	png_write_end,@function
png_write_end:                          # @png_write_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB3_2
# %bb.1:                                # %if.then
	jmp	.LBB3_29
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB3_4
# %bb.3:                                # %if.then2
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.3, %rsi
	callq	png_error
.LBB3_4:                                # %if.end3
	movq	-8(%rbp), %rax
	movl	620(%rax), %eax
	movq	-8(%rbp), %rcx
	movzwl	616(%rcx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_6
# %bb.5:                                # %if.then6
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.4, %rsi
	callq	png_benign_error
.LBB3_6:                                # %if.end7
	cmpq	$0, -16(%rbp)
	je	.LBB3_28
# %bb.7:                                # %if.then10
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	je	.LBB3_10
# %bb.8:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	jne	.LBB3_10
# %bb.9:                                # %if.then18
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	callq	png_write_tIME
.LBB3_10:                               # %if.end19
	movl	$0, -20(%rbp)
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	148(%rcx), %eax
	jge	.LBB3_25
# %bb.12:                               # %for.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jle	.LBB3_17
# %bb.13:                               # %if.then24
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rax
	movq	48(%rax), %r8
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %r9
	imulq	$56, %r9, %r9
	addq	%r9, %rax
	movq	16(%rax), %r9
	callq	png_write_iTXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$-1, (%rax)
	jne	.LBB3_15
# %bb.14:                               # %if.then48
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-3, (%rax)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-2, (%rax)
.LBB3_16:                               # %if.end57
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_23
.LBB3_17:                               # %if.else58
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jl	.LBB3_19
# %bb.18:                               # %if.then65
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	callq	png_write_zTXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-2, (%rax)
	jmp	.LBB3_22
.LBB3_19:                               # %if.else82
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$-1, (%rax)
	jne	.LBB3_21
# %bb.20:                               # %if.then89
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	png_write_tEXt
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-3, (%rax)
.LBB3_21:                               # %if.end102
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %if.end103
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %if.end104
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_24
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_11
.LBB3_25:                               # %for.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$65536, %eax                    # imm = 0x10000
	cmpl	$0, %eax
	je	.LBB3_27
# %bb.26:                               # %if.then109
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	236(%rax), %edx
	callq	png_write_eXIf
.LBB3_27:                               # %if.end110
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$8, %edx
	callq	write_unknown_chunks
.LBB3_28:                               # %if.end111
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 300(%rax)
	movq	-8(%rbp), %rdi
	callq	png_write_IEND
.LBB3_29:                               # %return
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	png_write_end, .Lfunc_end3-png_write_end
	.cfi_endproc
                                        # -- End function
	.globl	png_convert_from_struct_tm      # -- Begin function png_convert_from_struct_tm
	.p2align	4, 0x90
	.type	png_convert_from_struct_tm,@function
png_convert_from_struct_tm:             # @png_convert_from_struct_tm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1900, %eax                     # imm = 0x76C
	movw	%ax, %cx
	movq	-8(%rbp), %rax
	movw	%cx, (%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	addl	$1, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 3(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 5(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 6(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	png_convert_from_struct_tm, .Lfunc_end4-png_convert_from_struct_tm
	.cfi_endproc
                                        # -- End function
	.globl	png_convert_from_time_t         # -- Begin function png_convert_from_time_t
	.p2align	4, 0x90
	.type	png_convert_from_time_t,@function
png_convert_from_time_t:                # @png_convert_from_time_t
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	gmtime
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	png_convert_from_struct_tm
.LBB5_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	png_convert_from_time_t, .Lfunc_end5-png_convert_from_time_t
	.cfi_endproc
                                        # -- End function
	.globl	png_create_write_struct         # -- Begin function png_create_write_struct
	.p2align	4, 0x90
	.type	png_create_write_struct,@function
png_create_write_struct:                # @png_create_write_struct
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%r9, %r8
	movq	$0, (%rsp)
	callq	png_create_write_struct_2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	png_create_write_struct, .Lfunc_end6-png_create_write_struct
	.cfi_endproc
                                        # -- End function
	.globl	png_create_write_struct_2       # -- Begin function png_create_write_struct_2
	.p2align	4, 0x90
	.type	png_create_write_struct_2,@function
png_create_write_struct_2:              # @png_create_write_struct_2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	callq	png_create_png_struct
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB7_2
# %bb.1:                                # %if.then
	movq	-56(%rbp), %rax
	movl	$8192, 440(%rax)                # imm = 0x2000
	movq	-56(%rbp), %rax
	movl	$1, 460(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 444(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 456(%rax)
	movq	-56(%rbp), %rax
	movl	$15, 452(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 448(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 480(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 464(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 476(%rax)
	movq	-56(%rbp), %rax
	movl	$15, 472(%rax)
	movq	-56(%rbp), %rax
	movl	$8, 468(%rax)
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_set_write_fn
.LBB7_2:                                # %if.end
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	png_create_write_struct_2, .Lfunc_end7-png_create_write_struct_2
	.cfi_endproc
                                        # -- End function
	.globl	png_write_rows                  # -- Begin function png_write_rows
	.p2align	4, 0x90
	.type	png_write_rows,@function
png_write_rows:                         # @png_write_rows
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB8_2
# %bb.1:                                # %if.then
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB8_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB8_6
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	png_write_row
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	png_write_rows, .Lfunc_end8-png_write_rows
	.cfi_endproc
                                        # -- End function
	.globl	png_write_row                   # -- Begin function png_write_row
	.p2align	4, 0x90
	.type	png_write_row,@function
png_write_row:                          # @png_write_row
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB9_2
# %bb.1:                                # %if.then
	jmp	.LBB9_58
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 532(%rax)
	jne	.LBB9_7
# %bb.3:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB9_7
# %bb.4:                                # %if.then4
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB9_6
# %bb.5:                                # %if.then7
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.5, %rsi
	callq	png_error
.LBB9_6:                                # %if.end8
	movq	-8(%rbp), %rdi
	callq	png_write_start_row
.LBB9_7:                                # %if.end9
	movq	-8(%rbp), %rax
	movzbl	628(%rax), %eax
	cmpl	$0, %eax
	je	.LBB9_36
# %bb.8:                                # %land.lhs.true13
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB9_36
# %bb.9:                                # %if.then17
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	subq	$6, %rax
	ja	.LBB9_34
# %bb.59:                               # %if.then17
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rax
	jmpq	*%rax
.LBB9_10:                               # %sw.bb
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	je	.LBB9_12
# %bb.11:                               # %if.then24
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_12:                               # %if.end25
	jmp	.LBB9_35
.LBB9_13:                               # %sw.bb26
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	jne	.LBB9_15
# %bb.14:                               # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$5, 504(%rax)
	jae	.LBB9_16
.LBB9_15:                               # %if.then33
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_16:                               # %if.end34
	jmp	.LBB9_35
.LBB9_17:                               # %sw.bb35
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	.LBB9_19
# %bb.18:                               # %if.then40
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_19:                               # %if.end41
	jmp	.LBB9_35
.LBB9_20:                               # %sw.bb42
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB9_22
# %bb.21:                               # %lor.lhs.false47
	movq	-8(%rbp), %rax
	cmpl	$3, 504(%rax)
	jae	.LBB9_23
.LBB9_22:                               # %if.then51
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_23:                               # %if.end52
	jmp	.LBB9_35
.LBB9_24:                               # %sw.bb53
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.LBB9_26
# %bb.25:                               # %if.then58
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_26:                               # %if.end59
	jmp	.LBB9_35
.LBB9_27:                               # %sw.bb60
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB9_29
# %bb.28:                               # %lor.lhs.false65
	movq	-8(%rbp), %rax
	cmpl	$2, 504(%rax)
	jae	.LBB9_30
.LBB9_29:                               # %if.then69
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_30:                               # %if.end70
	jmp	.LBB9_35
.LBB9_31:                               # %sw.bb71
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB9_33
# %bb.32:                               # %if.then76
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_33:                               # %if.end77
	jmp	.LBB9_35
.LBB9_34:                               # %sw.default
	jmp	.LBB9_35
.LBB9_35:                               # %sw.epilog
	jmp	.LBB9_36
.LBB9_36:                               # %if.end78
	movq	-8(%rbp), %rax
	movb	631(%rax), %al
	movb	%al, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	516(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rax
	movb	636(%rax), %al
	movb	%al, -22(%rbp)
	movq	-8(%rbp), %rax
	movb	633(%rax), %al
	movb	%al, -23(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	-22(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -21(%rbp)
	movzbl	-21(%rbp), %eax
	cmpl	$8, %eax
	jl	.LBB9_38
# %bb.37:                               # %cond.true
	movl	-40(%rbp), %eax
                                        # kill: def $rax killed $eax
	movzbl	-21(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	shrq	$3, %rcx
	imulq	%rcx, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB9_39
.LBB9_38:                               # %cond.false
	movl	-40(%rbp), %eax
                                        # kill: def $rax killed $eax
	movzbl	-21(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	imulq	%rcx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.LBB9_39:                               # %cond.end
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	560(%rax), %rdi
	addq	$1, %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8(%rbp), %rax
	movzbl	628(%rax), %eax
	cmpl	$0, %eax
	je	.LBB9_45
# %bb.40:                               # %land.lhs.true104
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
	cmpl	$6, %eax
	jge	.LBB9_45
# %bb.41:                               # %land.lhs.true109
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB9_45
# %bb.42:                               # %if.then114
	movq	-8(%rbp), %rax
	movq	560(%rax), %rsi
	addq	$1, %rsi
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %edx
	leaq	-40(%rbp), %rdi
	callq	png_do_write_interlace
	cmpl	$0, -40(%rbp)
	jne	.LBB9_44
# %bb.43:                               # %if.then122
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB9_58
.LBB9_44:                               # %if.end123
	jmp	.LBB9_45
.LBB9_45:                               # %if.end124
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB9_47
# %bb.46:                               # %if.then128
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_do_write_transformations
.LBB9_47:                               # %if.end129
	movzbl	-21(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	634(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB9_49
# %bb.48:                               # %lor.lhs.false136
	movzbl	-21(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	639(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB9_50
.LBB9_49:                               # %if.then142
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.6, %rsi
	callq	png_error
.LBB9_50:                               # %if.end143
	movq	-8(%rbp), %rax
	movl	1008(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB9_53
# %bb.51:                               # %land.lhs.true147
	movq	-8(%rbp), %rax
	movzbl	1012(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB9_53
# %bb.52:                               # %if.then151
	movq	-8(%rbp), %rax
	movq	560(%rax), %rsi
	addq	$1, %rsi
	leaq	-40(%rbp), %rdi
	callq	png_do_write_intrapixel
.LBB9_53:                               # %if.end154
	movzbl	-24(%rbp), %eax
	cmpl	$3, %eax
	jne	.LBB9_56
# %bb.54:                               # %land.lhs.true159
	movq	-8(%rbp), %rax
	cmpl	$0, 620(%rax)
	jl	.LBB9_56
# %bb.55:                               # %if.then162
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_do_check_palette_indexes
.LBB9_56:                               # %if.end163
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_write_find_filter
	movq	-8(%rbp), %rax
	cmpq	$0, 792(%rax)
	je	.LBB9_58
# %bb.57:                               # %if.then166
	movq	-8(%rbp), %rax
	movq	792(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	532(%rcx), %esi
	movq	-8(%rbp), %rcx
	movzbl	629(%rcx), %edx
	callq	*%rax
.LBB9_58:                               # %if.end171
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	png_write_row, .Lfunc_end9-png_write_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_10
	.quad	.LBB9_13
	.quad	.LBB9_17
	.quad	.LBB9_20
	.quad	.LBB9_24
	.quad	.LBB9_27
	.quad	.LBB9_31
                                        # -- End function
	.text
	.globl	png_write_image                 # -- Begin function png_write_image
	.p2align	4, 0x90
	.type	png_write_image,@function
png_write_image:                        # @png_write_image
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB10_2
# %bb.1:                                # %if.then
	jmp	.LBB10_10
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	png_set_interlace_handling
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_10
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_5:                               # %for.cond2
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	508(%rcx), %eax
	jae	.LBB10_8
# %bb.6:                                # %for.body4
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	png_write_row
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc5
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_3
.LBB10_10:                              # %for.end7
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	png_write_image, .Lfunc_end10-png_write_image
	.cfi_endproc
                                        # -- End function
	.globl	t_png_write_image               # -- Begin function t_png_write_image
	.p2align	4, 0x90
	.type	t_png_write_image,@function
t_png_write_image:                      # @t_png_write_image
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB11_2
# %bb.1:                                # %if.then
	jmp	.LBB11_14
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	png_set_interlace_handling
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_14
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_5:                               # %for.cond2
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	508(%rcx), %eax
	jae	.LBB11_12
# %bb.6:                                # %for.body4
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -41(%rbp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB11_8
# %bb.7:                                # %trap.fail
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB11_8:                               # %trap.cont
                                        #   in Loop: Header=BB11_5 Depth=2
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_9
	jmp	.LBB11_11
.LBB11_9:                               # %IsoHeap_HIT
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rsi
	callq	t_png_write_row
# %bb.10:                               # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_5
.LBB11_11:                              # %IsoHeap_L1.MISS
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB11_9
.LBB11_12:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc5
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_3
.LBB11_14:                              # %for.end7
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	t_png_write_image, .Lfunc_end11-t_png_write_image
	.cfi_endproc
                                        # -- End function
	.globl	t_png_write_row                 # -- Begin function t_png_write_row
	.p2align	4, 0x90
	.type	t_png_write_row,@function
t_png_write_row:                        # @t_png_write_row
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB12_2
# %bb.1:                                # %if.then
	jmp	.LBB12_58
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 532(%rax)
	jne	.LBB12_7
# %bb.3:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB12_7
# %bb.4:                                # %if.then4
	movq	-8(%rbp), %rax
	movl	300(%rax), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB12_6
# %bb.5:                                # %if.then7
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.5, %rsi
	callq	png_error
.LBB12_6:                               # %if.end8
	movq	-8(%rbp), %rdi
	callq	png_write_start_row
.LBB12_7:                               # %if.end9
	movq	-8(%rbp), %rax
	movzbl	628(%rax), %eax
	cmpl	$0, %eax
	je	.LBB12_36
# %bb.8:                                # %land.lhs.true13
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB12_36
# %bb.9:                                # %if.then17
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	subq	$6, %rax
	ja	.LBB12_34
# %bb.59:                               # %if.then17
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rax
	jmpq	*%rax
.LBB12_10:                              # %sw.bb
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	je	.LBB12_12
# %bb.11:                               # %if.then24
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_12:                              # %if.end25
	jmp	.LBB12_35
.LBB12_13:                              # %sw.bb26
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	jne	.LBB12_15
# %bb.14:                               # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$5, 504(%rax)
	jae	.LBB12_16
.LBB12_15:                              # %if.then33
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_16:                              # %if.end34
	jmp	.LBB12_35
.LBB12_17:                              # %sw.bb35
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	.LBB12_19
# %bb.18:                               # %if.then40
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_19:                              # %if.end41
	jmp	.LBB12_35
.LBB12_20:                              # %sw.bb42
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB12_22
# %bb.21:                               # %lor.lhs.false47
	movq	-8(%rbp), %rax
	cmpl	$3, 504(%rax)
	jae	.LBB12_23
.LBB12_22:                              # %if.then51
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_23:                              # %if.end52
	jmp	.LBB12_35
.LBB12_24:                              # %sw.bb53
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.LBB12_26
# %bb.25:                               # %if.then58
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_26:                              # %if.end59
	jmp	.LBB12_35
.LBB12_27:                              # %sw.bb60
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB12_29
# %bb.28:                               # %lor.lhs.false65
	movq	-8(%rbp), %rax
	cmpl	$2, 504(%rax)
	jae	.LBB12_30
.LBB12_29:                              # %if.then69
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_30:                              # %if.end70
	jmp	.LBB12_35
.LBB12_31:                              # %sw.bb71
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB12_33
# %bb.32:                               # %if.then76
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_33:                              # %if.end77
	jmp	.LBB12_35
.LBB12_34:                              # %sw.default
	jmp	.LBB12_35
.LBB12_35:                              # %sw.epilog
	jmp	.LBB12_36
.LBB12_36:                              # %if.end78
	movq	-8(%rbp), %rax
	movb	631(%rax), %al
	movb	%al, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	516(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rax
	movb	636(%rax), %al
	movb	%al, -22(%rbp)
	movq	-8(%rbp), %rax
	movb	633(%rax), %al
	movb	%al, -23(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	-22(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -21(%rbp)
	movzbl	-21(%rbp), %eax
	cmpl	$8, %eax
	jl	.LBB12_38
# %bb.37:                               # %cond.true
	movl	-40(%rbp), %eax
                                        # kill: def $rax killed $eax
	movzbl	-21(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	shrq	$3, %rcx
	imulq	%rcx, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB12_39
.LBB12_38:                              # %cond.false
	movl	-40(%rbp), %eax
                                        # kill: def $rax killed $eax
	movzbl	-21(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	imulq	%rcx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
.LBB12_39:                              # %cond.end
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	t_memcpy
	movq	-8(%rbp), %rax
	movzbl	628(%rax), %eax
	cmpl	$0, %eax
	je	.LBB12_45
# %bb.40:                               # %land.lhs.true104
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %eax
	cmpl	$6, %eax
	jge	.LBB12_45
# %bb.41:                               # %land.lhs.true109
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB12_45
# %bb.42:                               # %if.then114
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movzbl	629(%rax), %edx
	leaq	-40(%rbp), %rdi
	callq	t_png_do_write_interlace
	cmpl	$0, -40(%rbp)
	jne	.LBB12_44
# %bb.43:                               # %if.then123
	movq	-8(%rbp), %rdi
	callq	png_write_finish_row
	jmp	.LBB12_58
.LBB12_44:                              # %if.end124
	jmp	.LBB12_45
.LBB12_45:                              # %if.end125
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB12_47
# %bb.46:                               # %if.then129
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_do_write_transformations
.LBB12_47:                              # %if.end130
	movzbl	-21(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	634(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_49
# %bb.48:                               # %lor.lhs.false137
	movzbl	-21(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	639(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB12_50
.LBB12_49:                              # %if.then143
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.6, %rsi
	callq	png_error
.LBB12_50:                              # %if.end144
	movq	-8(%rbp), %rax
	movl	1008(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB12_53
# %bb.51:                               # %land.lhs.true148
	movq	-8(%rbp), %rax
	movzbl	1012(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB12_53
# %bb.52:                               # %if.then152
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	t_png_do_write_intrapixel
.LBB12_53:                              # %if.end156
	movzbl	-24(%rbp), %eax
	cmpl	$3, %eax
	jne	.LBB12_56
# %bb.54:                               # %land.lhs.true161
	movq	-8(%rbp), %rax
	cmpl	$0, 620(%rax)
	jl	.LBB12_56
# %bb.55:                               # %if.then164
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_do_check_palette_indexes
.LBB12_56:                              # %if.end165
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_write_find_filter
	movq	-8(%rbp), %rax
	cmpq	$0, 792(%rax)
	je	.LBB12_58
# %bb.57:                               # %if.then168
	movq	-8(%rbp), %rax
	movq	792(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	532(%rcx), %esi
	movq	-8(%rbp), %rcx
	movzbl	629(%rcx), %edx
	callq	*%rax
.LBB12_58:                              # %if.end173
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	t_png_write_row, .Lfunc_end12-t_png_write_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_10
	.quad	.LBB12_13
	.quad	.LBB12_17
	.quad	.LBB12_20
	.quad	.LBB12_24
	.quad	.LBB12_27
	.quad	.LBB12_31
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function png_do_write_intrapixel
	.type	png_do_write_intrapixel,@function
png_do_write_intrapixel:                # @png_do_write_intrapixel
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB13_27
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB13_13
# %bb.2:                                # %if.then5
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB13_4
# %bb.3:                                # %if.then10
	movl	$3, -20(%rbp)
	jmp	.LBB13_8
.LBB13_4:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$6, %eax
	jne	.LBB13_6
# %bb.5:                                # %if.then15
	movl	$4, -20(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else16
	jmp	.LBB13_27
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end17
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB13_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB13_12
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	subl	%ecx, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	subl	%ecx, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rax
	movb	%cl, 2(%rax)
# %bb.11:                               # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_9
.LBB13_12:                              # %for.end
	jmp	.LBB13_26
.LBB13_13:                              # %if.else31
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	cmpl	$16, %eax
	jne	.LBB13_25
# %bb.14:                               # %if.then36
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB13_16
# %bb.15:                               # %if.then43
	movl	$6, -20(%rbp)
	jmp	.LBB13_20
.LBB13_16:                              # %if.else44
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$6, %eax
	jne	.LBB13_18
# %bb.17:                               # %if.then49
	movl	$8, -20(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else50
	jmp	.LBB13_27
.LBB13_19:                              # %if.end51
	jmp	.LBB13_20
.LBB13_20:                              # %if.end52
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB13_21:                              # %for.cond53
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB13_24
# %bb.22:                               # %for.body56
                                        #   in Loop: Header=BB13_21 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shll	$8, %eax
	movq	-48(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %eax
	shll	$8, %eax
	movq	-48(%rbp), %rcx
	movzbl	3(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rax
	movzbl	4(%rax), %eax
	shll	$8, %eax
	movq	-48(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	andq	$65535, %rax                    # imm = 0xFFFF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	andq	$65535, %rax                    # imm = 0xFFFF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rax
	movb	%cl, (%rax)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rax
	movb	%cl, 1(%rax)
	movl	-72(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rax
	movb	%cl, 4(%rax)
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rax
	movb	%cl, 5(%rax)
# %bb.23:                               # %for.inc88
                                        #   in Loop: Header=BB13_21 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB13_21
.LBB13_24:                              # %for.end92
	jmp	.LBB13_25
.LBB13_25:                              # %if.end93
	jmp	.LBB13_26
.LBB13_26:                              # %if.end94
	jmp	.LBB13_27
.LBB13_27:                              # %if.end95
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	png_do_write_intrapixel, .Lfunc_end13-png_do_write_intrapixel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function t_png_do_write_intrapixel
	.type	t_png_do_write_intrapixel,@function
t_png_do_write_intrapixel:              # @t_png_do_write_intrapixel
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp                      # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB14_91
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB14_37
# %bb.2:                                # %if.then5
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB14_4
# %bb.3:                                # %if.then10
	movl	$3, -20(%rbp)
	jmp	.LBB14_8
.LBB14_4:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$6, %eax
	jne	.LBB14_6
# %bb.5:                                # %if.then15
	movl	$4, -20(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else16
	jmp	.LBB14_91
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end17
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB14_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB14_36
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-32(%rbp), %rcx
	movq	%rcx, -208(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -193(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_12
# %bb.11:                               # %trap.fail
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-208(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_12:                              # %trap.cont
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-193(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_13
	jmp	.LBB14_14
.LBB14_13:                              # %IsoHeap_HIT
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-208(%rbp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	movl	%eax, -228(%rbp)                # 4-byte Spill
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -224(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -209(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_16
	jmp	.LBB14_15
.LBB14_14:                              # %IsoHeap_L1.MISS
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-208(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_13
.LBB14_15:                              # %trap.fail26
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-224(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_16:                              # %trap.cont27
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-209(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_17
	jmp	.LBB14_18
.LBB14_17:                              # %IsoHeap_HIT30
                                        #   in Loop: Header=BB14_9 Depth=1
	movl	-228(%rbp), %eax                # 4-byte Reload
	movq	-224(%rbp), %rcx                # 8-byte Reload
	movzbl	(%rcx), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -241(%rbp)                 # 1-byte Spill
	movq	-32(%rbp), %rcx
	movq	%rcx, -240(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -229(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_20
	jmp	.LBB14_19
.LBB14_18:                              # %IsoHeap_L1.MISS29
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-224(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_17
.LBB14_19:                              # %trap.fail38
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-240(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_20:                              # %trap.cont39
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-229(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_21
	jmp	.LBB14_22
.LBB14_21:                              # %IsoHeap_HIT42
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-240(%rbp), %rax                # 8-byte Reload
	movb	-241(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -256(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -242(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_24
	jmp	.LBB14_23
.LBB14_22:                              # %IsoHeap_L1.MISS41
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-240(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_21
.LBB14_23:                              # %trap.fail50
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-256(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_24:                              # %trap.cont51
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-242(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_25
	jmp	.LBB14_26
.LBB14_25:                              # %IsoHeap_HIT54
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-256(%rbp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	movl	%eax, -276(%rbp)                # 4-byte Spill
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -272(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -257(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_28
	jmp	.LBB14_27
.LBB14_26:                              # %IsoHeap_L1.MISS53
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-256(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_25
.LBB14_27:                              # %trap.fail63
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-272(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_28:                              # %trap.cont64
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-257(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_29
	jmp	.LBB14_30
.LBB14_29:                              # %IsoHeap_HIT67
                                        #   in Loop: Header=BB14_9 Depth=1
	movl	-276(%rbp), %eax                # 4-byte Reload
	movq	-272(%rbp), %rcx                # 8-byte Reload
	movzbl	(%rcx), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -289(%rbp)                 # 1-byte Spill
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -288(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -277(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_32
	jmp	.LBB14_31
.LBB14_30:                              # %IsoHeap_L1.MISS66
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-272(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_29
.LBB14_31:                              # %trap.fail78
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-288(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_32:                              # %trap.cont79
                                        #   in Loop: Header=BB14_9 Depth=1
	movb	-277(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_33
	jmp	.LBB14_35
.LBB14_33:                              # %IsoHeap_HIT82
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-288(%rbp), %rax                # 8-byte Reload
	movb	-289(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
# %bb.34:                               # %for.inc
                                        #   in Loop: Header=BB14_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_9
.LBB14_35:                              # %IsoHeap_L1.MISS81
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-288(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_33
.LBB14_36:                              # %for.end
	jmp	.LBB14_90
.LBB14_37:                              # %if.else85
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	cmpl	$16, %eax
	jne	.LBB14_89
# %bb.38:                               # %if.then90
	movq	$0, -88(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB14_40
# %bb.39:                               # %if.then97
	movl	$6, -20(%rbp)
	jmp	.LBB14_44
.LBB14_40:                              # %if.else98
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpl	$6, %eax
	jne	.LBB14_42
# %bb.41:                               # %if.then103
	movl	$8, -20(%rbp)
	jmp	.LBB14_43
.LBB14_42:                              # %if.else104
	jmp	.LBB14_91
.LBB14_43:                              # %if.end105
	jmp	.LBB14_44
.LBB14_44:                              # %if.end106
	movl	$0, -92(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB14_45:                              # %for.cond107
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB14_88
# %bb.46:                               # %for.body110
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-88(%rbp), %rcx
	movq	%rcx, -304(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -290(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_48
# %bb.47:                               # %trap.fail116
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-304(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_48:                              # %trap.cont117
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-290(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_49
	jmp	.LBB14_50
.LBB14_49:                              # %IsoHeap_HIT120
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-304(%rbp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	shll	$8, %eax
	movl	%eax, -324(%rbp)                # 4-byte Spill
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -320(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -305(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_52
	jmp	.LBB14_51
.LBB14_50:                              # %IsoHeap_L1.MISS119
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-304(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_49
.LBB14_51:                              # %trap.fail129
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-320(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_52:                              # %trap.cont130
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-305(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_53
	jmp	.LBB14_54
.LBB14_53:                              # %IsoHeap_HIT133
                                        #   in Loop: Header=BB14_45 Depth=1
	movl	-324(%rbp), %eax                # 4-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -336(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -325(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_56
	jmp	.LBB14_55
.LBB14_54:                              # %IsoHeap_L1.MISS132
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-320(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_53
.LBB14_55:                              # %trap.fail142
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-336(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_56:                              # %trap.cont143
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-325(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_57
	jmp	.LBB14_58
.LBB14_57:                              # %IsoHeap_HIT146
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-336(%rbp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	shll	$8, %eax
	movl	%eax, -356(%rbp)                # 4-byte Spill
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -352(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -337(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_60
	jmp	.LBB14_59
.LBB14_58:                              # %IsoHeap_L1.MISS145
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-336(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_57
.LBB14_59:                              # %trap.fail156
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-352(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_60:                              # %trap.cont157
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-337(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_61
	jmp	.LBB14_62
.LBB14_61:                              # %IsoHeap_HIT160
                                        #   in Loop: Header=BB14_45 Depth=1
	movl	-356(%rbp), %eax                # 4-byte Reload
	movq	-352(%rbp), %rcx                # 8-byte Reload
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -368(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -357(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_64
	jmp	.LBB14_63
.LBB14_62:                              # %IsoHeap_L1.MISS159
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-352(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_61
.LBB14_63:                              # %trap.fail170
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-368(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_64:                              # %trap.cont171
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-357(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_65
	jmp	.LBB14_66
.LBB14_65:                              # %IsoHeap_HIT174
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-368(%rbp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	shll	$8, %eax
	movl	%eax, -388(%rbp)                # 4-byte Spill
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -384(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -369(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_68
	jmp	.LBB14_67
.LBB14_66:                              # %IsoHeap_L1.MISS173
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-368(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_65
.LBB14_67:                              # %trap.fail184
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-384(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_68:                              # %trap.cont185
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-369(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_69
	jmp	.LBB14_70
.LBB14_69:                              # %IsoHeap_HIT188
                                        #   in Loop: Header=BB14_45 Depth=1
	movl	-388(%rbp), %eax                # 4-byte Reload
	movq	-384(%rbp), %rcx                # 8-byte Reload
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-96(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	andq	$65535, %rax                    # imm = 0xFFFF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	andq	$65535, %rax                    # imm = 0xFFFF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -160(%rbp)
	movl	-156(%rbp), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -401(%rbp)                 # 1-byte Spill
	movq	-88(%rbp), %rcx
	movq	%rcx, -400(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -389(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_72
	jmp	.LBB14_71
.LBB14_70:                              # %IsoHeap_L1.MISS187
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-384(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_69
.LBB14_71:                              # %trap.fail205
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-400(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_72:                              # %trap.cont206
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-389(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_73
	jmp	.LBB14_74
.LBB14_73:                              # %IsoHeap_HIT209
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-400(%rbp), %rax                # 8-byte Reload
	movb	-401(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
	movl	-156(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -417(%rbp)                 # 1-byte Spill
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -402(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_76
	jmp	.LBB14_75
.LBB14_74:                              # %IsoHeap_L1.MISS208
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-400(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_73
.LBB14_75:                              # %trap.fail218
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-416(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_76:                              # %trap.cont219
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-402(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_77
	jmp	.LBB14_78
.LBB14_77:                              # %IsoHeap_HIT222
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-416(%rbp), %rax                # 8-byte Reload
	movb	-417(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
	movl	-160(%rbp), %eax
	shrl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -433(%rbp)                 # 1-byte Spill
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -432(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -418(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_80
	jmp	.LBB14_79
.LBB14_78:                              # %IsoHeap_L1.MISS221
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-416(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_77
.LBB14_79:                              # %trap.fail232
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-432(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_80:                              # %trap.cont233
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-418(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_81
	jmp	.LBB14_82
.LBB14_81:                              # %IsoHeap_HIT236
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-432(%rbp), %rax                # 8-byte Reload
	movb	-433(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
	movl	-160(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -449(%rbp)                 # 1-byte Spill
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -448(%rbp)                # 8-byte Spill
	movq	lowerbound_1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	upperbound_1@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rcx
	setae	%al
	cmpq	%rdx, %rcx
	setbe	%cl
	andb	%cl, %al
	movb	%al, -434(%rbp)                 # 1-byte Spill
	testb	$1, %al
	jne	.LBB14_84
	jmp	.LBB14_83
.LBB14_82:                              # %IsoHeap_L1.MISS235
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-432(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_81
.LBB14_83:                              # %trap.fail245
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-448(%rbp), %rdi                # 8-byte Reload
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	CacheUpdateandCheck_2@PLT
.LBB14_84:                              # %trap.cont246
                                        #   in Loop: Header=BB14_45 Depth=1
	movb	-434(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_85
	jmp	.LBB14_87
.LBB14_85:                              # %IsoHeap_HIT249
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-448(%rbp), %rax                # 8-byte Reload
	movb	-449(%rbp), %cl                 # 1-byte Reload
	movb	%cl, (%rax)
# %bb.86:                               # %for.inc250
                                        #   in Loop: Header=BB14_45 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-20(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB14_45
.LBB14_87:                              # %IsoHeap_L1.MISS248
                                        #   in Loop: Header=BB14_45 Depth=1
	movq	-448(%rbp), %rdi                # 8-byte Reload
	callq	CacheUpdateandCheck@PLT
	jmp	.LBB14_85
.LBB14_88:                              # %for.end255
	jmp	.LBB14_89
.LBB14_89:                              # %if.end256
	jmp	.LBB14_90
.LBB14_90:                              # %if.end257
	jmp	.LBB14_91
.LBB14_91:                              # %if.end258
	addq	$464, %rsp                      # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	t_png_do_write_intrapixel, .Lfunc_end14-t_png_do_write_intrapixel
	.cfi_endproc
                                        # -- End function
	.globl	png_set_flush                   # -- Begin function png_set_flush
	.p2align	4, 0x90
	.type	png_set_flush,@function
png_set_flush:                          # @png_set_flush
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB15_2
# %bb.1:                                # %if.then
	jmp	.LBB15_6
.LBB15_2:                               # %if.end
	cmpl	$0, -12(%rbp)
	jge	.LBB15_4
# %bb.3:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
.LBB15_5:                               # %cond.end
	movl	-16(%rbp), %ecx                 # 4-byte Reload
	movq	-8(%rbp), %rax
	movl	%ecx, 680(%rax)
.LBB15_6:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	png_set_flush, .Lfunc_end15-png_set_flush
	.cfi_endproc
                                        # -- End function
	.globl	png_write_flush                 # -- Begin function png_write_flush
	.p2align	4, 0x90
	.type	png_write_flush,@function
png_write_flush:                        # @png_write_flush
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB16_2
# %bb.1:                                # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	532(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	512(%rcx), %eax
	jb	.LBB16_4
# %bb.3:                                # %if.then2
	jmp	.LBB16_5
.LBB16_4:                               # %if.end3
	movq	-8(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$2, %ecx
	movq	%rdx, %rsi
	callq	png_compress_IDAT
	movq	-8(%rbp), %rax
	movl	$0, 684(%rax)
	movq	-8(%rbp), %rdi
	callq	png_flush
.LBB16_5:                               # %return
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	png_write_flush, .Lfunc_end16-png_write_flush
	.cfi_endproc
                                        # -- End function
	.globl	png_destroy_write_struct        # -- Begin function png_destroy_write_struct
	.p2align	4, 0x90
	.type	png_destroy_write_struct,@function
png_destroy_write_struct:               # @png_destroy_write_struct
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB17_4
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_3
# %bb.2:                                # %if.then2
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_destroy_info_struct
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdi
	callq	png_write_destroy
	movq	-24(%rbp), %rdi
	callq	png_destroy_png_struct
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %if.end3
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	png_destroy_write_struct, .Lfunc_end17-png_destroy_write_struct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_write_destroy
	.type	png_write_destroy,@function
png_write_destroy:                      # @png_write_destroy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	304(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB18_2
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rdi
	addq	$320, %rdi                      # imm = 0x140
	callq	deflateEnd
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$432, %rsi                      # imm = 0x1B0
	callq	png_free_buffer_list
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	568(%rax), %rsi
	callq	t_png_free
	movq	-8(%rbp), %rax
	movq	$0, 568(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	544(%rax), %rsi
	callq	png_free
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	576(%rax), %rsi
	callq	t_png_free
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	584(%rax), %rsi
	callq	t_png_free
	movq	-8(%rbp), %rax
	movq	$0, 544(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 576(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 584(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	984(%rax), %rsi
	callq	png_free
	movq	-8(%rbp), %rax
	movq	$0, 984(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	png_write_destroy, .Lfunc_end18-png_write_destroy
	.cfi_endproc
                                        # -- End function
	.globl	png_set_filter                  # -- Begin function png_set_filter
	.p2align	4, 0x90
	.type	png_set_filter,@function
png_set_filter:                         # @png_set_filter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB19_2
# %bb.1:                                # %if.then
	jmp	.LBB19_42
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	1008(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB19_5
# %bb.3:                                # %land.lhs.true
	cmpl	$64, -12(%rbp)
	jne	.LBB19_5
# %bb.4:                                # %if.then3
	movl	$0, -12(%rbp)
.LBB19_5:                               # %if.end4
	cmpl	$0, -12(%rbp)
	jne	.LBB19_41
# %bb.6:                                # %if.then6
	movzbl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	subl	$7, %eax
	ja	.LBB19_13
# %bb.43:                               # %if.then6
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rax
	jmpq	*%rax
.LBB19_7:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.7, %rsi
	callq	png_app_error
.LBB19_8:                               # %sw.bb8
	movq	-8(%rbp), %rax
	movb	$8, 630(%rax)
	jmp	.LBB19_14
.LBB19_9:                               # %sw.bb9
	movq	-8(%rbp), %rax
	movb	$16, 630(%rax)
	jmp	.LBB19_14
.LBB19_10:                              # %sw.bb11
	movq	-8(%rbp), %rax
	movb	$32, 630(%rax)
	jmp	.LBB19_14
.LBB19_11:                              # %sw.bb13
	movq	-8(%rbp), %rax
	movb	$64, 630(%rax)
	jmp	.LBB19_14
.LBB19_12:                              # %sw.bb15
	movq	-8(%rbp), %rax
	movb	$-128, 630(%rax)
	jmp	.LBB19_14
.LBB19_13:                              # %sw.default
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 630(%rax)
.LBB19_14:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movq	560(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB19_40
# %bb.15:                               # %if.then20
	movq	-8(%rbp), %rax
	cmpl	$1, 508(%rax)
	jne	.LBB19_17
# %bb.16:                               # %if.then23
	movl	-16(%rbp), %eax
	andl	$-225, %eax
	movl	%eax, -16(%rbp)
.LBB19_17:                              # %if.end25
	movq	-8(%rbp), %rax
	cmpl	$1, 504(%rax)
	jne	.LBB19_19
# %bb.18:                               # %if.then28
	movl	-16(%rbp), %eax
	andl	$-209, %eax
	movl	%eax, -16(%rbp)
.LBB19_19:                              # %if.end30
	movl	-16(%rbp), %eax
	andl	$224, %eax
	cmpl	$0, %eax
	je	.LBB19_22
# %bb.20:                               # %land.lhs.true34
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	jne	.LBB19_22
# %bb.21:                               # %if.then37
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.8, %rsi
	callq	png_app_warning
	movl	-16(%rbp), %eax
	andl	$-225, %eax
	movl	%eax, -16(%rbp)
.LBB19_22:                              # %if.end39
	movl	$0, -20(%rbp)
	movl	-16(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB19_24
# %bb.23:                               # %if.then41
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB19_24:                              # %if.end42
	movl	-16(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB19_26
# %bb.25:                               # %if.then45
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB19_26:                              # %if.end47
	movl	-16(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB19_28
# %bb.27:                               # %if.then50
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB19_28:                              # %if.end52
	movl	-16(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB19_30
# %bb.29:                               # %if.then55
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB19_30:                              # %if.end57
	movq	-8(%rbp), %rax
	movzbl	636(%rax), %eax
	movq	-8(%rbp), %rcx
	movzbl	633(%rcx), %ecx
	imull	%ecx, %eax
	cmpl	$8, %eax
	jl	.LBB19_32
# %bb.31:                               # %cond.true
	movq	-8(%rbp), %rax
	movl	504(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	-8(%rbp), %rcx
	movzbl	636(%rcx), %ecx
	movq	-8(%rbp), %rdx
	movzbl	633(%rdx), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	shrq	$3, %rcx
	imulq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB19_33
.LBB19_32:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	504(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	-8(%rbp), %rcx
	movzbl	636(%rcx), %ecx
	movq	-8(%rbp), %rdx
	movzbl	633(%rdx), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	imulq	%rcx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
.LBB19_33:                              # %cond.end
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	jne	.LBB19_35
# %bb.34:                               # %if.then84
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	t_png_malloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 576(%rax)
.LBB19_35:                              # %if.end86
	cmpl	$1, -20(%rbp)
	jle	.LBB19_39
# %bb.36:                               # %if.then89
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	jne	.LBB19_38
# %bb.37:                               # %if.then92
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	t_png_malloc
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 584(%rax)
.LBB19_38:                              # %if.end95
	jmp	.LBB19_39
.LBB19_39:                              # %if.end96
	jmp	.LBB19_40
.LBB19_40:                              # %if.end97
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 630(%rax)
	jmp	.LBB19_42
.LBB19_41:                              # %if.else
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.9, %rsi
	callq	png_error
.LBB19_42:                              # %if.end100
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	png_set_filter, .Lfunc_end19-png_set_filter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_8
	.quad	.LBB19_9
	.quad	.LBB19_10
	.quad	.LBB19_11
	.quad	.LBB19_12
	.quad	.LBB19_7
	.quad	.LBB19_7
	.quad	.LBB19_7
                                        # -- End function
	.text
	.globl	png_set_filter_heuristics       # -- Begin function png_set_filter_heuristics
	.p2align	4, 0x90
	.type	png_set_filter_heuristics,@function
png_set_filter_heuristics:              # @png_set_filter_heuristics
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	png_set_filter_heuristics, .Lfunc_end20-png_set_filter_heuristics
	.cfi_endproc
                                        # -- End function
	.globl	png_set_filter_heuristics_fixed # -- Begin function png_set_filter_heuristics_fixed
	.p2align	4, 0x90
	.type	png_set_filter_heuristics_fixed,@function
png_set_filter_heuristics_fixed:        # @png_set_filter_heuristics_fixed
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	png_set_filter_heuristics_fixed, .Lfunc_end21-png_set_filter_heuristics_fixed
	.cfi_endproc
                                        # -- End function
	.globl	png_set_compression_level       # -- Begin function png_set_compression_level
	.p2align	4, 0x90
	.type	png_set_compression_level,@function
png_set_compression_level:              # @png_set_compression_level
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB22_2
# %bb.1:                                # %if.then
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 444(%rax)
.LBB22_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	png_set_compression_level, .Lfunc_end22-png_set_compression_level
	.cfi_endproc
                                        # -- End function
	.globl	png_set_compression_mem_level   # -- Begin function png_set_compression_mem_level
	.p2align	4, 0x90
	.type	png_set_compression_mem_level,@function
png_set_compression_mem_level:          # @png_set_compression_mem_level
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB23_2
# %bb.1:                                # %if.then
	jmp	.LBB23_3
.LBB23_2:                               # %if.end
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 456(%rax)
.LBB23_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	png_set_compression_mem_level, .Lfunc_end23-png_set_compression_mem_level
	.cfi_endproc
                                        # -- End function
	.globl	png_set_compression_strategy    # -- Begin function png_set_compression_strategy
	.p2align	4, 0x90
	.type	png_set_compression_strategy,@function
png_set_compression_strategy:           # @png_set_compression_strategy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB24_2
# %bb.1:                                # %if.then
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 304(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 460(%rax)
.LBB24_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	png_set_compression_strategy, .Lfunc_end24-png_set_compression_strategy
	.cfi_endproc
                                        # -- End function
	.globl	png_set_compression_window_bits # -- Begin function png_set_compression_window_bits
	.p2align	4, 0x90
	.type	png_set_compression_window_bits,@function
png_set_compression_window_bits:        # @png_set_compression_window_bits
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB25_2
# %bb.1:                                # %if.then
	jmp	.LBB25_8
.LBB25_2:                               # %if.end
	cmpl	$15, -12(%rbp)
	jle	.LBB25_4
# %bb.3:                                # %if.then2
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.10, %rsi
	callq	png_warning
	movl	$15, -12(%rbp)
	jmp	.LBB25_7
.LBB25_4:                               # %if.else
	cmpl	$8, -12(%rbp)
	jge	.LBB25_6
# %bb.5:                                # %if.then4
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.11, %rsi
	callq	png_warning
	movl	$8, -12(%rbp)
.LBB25_6:                               # %if.end5
	jmp	.LBB25_7
.LBB25_7:                               # %if.end6
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 452(%rax)
.LBB25_8:                               # %return
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	png_set_compression_window_bits, .Lfunc_end25-png_set_compression_window_bits
	.cfi_endproc
                                        # -- End function
	.globl	png_set_compression_method      # -- Begin function png_set_compression_method
	.p2align	4, 0x90
	.type	png_set_compression_method,@function
png_set_compression_method:             # @png_set_compression_method
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB26_2
# %bb.1:                                # %if.then
	jmp	.LBB26_5
.LBB26_2:                               # %if.end
	cmpl	$8, -12(%rbp)
	je	.LBB26_4
# %bb.3:                                # %if.then2
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.12, %rsi
	callq	png_warning
.LBB26_4:                               # %if.end3
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 448(%rax)
.LBB26_5:                               # %return
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	png_set_compression_method, .Lfunc_end26-png_set_compression_method
	.cfi_endproc
                                        # -- End function
	.globl	png_set_text_compression_level  # -- Begin function png_set_text_compression_level
	.p2align	4, 0x90
	.type	png_set_text_compression_level,@function
png_set_text_compression_level:         # @png_set_text_compression_level
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB27_2
# %bb.1:                                # %if.then
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 464(%rax)
.LBB27_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	png_set_text_compression_level, .Lfunc_end27-png_set_text_compression_level
	.cfi_endproc
                                        # -- End function
	.globl	png_set_text_compression_mem_level # -- Begin function png_set_text_compression_mem_level
	.p2align	4, 0x90
	.type	png_set_text_compression_mem_level,@function
png_set_text_compression_mem_level:     # @png_set_text_compression_mem_level
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB28_2
# %bb.1:                                # %if.then
	jmp	.LBB28_3
.LBB28_2:                               # %if.end
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 476(%rax)
.LBB28_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	png_set_text_compression_mem_level, .Lfunc_end28-png_set_text_compression_mem_level
	.cfi_endproc
                                        # -- End function
	.globl	png_set_text_compression_strategy # -- Begin function png_set_text_compression_strategy
	.p2align	4, 0x90
	.type	png_set_text_compression_strategy,@function
png_set_text_compression_strategy:      # @png_set_text_compression_strategy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB29_2
# %bb.1:                                # %if.then
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 480(%rax)
.LBB29_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	png_set_text_compression_strategy, .Lfunc_end29-png_set_text_compression_strategy
	.cfi_endproc
                                        # -- End function
	.globl	png_set_text_compression_window_bits # -- Begin function png_set_text_compression_window_bits
	.p2align	4, 0x90
	.type	png_set_text_compression_window_bits,@function
png_set_text_compression_window_bits:   # @png_set_text_compression_window_bits
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB30_2
# %bb.1:                                # %if.then
	jmp	.LBB30_8
.LBB30_2:                               # %if.end
	cmpl	$15, -12(%rbp)
	jle	.LBB30_4
# %bb.3:                                # %if.then2
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.10, %rsi
	callq	png_warning
	movl	$15, -12(%rbp)
	jmp	.LBB30_7
.LBB30_4:                               # %if.else
	cmpl	$8, -12(%rbp)
	jge	.LBB30_6
# %bb.5:                                # %if.then4
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.11, %rsi
	callq	png_warning
	movl	$8, -12(%rbp)
.LBB30_6:                               # %if.end5
	jmp	.LBB30_7
.LBB30_7:                               # %if.end6
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 472(%rax)
.LBB30_8:                               # %return
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	png_set_text_compression_window_bits, .Lfunc_end30-png_set_text_compression_window_bits
	.cfi_endproc
                                        # -- End function
	.globl	png_set_text_compression_method # -- Begin function png_set_text_compression_method
	.p2align	4, 0x90
	.type	png_set_text_compression_method,@function
png_set_text_compression_method:        # @png_set_text_compression_method
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB31_2
# %bb.1:                                # %if.then
	jmp	.LBB31_5
.LBB31_2:                               # %if.end
	cmpl	$8, -12(%rbp)
	je	.LBB31_4
# %bb.3:                                # %if.then2
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.12, %rsi
	callq	png_warning
.LBB31_4:                               # %if.end3
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 468(%rax)
.LBB31_5:                               # %return
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	png_set_text_compression_method, .Lfunc_end31-png_set_text_compression_method
	.cfi_endproc
                                        # -- End function
	.globl	png_set_write_status_fn         # -- Begin function png_set_write_status_fn
	.p2align	4, 0x90
	.type	png_set_write_status_fn,@function
png_set_write_status_fn:                # @png_set_write_status_fn
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB32_2
# %bb.1:                                # %if.then
	jmp	.LBB32_3
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 792(%rax)
.LBB32_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	png_set_write_status_fn, .Lfunc_end32-png_set_write_status_fn
	.cfi_endproc
                                        # -- End function
	.globl	png_set_write_user_transform_fn # -- Begin function png_set_write_user_transform_fn
	.p2align	4, 0x90
	.type	png_set_write_user_transform_fn,@function
png_set_write_user_transform_fn:        # @png_set_write_user_transform_fn
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB33_2
# %bb.1:                                # %if.then
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	308(%rax), %ecx
	orl	$1048576, %ecx                  # imm = 0x100000
	movl	%ecx, 308(%rax)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 280(%rax)
.LBB33_3:                               # %return
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	png_set_write_user_transform_fn, .Lfunc_end33-png_set_write_user_transform_fn
	.cfi_endproc
                                        # -- End function
	.globl	png_write_png                   # -- Begin function png_write_png
	.p2align	4, 0x90
	.type	png_write_png,@function
png_write_png:                          # @png_write_png
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB34_2
# %bb.1:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB34_3
.LBB34_2:                               # %if.then
	jmp	.LBB34_33
.LBB34_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$32768, %eax                    # imm = 0x8000
	cmpl	$0, %eax
	jne	.LBB34_5
# %bb.4:                                # %if.then3
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.13, %rsi
	callq	png_app_error
	jmp	.LBB34_33
.LBB34_5:                               # %if.end4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_write_info
	movl	-20(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB34_7
# %bb.6:                                # %if.then7
	movq	-8(%rbp), %rdi
	callq	png_set_invert_mono
.LBB34_7:                               # %if.end8
	movl	-20(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB34_11
# %bb.8:                                # %if.then11
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB34_10
# %bb.9:                                # %if.then15
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$176, %rsi
	callq	png_set_shift
.LBB34_10:                              # %if.end16
	jmp	.LBB34_11
.LBB34_11:                              # %if.end17
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_13
# %bb.12:                               # %if.then20
	movq	-8(%rbp), %rdi
	callq	png_set_packing
.LBB34_13:                              # %if.end21
	movl	-20(%rbp), %eax
	andl	$256, %eax                      # imm = 0x100
	cmpl	$0, %eax
	je	.LBB34_15
# %bb.14:                               # %if.then24
	movq	-8(%rbp), %rdi
	callq	png_set_swap_alpha
.LBB34_15:                              # %if.end25
	movl	-20(%rbp), %eax
	andl	$6144, %eax                     # imm = 0x1800
	cmpl	$0, %eax
	je	.LBB34_24
# %bb.16:                               # %if.then28
	movl	-20(%rbp), %eax
	andl	$4096, %eax                     # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB34_20
# %bb.17:                               # %if.then31
	movl	-20(%rbp), %eax
	andl	$2048, %eax                     # imm = 0x800
	cmpl	$0, %eax
	je	.LBB34_19
# %bb.18:                               # %if.then34
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.14, %rsi
	callq	png_app_error
.LBB34_19:                              # %if.end35
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	png_set_filler
	jmp	.LBB34_23
.LBB34_20:                              # %if.else
	movl	-20(%rbp), %eax
	andl	$2048, %eax                     # imm = 0x800
	cmpl	$0, %eax
	je	.LBB34_22
# %bb.21:                               # %if.then38
	movq	-8(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	png_set_filler
.LBB34_22:                              # %if.end39
	jmp	.LBB34_23
.LBB34_23:                              # %if.end40
	jmp	.LBB34_24
.LBB34_24:                              # %if.end41
	movl	-20(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB34_26
# %bb.25:                               # %if.then44
	movq	-8(%rbp), %rdi
	callq	png_set_bgr
.LBB34_26:                              # %if.end45
	movl	-20(%rbp), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	je	.LBB34_28
# %bb.27:                               # %if.then48
	movq	-8(%rbp), %rdi
	callq	png_set_swap
.LBB34_28:                              # %if.end49
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB34_30
# %bb.29:                               # %if.then52
	movq	-8(%rbp), %rdi
	callq	png_set_packswap
.LBB34_30:                              # %if.end53
	movl	-20(%rbp), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB34_32
# %bb.31:                               # %if.then56
	movq	-8(%rbp), %rdi
	callq	png_set_invert_alpha
.LBB34_32:                              # %if.end57
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	352(%rax), %rsi
	callq	t_png_write_image
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_write_end
.LBB34_33:                              # %return
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	png_write_png, .Lfunc_end34-png_write_png
	.cfi_endproc
                                        # -- End function
	.globl	png_image_write_to_memory       # -- Begin function png_image_write_to_memory
	.p2align	4, 0x90
	.type	png_image_write_to_memory,@function
png_image_write_to_memory:              # @png_image_write_to_memory
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB35_15
# %bb.1:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB35_15
# %bb.2:                                # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB35_14
# %bb.3:                                # %land.lhs.true3
	movq	-48(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB35_14
# %bb.4:                                # %if.then5
	movq	-24(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	jne	.LBB35_6
# %bb.5:                                # %if.then7
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB35_6:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	png_image_write_init
	cmpl	$0, %eax
	je	.LBB35_13
# %bb.7:                                # %if.then9
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	movabsq	$png_image_write_memory, %rsi
	callq	png_safe_execute
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rdi
	callq	png_image_free
	cmpl	$0, -148(%rbp)
	je	.LBB35_12
# %bb.8:                                # %if.then18
	movq	-24(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB35_11
# %bb.9:                                # %land.lhs.true20
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jbe	.LBB35_11
# %bb.10:                               # %if.then23
	movl	$0, -148(%rbp)
.LBB35_11:                              # %if.end24
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
.LBB35_12:                              # %if.end26
	movl	-148(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB35_18
.LBB35_13:                              # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB35_18
.LBB35_14:                              # %if.else27
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.15, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB35_18
.LBB35_15:                              # %if.else29
	cmpq	$0, -16(%rbp)
	je	.LBB35_17
# %bb.16:                               # %if.then31
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.16, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB35_18
.LBB35_17:                              # %if.else33
	movl	$0, -4(%rbp)
.LBB35_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	png_image_write_to_memory, .Lfunc_end35-png_image_write_to_memory
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_image_write_init
	.type	png_image_write_init,@function
png_image_write_init:                   # @png_image_write_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movabsq	$.L.str.23, %rdi
	movabsq	$png_safe_error, %rdx
	movabsq	$png_safe_warning, %rcx
	callq	png_create_write_struct
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB36_6
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB36_5
# %bb.2:                                # %if.then3
	movq	-24(%rbp), %rdi
	movl	$48, %esi
	callq	png_malloc_warn
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB36_4
# %bb.3:                                # %if.then6
	movq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 40(%rax)
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB36_7
.LBB36_4:                               # %if.end
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	png_destroy_info_struct
.LBB36_5:                               # %if.end9
	leaq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	png_destroy_write_struct
.LBB36_6:                               # %if.end10
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.24, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
.LBB36_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	png_image_write_init, .Lfunc_end36-png_image_write_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_image_write_memory
	.type	png_image_write_memory,@function
png_image_write_memory:                 # @png_image_write_memory
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movabsq	$image_memory_write, %rdx
	movabsq	$image_memory_flush, %rcx
	callq	png_set_write_fn
	movq	-16(%rbp), %rdi
	callq	png_image_write_main
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	png_image_write_memory, .Lfunc_end37-png_image_write_memory
	.cfi_endproc
                                        # -- End function
	.globl	png_image_write_to_stdio        # -- Begin function png_image_write_to_stdio
	.p2align	4, 0x90
	.type	png_image_write_to_stdio,@function
png_image_write_to_stdio:               # @png_image_write_to_stdio
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB38_8
# %bb.1:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB38_8
# %bb.2:                                # %if.then
	cmpq	$0, -24(%rbp)
	je	.LBB38_7
# %bb.3:                                # %land.lhs.true3
	movq	-40(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB38_7
# %bb.4:                                # %if.then5
	movq	-16(%rbp), %rdi
	callq	png_image_write_init
	cmpl	$0, %eax
	je	.LBB38_6
# %bb.5:                                # %if.then7
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rcx, 264(%rax)
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	movabsq	$png_image_write_main, %rsi
	callq	png_safe_execute
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rdi
	callq	png_image_free
	movl	-148(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB38_11
.LBB38_6:                               # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB38_11
.LBB38_7:                               # %if.else14
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.17, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB38_11
.LBB38_8:                               # %if.else16
	cmpq	$0, -16(%rbp)
	je	.LBB38_10
# %bb.9:                                # %if.then18
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.18, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB38_11
.LBB38_10:                              # %if.else20
	movl	$0, -4(%rbp)
.LBB38_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	png_image_write_to_stdio, .Lfunc_end38-png_image_write_to_stdio
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_image_write_main
	.type	png_image_write_main,@function
png_image_write_main:                   # @png_image_write_main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	andl	$8, %eax
	movl	%eax, -56(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -56(%rbp)
	movb	%al, -141(%rbp)                 # 1-byte Spill
	jne	.LBB39_2
# %bb.1:                                # %land.rhs
	movl	-52(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -141(%rbp)                 # 1-byte Spill
.LBB39_2:                               # %land.end
	movb	-141(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -56(%rbp)
	movb	%al, -142(%rbp)                 # 1-byte Spill
	jne	.LBB39_4
# %bb.3:                                # %land.rhs9
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -142(%rbp)                 # 1-byte Spill
.LBB39_4:                               # %land.end12
	movb	-142(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -60(%rbp)
	movb	%al, -143(%rbp)                 # 1-byte Spill
	je	.LBB39_6
# %bb.5:                                # %land.rhs15
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	sete	%al
	movb	%al, -143(%rbp)                 # 1-byte Spill
.LBB39_6:                               # %land.end16
	movb	-143(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	xorl	%esi, %esi
	callq	png_set_benign_errors
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB39_8
# %bb.7:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -148(%rbp)                # 4-byte Spill
	jmp	.LBB39_9
.LBB39_8:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	andl	$3, %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)                # 4-byte Spill
.LBB39_9:                               # %cond.end
	movl	-148(%rbp), %eax                # 4-byte Reload
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -152(%rbp)                # 4-byte Spill
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	divl	-72(%rbp)
	movl	%eax, %ecx
	movl	-152(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	ja	.LBB39_21
# %bb.10:                               # %if.then
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	imull	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB39_12
# %bb.11:                               # %if.then26
	movl	-80(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
.LBB39_12:                              # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jge	.LBB39_14
# %bb.13:                               # %if.then30
	movq	-24(%rbp), %rcx
	xorl	%eax, %eax
	subl	16(%rcx), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB39_15
.LBB39_14:                              # %if.else
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -76(%rbp)
.LBB39_15:                              # %if.end33
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jb	.LBB39_19
# %bb.16:                               # %if.then35
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -156(%rbp)                # 4-byte Spill
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	divl	-80(%rbp)
	movl	%eax, %ecx
	movl	-156(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jbe	.LBB39_18
# %bb.17:                               # %if.then38
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.26, %rsi
	callq	png_error
.LBB39_18:                              # %if.end41
	jmp	.LBB39_20
.LBB39_19:                              # %if.else42
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.27, %rsi
	callq	png_error
.LBB39_20:                              # %if.end45
	jmp	.LBB39_22
.LBB39_21:                              # %if.else46
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.28, %rsi
	callq	png_error
.LBB39_22:                              # %if.end49
	movl	-52(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB39_34
# %bb.23:                               # %if.then52
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB39_32
# %bb.24:                               # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 28(%rax)
	jbe	.LBB39_32
# %bb.25:                               # %if.then56
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
	cmpl	$16, -84(%rbp)
	jbe	.LBB39_27
# %bb.26:                               # %cond.true61
	movl	$8, %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	jmp	.LBB39_31
.LBB39_27:                              # %cond.false62
	cmpl	$4, -84(%rbp)
	jbe	.LBB39_29
# %bb.28:                               # %cond.true64
	movl	$4, %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	jmp	.LBB39_30
.LBB39_29:                              # %cond.false65
	movl	-84(%rbp), %edx
	movl	$1, %eax
	movl	$2, %ecx
	cmpl	$2, %edx
	cmoval	%ecx, %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
.LBB39_30:                              # %cond.end68
	movl	-192(%rbp), %eax                # 4-byte Reload
	movl	%eax, -188(%rbp)                # 4-byte Spill
.LBB39_31:                              # %cond.end70
	movl	-160(%rbp), %ecx                # 4-byte Reload
	movl	-164(%rbp), %edx                # 4-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movl	-188(%rbp), %r8d                # 4-byte Reload
	movl	$3, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	png_set_IHDR
	movq	-24(%rbp), %rdi
	callq	png_image_set_PLTE
	jmp	.LBB39_33
.LBB39_32:                              # %if.else72
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.29, %rsi
	callq	png_error
.LBB39_33:                              # %if.end75
	jmp	.LBB39_35
.LBB39_34:                              # %if.else76
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movl	-68(%rbp), %r9d
	movl	$8, %r8d
	movl	$16, %eax
	cmpl	$0, %r9d
	cmovnel	%eax, %r8d
	movl	-52(%rbp), %r10d
	andl	$2, %r10d
	xorl	%r9d, %r9d
	movl	$2, %eax
	cmpl	$0, %r10d
	cmovnel	%eax, %r9d
	movl	-52(%rbp), %r11d
	andl	$1, %r11d
	xorl	%eax, %eax
	movl	$4, %r10d
	cmpl	$0, %r11d
	cmovnel	%r10d, %eax
	addl	%eax, %r9d
	xorl	%eax, %eax
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	png_set_IHDR
.LBB39_35:                              # %if.end88
	cmpl	$0, -68(%rbp)
	je	.LBB39_39
# %bb.36:                               # %if.then90
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$100000, %edx                   # imm = 0x186A0
	callq	png_set_gAMA_fixed
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB39_38
# %bb.37:                               # %if.then93
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$31270, %edx                    # imm = 0x7A26
	movl	$32900, %ecx                    # imm = 0x8084
	movl	$64000, %r8d                    # imm = 0xFA00
	movl	$33000, %r9d                    # imm = 0x80E8
	movl	$30000, (%rsp)                  # imm = 0x7530
	movl	$60000, 8(%rsp)                 # imm = 0xEA60
	movl	$15000, 16(%rsp)                # imm = 0x3A98
	movl	$6000, 24(%rsp)                 # imm = 0x1770
	callq	png_set_cHRM_fixed
.LBB39_38:                              # %if.end94
	jmp	.LBB39_43
.LBB39_39:                              # %if.else95
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB39_41
# %bb.40:                               # %if.then99
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	callq	png_set_sRGB
	jmp	.LBB39_42
.LBB39_41:                              # %if.else100
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$45455, %edx                    # imm = 0xB18F
	callq	png_set_gAMA_fixed
.LBB39_42:                              # %if.end101
	jmp	.LBB39_43
.LBB39_43:                              # %if.end102
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	png_write_info
	cmpl	$0, -68(%rbp)
	je	.LBB39_47
# %bb.44:                               # %if.then104
	movw	$1, -86(%rbp)
	movzbl	-86(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB39_46
# %bb.45:                               # %if.then107
	movq	-40(%rbp), %rdi
	callq	png_set_swap
.LBB39_46:                              # %if.end108
	jmp	.LBB39_47
.LBB39_47:                              # %if.end109
	movl	-52(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB39_52
# %bb.48:                               # %if.then113
	cmpl	$0, -56(%rbp)
	jne	.LBB39_51
# %bb.49:                               # %land.lhs.true116
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB39_51
# %bb.50:                               # %if.then120
	movq	-40(%rbp), %rdi
	callq	png_set_bgr
.LBB39_51:                              # %if.end121
	movl	-52(%rbp), %eax
	andl	$-17, %eax
	movl	%eax, -52(%rbp)
.LBB39_52:                              # %if.end123
	movl	-52(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB39_57
# %bb.53:                               # %if.then127
	cmpl	$0, -56(%rbp)
	jne	.LBB39_56
# %bb.54:                               # %land.lhs.true130
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB39_56
# %bb.55:                               # %if.then134
	movq	-40(%rbp), %rdi
	callq	png_set_swap_alpha
.LBB39_56:                              # %if.end135
	movl	-52(%rbp), %eax
	andl	$-33, %eax
	movl	%eax, -52(%rbp)
.LBB39_57:                              # %if.end137
	cmpl	$0, -56(%rbp)
	je	.LBB39_60
# %bb.58:                               # %land.lhs.true140
	movq	-32(%rbp), %rax
	cmpl	$16, 28(%rax)
	ja	.LBB39_60
# %bb.59:                               # %if.then144
	movq	-40(%rbp), %rdi
	callq	png_set_packing
.LBB39_60:                              # %if.end145
	movl	-52(%rbp), %eax
	andl	$-16, %eax
	cmpl	$0, %eax
	je	.LBB39_62
# %bb.61:                               # %if.then149
	movq	-40(%rbp), %rdi
	movabsq	$.L.str.30, %rsi
	callq	png_error
.LBB39_62:                              # %if.end150
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movslq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB39_64
# %bb.63:                               # %if.then155
	movq	-104(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -104(%rbp)
.LBB39_64:                              # %if.end157
	cmpq	$0, -104(%rbp)
	jge	.LBB39_66
# %bb.65:                               # %if.then160
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	-104(%rbp), %rcx
	imulq	%rcx, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB39_66:                              # %if.end166
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB39_68
# %bb.67:                               # %if.then172
	movq	-40(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	png_set_filter
	movq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	png_set_compression_level
.LBB39_68:                              # %if.end173
	cmpl	$0, -60(%rbp)
	je	.LBB39_70
# %bb.69:                               # %land.lhs.true176
	cmpl	$0, -64(%rbp)
	jne	.LBB39_72
.LBB39_70:                              # %lor.lhs.false
	cmpl	$0, -56(%rbp)
	jne	.LBB39_78
# %bb.71:                               # %land.lhs.true181
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB39_78
.LBB39_72:                              # %if.then185
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	png_get_rowbytes
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	png_malloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 56(%rax)
	cmpl	$0, -68(%rbp)
	je	.LBB39_74
# %bb.73:                               # %if.then190
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movabsq	$png_write_image_16bit, %rsi
	callq	png_safe_execute
	movl	%eax, -116(%rbp)
	jmp	.LBB39_75
.LBB39_74:                              # %if.else192
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movabsq	$png_write_image_8bit, %rsi
	callq	png_safe_execute
	movl	%eax, -116(%rbp)
.LBB39_75:                              # %if.end194
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	png_free
	cmpl	$0, -116(%rbp)
	jne	.LBB39_77
# %bb.76:                               # %if.then198
	movl	$0, -4(%rbp)
	jmp	.LBB39_84
.LBB39_77:                              # %if.end199
	jmp	.LBB39_83
.LBB39_78:                              # %if.else200
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -140(%rbp)
.LBB39_79:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -140(%rbp)
	jbe	.LBB39_82
# %bb.80:                               # %for.body
                                        #   in Loop: Header=BB39_79 Depth=1
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	png_write_row
	movq	-136(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -128(%rbp)
# %bb.81:                               # %for.inc
                                        #   in Loop: Header=BB39_79 Depth=1
	movl	-140(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB39_79
.LBB39_82:                              # %for.end
	jmp	.LBB39_83
.LBB39_83:                              # %if.end209
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	png_write_end
	movl	$1, -4(%rbp)
.LBB39_84:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	png_image_write_main, .Lfunc_end39-png_image_write_main
	.cfi_endproc
                                        # -- End function
	.globl	png_image_write_to_file         # -- Begin function png_image_write_to_file
	.p2align	4, 0x90
	.type	png_image_write_to_file,@function
png_image_write_to_file:                # @png_image_write_to_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB40_16
# %bb.1:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB40_16
# %bb.2:                                # %if.then
	movq	-24(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB40_15
# %bb.3:                                # %land.lhs.true3
	movq	-40(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	je	.LBB40_15
# %bb.4:                                # %if.then5
	movq	-24(%rbp), %rdi
	movabsq	$.L.str.19, %rsi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB40_14
# %bb.5:                                # %if.then7
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	png_image_write_to_stdio
	cmpl	$0, %eax
	je	.LBB40_13
# %bb.6:                                # %if.then10
	movq	-64(%rbp), %rdi
	callq	fflush
	cmpl	$0, %eax
	jne	.LBB40_11
# %bb.7:                                # %land.lhs.true13
	movq	-64(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	jne	.LBB40_11
# %bb.8:                                # %if.then16
	movq	-64(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	jne	.LBB40_10
# %bb.9:                                # %if.then19
	movl	$1, -4(%rbp)
	jmp	.LBB40_19
.LBB40_10:                              # %if.end
	callq	__errno_location
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB40_12
.LBB40_11:                              # %if.else
	callq	__errno_location
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	callq	fclose
.LBB40_12:                              # %if.end23
	movq	-24(%rbp), %rdi
	callq	remove
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	-68(%rbp), %edi
	callq	strerror
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB40_19
.LBB40_13:                              # %if.else27
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-24(%rbp), %rdi
	callq	remove
	movl	$0, -4(%rbp)
	jmp	.LBB40_19
.LBB40_14:                              # %if.else30
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB40_19
.LBB40_15:                              # %if.else34
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.20, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB40_19
.LBB40_16:                              # %if.else36
	cmpq	$0, -16(%rbp)
	je	.LBB40_18
# %bb.17:                               # %if.then38
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.21, %rsi
	callq	png_image_error
	movl	%eax, -4(%rbp)
	jmp	.LBB40_19
.LBB40_18:                              # %if.else40
	movl	$0, -4(%rbp)
.LBB40_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	png_image_write_to_file, .Lfunc_end40-png_image_write_to_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function image_memory_write
	.type	image_memory_write,@function
image_memory_write:                     # @image_memory_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	$-1, %rcx
	subq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB41_6
# %bb.1:                                # %if.then
	cmpq	$0, -24(%rbp)
	jbe	.LBB41_5
# %bb.2:                                # %if.then2
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-40(%rbp), %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB41_4
# %bb.3:                                # %if.then4
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	addq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy@PLT
.LBB41_4:                               # %if.end
	movq	-40(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 80(%rax)
.LBB41_5:                               # %if.end7
	jmp	.LBB41_7
.LBB41_6:                               # %if.else
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.25, %rsi
	callq	png_error
.LBB41_7:                               # %if.end8
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	image_memory_write, .Lfunc_end41-image_memory_write
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function image_memory_flush
	.type	image_memory_flush,@function
image_memory_flush:                     # @image_memory_flush
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	image_memory_flush, .Lfunc_end42-image_memory_flush
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_image_set_PLTE
	.type	png_image_set_PLTE,@function
png_image_set_PLTE:                     # @png_image_set_PLTE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1152, %rsp                     # imm = 0x480
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$256, 28(%rax)                  # imm = 0x100
	jbe	.LBB43_2
# %bb.1:                                # %cond.true
	movl	$256, %eax                      # imm = 0x100
	movl	%eax, -1116(%rbp)               # 4-byte Spill
	jmp	.LBB43_3
.LBB43_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -1116(%rbp)               # 4-byte Spill
.LBB43_3:                               # %cond.end
	movl	-1116(%rbp), %eax               # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %ecx
	andl	$32, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -1117(%rbp)                # 1-byte Spill
	je	.LBB43_5
# %bb.4:                                # %land.rhs
	movl	-32(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -1117(%rbp)                # 1-byte Spill
.LBB43_5:                               # %land.end
	movb	-1117(%rbp), %al                # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %edx
	andl	$16, %edx
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -44(%rbp)
	leaq	-1088(%rbp), %rdi
	movl	$255, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	memset@PLT
	leaq	-832(%rbp), %rdi
	xorl	%esi, %esi
	movl	$768, %edx                      # imm = 0x300
	callq	memset@PLT
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB43_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB43_39
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-32(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB43_26
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1096(%rbp)
	movl	-48(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movq	-1096(%rbp), %rax
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1096(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB43_13
# %bb.9:                                # %if.then18
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	$3, -36(%rbp)
	jb	.LBB43_11
# %bb.10:                               # %if.then20
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1096(%rbp), %rax
	movl	-44(%rbp), %ecx
	xorl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	imull	$255, %eax, %eax
	sarl	$15, %eax
	cltq
	movzwl	png_sRGB_base(,%rax,2), %eax
	movq	-1096(%rbp), %rcx
	movl	-44(%rbp), %edx
	xorl	$2, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	imull	$255, %ecx, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movq	-1096(%rbp), %rdx
	movl	-44(%rbp), %esi
	xorl	$2, %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	imull	$255, %edx, %edx
	sarl	$15, %edx
	movslq	%edx, %rdx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	sarl	$12, %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
	movq	-1096(%rbp), %rax
	movzwl	2(%rax), %eax
	imull	$255, %eax, %eax
	sarl	$15, %eax
	cltq
	movzwl	png_sRGB_base(,%rax,2), %eax
	movq	-1096(%rbp), %rcx
	movzwl	2(%rcx), %ecx
	imull	$255, %ecx, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movq	-1096(%rbp), %rdx
	movzwl	2(%rdx), %edx
	imull	$255, %edx, %edx
	sarl	$15, %edx
	movslq	%edx, %rdx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	sarl	$12, %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movq	-1096(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	imull	$255, %eax, %eax
	sarl	$15, %eax
	cltq
	movzwl	png_sRGB_base(,%rax,2), %eax
	movq	-1096(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	imull	$255, %ecx, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movq	-1096(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	imull	$255, %edx, %edx
	sarl	$15, %edx
	movslq	%edx, %rdx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	sarl	$12, %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	jmp	.LBB43_12
.LBB43_11:                              # %if.else
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1096(%rbp), %rax
	movzwl	(%rax), %eax
	imull	$255, %eax, %eax
	sarl	$15, %eax
	cltq
	movzwl	png_sRGB_base(,%rax,2), %eax
	movq	-1096(%rbp), %rcx
	movzwl	(%rcx), %ecx
	imull	$255, %ecx, %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movq	-1096(%rbp), %rdx
	movzwl	(%rdx), %edx
	imull	$255, %edx, %edx
	sarl	$15, %edx
	movslq	%edx, %rdx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	sarl	$12, %ecx
	addl	%ecx, %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
.LBB43_12:                              # %if.end
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_25
.LBB43_13:                              # %if.else133
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1096(%rbp), %rax
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	cmpl	$0, -40(%rbp)
	je	.LBB43_15
# %bb.14:                               # %cond.true134
                                        #   in Loop: Header=BB43_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1132(%rbp)               # 4-byte Spill
	jmp	.LBB43_16
.LBB43_15:                              # %cond.false135
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1132(%rbp)               # 4-byte Spill
.LBB43_16:                              # %cond.end136
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1128(%rbp), %rax               # 8-byte Reload
	movl	-1132(%rbp), %ecx               # 4-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -1098(%rbp)
	movzwl	-1098(%rbp), %eax
	imull	$255, %eax, %eax
	addl	$32895, %eax                    # imm = 0x807F
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1099(%rbp)
	movl	$0, -1104(%rbp)
	movzbl	-1099(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB43_19
# %bb.17:                               # %land.lhs.true
                                        #   in Loop: Header=BB43_6 Depth=1
	movzbl	-1099(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB43_19
# %bb.18:                               # %if.then151
                                        #   in Loop: Header=BB43_6 Depth=1
	movzwl	-1098(%rbp), %eax
	sarl	$1, %eax
	addl	$2139062400, %eax               # imm = 0x7F7F8080
	movzwl	-1098(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -1104(%rbp)
.LBB43_19:                              # %if.end156
                                        #   in Loop: Header=BB43_6 Depth=1
	movb	-1099(%rbp), %cl
	movslq	-48(%rbp), %rax
	movb	%cl, -1088(%rbp,%rax)
	movzbl	-1099(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB43_21
# %bb.20:                               # %if.then162
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB43_21:                              # %if.end164
                                        #   in Loop: Header=BB43_6 Depth=1
	cmpl	$3, -36(%rbp)
	jb	.LBB43_23
# %bb.22:                               # %if.then167
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1096(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %edx
	xorl	$2, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %edi
	movzwl	-1098(%rbp), %esi
	movl	-1104(%rbp), %edx
	callq	png_unpremultiply
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
	movq	-1096(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %edi
	movzwl	-1098(%rbp), %esi
	movl	-1104(%rbp), %edx
	callq	png_unpremultiply
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movq	-1096(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %edi
	movzwl	-1098(%rbp), %esi
	movl	-1104(%rbp), %edx
	callq	png_unpremultiply
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	jmp	.LBB43_24
.LBB43_23:                              # %if.else195
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1096(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %edi
	movzwl	-1098(%rbp), %esi
	movl	-1104(%rbp), %edx
	callq	png_unpremultiply
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
.LBB43_24:                              # %if.end210
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_25
.LBB43_25:                              # %if.end211
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_37
.LBB43_26:                              # %if.else212
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1112(%rbp)
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %eax
	imull	%eax, %ecx
	movq	-1112(%rbp), %rax
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -1112(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, %ecx
	movq	%rcx, -1144(%rbp)               # 8-byte Spill
	subl	$3, %eax
	ja	.LBB43_35
# %bb.42:                               # %if.else212
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1144(%rbp), %rax               # 8-byte Reload
	movq	.LJTI43_0(,%rax,8), %rax
	jmpq	*%rax
.LBB43_27:                              # %sw.bb
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1112(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	$3, %ecx
	xorl	%edx, %edx
	cmpl	$0, %esi
	cmovnel	%edx, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rax
	movb	%cl, -1088(%rbp,%rax)
	movslq	-48(%rbp), %rax
	movzbl	-1088(%rbp,%rax), %eax
	cmpl	$255, %eax
	jge	.LBB43_29
# %bb.28:                               # %if.then228
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB43_29:                              # %if.end230
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_30
.LBB43_30:                              # %sw.bb231
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1112(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %edx
	xorl	$2, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
	movq	-1112(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movq	-1112(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	jmp	.LBB43_36
.LBB43_31:                              # %sw.bb251
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1112(%rbp), %rax
	movl	-40(%rbp), %ecx
	xorl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rax
	movb	%cl, -1088(%rbp,%rax)
	movslq	-48(%rbp), %rax
	movzbl	-1088(%rbp,%rax), %eax
	cmpl	$255, %eax
	jge	.LBB43_33
# %bb.32:                               # %if.then262
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB43_33:                              # %if.end264
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_34
.LBB43_34:                              # %sw.bb265
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-1112(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 1(%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, (%rax)
	movslq	-48(%rbp), %rdx
	leaq	-832(%rbp), %rax
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movb	%cl, 2(%rax)
	jmp	.LBB43_36
.LBB43_35:                              # %sw.default
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_36
.LBB43_36:                              # %sw.epilog
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_37
.LBB43_37:                              # %if.end277
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_38
.LBB43_38:                              # %for.inc
                                        #   in Loop: Header=BB43_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB43_6
.LBB43_39:                              # %for.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-832(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	png_set_PLTE
	cmpl	$0, -52(%rbp)
	jle	.LBB43_41
# %bb.40:                               # %if.then282
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-1088(%rbp), %rdx
	movl	-52(%rbp), %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	png_set_tRNS
.LBB43_41:                              # %if.end288
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
	addq	$1152, %rsp                     # imm = 0x480
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	png_image_set_PLTE, .Lfunc_end43-png_image_set_PLTE
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI43_0:
	.quad	.LBB43_34
	.quad	.LBB43_31
	.quad	.LBB43_30
	.quad	.LBB43_27
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function png_write_image_16bit
	.type	png_write_image_16bit,@function
png_write_image_16bit:                  # @png_write_image_16bit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	andl	$2, %edx
	movl	$1, %eax
	movl	$3, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB44_5
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB44_3
# %bb.2:                                # %if.then9
	movl	$-1, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB44_4
.LBB44_3:                               # %if.else
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB44_4:                               # %if.end
	jmp	.LBB44_6
.LBB44_5:                               # %if.else11
	movq	-32(%rbp), %rdi
	movabsq	$.L.str.31, %rsi
	callq	png_error
.LBB44_6:                               # %if.end12
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	-60(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB44_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_9 Depth 2
                                        #       Child Loop BB44_14 Depth 3
	cmpl	$0, -68(%rbp)
	jbe	.LBB44_25
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB44_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB44_9:                               # %while.cond
                                        #   Parent Loop BB44_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB44_14 Depth 3
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB44_23
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB44_9 Depth=2
	movq	-80(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -90(%rbp)
	movl	$0, -96(%rbp)
	movw	-90(%rbp), %dx
	movq	-88(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movw	%dx, (%rax,%rcx,2)
	movzwl	-90(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB44_13
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB44_9 Depth=2
	movzwl	-90(%rbp), %eax
	cmpl	$65535, %eax                    # imm = 0xFFFF
	jge	.LBB44_13
# %bb.12:                               # %if.then22
                                        #   in Loop: Header=BB44_9 Depth=2
	movzwl	-90(%rbp), %eax
	sarl	$1, %eax
	addl	$2147450880, %eax               # imm = 0x7FFF8000
	movzwl	-90(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -96(%rbp)
.LBB44_13:                              # %if.end26
                                        #   in Loop: Header=BB44_9 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB44_14:                              # %do.body
                                        #   Parent Loop BB44_7 Depth=1
                                        #     Parent Loop BB44_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
	movw	(%rax), %ax
	movw	%ax, -102(%rbp)
	movzwl	-102(%rbp), %eax
	movzwl	-90(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_16
# %bb.15:                               # %if.then32
                                        #   in Loop: Header=BB44_14 Depth=3
	movw	$-1, -102(%rbp)
	jmp	.LBB44_20
.LBB44_16:                              # %if.else33
                                        #   in Loop: Header=BB44_14 Depth=3
	movzwl	-102(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB44_19
# %bb.17:                               # %land.lhs.true37
                                        #   in Loop: Header=BB44_14 Depth=3
	movzwl	-90(%rbp), %eax
	cmpl	$65535, %eax                    # imm = 0xFFFF
	jge	.LBB44_19
# %bb.18:                               # %if.then41
                                        #   in Loop: Header=BB44_14 Depth=3
	movzwl	-102(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	addl	$16384, %eax                    # imm = 0x4000
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$15, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -102(%rbp)
.LBB44_19:                              # %if.end47
                                        #   in Loop: Header=BB44_14 Depth=3
	jmp	.LBB44_20
.LBB44_20:                              # %if.end48
                                        #   in Loop: Header=BB44_14 Depth=3
	movw	-102(%rbp), %cx
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, -88(%rbp)
	movw	%cx, (%rax)
# %bb.21:                               # %do.cond
                                        #   in Loop: Header=BB44_14 Depth=3
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, %eax
	jg	.LBB44_14
# %bb.22:                               # %do.end
                                        #   in Loop: Header=BB44_9 Depth=2
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB44_9
.LBB44_23:                              # %while.end
                                        #   in Loop: Header=BB44_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	png_write_row
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	shrq	$1, %rax
	shlq	$1, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
# %bb.24:                               # %for.inc
                                        #   in Loop: Header=BB44_7 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB44_7
.LBB44_25:                              # %for.end
	movl	$1, %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	png_write_image_16bit, .Lfunc_end44-png_write_image_16bit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_write_image_8bit
	.type	png_write_image_8bit,@function
png_write_image_8bit:                   # @png_write_image_8bit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	andl	$2, %edx
	movl	$1, %eax
	movl	$3, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB45_18
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB45_3
# %bb.2:                                # %if.then9
	movl	$-1, -68(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB45_4
.LBB45_3:                               # %if.else
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB45_4:                               # %if.end
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	-56(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB45_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_7 Depth 2
                                        #       Child Loop BB45_12 Depth 3
	cmpl	$0, -52(%rbp)
	jbe	.LBB45_17
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB45_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB45_7:                               # %while.cond
                                        #   Parent Loop BB45_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_12 Depth 3
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
                                        # kill: def $eax killed $eax killed $rax
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jae	.LBB45_15
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB45_7 Depth=2
	movq	-80(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -90(%rbp)
	movzwl	-90(%rbp), %eax
	imull	$255, %eax, %eax
	addl	$32895, %eax                    # imm = 0x807F
	shrl	$16, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -91(%rbp)
	movl	$0, -96(%rbp)
	movb	-91(%rbp), %dl
	movq	-88(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movzbl	-91(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB45_11
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB45_7 Depth=2
	movzbl	-91(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB45_11
# %bb.10:                               # %if.then24
                                        #   in Loop: Header=BB45_7 Depth=2
	movzwl	-90(%rbp), %eax
	sarl	$1, %eax
	addl	$2139062400, %eax               # imm = 0x7F7F8080
	movzwl	-90(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -96(%rbp)
.LBB45_11:                              # %if.end29
                                        #   in Loop: Header=BB45_7 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB45_12:                              # %do.body
                                        #   Parent Loop BB45_5 Depth=1
                                        #     Parent Loop BB45_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
	movzwl	(%rax), %edi
	movzwl	-90(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	png_unpremultiply
	movb	%al, %cl
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movb	%cl, (%rax)
# %bb.13:                               # %do.cond
                                        #   in Loop: Header=BB45_12 Depth=3
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, %eax
	jg	.LBB45_12
# %bb.14:                               # %do.end
                                        #   in Loop: Header=BB45_7 Depth=2
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB45_7
.LBB45_15:                              # %while.end
                                        #   in Loop: Header=BB45_5 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	png_write_row
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	shrq	$1, %rax
	shlq	$1, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
# %bb.16:                               # %for.inc
                                        #   in Loop: Header=BB45_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB45_5
.LBB45_17:                              # %for.end
	jmp	.LBB45_26
.LBB45_18:                              # %if.else44
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB45_19:                              # %for.cond50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_21 Depth 2
	cmpl	$0, -52(%rbp)
	jbe	.LBB45_25
# %bb.20:                               # %for.body53
                                        #   in Loop: Header=BB45_19 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB45_21:                              # %while.cond56
                                        #   Parent Loop BB45_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
                                        # kill: def $eax killed $eax killed $rax
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jae	.LBB45_23
# %bb.22:                               # %while.body59
                                        #   in Loop: Header=BB45_21 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -120(%rbp)
	movzwl	(%rax), %eax
	movl	%eax, -132(%rbp)
	imull	$255, -132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shrl	$15, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movzwl	png_sRGB_base(,%rax,2), %eax
	movl	-132(%rbp), %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movl	-132(%rbp), %edx
	shrl	$15, %edx
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	shrl	$12, %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -128(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB45_21
.LBB45_23:                              # %while.end79
                                        #   in Loop: Header=BB45_19 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	png_write_row
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%ax, %eax
                                        # kill: def $rax killed $eax
	shrq	$1, %rax
	shlq	$1, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
# %bb.24:                               # %for.inc85
                                        #   in Loop: Header=BB45_19 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB45_19
.LBB45_25:                              # %for.end87
	jmp	.LBB45_26
.LBB45_26:                              # %if.end88
	movl	$1, %eax
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	png_write_image_8bit, .Lfunc_end45-png_write_image_8bit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function png_unpremultiply
	.type	png_unpremultiply,@function
png_unpremultiply:                      # @png_unpremultiply
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB46_2
# %bb.1:                                # %lor.lhs.false
	cmpl	$128, -12(%rbp)
	jae	.LBB46_3
.LBB46_2:                               # %if.then
	movb	$-1, -1(%rbp)
	jmp	.LBB46_9
.LBB46_3:                               # %if.else
	cmpl	$0, -8(%rbp)
	jbe	.LBB46_8
# %bb.4:                                # %if.then3
	cmpl	$65407, -12(%rbp)               # imm = 0xFF7F
	jae	.LBB46_6
# %bb.5:                                # %if.then5
	movl	-16(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else6
	imull	$255, -8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB46_7:                               # %if.end
	movl	-8(%rbp), %eax
	shrl	$15, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movzwl	png_sRGB_base(,%rax,2), %eax
	movl	-8(%rbp), %ecx
	andl	$32767, %ecx                    # imm = 0x7FFF
	movl	-8(%rbp), %edx
	shrl	$15, %edx
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movzbl	png_sRGB_delta(,%rdx), %edx
	imull	%edx, %ecx
	shrl	$12, %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	andl	$255, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1(%rbp)
	jmp	.LBB46_9
.LBB46_8:                               # %if.else19
	movb	$0, -1(%rbp)
.LBB46_9:                               # %return
	movzbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	png_unpremultiply, .Lfunc_end46-png_unpremultiply
	.cfi_endproc
                                        # -- End function
	.type	lowerbound_1,@object            # @lowerbound_1
	.comm	lowerbound_1,8,8
	.type	upperbound_1,@object            # @upperbound_1
	.comm	upperbound_1,8,8
	.type	lowerbound_2,@object            # @lowerbound_2
	.comm	lowerbound_2,8,8
	.type	upperbound_2,@object            # @upperbound_2
	.comm	upperbound_2,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MNG features are not allowed in a PNG datastream"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"profile matches sRGB but writing iCCP instead"
	.size	.L.str.1, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Valid palette required for paletted images"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"No IDATs written into file"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Wrote palette index exceeding num_palette"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"png_write_info was never called before png_write_row"
	.size	.L.str.5, 53

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"internal write transform logic error"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unknown row filter for method 0"
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"png_set_filter: UP/AVG/PAETH cannot be added after start"
	.size	.L.str.8, 57

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Unknown custom filter method"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Only compression windows <= 32k supported by PNG"
	.size	.L.str.10, 49

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Only compression windows >= 256 supported by PNG"
	.size	.L.str.11, 49

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Only compression method 8 is supported by PNG"
	.size	.L.str.12, 46

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"no rows for png_write_image to write"
	.size	.L.str.13, 37

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"PNG_TRANSFORM_STRIP_FILLER: BEFORE+AFTER not supported"
	.size	.L.str.14, 55

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"png_image_write_to_memory: invalid argument"
	.size	.L.str.15, 44

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"png_image_write_to_memory: incorrect PNG_IMAGE_VERSION"
	.size	.L.str.16, 55

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"png_image_write_to_stdio: invalid argument"
	.size	.L.str.17, 43

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"png_image_write_to_stdio: incorrect PNG_IMAGE_VERSION"
	.size	.L.str.18, 54

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"wb"
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"png_image_write_to_file: invalid argument"
	.size	.L.str.20, 42

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"png_image_write_to_file: incorrect PNG_IMAGE_VERSION"
	.size	.L.str.21, 53

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Writing zero-length unknown chunk"
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"1.6.39.git"
	.size	.L.str.23, 11

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"png_image_write_: out of memory"
	.size	.L.str.24, 32

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"png_image_write_to_memory: PNG too big"
	.size	.L.str.25, 39

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"memory image too large"
	.size	.L.str.26, 23

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"supplied row stride too small"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"image row stride too large"
	.size	.L.str.28, 27

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"no color-map for color-mapped image"
	.size	.L.str.29, 36

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"png_write_image: unsupported transformation"
	.size	.L.str.30, 44

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"png_write_image: internal call error"
	.size	.L.str.31, 37

	.ident	"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git 1ff1c030905ca01d91c47de79da9743dae2b5ed9)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym png_write_info_before_PLTE
	.addrsig_sym png_write_sig
	.addrsig_sym png_warning
	.addrsig_sym png_write_IHDR
	.addrsig_sym png_write_gAMA_fixed
	.addrsig_sym png_app_warning
	.addrsig_sym png_write_iCCP
	.addrsig_sym png_write_sRGB
	.addrsig_sym png_write_sBIT
	.addrsig_sym png_write_cHRM_fixed
	.addrsig_sym write_unknown_chunks
	.addrsig_sym png_write_info
	.addrsig_sym png_write_PLTE
	.addrsig_sym png_error
	.addrsig_sym png_write_tRNS
	.addrsig_sym png_write_bKGD
	.addrsig_sym png_write_eXIf
	.addrsig_sym png_write_hIST
	.addrsig_sym png_write_oFFs
	.addrsig_sym png_write_pCAL
	.addrsig_sym png_write_sCAL_s
	.addrsig_sym png_write_pHYs
	.addrsig_sym png_write_tIME
	.addrsig_sym png_write_sPLT
	.addrsig_sym png_write_iTXt
	.addrsig_sym png_write_zTXt
	.addrsig_sym png_write_tEXt
	.addrsig_sym png_write_end
	.addrsig_sym png_benign_error
	.addrsig_sym png_write_IEND
	.addrsig_sym png_convert_from_struct_tm
	.addrsig_sym gmtime
	.addrsig_sym png_create_write_struct
	.addrsig_sym png_create_write_struct_2
	.addrsig_sym png_create_png_struct
	.addrsig_sym png_set_write_fn
	.addrsig_sym png_write_row
	.addrsig_sym png_set_interlace_handling
	.addrsig_sym t_png_write_image
	.addrsig_sym t_png_write_row
	.addrsig_sym CacheUpdateandCheck_2
	.addrsig_sym CacheUpdateandCheck
	.addrsig_sym png_write_start_row
	.addrsig_sym png_write_finish_row
	.addrsig_sym png_do_write_interlace
	.addrsig_sym png_do_write_transformations
	.addrsig_sym png_do_write_intrapixel
	.addrsig_sym png_do_check_palette_indexes
	.addrsig_sym png_write_find_filter
	.addrsig_sym t_memcpy
	.addrsig_sym t_png_do_write_interlace
	.addrsig_sym t_png_do_write_intrapixel
	.addrsig_sym png_compress_IDAT
	.addrsig_sym png_flush
	.addrsig_sym png_destroy_write_struct
	.addrsig_sym png_destroy_info_struct
	.addrsig_sym png_write_destroy
	.addrsig_sym png_destroy_png_struct
	.addrsig_sym png_set_filter
	.addrsig_sym png_app_error
	.addrsig_sym t_png_malloc
	.addrsig_sym png_set_compression_level
	.addrsig_sym png_set_invert_mono
	.addrsig_sym png_set_shift
	.addrsig_sym png_set_packing
	.addrsig_sym png_set_swap_alpha
	.addrsig_sym png_set_filler
	.addrsig_sym png_set_bgr
	.addrsig_sym png_set_swap
	.addrsig_sym png_set_packswap
	.addrsig_sym png_set_invert_alpha
	.addrsig_sym png_image_write_init
	.addrsig_sym png_safe_execute
	.addrsig_sym png_image_write_memory
	.addrsig_sym png_image_free
	.addrsig_sym png_image_error
	.addrsig_sym png_image_write_to_stdio
	.addrsig_sym png_image_write_main
	.addrsig_sym fopen
	.addrsig_sym fflush
	.addrsig_sym ferror
	.addrsig_sym fclose
	.addrsig_sym __errno_location
	.addrsig_sym remove
	.addrsig_sym strerror
	.addrsig_sym png_handle_as_unknown
	.addrsig_sym png_write_chunk
	.addrsig_sym deflateEnd
	.addrsig_sym png_free_buffer_list
	.addrsig_sym t_png_free
	.addrsig_sym png_free
	.addrsig_sym png_safe_error
	.addrsig_sym png_safe_warning
	.addrsig_sym png_create_info_struct
	.addrsig_sym png_malloc_warn
	.addrsig_sym image_memory_write
	.addrsig_sym image_memory_flush
	.addrsig_sym png_set_benign_errors
	.addrsig_sym png_set_IHDR
	.addrsig_sym png_image_set_PLTE
	.addrsig_sym png_set_gAMA_fixed
	.addrsig_sym png_set_cHRM_fixed
	.addrsig_sym png_set_sRGB
	.addrsig_sym png_malloc
	.addrsig_sym png_get_rowbytes
	.addrsig_sym png_write_image_16bit
	.addrsig_sym png_write_image_8bit
	.addrsig_sym png_unpremultiply
	.addrsig_sym png_set_PLTE
	.addrsig_sym png_set_tRNS
	.addrsig_sym lowerbound_1
	.addrsig_sym upperbound_1
	.addrsig_sym png_sRGB_base
	.addrsig_sym png_sRGB_delta
