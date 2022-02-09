
bomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 c0 04 08    	pushl  0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <fflush@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <fgets@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <signal@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <sleep@plt>:
 8049070:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <getenv@plt>:
 8049080:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <puts@plt>:
 8049090:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <atoi@plt>:
 8049100:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049120 <_start>:
 8049120:	31 ed                	xor    %ebp,%ebp
 8049122:	5e                   	pop    %esi
 8049123:	89 e1                	mov    %esp,%ecx
 8049125:	83 e4 f0             	and    $0xfffffff0,%esp
 8049128:	50                   	push   %eax
 8049129:	54                   	push   %esp
 804912a:	52                   	push   %edx
 804912b:	e8 23 00 00 00       	call   8049153 <_start+0x33>
 8049130:	81 c3 d0 2e 00 00    	add    $0x2ed0,%ebx
 8049136:	8d 83 e0 df ff ff    	lea    -0x2020(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 80 df ff ff    	lea    -0x2080(%ebx),%eax
 8049143:	50                   	push   %eax
 8049144:	51                   	push   %ecx
 8049145:	56                   	push   %esi
 8049146:	c7 c0 32 92 04 08    	mov    $0x8049232,%eax
 804914c:	50                   	push   %eax
 804914d:	e8 6e ff ff ff       	call   80490c0 <__libc_start_main@plt>
 8049152:	f4                   	hlt    
 8049153:	8b 1c 24             	mov    (%esp),%ebx
 8049156:	c3                   	ret    
 8049157:	66 90                	xchg   %ax,%ax
 8049159:	66 90                	xchg   %ax,%ax
 804915b:	66 90                	xchg   %ax,%ax
 804915d:	66 90                	xchg   %ax,%ax
 804915f:	90                   	nop

08049160 <_dl_relocate_static_pie>:
 8049160:	c3                   	ret    
 8049161:	66 90                	xchg   %ax,%ax
 8049163:	66 90                	xchg   %ax,%ax
 8049165:	66 90                	xchg   %ax,%ax
 8049167:	66 90                	xchg   %ax,%ax
 8049169:	66 90                	xchg   %ax,%ax
 804916b:	66 90                	xchg   %ax,%ax
 804916d:	66 90                	xchg   %ax,%ax
 804916f:	90                   	nop

08049170 <__x86.get_pc_thunk.bx>:
 8049170:	8b 1c 24             	mov    (%esp),%ebx
 8049173:	c3                   	ret    
 8049174:	66 90                	xchg   %ax,%ax
 8049176:	66 90                	xchg   %ax,%ax
 8049178:	66 90                	xchg   %ax,%ax
 804917a:	66 90                	xchg   %ax,%ax
 804917c:	66 90                	xchg   %ax,%ax
 804917e:	66 90                	xchg   %ax,%ax

08049180 <deregister_tm_clones>:
 8049180:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 8049185:	3d 40 c2 04 08       	cmp    $0x804c240,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 40 c2 04 08       	push   $0x804c240
 80491a0:	ff d0                	call   *%eax
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	c9                   	leave  
 80491a6:	c3                   	ret    
 80491a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491ae:	66 90                	xchg   %ax,%ax
 80491b0:	c3                   	ret    
 80491b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491bf:	90                   	nop

080491c0 <register_tm_clones>:
 80491c0:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 80491c5:	2d 40 c2 04 08       	sub    $0x804c240,%eax
 80491ca:	c1 f8 02             	sar    $0x2,%eax
 80491cd:	89 c2                	mov    %eax,%edx
 80491cf:	c1 ea 1f             	shr    $0x1f,%edx
 80491d2:	01 d0                	add    %edx,%eax
 80491d4:	d1 f8                	sar    %eax
 80491d6:	74 20                	je     80491f8 <register_tm_clones+0x38>
 80491d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80491dd:	85 d2                	test   %edx,%edx
 80491df:	74 17                	je     80491f8 <register_tm_clones+0x38>
 80491e1:	55                   	push   %ebp
 80491e2:	89 e5                	mov    %esp,%ebp
 80491e4:	83 ec 10             	sub    $0x10,%esp
 80491e7:	50                   	push   %eax
 80491e8:	68 40 c2 04 08       	push   $0x804c240
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave  
 80491f3:	c3                   	ret    
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret    
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 48 c2 04 08 00 	cmpb   $0x0,0x804c248
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 48 c2 04 08 01 	movb   $0x1,0x804c248
 804921b:	c9                   	leave  
 804921c:	c3                   	ret    
 804921d:	8d 76 00             	lea    0x0(%esi),%esi
 8049220:	c3                   	ret    
 8049221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804922f:	90                   	nop

08049230 <frame_dummy>:
 8049230:	eb 8e                	jmp    80491c0 <register_tm_clones>

08049232 <main>:
 8049232:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049236:	83 e4 f0             	and    $0xfffffff0,%esp
 8049239:	ff 71 fc             	pushl  -0x4(%ecx)
 804923c:	55                   	push   %ebp
 804923d:	89 e5                	mov    %esp,%ebp
 804923f:	53                   	push   %ebx
 8049240:	51                   	push   %ecx
 8049241:	83 ec 10             	sub    $0x10,%esp
 8049244:	89 cb                	mov    %ecx,%ebx
 8049246:	83 3b 01             	cmpl   $0x1,(%ebx)
 8049249:	75 0c                	jne    8049257 <main+0x25>
 804924b:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049250:	a3 50 c2 04 08       	mov    %eax,0x804c250
 8049255:	eb 75                	jmp    80492cc <main+0x9a>
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)
 804925a:	75 50                	jne    80492ac <main+0x7a>
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax
 804925f:	83 c0 04             	add    $0x4,%eax
 8049262:	8b 00                	mov    (%eax),%eax
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 a0 04 08       	push   $0x804a008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 50 c2 04 08       	mov    %eax,0x804c250
 804927a:	a1 50 c2 04 08       	mov    0x804c250,%eax
 804927f:	85 c0                	test   %eax,%eax
 8049281:	75 49                	jne    80492cc <main+0x9a>
 8049283:	8b 43 04             	mov    0x4(%ebx),%eax
 8049286:	83 c0 04             	add    $0x4,%eax
 8049289:	8b 10                	mov    (%eax),%edx
 804928b:	8b 43 04             	mov    0x4(%ebx),%eax
 804928e:	8b 00                	mov    (%eax),%eax
 8049290:	83 ec 04             	sub    $0x4,%esp
 8049293:	52                   	push   %edx
 8049294:	50                   	push   %eax
 8049295:	68 0a a0 04 08       	push   $0x804a00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 a0 04 08       	push   $0x804a027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 fb 09 00 00       	call   8049ccc <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 a0 04 08       	push   $0x804a044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 a0 04 08       	push   $0x804a080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 90 0a 00 00       	call   8049d86 <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	pushl  -0xc(%ebp)
 80492ff:	e8 50 01 00 00       	call   8049454 <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 e2 0b 00 00       	call   8049ef2 <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac a0 04 08       	push   $0x804a0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 61 0a 00 00       	call   8049d86 <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	pushl  -0xc(%ebp);arg
 804932e:	e8 51 01 00 00       	call   8049484 <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 b3 0b 00 00       	call   8049ef2 <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 a0 04 08       	push   $0x804a0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 32 0a 00 00       	call   8049d86 <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	pushl  -0xc(%ebp)
 804935d:	e8 8c 01 00 00       	call   80494ee <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 84 0b 00 00       	call   8049ef2 <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd a0 04 08       	push   $0x804a0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 03 0a 00 00       	call   8049d86 <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	pushl  -0xc(%ebp)
 804938c:	e8 e8 01 00 00       	call   8049579 <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 55 0b 00 00       	call   8049ef2 <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b a1 04 08       	push   $0x804a11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 d4 09 00 00       	call   8049d86 <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	pushl  -0xc(%ebp)
 80493bb:	e8 07 03 00 00       	call   80496c7 <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 26 0b 00 00       	call   8049ef2 <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c a1 04 08       	push   $0x804a12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 a5 09 00 00       	call   8049d86 <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	pushl  -0xc(%ebp)
 80493ea:	e8 f6 03 00 00       	call   80497e5 <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 f7 0a 00 00       	call   8049ef2 <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 a1 04 08       	push   $0x804a150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 76 09 00 00       	call   8049d86 <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	pushl  -0xc(%ebp)
 8049419:	e8 53 04 00 00       	call   8049871 <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 c8 0a 00 00       	call   8049ef2 <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret    

08049439 <QnpuGlJP>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	8b 45 08             	mov    0x8(%ebp),%eax
 804943f:	2b 45 0c             	sub    0xc(%ebp),%eax
 8049442:	89 c2                	mov    %eax,%edx
 8049444:	89 d0                	mov    %edx,%eax
 8049446:	01 c0                	add    %eax,%eax
 8049448:	01 c2                	add    %eax,%edx
 804944a:	8b 45 08             	mov    0x8(%ebp),%eax
 804944d:	c1 e0 05             	shl    $0x5,%eax
 8049450:	01 d0                	add    %edx,%eax
 8049452:	5d                   	pop    %ebp
 8049453:	c3                   	ret    

08049454 <phase_0>:
 8049454:	55                   	push   %ebp
 8049455:	89 e5                	mov    %esp,%ebp
 8049457:	83 ec 08             	sub    $0x8,%esp
 804945a:	83 ec 08             	sub    $0x8,%esp
 804945d:	68 e0 a1 04 08       	push   $0x804a1e0
 8049462:	ff 75 08             	pushl  0x8(%ebp)
 8049465:	e8 f7 07 00 00       	call   8049c61 <strings_not_equal>
 804946a:	83 c4 10             	add    $0x10,%esp
 804946d:	85 c0                	test   %eax,%eax
 804946f:	74 0c                	je     804947d <phase_0+0x29>
 8049471:	e8 53 0a 00 00       	call   8049ec9 <explode_bomb>
 8049476:	b8 00 00 00 00       	mov    $0x0,%eax
 804947b:	eb 05                	jmp    8049482 <phase_0+0x2e>
 804947d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049482:	c9                   	leave  
 8049483:	c3                   	ret    

08049484 <phase_1>:
 8049484:	55                   	push   %ebp
 8049485:	89 e5                	mov    %esp,%ebp
 8049487:	83 ec 28             	sub    $0x28,%esp
 804948a:	c7 45 f4 a1 84 76 09 	movl   $0x97684a1,-0xc(%ebp)
 8049491:	db 45 f4             	fildl  -0xc(%ebp);load a int(before when convert it into a float (close value))
 8049494:	dd 5d e8             	fstpl  -0x18(%ebp);save top as a double
 8049497:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804949a:	50                   	push   %eax
 804949b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804949e:	50                   	push   %eax
 804949f:	68 0f a2 04 08       	push   $0x804a20f
 80494a4:	ff 75 08             	pushl  0x8(%ebp)
 80494a7:	e8 24 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>;scanf from the first arg
 80494ac:	83 c4 10             	add    $0x10,%esp
 80494af:	83 f8 02             	cmp    $0x2,%eax;input two int
 80494b2:	74 0c                	je     80494c0 <phase_1+0x3c>
 80494b4:	e8 10 0a 00 00       	call   8049ec9 <explode_bomb>
 80494b9:	b8 00 00 00 00       	mov    $0x0,%eax
 80494be:	eb 2c                	jmp    80494ec <phase_1+0x68>
 80494c0:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494c3:	8b 10                	mov    (%eax),%edx;from double
 80494c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax;the first number
 80494c8:	39 c2                	cmp    %eax,%edx;eax==edx
 80494ca:	75 0f                	jne    80494db <phase_1+0x57>
 80494cc:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80494cf:	83 c0 04             	add    $0x4,%eax
 80494d2:	8b 10                	mov    (%eax),%edx
 80494d4:	8b 45 e0             	mov    -0x20(%ebp),%eax;the second number
 80494d7:	39 c2                	cmp    %eax,%edx;eax==edx
 80494d9:	74 0c                	je     80494e7 <phase_1+0x63>
 80494db:	e8 e9 09 00 00       	call   8049ec9 <explode_bomb>
 80494e0:	b8 00 00 00 00       	mov    $0x0,%eax
 80494e5:	eb 05                	jmp    80494ec <phase_1+0x68>
 80494e7:	b8 01 00 00 00       	mov    $0x1,%eax
 80494ec:	c9                   	leave  
 80494ed:	c3                   	ret    

080494ee <phase_2>:
 80494ee:	55                   	push   %ebp
 80494ef:	89 e5                	mov    %esp,%ebp
 80494f1:	53                   	push   %ebx
 80494f2:	83 ec 34             	sub    $0x34,%esp
 80494f5:	83 ec 04             	sub    $0x4,%esp
 80494f8:	6a 09                	push   $0x9;read in 9 numbers
 80494fa:	8d 45 d0             	lea    -0x30(%ebp),%eax
 80494fd:	50                   	push   %eax
 80494fe:	ff 75 08             	pushl  0x8(%ebp)
 8049501:	e8 a1 06 00 00       	call   8049ba7 <read_n_numbers>
 8049506:	83 c4 10             	add    $0x10,%esp
 8049509:	85 c0                	test   %eax,%eax;set ZF==1 if eax==0
 804950b:	75 07                	jne    8049514 <phase_2+0x26>;jump if ZF==0(eax!=0)
 804950d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049512:	eb 60                	jmp    8049574 <phase_2+0x86>
 8049514:	8b 45 d0             	mov    -0x30(%ebp),%eax;first number
 8049517:	3d 86 00 00 00       	cmp    $0x86,%eax;134==first number
 804951c:	74 0c                	je     804952a <phase_2+0x3c>
 804951e:	e8 a6 09 00 00       	call   8049ec9 <explode_bomb>
 8049523:	b8 00 00 00 00       	mov    $0x0,%eax
 8049528:	eb 4a                	jmp    8049574 <phase_2+0x86>
 804952a:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp);cnt=1
 8049531:	eb 36                	jmp    8049569 <phase_2+0x7b>
 8049533:	8b 45 f4             	mov    -0xc(%ebp),%eax;cnt
 8049536:	8b 54 85 d0          	mov    -0x30(%ebp,%eax,4),%edx;arr[cnt]
 804953a:	8b 45 f4             	mov    -0xc(%ebp),%eax;cnt
 804953d:	83 e8 01             	sub    $0x1,%eax;cnt-1
 8049540:	8b 4c 85 d0          	mov    -0x30(%ebp,%eax,4),%ecx;arr[cnt-1]
 8049544:	8b 5d f4             	mov    -0xc(%ebp),%ebx;cnt
 8049547:	b8 00 00 00 00       	mov    $0x0,%eax
 804954c:	29 d8                	sub    %ebx,%eax;-cnt
 804954e:	01 c0                	add    %eax,%eax;-2*cnt
 8049550:	01 c8                	add    %ecx,%eax;-2*cnt+arr[cnt-1]
 8049552:	83 c0 01             	add    $0x1,%eax;-2*cnt+arr[cnt-1]+1
 8049555:	39 c2                	cmp    %eax,%edx;if(-2*cnt+arr[cnt-1]+1)==arr[cnt]
 8049557:	74 0c                	je     8049565 <phase_2+0x77>
 8049559:	e8 6b 09 00 00       	call   8049ec9 <explode_bomb>
 804955e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049563:	eb 0f                	jmp    8049574 <phase_2+0x86>
 8049565:	83 45 f4 01          	addl   $0x1,-0xc(%ebp);cnt++
 8049569:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp);while(cnt<=8)
 804956d:	7e c4                	jle    8049533 <phase_2+0x45>
 804956f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049574:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049577:	c9                   	leave  
 8049578:	c3                   	ret    

08049579 <phase_3>:
 8049579:	55                   	push   %ebp
 804957a:	89 e5                	mov    %esp,%ebp
 804957c:	83 ec 18             	sub    $0x18,%esp
 804957f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049586:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804958d:	8d 45 e8             	lea    -0x18(%ebp),%eax;int2
 8049590:	50                   	push   %eax
 8049591:	8d 45 ec             	lea    -0x14(%ebp),%eax;int1
 8049594:	50                   	push   %eax
 8049595:	68 0f a2 04 08       	push   $0x804a20f ;"%d %d"
 804959a:	ff 75 08             	pushl  0x8(%ebp) ;first parameter  for phase3
 804959d:	e8 2e fb ff ff       	call   80490d0 <__isoc99_sscanf@plt> ;from 0x8(%ebp),get two int
 80495a2:	83 c4 10             	add    $0x10,%esp
 80495a5:	89 45 f0             	mov    %eax,-0x10(%ebp) ;success eax==2
 80495a8:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp);2>1
 80495ac:	7f 0f                	jg     80495bd <phase_3+0x44>;Jump if greater
 80495ae:	e8 16 09 00 00       	call   8049ec9 <explode_bomb>
 80495b3:	b8 00 00 00 00       	mov    $0x0,%eax
 80495b8:	e9 95 00 00 00       	jmp    8049652 <phase_3+0xd9>
 80495bd:	8b 45 ec             	mov    -0x14(%ebp),%eax;int1
 80495c0:	2d fe 00 00 00       	sub    $0xfe,%eax;int1-0xfe
 80495c5:	83 f8 09             	cmp    $0x9,%eax
 80495c8:	77 63                	ja     804962d <phase_3+0xb4>;Jump if above;>;int1-0xfe<=0x9
 80495ca:	8b 04 85 18 a2 04 08 	mov    0x804a218(,%eax,4),%eax;length==10,pointer array;0x080495d3	0x080495dc	0x080495e5	0x080495ee	0x080495f7	0x08049600	0x08049609	0x08049612 0x0804961b	0x08049624
 80495d1:	ff e0                	jmp    *%eax;jmp to the address in eax
 80495d3:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495da:	eb 5d                	jmp    8049639 <phase_3+0xc0>
 80495dc:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495e3:	eb 54                	jmp    8049639 <phase_3+0xc0>
 80495e5:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 80495ec:	eb 4b                	jmp    8049639 <phase_3+0xc0>
 80495ee:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 80495f5:	eb 42                	jmp    8049639 <phase_3+0xc0>
 80495f7:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 80495fe:	eb 39                	jmp    8049639 <phase_3+0xc0>
 8049600:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 8049607:	eb 30                	jmp    8049639 <phase_3+0xc0>
 8049609:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 8049610:	eb 27                	jmp    8049639 <phase_3+0xc0>
 8049612:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp)
 8049619:	eb 1e                	jmp    8049639 <phase_3+0xc0>
 804961b:	c7 45 f4 bd 00 00 00 	movl   $0xbd,-0xc(%ebp)
 8049622:	eb 15                	jmp    8049639 <phase_3+0xc0>
 8049624:	c7 45 f4 e5 03 00 00 	movl   $0x3e5,-0xc(%ebp);temp
 804962b:	eb 0c                	jmp    8049639 <phase_3+0xc0>
 804962d:	e8 97 08 00 00       	call   8049ec9 <explode_bomb>
 8049632:	b8 00 00 00 00       	mov    $0x0,%eax
 8049637:	eb 19                	jmp    8049652 <phase_3+0xd9>
 8049639:	8b 45 e8             	mov    -0x18(%ebp),%eax;int2
 804963c:	39 45 f4             	cmp    %eax,-0xc(%ebp);int2==temp
 804963f:	74 0c                	je     804964d <phase_3+0xd4>
 8049641:	e8 83 08 00 00       	call   8049ec9 <explode_bomb>
 8049646:	b8 00 00 00 00       	mov    $0x0,%eax
 804964b:	eb 05                	jmp    8049652 <phase_3+0xd9>
 804964d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049652:	c9                   	leave  
 8049653:	c3                   	ret    

08049654 <func4>:;arg:arr(from global),two input int(arg from phase4)
 8049654:	55                   	push   %ebp
 8049655:	89 e5                	mov    %esp,%ebp
 8049657:	83 ec 18             	sub    $0x18,%esp
 804965a:	8b 55 0c             	mov    0xc(%ebp),%edx;int1
 804965d:	8b 45 10             	mov    0x10(%ebp),%eax;int2
 8049660:	01 d0                	add    %edx,%eax;int1+int2
 8049662:	89 c2                	mov    %eax,%edx;int1+int2
 8049664:	c1 ea 1f             	shr    $0x1f,%edx;shift right logical;edx=edx>>31(0/1)
 8049667:	01 d0                	add    %edx,%eax;int1+int2+(0/1)
 8049669:	d1 f8                	sar    %eax;arithmatic right shift 1 bit;eax/=2;
 804966b:	89 45 f4             	mov    %eax,-0xc(%ebp);(int1+int2+(0/1))/2
 804966e:	8b 45 0c             	mov    0xc(%ebp),%eax;int1
 8049671:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049674:	7c 13                	jl     8049689 <func4+0x35>
 ;int1>=int2
 8049676:	8b 45 10             	mov    0x10(%ebp),%eax;int2
 8049679:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx;4*int2
 8049680:	8b 45 08             	mov    0x8(%ebp),%eax;arr
 8049683:	01 d0                	add    %edx,%eax;arr+4*int2
 8049685:	8b 00                	mov    (%eax),%eax;*(arr+4*int2)
 8049687:	eb 3c                	jmp    80496c5 <func4+0x71>
 ;int1<int2
 8049689:	83 ec 04             	sub    $0x4,%esp
 804968c:	ff 75 f4             	pushl  -0xc(%ebp);(int1+int2+(0/1))/2
 804968f:	ff 75 0c             	pushl  0xc(%ebp);int1
 8049692:	ff 75 08             	pushl  0x8(%ebp);arr
 8049695:	e8 ba ff ff ff       	call   8049654 <func4>
 804969a:	83 c4 10             	add    $0x10,%esp
 804969d:	89 45 f0             	mov    %eax,-0x10(%ebp);res1
 80496a0:	8b 45 f4             	mov    -0xc(%ebp),%eax;(int1+int2+(0/1))/2
 80496a3:	83 c0 01             	add    $0x1,%eax;(int1+int2+(0/1))/2+1
 80496a6:	83 ec 04             	sub    $0x4,%esp
 80496a9:	ff 75 10             	pushl  0x10(%ebp);int2
 80496ac:	50                   	push   %eax;(int1+int2+(0/1))/2
 80496ad:	ff 75 08             	pushl  0x8(%ebp);arr
 80496b0:	e8 9f ff ff ff       	call   8049654 <func4>
 80496b5:	83 c4 10             	add    $0x10,%esp
 80496b8:	89 45 ec             	mov    %eax,-0x14(%ebp);res2
 80496bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80496be:	39 45 f0             	cmp    %eax,-0x10(%ebp);if(res1>=res2){res2=res1}
 80496c1:	0f 4d 45 f0          	cmovge -0x10(%ebp),%eax;Conditional Move,copy left to right when greater or equal
 ;backtrace
 80496c5:	c9                   	leave  
 80496c6:	c3                   	ret    

080496c7 <phase_4>:
 80496c7:	55                   	push   %ebp
 80496c8:	89 e5                	mov    %esp,%ebp
 80496ca:	57                   	push   %edi
 80496cb:	56                   	push   %esi
 80496cc:	53                   	push   %ebx;callee save
 80496cd:	81 ec ac 00 00 00    	sub    $0xac,%esp
 80496d3:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax;arr
 80496d9:	bb 40 a2 04 08       	mov    $0x804a240,%ebx;source
; 0x804a240:	0x000001f2	0x00000183	0x000000cc	0x000001c8
; 0x804a250:	0x00000060	0x0000012c	0x0000008d	0x000000e7
; 0x804a260:	0x0000007d	0x00000007	0x00000199	0x0000010d
; 0x804a270:	0x0000009e	0x00000025	0x000001ea	0x000001fc
; 0x804a280:	0x0000000d	0x00000151	0x00000191	0x000001f6
; 0x804a290:	0x0000010e	0x000000b7	0x00000197	0x00000030
; 0x804a2a0:	0x000001da	0x00000177	0x000000e0	0x000000c1
; 0x804a2b0:	0x000000d0	0x0000005d	0x0000011a	0x0000005f
; 0x804a2c0:	0x00000143	0x000001c4	0x00000009	0x000000aa
 80496de:	ba 24 00 00 00       	mov    $0x24,%edx
 80496e3:	89 c7                	mov    %eax,%edi;arr
 80496e5:	89 de                	mov    %ebx,%esi;source
 80496e7:	89 d1                	mov    %edx,%ecx;0x24;36*4=144bytes
 80496e9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi);repeat ecx times:copy string from ds to es 4 bytes a time;
 80496eb:	8d 85 4c ff ff ff    	lea    -0xb4(%ebp),%eax
 80496f1:	50                   	push   %eax
 80496f2:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
 80496f8:	50                   	push   %eax
 80496f9:	68 0f a2 04 08       	push   $0x804a20f;"%d %d"
 80496fe:	ff 75 08             	pushl  0x8(%ebp);first parameter for phase4
 8049701:	e8 ca f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049706:	83 c4 10             	add    $0x10,%esp
 8049709:	89 45 e4             	mov    %eax,-0x1c(%ebp);2
 804970c:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 8049710:	74 0f                	je     8049721 <phase_4+0x5a>
 8049712:	e8 b2 07 00 00       	call   8049ec9 <explode_bomb>
 8049717:	b8 00 00 00 00       	mov    $0x0,%eax
 804971c:	e9 bc 00 00 00       	jmp    80497dd <phase_4+0x116>
 8049721:	8b 95 4c ff ff ff    	mov    -0xb4(%ebp),%edx;int2
 8049727:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax;int1
 804972d:	83 ec 04             	sub    $0x4,%esp
 8049730:	52                   	push   %edx
 8049731:	50                   	push   %eax
 8049732:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax;arr
 8049738:	50                   	push   %eax
 8049739:	e8 16 ff ff ff       	call   8049654 <func4>
 804973e:	83 c4 10             	add    $0x10,%esp
 8049741:	3d c8 01 00 00       	cmp    $0x1c8,%eax
 ;retrn res==0x1c8
 8049746:	74 0f                	je     8049757 <phase_4+0x90>
 8049748:	e8 7c 07 00 00       	call   8049ec9 <explode_bomb>
 804974d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049752:	e9 86 00 00 00       	jmp    80497dd <phase_4+0x116>
 8049757:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax;int1
 804975d:	85 c0                	test   %eax,%eax;bitwise and,if eax==0,res==0,set ZF==1
 804975f:	7e 36                	jle    8049797 <phase_4+0xd0>
;int1>0
 8049761:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax;int2
 8049767:	8b 95 50 ff ff ff    	mov    -0xb0(%ebp),%edx;int1
 804976d:	83 ea 01             	sub    $0x1,%edx;int1-1
 8049770:	83 ec 04             	sub    $0x4,%esp
 8049773:	50                   	push   %eax;int2
 8049774:	52                   	push   %edx;int1-1
 8049775:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax;arr
 804977b:	50                   	push   %eax
 804977c:	e8 d3 fe ff ff       	call   8049654 <func4>
 8049781:	83 c4 10             	add    $0x10,%esp
 8049784:	3d c8 01 00 00       	cmp    $0x1c8,%eax;eax!=0x1c8
 8049789:	75 0c                	jne    8049797 <phase_4+0xd0>
 804978b:	e8 39 07 00 00       	call   8049ec9 <explode_bomb>
 8049790:	b8 00 00 00 00       	mov    $0x0,%eax
 8049795:	eb 46                	jmp    80497dd <phase_4+0x116>
 ;int1<=0
 8049797:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax;int2
 804979d:	83 f8 22             	cmp    $0x22,%eax
 80497a0:	7f 36                	jg     80497d8 <phase_4+0x111>
;  int2<=34
 80497a2:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax;int2
 80497a8:	8d 50 01             	lea    0x1(%eax),%edx;int2+1
 80497ab:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax;int1
 80497b1:	83 ec 04             	sub    $0x4,%esp
 80497b4:	52                   	push   %edx;int2+1
 80497b5:	50                   	push   %eax;int1
 80497b6:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
 80497bc:	50                   	push   %eax
 80497bd:	e8 92 fe ff ff       	call   8049654 <func4>
 80497c2:	83 c4 10             	add    $0x10,%esp
 80497c5:	3d c8 01 00 00       	cmp    $0x1c8,%eax
 80497ca:	75 0c                	jne    80497d8 <phase_4+0x111>
 80497cc:	e8 f8 06 00 00       	call   8049ec9 <explode_bomb>
 80497d1:	b8 00 00 00 00       	mov    $0x0,%eax
 80497d6:	eb 05                	jmp    80497dd <phase_4+0x116>
;  int2>34
 80497d8:	b8 01 00 00 00       	mov    $0x1,%eax
 80497dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80497e0:	5b                   	pop    %ebx
 80497e1:	5e                   	pop    %esi
 80497e2:	5f                   	pop    %edi
 80497e3:	5d                   	pop    %ebp
 80497e4:	c3                   	ret    

080497e5 <phase_5>:
 80497e5:	55                   	push   %ebp
 80497e6:	89 e5                	mov    %esp,%ebp
 80497e8:	83 ec 28             	sub    $0x28,%esp
 80497eb:	8d 45 e4             	lea    -0x1c(%ebp),%eax;int2
 80497ee:	50                   	push   %eax
 80497ef:	8d 45 e8             	lea    -0x18(%ebp),%eax;int1
 80497f2:	50                   	push   %eax
 80497f3:	68 0f a2 04 08       	push   $0x804a20f;"%d %d"
 80497f8:	ff 75 08             	pushl  0x8(%ebp)
 80497fb:	e8 d0 f8 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049800:	83 c4 10             	add    $0x10,%esp
 8049803:	89 45 ec             	mov    %eax,-0x14(%ebp);2
 8049806:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804980a:	7f 0c                	jg     8049818 <phase_5+0x33>
 804980c:	e8 b8 06 00 00       	call   8049ec9 <explode_bomb>
 8049811:	b8 00 00 00 00       	mov    $0x0,%eax
 8049816:	eb 57                	jmp    804986f <phase_5+0x8a>
 8049818:	8b 45 e8             	mov    -0x18(%ebp),%eax;int1
 804981b:	83 e0 0f             	and    $0xf,%eax;int1 4 lowbits
 804981e:	89 45 e8             	mov    %eax,-0x18(%ebp);int1=4 lowbits of int1
 8049821:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp);int3
 8049828:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp);int4
 804982f:	eb 17                	jmp    8049848 <phase_5+0x63>
 8049831:	83 45 f4 01          	addl   $0x1,-0xc(%ebp);int3++
 8049835:	8b 45 e8             	mov    -0x18(%ebp),%eax;int1
 8049838:	8b 04 85 00 c2 04 08 	mov    0x804c200(,%eax,4),%eax;arr[int1]
;  the array:
; 0x804c200 <array.2751>:	0x0000000a	0x00000002	0x0000000e	0x00000007
; 0x804c210 <array.2751+16>:	0x00000008	0x0000000c	0x0000000f	0x0000000b
; 0x804c220 <array.2751+32>:	0x00000000	0x00000004	0x00000001	0x0000000d
; 0x804c230 <array.2751+48>:	0x00000003	0x00000009	0x00000006	0x00000005
 804983f:	89 45 e8             	mov    %eax,-0x18(%ebp);int1=arr[int1]
 8049842:	8b 45 e8             	mov    -0x18(%ebp),%eax;int1
 8049845:	01 45 f0             	add    %eax,-0x10(%ebp);int4+=int1
 8049848:	8b 45 e8             	mov    -0x18(%ebp),%eax;int1
 804984b:	83 f8 0f             	cmp    $0xf,%eax;while(int1!=0xf)
 804984e:	75 e1                	jne    8049831 <phase_5+0x4c>;int1==0xf
 8049850:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp);int3==0x6;6 times loop
 8049854:	75 08                	jne    804985e <phase_5+0x79>
 8049856:	8b 45 e4             	mov    -0x1c(%ebp),%eax;int2
 8049859:	39 45 f0             	cmp    %eax,-0x10(%ebp);int2==int4
 804985c:	74 0c                	je     804986a <phase_5+0x85>
 804985e:	e8 66 06 00 00       	call   8049ec9 <explode_bomb>
 8049863:	b8 00 00 00 00       	mov    $0x0,%eax
 8049868:	eb 05                	jmp    804986f <phase_5+0x8a>
 804986a:	b8 01 00 00 00       	mov    $0x1,%eax
 804986f:	c9                   	leave  
 8049870:	c3                   	ret    

08049871 <phase_6>:
 8049871:	55                   	push   %ebp
 8049872:	89 e5                	mov    %esp,%ebp
 8049874:	83 ec 58             	sub    $0x58,%esp
 8049877:	c7 45 e8 30 c1 04 08 	movl   $0x804c130,-0x18(%ebp);*node1=0x804c130
;  0x804c130 <node1>:	0x00000009	0x00000001	0x0804c124	0x000003e9
 804987e:	83 ec 04             	sub    $0x4,%esp
 8049881:	6a 07                	push   $0x7
 8049883:	8d 45 cc             	lea    -0x34(%ebp),%eax;arr
 8049886:	50                   	push   %eax
 8049887:	ff 75 08             	pushl  0x8(%ebp);read 7 numbers;arr[7]
 804988a:	e8 18 03 00 00       	call   8049ba7 <read_n_numbers>
 804988f:	83 c4 10             	add    $0x10,%esp
 8049892:	85 c0                	test   %eax,%eax
 8049894:	75 0a                	jne    80498a0 <phase_6+0x2f>
 8049896:	b8 00 00 00 00       	mov    $0x0,%eax
 804989b:	e9 37 01 00 00       	jmp    80499d7 <phase_6+0x166>
 80498a0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp);int1=0
 80498a7:	eb 60                	jmp    8049909 <phase_6+0x98>
 80498a9:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 80498ac:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax;arr[int1]
 80498b0:	85 c0                	test   %eax,%eax;arr[int1]>0
 80498b2:	7e 0c                	jle    80498c0 <phase_6+0x4f>
 80498b4:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 80498b7:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax;arr[int1]
 80498bb:	83 f8 07             	cmp    $0x7,%eax;arr[int1]<=7
 80498be:	7e 0f                	jle    80498cf <phase_6+0x5e>
 80498c0:	e8 04 06 00 00       	call   8049ec9 <explode_bomb>
 80498c5:	b8 00 00 00 00       	mov    $0x0,%eax
 80498ca:	e9 08 01 00 00       	jmp    80499d7 <phase_6+0x166>
 80498cf:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 80498d2:	83 c0 01             	add    $0x1,%eax
 80498d5:	89 45 ec             	mov    %eax,-0x14(%ebp);int2=(int1+1)
 80498d8:	eb 25                	jmp    80498ff <phase_6+0x8e>
 80498da:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 80498dd:	8b 54 85 cc          	mov    -0x34(%ebp,%eax,4),%edx;arr[int1]
 80498e1:	8b 45 ec             	mov    -0x14(%ebp),%eax;int2
 80498e4:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax;arr[int2]
 80498e8:	39 c2                	cmp    %eax,%edx;arr[int1]!=arr[int2]
 80498ea:	75 0f                	jne    80498fb <phase_6+0x8a>
 80498ec:	e8 d8 05 00 00       	call   8049ec9 <explode_bomb>
 80498f1:	b8 00 00 00 00       	mov    $0x0,%eax
 80498f6:	e9 dc 00 00 00       	jmp    80499d7 <phase_6+0x166>
 80498fb:	83 45 ec 01          	addl   $0x1,-0x14(%ebp);int2++
 80498ff:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp);while(int2<=6)
 8049903:	7e d5                	jle    80498da <phase_6+0x69>
 8049905:	83 45 f0 01          	addl   $0x1,-0x10(%ebp);int1++
 8049909:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 804990d:	7e 9a                	jle    80498a9 <phase_6+0x38>;while(int1<=6)
 804990f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp);int1=0
 8049916:	eb 36                	jmp    804994e <phase_6+0xdd>
 8049918:	8b 45 e8             	mov    -0x18(%ebp),%eax;&node1
 804991b:	89 45 f4             	mov    %eax,-0xc(%ebp);&node2=&node1
 804991e:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp);int2=1
 8049925:	eb 0d                	jmp    8049934 <phase_6+0xc3>
;  node{int1,int2,node* next}
 8049927:	8b 45 f4             	mov    -0xc(%ebp),%eax;&node2
 804992a:	8b 40 08             	mov    0x8(%eax),%eax;*(&node2+8)
 804992d:	89 45 f4             	mov    %eax,-0xc(%ebp);&node2=&node2->next
 8049930:	83 45 ec 01          	addl   $0x1,-0x14(%ebp);int2++
 8049934:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 8049937:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax;arr[int1]
 804993b:	39 45 ec             	cmp    %eax,-0x14(%ebp);while(int2<arr[int1])
 804993e:	7c e7                	jl     8049927 <phase_6+0xb6>;int2>=arr[int1],get a node
 8049940:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 8049943:	8b 55 f4             	mov    -0xc(%ebp),%edx;&node2
 8049946:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4);node_arr[int1]=&node2;pointer to node
 804994a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp);int1++
 804994e:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp);while(int1<=6)
 8049952:	7e c4                	jle    8049918 <phase_6+0xa7>;node_arr[7]
 8049954:	8b 45 b0             	mov    -0x50(%ebp),%eax;node_arr[0]
 8049957:	89 45 e8             	mov    %eax,-0x18(%ebp);node_arr[0]
 804995a:	8b 45 e8             	mov    -0x18(%ebp),%eax;node_arr[0]
 804995d:	89 45 f4             	mov    %eax,-0xc(%ebp);&node2=node_arr[0]
 8049960:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp);int1=1
 8049967:	eb 1a                	jmp    8049983 <phase_6+0x112>
 8049969:	8b 45 f0             	mov    -0x10(%ebp),%eax;int1
 804996c:	8b 54 85 b0          	mov    -0x50(%ebp,%eax,4),%edx;node_arr[int1]
 8049970:	8b 45 f4             	mov    -0xc(%ebp),%eax;&node2
 8049973:	89 50 08             	mov    %edx,0x8(%eax);&node2->next=node_arr[int1]
 8049976:	8b 45 f4             	mov    -0xc(%ebp),%eax;&node2
 8049979:	8b 40 08             	mov    0x8(%eax),%eax;&node2->next
 804997c:	89 45 f4             	mov    %eax,-0xc(%ebp);&node2=node2->next
 804997f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp);int1++
 8049983:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp);while(int1<=6)
 8049987:	7e e0                	jle    8049969 <phase_6+0xf8>;link node_arr[7],node2=node_arr[6]
 8049989:	8b 45 f4             	mov    -0xc(%ebp),%eax;node2
 804998c:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax);node2->next=0
 8049993:	8b 45 e8             	mov    -0x18(%ebp),%eax;node_arr[0]
 8049996:	89 45 f4             	mov    %eax,-0xc(%ebp);node2=node_arr[0]
 8049999:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp);int1=0
 80499a0:	eb 2a                	jmp    80499cc <phase_6+0x15b>
 80499a2:	8b 45 f4             	mov    -0xc(%ebp),%eax;node2
 80499a5:	8b 10                	mov    (%eax),%edx;*node2
 80499a7:	8b 45 f4             	mov    -0xc(%ebp),%eax;node2
 80499aa:	8b 40 08             	mov    0x8(%eax),%eax;node2->next
 80499ad:	8b 00                	mov    (%eax),%eax;*(node2->next)
 80499af:	39 c2                	cmp    %eax,%edx;(node2->int1)<=(node2->next->int1)
 80499b1:	7e 0c                	jle    80499bf <phase_6+0x14e>
 80499b3:	e8 11 05 00 00       	call   8049ec9 <explode_bomb>
 80499b8:	b8 00 00 00 00       	mov    $0x0,%eax
 80499bd:	eb 18                	jmp    80499d7 <phase_6+0x166>
 80499bf:	8b 45 f4             	mov    -0xc(%ebp),%eax;node2
 80499c2:	8b 40 08             	mov    0x8(%eax),%eax;node2->next
 80499c5:	89 45 f4             	mov    %eax,-0xc(%ebp);node2=node2->next
 80499c8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp);int1++
 80499cc:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp);while(int1<=5)
 80499d0:	7e d0                	jle    80499a2 <phase_6+0x131>
 80499d2:	b8 01 00 00 00       	mov    $0x1,%eax
 80499d7:	c9                   	leave  
 80499d8:	c3                   	ret    

080499d9 <fun7>:
 80499d9:	55                   	push   %ebp
 80499da:	89 e5                	mov    %esp,%ebp
 80499dc:	83 ec 08             	sub    $0x8,%esp
 80499df:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80499e3:	75 07                	jne    80499ec <fun7+0x13>
;  add==0
 80499e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax;return -1
 80499ea:	eb 4e                	jmp    8049a3a <fun7+0x61>
 ;add!=0
 80499ec:	8b 45 08             	mov    0x8(%ebp),%eax;add
 80499ef:	8b 00                	mov    (%eax),%eax;*add
 80499f1:	39 45 0c             	cmp    %eax,0xc(%ebp)
 80499f4:	7d 19                	jge    8049a0f <fun7+0x36>
;  int1<*add
 80499f6:	8b 45 08             	mov    0x8(%ebp),%eax;add
 80499f9:	8b 40 04             	mov    0x4(%eax),%eax;*(add+4)
 80499fc:	83 ec 08             	sub    $0x8,%esp
 80499ff:	ff 75 0c             	pushl  0xc(%ebp);int1
 8049a02:	50                   	push   %eax;*(add+4)
 8049a03:	e8 d1 ff ff ff       	call   80499d9 <fun7>
 8049a08:	83 c4 10             	add    $0x10,%esp
 8049a0b:	01 c0                	add    %eax,%eax;res*=2
 8049a0d:	eb 2b                	jmp    8049a3a <fun7+0x61>
;  int1>=*add
 8049a0f:	8b 45 08             	mov    0x8(%ebp),%eax;add
 8049a12:	8b 00                	mov    (%eax),%eax;*add
 8049a14:	39 45 0c             	cmp    %eax,0xc(%ebp)
 8049a17:	75 07                	jne    8049a20 <fun7+0x47>
;  int1==*add
 8049a19:	b8 00 00 00 00       	mov    $0x0,%eax;return 0
 8049a1e:	eb 1a                	jmp    8049a3a <fun7+0x61>
;  int1!=*add
 8049a20:	8b 45 08             	mov    0x8(%ebp),%eax;add
 8049a23:	8b 40 08             	mov    0x8(%eax),%eax;*(add+8)
 8049a26:	83 ec 08             	sub    $0x8,%esp
 8049a29:	ff 75 0c             	pushl  0xc(%ebp);int1
 8049a2c:	50                   	push   %eax;*(add+8)
 8049a2d:	e8 a7 ff ff ff       	call   80499d9 <fun7>
 8049a32:	83 c4 10             	add    $0x10,%esp
 8049a35:	01 c0                	add    %eax,%eax;res*=2
 8049a37:	83 c0 01             	add    $0x1,%eax;res+=1
 8049a3a:	c9                   	leave  
 8049a3b:	c3                   	ret    

08049a3c <secret_phase>:
 8049a3c:	55                   	push   %ebp
 8049a3d:	89 e5                	mov    %esp,%ebp
 8049a3f:	83 ec 18             	sub    $0x18,%esp
 8049a42:	e8 3f 03 00 00       	call   8049d86 <read_line>
 8049a47:	89 45 f4             	mov    %eax,-0xc(%ebp);read_string
 8049a4a:	83 ec 0c             	sub    $0xc,%esp
 8049a4d:	ff 75 f4             	pushl  -0xc(%ebp)
 8049a50:	e8 ab f6 ff ff       	call   8049100 <atoi@plt>;string to int
 8049a55:	83 c4 10             	add    $0x10,%esp
 8049a58:	89 45 f0             	mov    %eax,-0x10(%ebp);int1
 8049a5b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp);int1>0
 8049a5f:	7e 09                	jle    8049a6a <secret_phase+0x2e>
 8049a61:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp);int1<=0x3e9
 8049a68:	7e 0c                	jle    8049a76 <secret_phase+0x3a>
 8049a6a:	e8 5a 04 00 00       	call   8049ec9 <explode_bomb>
 8049a6f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a74:	eb 42                	jmp    8049ab8 <secret_phase+0x7c>
 8049a76:	83 ec 08             	sub    $0x8,%esp
 8049a79:	ff 75 f0             	pushl  -0x10(%ebp);int1
 8049a7c:	68 e4 c1 04 08       	push   $0x804c1e4;add
;  0x804c13c <n48>:	0x000003e9	0x00000000	0x00000000	0x0000002f
; 0x804c14c <n46+4>:	0x00000000	0x00000000	0x00000014	0x00000000
; 0x804c15c <n43+8>:	0x00000000	0x00000007	0x00000000	0x00000000
; 0x804c16c <n44>:	0x00000023	0x00000000	0x00000000	0x00000063
; 0x804c17c <n47+4>:	0x00000000	0x00000000	0x00000001	0x00000000
; 0x804c18c <n41+8>:	0x00000000	0x00000028	0x00000000	0x00000000
; 0x804c19c <n34>:	0x0000006b	0x0804c178	0x0804c13c	0x00000006
; 0x804c1ac <n31+4>:	0x0804c184	0x0804c160	0x0000002d	0x0804c190
; 0x804c1bc <n33+8>:	0x0804c148	0x00000016	0x0804c154	0x0804c16c
; 0x804c1cc <n22>:	0x00000032	0x0804c1b4	0x0804c19c	0x00000008
; 0x804c1dc <n21+4>:	0x0804c1a8	0x0804c1c0	0x00000024	0x0804c1d8
; 0x804c1ec <n1+8>:	0x0804c1cc
 8049a81:	e8 53 ff ff ff       	call   80499d9 <fun7>
 8049a86:	83 c4 10             	add    $0x10,%esp
 8049a89:	89 45 ec             	mov    %eax,-0x14(%ebp);res
 8049a8c:	83 7d ec 02          	cmpl   $0x2,-0x14(%ebp);res==2
 8049a90:	74 0c                	je     8049a9e <secret_phase+0x62>
 8049a92:	e8 32 04 00 00       	call   8049ec9 <explode_bomb>
 8049a97:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a9c:	eb 1a                	jmp    8049ab8 <secret_phase+0x7c>
 8049a9e:	83 ec 0c             	sub    $0xc,%esp
 8049aa1:	68 d0 a2 04 08       	push   $0x804a2d0
 8049aa6:	e8 e5 f5 ff ff       	call   8049090 <puts@plt>
 8049aab:	83 c4 10             	add    $0x10,%esp
 8049aae:	e8 3f 04 00 00       	call   8049ef2 <phase_defused>
 8049ab3:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ab8:	c9                   	leave  
 8049ab9:	c3                   	ret    

08049aba <sig_handler>:
 8049aba:	55                   	push   %ebp
 8049abb:	89 e5                	mov    %esp,%ebp
 8049abd:	83 ec 08             	sub    $0x8,%esp
 8049ac0:	83 ec 0c             	sub    $0xc,%esp
 8049ac3:	68 f8 a2 04 08       	push   $0x804a2f8
 8049ac8:	e8 c3 f5 ff ff       	call   8049090 <puts@plt>
 8049acd:	83 c4 10             	add    $0x10,%esp
 8049ad0:	83 ec 0c             	sub    $0xc,%esp
 8049ad3:	6a 03                	push   $0x3
 8049ad5:	e8 96 f5 ff ff       	call   8049070 <sleep@plt>
 8049ada:	83 c4 10             	add    $0x10,%esp
 8049add:	83 ec 0c             	sub    $0xc,%esp
 8049ae0:	68 30 a3 04 08       	push   $0x804a330
 8049ae5:	e8 46 f5 ff ff       	call   8049030 <printf@plt>
 8049aea:	83 c4 10             	add    $0x10,%esp
 8049aed:	a1 44 c2 04 08       	mov    0x804c244,%eax
 8049af2:	83 ec 0c             	sub    $0xc,%esp
 8049af5:	50                   	push   %eax
 8049af6:	e8 45 f5 ff ff       	call   8049040 <fflush@plt>
 8049afb:	83 c4 10             	add    $0x10,%esp
 8049afe:	83 ec 0c             	sub    $0xc,%esp
 8049b01:	6a 01                	push   $0x1
 8049b03:	e8 68 f5 ff ff       	call   8049070 <sleep@plt>
 8049b08:	83 c4 10             	add    $0x10,%esp
 8049b0b:	83 ec 0c             	sub    $0xc,%esp
 8049b0e:	68 38 a3 04 08       	push   $0x804a338
 8049b13:	e8 78 f5 ff ff       	call   8049090 <puts@plt>
 8049b18:	83 c4 10             	add    $0x10,%esp
 8049b1b:	83 ec 0c             	sub    $0xc,%esp
 8049b1e:	6a 10                	push   $0x10
 8049b20:	e8 7b f5 ff ff       	call   80490a0 <exit@plt>

08049b25 <invalid_phase>:
 8049b25:	55                   	push   %ebp
 8049b26:	89 e5                	mov    %esp,%ebp
 8049b28:	83 ec 08             	sub    $0x8,%esp
 8049b2b:	83 ec 08             	sub    $0x8,%esp
 8049b2e:	ff 75 08             	pushl  0x8(%ebp)
 8049b31:	68 40 a3 04 08       	push   $0x804a340
 8049b36:	e8 f5 f4 ff ff       	call   8049030 <printf@plt>
 8049b3b:	83 c4 10             	add    $0x10,%esp
 8049b3e:	83 ec 0c             	sub    $0xc,%esp
 8049b41:	6a 08                	push   $0x8
 8049b43:	e8 58 f5 ff ff       	call   80490a0 <exit@plt>

08049b48 <read_six_numbers>:
 8049b48:	55                   	push   %ebp
 8049b49:	89 e5                	mov    %esp,%ebp
 8049b4b:	56                   	push   %esi
 8049b4c:	53                   	push   %ebx
 8049b4d:	83 ec 10             	sub    $0x10,%esp
 8049b50:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b53:	8d 70 14             	lea    0x14(%eax),%esi
 8049b56:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b59:	8d 58 10             	lea    0x10(%eax),%ebx
 8049b5c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b5f:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049b62:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b65:	8d 50 08             	lea    0x8(%eax),%edx
 8049b68:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b6b:	83 c0 04             	add    $0x4,%eax
 8049b6e:	56                   	push   %esi
 8049b6f:	53                   	push   %ebx
 8049b70:	51                   	push   %ecx
 8049b71:	52                   	push   %edx
 8049b72:	50                   	push   %eax
 8049b73:	ff 75 0c             	pushl  0xc(%ebp)
 8049b76:	68 51 a3 04 08       	push   $0x804a351
 8049b7b:	ff 75 08             	pushl  0x8(%ebp)
 8049b7e:	e8 4d f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b83:	83 c4 20             	add    $0x20,%esp
 8049b86:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b89:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049b8d:	7f 0c                	jg     8049b9b <read_six_numbers+0x53>
 8049b8f:	e8 35 03 00 00       	call   8049ec9 <explode_bomb>
 8049b94:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b99:	eb 05                	jmp    8049ba0 <read_six_numbers+0x58>
 8049b9b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ba0:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049ba3:	5b                   	pop    %ebx
 8049ba4:	5e                   	pop    %esi
 8049ba5:	5d                   	pop    %ebp
 8049ba6:	c3                   	ret    

08049ba7 <read_n_numbers>:
 8049ba7:	55                   	push   %ebp
 8049ba8:	89 e5                	mov    %esp,%ebp
 8049baa:	83 ec 18             	sub    $0x18,%esp
 8049bad:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049bb4:	eb 70                	jmp    8049c26 <read_n_numbers+0x7f>
 8049bb6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049bba:	75 18                	jne    8049bd4 <read_n_numbers+0x2d>
 8049bbc:	83 ec 08             	sub    $0x8,%esp
 8049bbf:	68 63 a3 04 08       	push   $0x804a363
 8049bc4:	ff 75 08             	pushl  0x8(%ebp)
 8049bc7:	e8 24 f5 ff ff       	call   80490f0 <strtok@plt>
 8049bcc:	83 c4 10             	add    $0x10,%esp
 8049bcf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049bd2:	eb 15                	jmp    8049be9 <read_n_numbers+0x42>
 8049bd4:	83 ec 08             	sub    $0x8,%esp
 8049bd7:	68 63 a3 04 08       	push   $0x804a363
 8049bdc:	6a 00                	push   $0x0
 8049bde:	e8 0d f5 ff ff       	call   80490f0 <strtok@plt>
 8049be3:	83 c4 10             	add    $0x10,%esp
 8049be6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049be9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049bed:	74 27                	je     8049c16 <read_n_numbers+0x6f>
 8049bef:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bf2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049bf9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049bfc:	01 d0                	add    %edx,%eax
 8049bfe:	83 ec 04             	sub    $0x4,%esp
 8049c01:	50                   	push   %eax
 8049c02:	68 67 a3 04 08       	push   $0x804a367
 8049c07:	ff 75 f4             	pushl  -0xc(%ebp)
 8049c0a:	e8 c1 f4 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049c0f:	83 c4 10             	add    $0x10,%esp
 8049c12:	85 c0                	test   %eax,%eax
 8049c14:	7f 0c                	jg     8049c22 <read_n_numbers+0x7b>
 8049c16:	e8 ae 02 00 00       	call   8049ec9 <explode_bomb>
 8049c1b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c20:	eb 11                	jmp    8049c33 <read_n_numbers+0x8c>
 8049c22:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049c26:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c29:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049c2c:	7c 88                	jl     8049bb6 <read_n_numbers+0xf>
 8049c2e:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c33:	c9                   	leave  
 8049c34:	c3                   	ret    

08049c35 <string_length>:
 8049c35:	55                   	push   %ebp
 8049c36:	89 e5                	mov    %esp,%ebp
 8049c38:	83 ec 10             	sub    $0x10,%esp
 8049c3b:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c3e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c41:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049c48:	eb 08                	jmp    8049c52 <string_length+0x1d>
 8049c4a:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049c4e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8049c52:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c55:	0f b6 00             	movzbl (%eax),%eax
 8049c58:	84 c0                	test   %al,%al
 8049c5a:	75 ee                	jne    8049c4a <string_length+0x15>
 8049c5c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049c5f:	c9                   	leave  
 8049c60:	c3                   	ret    

08049c61 <strings_not_equal>:
 8049c61:	55                   	push   %ebp
 8049c62:	89 e5                	mov    %esp,%ebp
 8049c64:	53                   	push   %ebx
 8049c65:	83 ec 10             	sub    $0x10,%esp
 8049c68:	ff 75 08             	pushl  0x8(%ebp)
 8049c6b:	e8 c5 ff ff ff       	call   8049c35 <string_length>
 8049c70:	83 c4 04             	add    $0x4,%esp
 8049c73:	89 c3                	mov    %eax,%ebx
 8049c75:	ff 75 0c             	pushl  0xc(%ebp)
 8049c78:	e8 b8 ff ff ff       	call   8049c35 <string_length>
 8049c7d:	83 c4 04             	add    $0x4,%esp
 8049c80:	39 c3                	cmp    %eax,%ebx
 8049c82:	74 07                	je     8049c8b <strings_not_equal+0x2a>
 8049c84:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c89:	eb 3c                	jmp    8049cc7 <strings_not_equal+0x66>
 8049c8b:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c8e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c91:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c94:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c97:	eb 1f                	jmp    8049cb8 <strings_not_equal+0x57>
 8049c99:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c9c:	0f b6 10             	movzbl (%eax),%edx
 8049c9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049ca2:	0f b6 00             	movzbl (%eax),%eax
 8049ca5:	38 c2                	cmp    %al,%dl
 8049ca7:	74 07                	je     8049cb0 <strings_not_equal+0x4f>
 8049ca9:	b8 01 00 00 00       	mov    $0x1,%eax
 8049cae:	eb 17                	jmp    8049cc7 <strings_not_equal+0x66>
 8049cb0:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049cb4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049cb8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049cbb:	0f b6 00             	movzbl (%eax),%eax
 8049cbe:	84 c0                	test   %al,%al
 8049cc0:	75 d7                	jne    8049c99 <strings_not_equal+0x38>
 8049cc2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cc7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049cca:	c9                   	leave  
 8049ccb:	c3                   	ret    

08049ccc <initialize_bomb>:
 8049ccc:	55                   	push   %ebp
 8049ccd:	89 e5                	mov    %esp,%ebp
 8049ccf:	83 ec 08             	sub    $0x8,%esp
 8049cd2:	83 ec 08             	sub    $0x8,%esp
 8049cd5:	68 ba 9a 04 08       	push   $0x8049aba
 8049cda:	6a 02                	push   $0x2
 8049cdc:	e8 7f f3 ff ff       	call   8049060 <signal@plt>
 8049ce1:	83 c4 10             	add    $0x10,%esp
 8049ce4:	90                   	nop
 8049ce5:	c9                   	leave  
 8049ce6:	c3                   	ret    

08049ce7 <initialize_bomb_solve>:
 8049ce7:	55                   	push   %ebp
 8049ce8:	89 e5                	mov    %esp,%ebp
 8049cea:	90                   	nop
 8049ceb:	5d                   	pop    %ebp
 8049cec:	c3                   	ret    

08049ced <blank_line>:
 8049ced:	55                   	push   %ebp
 8049cee:	89 e5                	mov    %esp,%ebp
 8049cf0:	83 ec 08             	sub    $0x8,%esp
 8049cf3:	eb 30                	jmp    8049d25 <blank_line+0x38>
 8049cf5:	e8 16 f4 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049cfa:	8b 08                	mov    (%eax),%ecx
 8049cfc:	8b 45 08             	mov    0x8(%ebp),%eax
 8049cff:	8d 50 01             	lea    0x1(%eax),%edx
 8049d02:	89 55 08             	mov    %edx,0x8(%ebp)
 8049d05:	0f b6 00             	movzbl (%eax),%eax
 8049d08:	0f be c0             	movsbl %al,%eax
 8049d0b:	01 c0                	add    %eax,%eax
 8049d0d:	01 c8                	add    %ecx,%eax
 8049d0f:	0f b7 00             	movzwl (%eax),%eax
 8049d12:	0f b7 c0             	movzwl %ax,%eax
 8049d15:	25 00 20 00 00       	and    $0x2000,%eax
 8049d1a:	85 c0                	test   %eax,%eax
 8049d1c:	75 07                	jne    8049d25 <blank_line+0x38>
 8049d1e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d23:	eb 0f                	jmp    8049d34 <blank_line+0x47>
 8049d25:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d28:	0f b6 00             	movzbl (%eax),%eax
 8049d2b:	84 c0                	test   %al,%al
 8049d2d:	75 c6                	jne    8049cf5 <blank_line+0x8>
 8049d2f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049d34:	c9                   	leave  
 8049d35:	c3                   	ret    

08049d36 <skip>:
 8049d36:	55                   	push   %ebp
 8049d37:	89 e5                	mov    %esp,%ebp
 8049d39:	83 ec 18             	sub    $0x18,%esp
 8049d3c:	8b 0d 50 c2 04 08    	mov    0x804c250,%ecx
 8049d42:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049d48:	89 d0                	mov    %edx,%eax
 8049d4a:	c1 e0 02             	shl    $0x2,%eax
 8049d4d:	01 d0                	add    %edx,%eax
 8049d4f:	c1 e0 04             	shl    $0x4,%eax
 8049d52:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049d57:	83 ec 04             	sub    $0x4,%esp
 8049d5a:	51                   	push   %ecx
 8049d5b:	6a 50                	push   $0x50
 8049d5d:	50                   	push   %eax
 8049d5e:	e8 ed f2 ff ff       	call   8049050 <fgets@plt>
 8049d63:	83 c4 10             	add    $0x10,%esp
 8049d66:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d69:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d6d:	74 12                	je     8049d81 <skip+0x4b>
 8049d6f:	83 ec 0c             	sub    $0xc,%esp
 8049d72:	ff 75 f4             	pushl  -0xc(%ebp)
 8049d75:	e8 73 ff ff ff       	call   8049ced <blank_line>
 8049d7a:	83 c4 10             	add    $0x10,%esp
 8049d7d:	85 c0                	test   %eax,%eax
 8049d7f:	75 bb                	jne    8049d3c <skip+0x6>
 8049d81:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d84:	c9                   	leave  
 8049d85:	c3                   	ret    

08049d86 <read_line>:
 8049d86:	55                   	push   %ebp
 8049d87:	89 e5                	mov    %esp,%ebp
 8049d89:	83 ec 18             	sub    $0x18,%esp
 8049d8c:	e8 a5 ff ff ff       	call   8049d36 <skip>
 8049d91:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d94:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d98:	75 79                	jne    8049e13 <read_line+0x8d>
 8049d9a:	8b 15 50 c2 04 08    	mov    0x804c250,%edx
 8049da0:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049da5:	39 c2                	cmp    %eax,%edx
 8049da7:	75 1a                	jne    8049dc3 <read_line+0x3d>
 8049da9:	83 ec 0c             	sub    $0xc,%esp
 8049dac:	68 6a a3 04 08       	push   $0x804a36a
 8049db1:	e8 da f2 ff ff       	call   8049090 <puts@plt>
 8049db6:	83 c4 10             	add    $0x10,%esp
 8049db9:	83 ec 0c             	sub    $0xc,%esp
 8049dbc:	6a 08                	push   $0x8
 8049dbe:	e8 dd f2 ff ff       	call   80490a0 <exit@plt>
 8049dc3:	83 ec 0c             	sub    $0xc,%esp
 8049dc6:	68 88 a3 04 08       	push   $0x804a388
 8049dcb:	e8 b0 f2 ff ff       	call   8049080 <getenv@plt>
 8049dd0:	83 c4 10             	add    $0x10,%esp
 8049dd3:	85 c0                	test   %eax,%eax
 8049dd5:	74 0a                	je     8049de1 <read_line+0x5b>
 8049dd7:	83 ec 0c             	sub    $0xc,%esp
 8049dda:	6a 00                	push   $0x0
 8049ddc:	e8 bf f2 ff ff       	call   80490a0 <exit@plt>
 8049de1:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049de6:	a3 50 c2 04 08       	mov    %eax,0x804c250
 8049deb:	e8 46 ff ff ff       	call   8049d36 <skip>
 8049df0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049df3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049df7:	75 1a                	jne    8049e13 <read_line+0x8d>
 8049df9:	83 ec 0c             	sub    $0xc,%esp
 8049dfc:	68 6a a3 04 08       	push   $0x804a36a
 8049e01:	e8 8a f2 ff ff       	call   8049090 <puts@plt>
 8049e06:	83 c4 10             	add    $0x10,%esp
 8049e09:	83 ec 0c             	sub    $0xc,%esp
 8049e0c:	6a 00                	push   $0x0
 8049e0e:	e8 8d f2 ff ff       	call   80490a0 <exit@plt>
 8049e13:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e19:	89 d0                	mov    %edx,%eax
 8049e1b:	c1 e0 02             	shl    $0x2,%eax
 8049e1e:	01 d0                	add    %edx,%eax
 8049e20:	c1 e0 04             	shl    $0x4,%eax
 8049e23:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049e28:	83 ec 0c             	sub    $0xc,%esp
 8049e2b:	50                   	push   %eax
 8049e2c:	e8 7f f2 ff ff       	call   80490b0 <strlen@plt>
 8049e31:	83 c4 10             	add    $0x10,%esp
 8049e34:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049e37:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049e3b:	7e 4d                	jle    8049e8a <read_line+0x104>
 8049e3d:	83 ec 0c             	sub    $0xc,%esp
 8049e40:	68 93 a3 04 08       	push   $0x804a393
 8049e45:	e8 46 f2 ff ff       	call   8049090 <puts@plt>
 8049e4a:	83 c4 10             	add    $0x10,%esp
 8049e4d:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e53:	8d 42 01             	lea    0x1(%edx),%eax
 8049e56:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049e5b:	89 d0                	mov    %edx,%eax
 8049e5d:	c1 e0 02             	shl    $0x2,%eax
 8049e60:	01 d0                	add    %edx,%eax
 8049e62:	c1 e0 04             	shl    $0x4,%eax
 8049e65:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049e6a:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049e70:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049e77:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049e7e:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049e85:	e8 3f 00 00 00       	call   8049ec9 <explode_bomb>
 8049e8a:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049e90:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e93:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049e96:	89 d0                	mov    %edx,%eax
 8049e98:	c1 e0 02             	shl    $0x2,%eax
 8049e9b:	01 d0                	add    %edx,%eax
 8049e9d:	c1 e0 04             	shl    $0x4,%eax
 8049ea0:	01 c8                	add    %ecx,%eax
 8049ea2:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049ea7:	c6 00 00             	movb   $0x0,(%eax)
 8049eaa:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049eb0:	8d 42 01             	lea    0x1(%edx),%eax
 8049eb3:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049eb8:	89 d0                	mov    %edx,%eax
 8049eba:	c1 e0 02             	shl    $0x2,%eax
 8049ebd:	01 d0                	add    %edx,%eax
 8049ebf:	c1 e0 04             	shl    $0x4,%eax
 8049ec2:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049ec7:	c9                   	leave  
 8049ec8:	c3                   	ret    

08049ec9 <explode_bomb>:
 8049ec9:	55                   	push   %ebp
 8049eca:	89 e5                	mov    %esp,%ebp
 8049ecc:	83 ec 08             	sub    $0x8,%esp
 8049ecf:	83 ec 0c             	sub    $0xc,%esp
 8049ed2:	68 ae a3 04 08       	push   $0x804a3ae
 8049ed7:	e8 b4 f1 ff ff       	call   8049090 <puts@plt>
 8049edc:	83 c4 10             	add    $0x10,%esp
 8049edf:	83 ec 0c             	sub    $0xc,%esp
 8049ee2:	68 b7 a3 04 08       	push   $0x804a3b7
 8049ee7:	e8 a4 f1 ff ff       	call   8049090 <puts@plt>
 8049eec:	83 c4 10             	add    $0x10,%esp
 8049eef:	90                   	nop
 8049ef0:	c9                   	leave  
 8049ef1:	c3                   	ret    

08049ef2 <phase_defused>:
 8049ef2:	55                   	push   %ebp
 8049ef3:	89 e5                	mov    %esp,%ebp
 8049ef5:	83 ec 68             	sub    $0x68,%esp
 8049ef8:	a1 4c c2 04 08       	mov    0x804c24c,%eax;*0x804c24c->eax
 8049efd:	83 f8 07             	cmp    $0x7,%eax;$0x7->constant value
 8049f00:	75 77                	jne    8049f79 <phase_defused+0x87>
 8049f02:	83 ec 0c             	sub    $0xc,%esp
 8049f05:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049f08:	50                   	push   %eax
 8049f09:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049f0c:	50                   	push   %eax
 8049f0d:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049f10:	50                   	push   %eax
 8049f11:	68 ce a3 04 08       	push   $0x804a3ce;"%d %d %s"
 8049f16:	68 a0 c3 04 08       	push   $0x804c3a0
 8049f1b:	e8 b0 f1 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049f20:	83 c4 20             	add    $0x20,%esp
 8049f23:	89 45 f4             	mov    %eax,-0xc(%ebp);3
 8049f26:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049f2a:	75 3d                	jne    8049f69 <phase_defused+0x77>
 8049f2c:	83 ec 08             	sub    $0x8,%esp
 8049f2f:	68 d7 a3 04 08       	push   $0x804a3d7;add of desired string
 8049f34:	8d 45 a4             	lea    -0x5c(%ebp),%eax;add of input string
 8049f37:	50                   	push   %eax
 8049f38:	e8 24 fd ff ff       	call   8049c61 <strings_not_equal>
 8049f3d:	83 c4 10             	add    $0x10,%esp
 8049f40:	85 c0                	test   %eax,%eax
 8049f42:	75 25                	jne    8049f69 <phase_defused+0x77>
 8049f44:	83 ec 0c             	sub    $0xc,%esp
 8049f47:	68 e0 a3 04 08       	push   $0x804a3e0
 8049f4c:	e8 3f f1 ff ff       	call   8049090 <puts@plt>
 8049f51:	83 c4 10             	add    $0x10,%esp
 8049f54:	83 ec 0c             	sub    $0xc,%esp
 8049f57:	68 08 a4 04 08       	push   $0x804a408
 8049f5c:	e8 2f f1 ff ff       	call   8049090 <puts@plt>
 8049f61:	83 c4 10             	add    $0x10,%esp
 8049f64:	e8 d3 fa ff ff       	call   8049a3c <secret_phase>
 8049f69:	83 ec 0c             	sub    $0xc,%esp
 8049f6c:	68 40 a4 04 08       	push   $0x804a440
 8049f71:	e8 1a f1 ff ff       	call   8049090 <puts@plt>
 8049f76:	83 c4 10             	add    $0x10,%esp
 8049f79:	90                   	nop
 8049f7a:	c9                   	leave  
 8049f7b:	c3                   	ret    
 8049f7c:	66 90                	xchg   %ax,%ax
 8049f7e:	66 90                	xchg   %ax,%ax

08049f80 <__libc_csu_init>:
 8049f80:	55                   	push   %ebp
 8049f81:	57                   	push   %edi
 8049f82:	56                   	push   %esi
 8049f83:	53                   	push   %ebx
 8049f84:	e8 e7 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f89:	81 c3 77 20 00 00    	add    $0x2077,%ebx
 8049f8f:	83 ec 0c             	sub    $0xc,%esp
 8049f92:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049f96:	e8 65 f0 ff ff       	call   8049000 <_init>
 8049f9b:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049fa1:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049fa7:	29 c6                	sub    %eax,%esi
 8049fa9:	c1 fe 02             	sar    $0x2,%esi
 8049fac:	74 1f                	je     8049fcd <__libc_csu_init+0x4d>
 8049fae:	31 ff                	xor    %edi,%edi
 8049fb0:	83 ec 04             	sub    $0x4,%esp
 8049fb3:	55                   	push   %ebp
 8049fb4:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049fb8:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049fbc:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049fc3:	83 c7 01             	add    $0x1,%edi
 8049fc6:	83 c4 10             	add    $0x10,%esp
 8049fc9:	39 fe                	cmp    %edi,%esi
 8049fcb:	75 e3                	jne    8049fb0 <__libc_csu_init+0x30>
 8049fcd:	83 c4 0c             	add    $0xc,%esp
 8049fd0:	5b                   	pop    %ebx
 8049fd1:	5e                   	pop    %esi
 8049fd2:	5f                   	pop    %edi
 8049fd3:	5d                   	pop    %ebp
 8049fd4:	c3                   	ret    
 8049fd5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049fdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049fe0 <__libc_csu_fini>:
 8049fe0:	c3                   	ret    

Disassembly of section .fini:

08049fe4 <_fini>:
 8049fe4:	53                   	push   %ebx
 8049fe5:	83 ec 08             	sub    $0x8,%esp
 8049fe8:	e8 83 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049fed:	81 c3 13 20 00 00    	add    $0x2013,%ebx
 8049ff3:	83 c4 08             	add    $0x8,%esp
 8049ff6:	5b                   	pop    %ebx
 8049ff7:	c3                   	ret    
