	.text
	.file	"/usr/local/google/home/dschuff/s/wasm-waterfall/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/strcmp-1.c"
	.section	.text.test,"ax",@progbits
	.hidden	test
	.globl	test
	.type	test,@function
test:                                   # @test
	.param  	i32, i32, i32
# BB#0:                                 # %entry
	i32.call	$0=, strcmp@FUNCTION, $0, $1
	block   	
	block   	
	i32.const	$push0=, -1
	i32.gt_s	$push1=, $2, $pop0
	br_if   	0, $pop1        # 0: down to label1
# BB#1:                                 # %entry
	i32.const	$push2=, 0
	i32.ge_s	$push3=, $0, $pop2
	br_if   	1, $pop3        # 1: down to label0
.LBB0_2:                                # %if.else
	end_block                       # label1:
	block   	
	br_if   	0, $2           # 0: down to label2
# BB#3:                                 # %if.else
	br_if   	1, $0           # 1: down to label0
.LBB0_4:                                # %if.else6
	end_block                       # label2:
	block   	
	i32.const	$push4=, 1
	i32.lt_s	$push5=, $2, $pop4
	br_if   	0, $pop5        # 0: down to label3
# BB#5:                                 # %if.else6
	i32.const	$push6=, 0
	i32.le_s	$push7=, $0, $pop6
	br_if   	1, $pop7        # 1: down to label0
.LBB0_6:                                # %if.end12
	end_block                       # label3:
	return
.LBB0_7:                                # %if.then10
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	test, .Lfunc_end0-test

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$1=, u1
.LBB1_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	block   	
	block   	
	loop    	                # label6:
	i32.const	$2=, 0
	i32.const	$3=, u2
.LBB1_2:                                # %for.cond4.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	loop    	                # label7:
	i32.const	$4=, 0
.LBB1_3:                                # %for.cond7.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	loop    	                # label8:
	i32.const	$5=, u1
	block   	
	i32.eqz 	$push77=, $0
	br_if   	0, $pop77       # 0: down to label9
# BB#4:                                 # %for.body9.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push26=, u1
	i32.const	$push25=, 0
	i32.call	$drop=, memset@FUNCTION, $pop26, $pop25, $0
	copy_local	$5=, $1
.LBB1_5:                                # %for.cond10.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label9:
	copy_local	$6=, $5
	block   	
	i32.eqz 	$push78=, $4
	br_if   	0, $pop78       # 0: down to label10
# BB#6:                                 # %for.body12.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push27=, 97
	i32.call	$push0=, memset@FUNCTION, $5, $pop27, $4
	i32.add 	$6=, $pop0, $4
.LBB1_7:                                # %for.cond17.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label10:
	i64.const	$push30=, 8680820740569200760
	i64.store	0($6):p2align=0, $pop30
	i32.const	$push29=, 8
	i32.add 	$push2=, $6, $pop29
	i32.const	$push28=, 30840
	i32.store16	0($pop2):p2align=0, $pop28
	i32.const	$7=, u2
	block   	
	i32.eqz 	$push79=, $2
	br_if   	0, $pop79       # 0: down to label11
# BB#8:                                 # %for.body26.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push32=, u2
	i32.const	$push31=, 0
	i32.call	$drop=, memset@FUNCTION, $pop32, $pop31, $2
	copy_local	$7=, $3
.LBB1_9:                                # %for.cond31.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label11:
	copy_local	$8=, $7
	block   	
	i32.eqz 	$push80=, $4
	br_if   	0, $pop80       # 0: down to label12
# BB#10:                                # %for.body33.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push33=, 97
	i32.call	$push1=, memset@FUNCTION, $7, $pop33, $4
	i32.add 	$8=, $pop1, $4
.LBB1_11:                               # %for.cond38.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	end_block                       # label12:
	i64.const	$push38=, 8680820740569200760
	i64.store	1($8):p2align=0, $pop38
	i32.const	$push37=, 9
	i32.add 	$push3=, $8, $pop37
	i32.const	$push36=, 120
	i32.store8	0($pop3), $pop36
	i32.const	$push35=, 0
	i32.store8	0($6), $pop35
	i32.const	$push34=, 0
	i32.store8	0($8), $pop34
	i32.call	$push4=, strcmp@FUNCTION, $5, $7
	br_if   	3, $pop4        # 3: down to label5
# BB#12:                                # %test.exit
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push41=, 97
	i32.store16	0($6):p2align=0, $pop41
	i32.const	$push40=, 0
	i32.store8	0($8), $pop40
	i32.call	$push5=, strcmp@FUNCTION, $5, $7
	i32.const	$push39=, 0
	i32.le_s	$push6=, $pop5, $pop39
	br_if   	3, $pop6        # 3: down to label5
# BB#13:                                # %test.exit157
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push44=, 0
	i32.store8	0($6), $pop44
	i32.const	$push43=, 97
	i32.store16	0($8):p2align=0, $pop43
	i32.call	$push7=, strcmp@FUNCTION, $5, $7
	i32.const	$push42=, 0
	i32.ge_s	$push8=, $pop7, $pop42
	br_if   	3, $pop8        # 3: down to label5
# BB#14:                                # %test.exit162
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push47=, 98
	i32.store16	0($6):p2align=0, $pop47
	i32.const	$push46=, 99
	i32.store16	0($8):p2align=0, $pop46
	i32.call	$push9=, strcmp@FUNCTION, $5, $7
	i32.const	$push45=, 0
	i32.ge_s	$push10=, $pop9, $pop45
	br_if   	3, $pop10       # 3: down to label5
# BB#15:                                # %test.exit168
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push50=, 99
	i32.store16	0($6):p2align=0, $pop50
	i32.const	$push49=, 98
	i32.store16	0($8):p2align=0, $pop49
	i32.call	$push11=, strcmp@FUNCTION, $5, $7
	i32.const	$push48=, 0
	i32.le_s	$push12=, $pop11, $pop48
	br_if   	3, $pop12       # 3: down to label5
# BB#16:                                # %test.exit174
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push53=, 98
	i32.store16	0($6):p2align=0, $pop53
	i32.const	$push52=, 169
	i32.store16	0($8):p2align=0, $pop52
	i32.call	$push13=, strcmp@FUNCTION, $5, $7
	i32.const	$push51=, 0
	i32.ge_s	$push14=, $pop13, $pop51
	br_if   	3, $pop14       # 3: down to label5
# BB#17:                                # %test.exit180
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push56=, 169
	i32.store16	0($6):p2align=0, $pop56
	i32.const	$push55=, 98
	i32.store16	0($8):p2align=0, $pop55
	i32.call	$push15=, strcmp@FUNCTION, $5, $7
	i32.const	$push54=, 0
	i32.le_s	$push16=, $pop15, $pop54
	br_if   	3, $pop16       # 3: down to label5
# BB#18:                                # %test.exit186
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push59=, 169
	i32.store16	0($6):p2align=0, $pop59
	i32.const	$push58=, 170
	i32.store16	0($8):p2align=0, $pop58
	i32.call	$push17=, strcmp@FUNCTION, $5, $7
	i32.const	$push57=, 0
	i32.ge_s	$push18=, $pop17, $pop57
	br_if   	3, $pop18       # 3: down to label5
# BB#19:                                # %test.exit192
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push62=, 170
	i32.store16	0($6):p2align=0, $pop62
	i32.const	$push61=, 169
	i32.store16	0($8):p2align=0, $pop61
	i32.call	$push19=, strcmp@FUNCTION, $5, $7
	i32.const	$push60=, 0
	i32.le_s	$push20=, $pop19, $pop60
	br_if   	4, $pop20       # 4: down to label4
# BB#20:                                # %for.cond4
                                        #   in Loop: Header=BB1_3 Depth=3
	i32.const	$push66=, 1
	i32.add 	$push65=, $4, $pop66
	tee_local	$push64=, $4=, $pop65
	i32.const	$push63=, 63
	i32.le_u	$push21=, $pop64, $pop63
	br_if   	0, $pop21       # 0: up to label8
# BB#21:                                # %for.inc79
                                        #   in Loop: Header=BB1_2 Depth=2
	end_loop
	i32.const	$push71=, 1
	i32.add 	$3=, $3, $pop71
	i32.const	$push70=, 1
	i32.add 	$push69=, $2, $pop70
	tee_local	$push68=, $2=, $pop69
	i32.const	$push67=, 8
	i32.lt_u	$push22=, $pop68, $pop67
	br_if   	0, $pop22       # 0: up to label7
# BB#22:                                # %for.inc82
                                        #   in Loop: Header=BB1_1 Depth=1
	end_loop
	i32.const	$push76=, 1
	i32.add 	$1=, $1, $pop76
	i32.const	$push75=, 1
	i32.add 	$push74=, $0, $pop75
	tee_local	$push73=, $0=, $pop74
	i32.const	$push72=, 8
	i32.lt_u	$push23=, $pop73, $pop72
	br_if   	0, $pop23       # 0: up to label6
# BB#23:                                # %for.end84
	end_loop
	i32.const	$push24=, 0
	call    	exit@FUNCTION, $pop24
	unreachable
.LBB1_24:                               # %if.then.i189
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
.LBB1_25:                               # %if.then10.i197
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	u1,@object              # @u1
	.section	.bss.u1,"aw",@nobits
	.p2align	4
u1:
	.skip	96
	.size	u1, 96

	.type	u2,@object              # @u2
	.section	.bss.u2,"aw",@nobits
	.p2align	4
u2:
	.skip	96
	.size	u2, 96


	.ident	"clang version 4.0.0 (trunk 283460) (llvm/trunk 283507)"
	.functype	strcmp, i32, i32, i32
	.functype	abort, void
	.functype	exit, void, i32
