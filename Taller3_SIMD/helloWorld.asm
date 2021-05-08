
helloWorld.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	pushq  0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 2f 00 00 	bnd jmpq *0x2f8b(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 2f 00 00 	bnd jmpq *0x2f8d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <putchar@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 2f 00 00 	bnd jmpq *0x2f45(%rip)        # 3fc0 <putchar@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <puts@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmpq *0x2f3d(%rip)        # 3fc8 <puts@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <printf@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmpq *0x2f35(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	4c 8d 05 c6 02 00 00 	lea    0x2c6(%rip),%r8        # 1380 <__libc_csu_fini>
    10ba:	48 8d 0d 4f 02 00 00 	lea    0x24f(%rip),%rcx        # 1310 <__libc_csu_init>
    10c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1189 <main>
    10c8:	ff 15 12 2f 00 00    	callq  *0x2f12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	48 8d 05 32 2f 00 00 	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 2e 00 00 	mov    0x2eee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 2f 00 00 	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	48 8d 35 02 2f 00 00 	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 2e 00 00 	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	callq  1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116c:	c6 05 9d 2e 00 00 01 	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	retq   
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmpq   1100 <register_tm_clones>

0000000000001189 <main>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	55                   	push   %rbp
    118e:	48 89 e5             	mov    %rsp,%rbp
    1191:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1195:	48 8d 3d 6c 0e 00 00 	lea    0xe6c(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    119c:	e8 df fe ff ff       	callq  1080 <puts@plt>
    11a1:	c7 45 a0 01 00 00 00 	movl   $0x1,-0x60(%rbp)
    11a8:	c7 45 a4 05 00 00 00 	movl   $0x5,-0x5c(%rbp)
    11af:	c7 45 a8 09 00 00 00 	movl   $0x9,-0x58(%rbp)
    11b6:	c7 45 ac 0d 00 00 00 	movl   $0xd,-0x54(%rbp)
    11bd:	8b 45 a0             	mov    -0x60(%rbp),%eax
    11c0:	8b 55 a4             	mov    -0x5c(%rbp),%edx
    11c3:	66 0f 6e ca          	movd   %edx,%xmm1
    11c7:	66 0f 6e d0          	movd   %eax,%xmm2
    11cb:	66 0f 62 ca          	punpckldq %xmm2,%xmm1
    11cf:	8b 45 a8             	mov    -0x58(%rbp),%eax
    11d2:	8b 55 ac             	mov    -0x54(%rbp),%edx
    11d5:	66 0f 6e c2          	movd   %edx,%xmm0
    11d9:	66 0f 6e d8          	movd   %eax,%xmm3
    11dd:	66 0f 62 c3          	punpckldq %xmm3,%xmm0
    11e1:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    11e5:	0f 29 45 b0          	movaps %xmm0,-0x50(%rbp)
    11e9:	c7 45 90 0c 00 00 00 	movl   $0xc,-0x70(%rbp)
    11f0:	c7 45 94 0e 00 00 00 	movl   $0xe,-0x6c(%rbp)
    11f7:	c7 45 98 10 00 00 00 	movl   $0x10,-0x68(%rbp)
    11fe:	c7 45 9c 12 00 00 00 	movl   $0x12,-0x64(%rbp)
    1205:	8b 45 90             	mov    -0x70(%rbp),%eax
    1208:	8b 55 94             	mov    -0x6c(%rbp),%edx
    120b:	66 0f 6e ca          	movd   %edx,%xmm1
    120f:	66 0f 6e e0          	movd   %eax,%xmm4
    1213:	66 0f 62 cc          	punpckldq %xmm4,%xmm1
    1217:	8b 45 98             	mov    -0x68(%rbp),%eax
    121a:	8b 55 9c             	mov    -0x64(%rbp),%edx
    121d:	66 0f 6e c2          	movd   %edx,%xmm0
    1221:	66 0f 6e e8          	movd   %eax,%xmm5
    1225:	66 0f 62 c5          	punpckldq %xmm5,%xmm0
    1229:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    122d:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    1231:	66 0f 6f 45 c0       	movdqa -0x40(%rbp),%xmm0
    1236:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    123a:	66 0f 6f 45 b0       	movdqa -0x50(%rbp),%xmm0
    123f:	0f 29 45 f0          	movaps %xmm0,-0x10(%rbp)
    1243:	66 0f 6f 45 e0       	movdqa -0x20(%rbp),%xmm0
    1248:	66 0f 6f 4d f0       	movdqa -0x10(%rbp),%xmm1
    124d:	66 0f fa c1          	psubd  %xmm1,%xmm0
    1251:	0f 29 45 d0          	movaps %xmm0,-0x30(%rbp)
    1255:	48 8d 3d bc 0d 00 00 	lea    0xdbc(%rip),%rdi        # 2018 <_IO_stdin_used+0x18>
    125c:	e8 1f fe ff ff       	callq  1080 <puts@plt>
    1261:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%rbp)
    1268:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    126d:	66 0f 7e c0          	movd   %xmm0,%eax
    1271:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1274:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1277:	89 c6                	mov    %eax,%esi
    1279:	48 8d 3d b8 0d 00 00 	lea    0xdb8(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    1280:	b8 00 00 00 00       	mov    $0x0,%eax
    1285:	e8 06 fe ff ff       	callq  1090 <printf@plt>
    128a:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    128f:	66 0f 70 c0 55       	pshufd $0x55,%xmm0,%xmm0
    1294:	66 0f 7e c0          	movd   %xmm0,%eax
    1298:	89 45 8c             	mov    %eax,-0x74(%rbp)
    129b:	8b 45 8c             	mov    -0x74(%rbp),%eax
    129e:	89 c6                	mov    %eax,%esi
    12a0:	48 8d 3d 91 0d 00 00 	lea    0xd91(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    12a7:	b8 00 00 00 00       	mov    $0x0,%eax
    12ac:	e8 df fd ff ff       	callq  1090 <printf@plt>
    12b1:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    12b6:	66 0f 6a c0          	punpckhdq %xmm0,%xmm0
    12ba:	66 0f 7e c0          	movd   %xmm0,%eax
    12be:	89 45 8c             	mov    %eax,-0x74(%rbp)
    12c1:	8b 45 8c             	mov    -0x74(%rbp),%eax
    12c4:	89 c6                	mov    %eax,%esi
    12c6:	48 8d 3d 6b 0d 00 00 	lea    0xd6b(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    12cd:	b8 00 00 00 00       	mov    $0x0,%eax
    12d2:	e8 b9 fd ff ff       	callq  1090 <printf@plt>
    12d7:	66 0f 6f 45 d0       	movdqa -0x30(%rbp),%xmm0
    12dc:	66 0f 70 c0 ff       	pshufd $0xff,%xmm0,%xmm0
    12e1:	66 0f 7e c0          	movd   %xmm0,%eax
    12e5:	89 45 8c             	mov    %eax,-0x74(%rbp)
    12e8:	8b 45 8c             	mov    -0x74(%rbp),%eax
    12eb:	89 c6                	mov    %eax,%esi
    12ed:	48 8d 3d 44 0d 00 00 	lea    0xd44(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    12f4:	b8 00 00 00 00       	mov    $0x0,%eax
    12f9:	e8 92 fd ff ff       	callq  1090 <printf@plt>
    12fe:	bf 0a 00 00 00       	mov    $0xa,%edi
    1303:	e8 68 fd ff ff       	callq  1070 <putchar@plt>
    1308:	b8 01 00 00 00       	mov    $0x1,%eax
    130d:	c9                   	leaveq 
    130e:	c3                   	retq   
    130f:	90                   	nop

0000000000001310 <__libc_csu_init>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	41 57                	push   %r15
    1316:	4c 8d 3d 8b 2a 00 00 	lea    0x2a8b(%rip),%r15        # 3da8 <__frame_dummy_init_array_entry>
    131d:	41 56                	push   %r14
    131f:	49 89 d6             	mov    %rdx,%r14
    1322:	41 55                	push   %r13
    1324:	49 89 f5             	mov    %rsi,%r13
    1327:	41 54                	push   %r12
    1329:	41 89 fc             	mov    %edi,%r12d
    132c:	55                   	push   %rbp
    132d:	48 8d 2d 7c 2a 00 00 	lea    0x2a7c(%rip),%rbp        # 3db0 <__do_global_dtors_aux_fini_array_entry>
    1334:	53                   	push   %rbx
    1335:	4c 29 fd             	sub    %r15,%rbp
    1338:	48 83 ec 08          	sub    $0x8,%rsp
    133c:	e8 bf fc ff ff       	callq  1000 <_init>
    1341:	48 c1 fd 03          	sar    $0x3,%rbp
    1345:	74 1f                	je     1366 <__libc_csu_init+0x56>
    1347:	31 db                	xor    %ebx,%ebx
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1350:	4c 89 f2             	mov    %r14,%rdx
    1353:	4c 89 ee             	mov    %r13,%rsi
    1356:	44 89 e7             	mov    %r12d,%edi
    1359:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    135d:	48 83 c3 01          	add    $0x1,%rbx
    1361:	48 39 dd             	cmp    %rbx,%rbp
    1364:	75 ea                	jne    1350 <__libc_csu_init+0x40>
    1366:	48 83 c4 08          	add    $0x8,%rsp
    136a:	5b                   	pop    %rbx
    136b:	5d                   	pop    %rbp
    136c:	41 5c                	pop    %r12
    136e:	41 5d                	pop    %r13
    1370:	41 5e                	pop    %r14
    1372:	41 5f                	pop    %r15
    1374:	c3                   	retq   
    1375:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    137c:	00 00 00 00 

0000000000001380 <__libc_csu_fini>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	c3                   	retq   

Disassembly of section .fini:

0000000000001388 <_fini>:
    1388:	f3 0f 1e fa          	endbr64 
    138c:	48 83 ec 08          	sub    $0x8,%rsp
    1390:	48 83 c4 08          	add    $0x8,%rsp
    1394:	c3                   	retq   
