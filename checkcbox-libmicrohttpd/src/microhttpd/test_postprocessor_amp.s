	.text
	.file	"test_postprocessor_amp.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$624, %rsp                      # imm = 0x270
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str, %rax
	movq	%rax, -584(%rbp)
	movq	$0, num_errors
	leaq	-512(%rbp), %rdi
	xorl	%esi, %esi
	movl	$496, %edx                      # imm = 0x1F0
	callq	memset@PLT
	leaq	-568(%rbp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset@PLT
	leaq	-568(%rbp), %rax
	movq	%rax, -408(%rbp)
	movabsq	$.L.str.1, %rax
	movq	%rax, -552(%rbp)
	movabsq	$.L.str.2, %rax
	movq	%rax, -536(%rbp)
	movq	-552(%rbp), %rdi
	callq	strlen
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rdi
	callq	strlen
	movq	%rax, -528(%rbp)
	movl	$1, -520(%rbp)
	leaq	-512(%rbp), %rdi
	movl	$4096, %esi                     # imm = 0x1000
	movabsq	$check_post, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	MHD_create_post_processor
	movq	%rax, -576(%rbp)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-576(%rbp), %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movq	-576(%rbp), %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
	movq	-584(%rbp), %rdi
	callq	StaticUncheckedToTStrAdaptor
	movq	%rax, %rdi
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	movq	-584(%rbp), %rdi
	callq	strlen
	movq	-608(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	movq	-600(%rbp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
	movl	%eax, %esi
	callq	MHD_post_process
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	%ecx, %eax
	je	.LBB0_4
# %bb.3:                                # %if.then10
	movq	num_errors, %rax
	addq	$1, %rax
	movq	%rax, num_errors
.LBB0_4:                                # %if.end11
	movq	-576(%rbp), %rdi
	callq	MHD_destroy_post_processor
	movq	GlobalTaintedAdaptorStr, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movl	%eax, %edi
	callq	c_fetch_pointer_from_offset@PLT
	movq	%rax, %rdi
	movq	%rdi, -616(%rbp)                # 8-byte Spill
	callq	c_isTaintedPointerToTaintedMem@PLT
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                # %_Dynamic_check.succeeded
	movq	-616(%rbp), %rdi                # 8-byte Reload
	callq	t_free
	movq	num_errors, %rdx
	movl	$2, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmovel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %_Dynamic_check.failed
	ud2
.LBB0_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$624, %rsp                      # imm = 0x270
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function check_post
	.type	check_post,@function
check_post:                             # @check_post
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.3, %esi
	callq	strcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	je	.LBB1_3
# %bb.1:                                # %land.lhs.true
	movq	-24(%rbp), %rdi
	movl	$.L.str.4, %esi
	callq	strcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	je	.LBB1_3
# %bb.2:                                # %if.then
	movq	-24(%rbp), %rsi
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movq	num_errors, %rax
	addq	$1, %rax
	movq	%rax, num_errors
.LBB1_3:                                # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	check_post, .Lfunc_end1-check_post
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function StaticUncheckedToTStrAdaptor
	.type	StaticUncheckedToTStrAdaptor,@function
StaticUncheckedToTStrAdaptor:           # @StaticUncheckedToTStrAdaptor
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	movl	-12(%rbp), %esi
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movslq	-12(%rbp), %rdi
	callq	string_tainted_malloc
	movq	%rax, %rdi
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, GlobalTaintedAdaptorStr
	movq	GlobalTaintedAdaptorStr, %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movl	%eax, %edi
	callq	c_fetch_pointer_from_offset@PLT
	movq	%rax, %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	callq	c_isTaintedPointerToTaintedMem@PLT
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %_Dynamic_check.succeeded
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	t_strcpy
	movq	%rax, %rdi
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -32(%rbp)
	movq	GlobalTaintedAdaptorStr, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:                                # %_Dynamic_check.failed
	.cfi_def_cfa %rbp, 16
	ud2
.Lfunc_end2:
	.size	StaticUncheckedToTStrAdaptor, .Lfunc_end2-StaticUncheckedToTStrAdaptor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function string_tainted_malloc
	.type	string_tainted_malloc,@function
string_tainted_malloc:                  # @string_tainted_malloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$-1, -16(%rbp)
	jb	.LBB3_2
# %bb.1:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_9
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	addq	$1, %rdi
	callq	t_malloc
	movq	%rax, %rdi
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rax
	je	.LBB3_8
# %bb.3:                                # %if.then2
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movl	%eax, %edi
	callq	c_fetch_pointer_from_offset@PLT
	movq	%rax, %rdi
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	callq	c_isTaintedPointerToTaintedMem@PLT
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_4:                                # %_Dynamic_check.succeeded
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -128(%rbp)                # 8-byte Spill
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	c_TPtoO@PLT
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	c_TPtoO@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	c_TPtoO@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movl	%eax, -100(%rbp)                # 4-byte Spill
	callq	c_TPtoO@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %ecx
	movl	-100(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	setbe	%al
	movb	%al, -81(%rbp)                  # 1-byte Spill
	callq	c_TPtoO@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	callq	c_TPtoO@PLT
	movl	-88(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	movb	-81(%rbp), %al                  # 1-byte Reload
	cmpl	%edx, %ecx
	setb	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_7
.LBB3_5:                                # %_Dynamic_check.succeeded9
	movq	-128(%rbp), %rax                # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB3_8
.LBB3_6:                                # %_Dynamic_check.failed
	ud2
.LBB3_7:                                # %_Dynamic_check.failed8
	ud2
.LBB3_8:                                # %if.end10
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	string_tainted_malloc, .Lfunc_end3-string_tainted_malloc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a=xx+xx+xxx+xxxxx+xxxx+xxxxxxxx+xxx+xxxxxx+xxx+xxx+xxxxxxx+xxxxx%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++--%3E%0A++++++++++++++%3Cxxxxx+xxxxx%3D%22xxx%25%22%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xxxxx%3D%22xxxxx%22%3E%0A+++++++++++++++++++%3Cxxxxx+xxxxx%3D%22xxx%25%22%3E%0A+++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++++++++++++++%3Cxx+xxxxx%3D%22xxxx%22%3E%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%22%3Exxxxx%3A%3C%2Fx%3E%0A%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%22%3Exxx%3A%3C%2Fx%3E%0A%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%3B+xxxx-xxxxxx%3A+xxxx%3B%22%3Exxxxx+xxxxx%3A%3C%2Fx%3E%0A+++++++++++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++++++%3C%2Fxxxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxxx.xx%3C%2Fxxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A++++++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxx.xx%3C%2Fxxxx%3E%0A+++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3Bxxxx-xxxxxx%3A+xxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxxx.xx%3C%2Fxxxx%3E%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++%3C%2Fxxxxx%3E%0A+++++++%3C%21--%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++xxx+xx+xxxxx+xxxxxxx+xxxxxxx%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++--%3E%0A+++%3C%2Fxxx%3E%0A%0A%0A%0A+++%3Cxxx+xxxxx%3D%22xxxxxxxxx%22+xx%3D%22xxxxxxxxx%22%3E%3C%2Fxxx%3E%0A%0A+++%3Cxxx+xx%3D%22xxxx%22+xxxxx%3D%22xxxx%22%3E%0A+++++++%3Cxxxxx+xxxxx%3D%22xxxxxxxxx%22%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xx%3D%22xxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xx%3D%22xxxxxxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxxxxxx%22%3E%3C%2Fxx%3E%0A+++++++++++++++%3Cxx+xx%3D%22xxxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xx%3D%22xxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++%3C%2Fxxxxx%3E%0A+++%3C%2Fxxx%3E%0A%3C%2Fxxx%3E%0A%0A%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A%0A%3C%2Fxxxx%3E%0A%3C%2Fxxxx%3E+&b=value"
	.size	.L.str, 3081

	.type	num_errors,@object              # @num_errors
	.local	num_errors
	.comm	num_errors,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Content-Type"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"application/x-www-form-urlencoded"
	.size	.L.str.2, 34

	.type	GlobalTaintedAdaptorStr,@object # @GlobalTaintedAdaptorStr
	.local	GlobalTaintedAdaptorStr
	.comm	GlobalTaintedAdaptorStr,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"a"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"b"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ERROR: got unexpected '%s'\n"
	.size	.L.str.5, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Ip is %s"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Iplen is %d"
	.size	.L.str.7, 12

	.ident	"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 69ad1c4a4eb9a26a6420f839c4a03281003c9b84)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym MHD_create_post_processor
	.addrsig_sym check_post
	.addrsig_sym MHD_post_process
	.addrsig_sym StaticUncheckedToTStrAdaptor
	.addrsig_sym c_TPtoO
	.addrsig_sym MHD_destroy_post_processor
	.addrsig_sym t_free
	.addrsig_sym c_fetch_pointer_from_offset
	.addrsig_sym c_isTaintedPointerToTaintedMem
	.addrsig_sym strcmp
	.addrsig_sym printf
	.addrsig_sym string_tainted_malloc
	.addrsig_sym t_strcpy
	.addrsig_sym t_malloc
	.addrsig_sym num_errors
	.addrsig_sym GlobalTaintedAdaptorStr
