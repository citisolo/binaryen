	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/930603-3.c"
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %entry
	block   	.LBB0_5
	block   	.LBB0_4
	i32.const	$push0=, 107
	i32.eq  	$push1=, $1, $pop0
	br_if   	$pop1, .LBB0_4
# BB#1:                                 # %entry
	block   	.LBB0_3
	i32.const	$push2=, 100
	i32.ne  	$push3=, $1, $pop2
	br_if   	$pop3, .LBB0_3
# BB#2:                                 # %sw.bb
	i32.load8_u	$push6=, 0($0)
	i32.const	$push7=, 1
	i32.shr_u	$1=, $pop6, $pop7
	br      	.LBB0_5
.LBB0_3:                                  # %sw.default
	call    	abort
	unreachable
.LBB0_4:                                  # %sw.bb3
	i32.load8_u	$push4=, 3($0)
	i32.const	$push5=, 4
	i32.shr_u	$1=, $pop4, $pop5
.LBB0_5:                                  # %sw.epilog
	return  	$1
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits