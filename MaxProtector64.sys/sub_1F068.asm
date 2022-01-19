PAGE:000000000001F068
PAGE:000000000001F068
PAGE:000000000001F068 ; __int64 __fastcall CallbackFunction(__int64, int, _QWORD *)
PAGE:000000000001F068 CallbackFunction proc near              ; DATA XREF: DriverEntry+1EE↓o
PAGE:000000000001F068
PAGE:000000000001F068 var_A8          = dword ptr -0A8h
PAGE:000000000001F068 var_A0          = qword ptr -0A0h
PAGE:000000000001F068 var_98          = byte ptr -98h
PAGE:000000000001F068 var_90          = word ptr -90h
PAGE:000000000001F068 var_8E          = qword ptr -8Eh
PAGE:000000000001F068 var_86          = dword ptr -86h
PAGE:000000000001F068 var_82          = word ptr -82h
PAGE:000000000001F068 var_80          = dword ptr -80h
PAGE:000000000001F068 var_78          = qword ptr -78h
PAGE:000000000001F068 var_70          = qword ptr -70h
PAGE:000000000001F068 var_68          = dword ptr -68h
PAGE:000000000001F068 var_60          = qword ptr -60h
PAGE:000000000001F068 var_58          = qword ptr -58h
PAGE:000000000001F068 var_50          = byte ptr -50h
PAGE:000000000001F068 var_48          = byte ptr -48h
PAGE:000000000001F068 var_38          = qword ptr -38h
PAGE:000000000001F068 var_28          = byte ptr -28h
PAGE:000000000001F068 arg_0           = qword ptr  8
PAGE:000000000001F068 arg_8           = qword ptr  10h
PAGE:000000000001F068 arg_18          = qword ptr  20h
PAGE:000000000001F068
PAGE:000000000001F068                 mov     [rsp+arg_0], rbx
PAGE:000000000001F06D                 mov     [rsp+arg_8], rbp ; # DeviceObject, Irp, PVOID Context
PAGE:000000000001F072                 mov     [rsp+arg_18], rsi
PAGE:000000000001F077                 push    rdi
PAGE:000000000001F078                 push    r12
PAGE:000000000001F07A                 push    r13
PAGE:000000000001F07C                 push    r14
PAGE:000000000001F07E                 push    r15
PAGE:000000000001F080                 sub     rsp, 0A0h
PAGE:000000000001F087                 mov     rax, cs:qword_1C100
PAGE:000000000001F08E                 xor     rax, rsp
PAGE:000000000001F091                 mov     [rsp+0C8h+var_38], rax
PAGE:000000000001F099                 xor     r15d, r15d
PAGE:000000000001F09C                 xor     eax, eax
PAGE:000000000001F09E                 mov     rbp, r8         ; # PVOID Context
PAGE:000000000001F0A1                 mov     rdi, rdx        ; # PIRP Irp
PAGE:000000000001F0A4                 mov     ebx, r15d
PAGE:000000000001F0A7                 mov     [rsp+0C8h+var_90], r15w ; # WORD size
PAGE:000000000001F0AD                 mov     [rsp+0C8h+var_8E], rax
PAGE:000000000001F0B2                 mov     [rsp+0C8h+var_86], eax
PAGE:000000000001F0B6                 mov     [rsp+0C8h+var_82], ax ; # WORD size
PAGE:000000000001F0BB                 mov     [rsp+0C8h+var_98], r15b ; # BYTE size
PAGE:000000000001F0C0                 cmp     cs:byte_1C3A0, r15b ; # now set to 1
PAGE:000000000001F0C7                 jz      loc_1F914       ; # if callback not registered, jump to end.
PAGE:000000000001F0CD                 mov     rcx, r8
PAGE:000000000001F0D0                 call    cs:MmIsAddressValid
PAGE:000000000001F0D6                 cmp     al, r15b
PAGE:000000000001F0D9                 jz      loc_1F912
PAGE:000000000001F0DF                 cmp     rbp, r15
PAGE:000000000001F0E2                 jz      loc_1F912
PAGE:000000000001F0E8                 call    cs:PsGetCurrentProcessId ; # PID
PAGE:000000000001F0EE                 cmp     eax, r15d
PAGE:000000000001F0F1                 jz      loc_1F912
PAGE:000000000001F0F7                 cmp     eax, 8
PAGE:000000000001F0FA                 jz      loc_1F912
PAGE:000000000001F100                 cmp     eax, 4
PAGE:000000000001F103                 jz      loc_1F912
PAGE:000000000001F109                 cmp     edi, 0Ah
PAGE:000000000001F10C                 jz      short loc_1F12B
PAGE:000000000001F10E                 cmp     edi, 1Ah
PAGE:000000000001F111                 jz      short loc_1F12B
PAGE:000000000001F113                 cmp     edi, 4
PAGE:000000000001F116                 jz      short loc_1F12B
PAGE:000000000001F118                 cmp     edi, 1
PAGE:000000000001F11B                 jz      short loc_1F12B
PAGE:000000000001F11D                 cmp     edi, r15d
PAGE:000000000001F120                 jz      short loc_1F12B
PAGE:000000000001F122                 cmp     edi, 2
PAGE:000000000001F125                 jnz     loc_1F912
PAGE:000000000001F12B
PAGE:000000000001F12B loc_1F12B:                              ; CODE XREF: CallbackFunction+A4↑j
PAGE:000000000001F12B                                         ; CallbackFunction+A9↑j ...
PAGE:000000000001F12B                 xor     ecx, ecx
PAGE:000000000001F12D                 call    sub_11C5C
PAGE:000000000001F132                 cmp     al, r15b
PAGE:000000000001F135                 jz      short loc_1F145
PAGE:000000000001F137                 cmp     edi, 1
PAGE:000000000001F13A                 jnz     loc_1F912
PAGE:000000000001F140                 mov     [rsp+0C8h+var_98], dil
PAGE:000000000001F145
PAGE:000000000001F145 loc_1F145:                              ; CODE XREF: CallbackFunction+CD↑j
PAGE:000000000001F145                 cmp     edi, r15d
PAGE:000000000001F148                 jz      loc_1F83E
PAGE:000000000001F14E                 sub     edi, 1
PAGE:000000000001F151                 jz      loc_1F5DD
PAGE:000000000001F157                 sub     edi, 1
PAGE:000000000001F15A                 jz      loc_1F594
PAGE:000000000001F160                 sub     edi, 2
PAGE:000000000001F163                 jz      loc_1F4B7
PAGE:000000000001F169                 sub     edi, 6
PAGE:000000000001F16C                 jz      loc_1F3AA
PAGE:000000000001F172                 cmp     edi, 10h
PAGE:000000000001F175                 jnz     loc_1F90E
PAGE:000000000001F17B                 cmp     cs:byte_1C3A4, r15b
PAGE:000000000001F182                 jz      short loc_1F195
PAGE:000000000001F184                 mov     ebx, 0C0000022h
PAGE:000000000001F189
PAGE:000000000001F189 loc_1F189:                              ; CODE XREF: CallbackFunction+134↓j
PAGE:000000000001F189                                         ; CallbackFunction+13B↓j ...
PAGE:000000000001F189                 mov     cs:byte_1C3A4, r15b
PAGE:000000000001F190                 jmp     loc_1F90E
PAGE:000000000001F195 ; ---------------------------------------------------------------------------
PAGE:000000000001F195
PAGE:000000000001F195 loc_1F195:                              ; CODE XREF: CallbackFunction+11A↑j
PAGE:000000000001F195                 mov     r12, [rbp+0]
PAGE:000000000001F199                 cmp     r12, r15
PAGE:000000000001F19C                 jz      short loc_1F189
PAGE:000000000001F19E                 cmp     [r12], r15w
PAGE:000000000001F1A3                 jbe     short loc_1F189
PAGE:000000000001F1A5                 mov     rax, [r12+8]
PAGE:000000000001F1AA                 cmp     word ptr [rax], 5Ch ; '\'
PAGE:000000000001F1AE                 jnz     loc_1F280
PAGE:000000000001F1B4                 mov     rdx, r12
PAGE:000000000001F1B7                 xor     ecx, ecx
PAGE:000000000001F1B9                 call    sub_121A0
PAGE:000000000001F1BE                 cmp     al, r15b
PAGE:000000000001F1C1                 jz      short loc_1F189
PAGE:000000000001F1C3                 mov     edx, 200h
PAGE:000000000001F1C8                 mov     esi, 4D4158h
PAGE:000000000001F1CD                 xor     ecx, ecx
PAGE:000000000001F1CF                 mov     r8d, esi
PAGE:000000000001F1D2                 mov     [rsp+0C8h+var_90], r15w
PAGE:000000000001F1D8                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F1DD                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F1E3                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F1E8                 cmp     rax, r15
PAGE:000000000001F1EB                 jz      short loc_1F189
PAGE:000000000001F1ED                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F1F3                 xor     edx, edx
PAGE:000000000001F1F5                 mov     rcx, rax
PAGE:000000000001F1F8                 mov     bpl, r15b
PAGE:000000000001F1FB                 call    memset
PAGE:000000000001F200                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F205                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F20A                 call    sub_11C9C
PAGE:000000000001F20F                 cmp     al, r15b
PAGE:000000000001F212                 jnz     short loc_1F223
PAGE:000000000001F214                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F219                 call    sub_1210C
PAGE:000000000001F21E                 cmp     al, r15b
PAGE:000000000001F221                 jz      short loc_1F226
PAGE:000000000001F223
PAGE:000000000001F223 loc_1F223:                              ; CODE XREF: CallbackFunction+1AA↑j
PAGE:000000000001F223                 mov     bpl, 1
PAGE:000000000001F226
PAGE:000000000001F226 loc_1F226:                              ; CODE XREF: CallbackFunction+1B9↑j
PAGE:000000000001F226                 mov     edi, 0C0000022h
PAGE:000000000001F22B                 cmp     [rsp+0C8h+var_90], r15w
PAGE:000000000001F231                 jbe     short loc_1F239
PAGE:000000000001F233                 cmp     bpl, r15b
PAGE:000000000001F236                 cmovz   ebx, edi
PAGE:000000000001F239
PAGE:000000000001F239 loc_1F239:                              ; CODE XREF: CallbackFunction+1C9↑j
PAGE:000000000001F239                 lea     r8, [rsp+0C8h+var_80]
PAGE:000000000001F23E                 mov     edx, 0F003Fh
PAGE:000000000001F243                 xor     ecx, ecx
PAGE:000000000001F245                 mov     [rsp+0C8h+var_80], 30h ; '0'
PAGE:000000000001F24D                 mov     [rsp+0C8h+var_78], r15
PAGE:000000000001F252                 mov     [rsp+0C8h+var_68], 40h ; '@'
PAGE:000000000001F25A                 mov     [rsp+0C8h+var_70], r12
PAGE:000000000001F25F                 mov     [rsp+0C8h+var_60], r15
PAGE:000000000001F264                 mov     [rsp+0C8h+var_58], r15
PAGE:000000000001F269                 call    cs:ZwOpenKey
PAGE:000000000001F26F                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F274                 cmp     eax, r15d
PAGE:000000000001F277                 cmovl   ebx, r15d
PAGE:000000000001F27B                 jmp     loc_1F38E
PAGE:000000000001F280 ; ---------------------------------------------------------------------------
PAGE:000000000001F280
PAGE:000000000001F280 loc_1F280:                              ; CODE XREF: CallbackFunction+146↑j
PAGE:000000000001F280                 mov     rdi, [rbp+8]
PAGE:000000000001F284                 mov     rcx, rdi
PAGE:000000000001F287                 call    cs:MmIsAddressValid
PAGE:000000000001F28D                 cmp     al, r15b
PAGE:000000000001F290                 jz      loc_1F189
PAGE:000000000001F296                 cmp     rdi, r15
PAGE:000000000001F299                 jz      loc_1F189
PAGE:000000000001F29F                 mov     rcx, rdi
PAGE:000000000001F2A2                 call    sub_11D0C
PAGE:000000000001F2A7                 mov     rbp, rax
PAGE:000000000001F2AA                 cmp     rax, r15
PAGE:000000000001F2AD                 jz      loc_1F189
PAGE:000000000001F2B3                 mov     rdx, r12
PAGE:000000000001F2B6                 mov     rcx, rax
PAGE:000000000001F2B9                 call    sub_121A0
PAGE:000000000001F2BE                 mov     edi, 0C0000022h
PAGE:000000000001F2C3                 mov     esi, 4D4158h
PAGE:000000000001F2C8                 cmp     al, r15b
PAGE:000000000001F2CB                 jz      loc_1F38B
PAGE:000000000001F2D1                 mov     edx, 200h
PAGE:000000000001F2D6                 mov     r8d, esi
PAGE:000000000001F2D9                 xor     ecx, ecx
PAGE:000000000001F2DB                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F2E0                 mov     [rsp+0C8h+var_90], r15w
PAGE:000000000001F2E6                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F2EC                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F2F1                 cmp     rax, r15
PAGE:000000000001F2F4                 jz      loc_1F38B
PAGE:000000000001F2FA                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F300                 xor     edx, edx
PAGE:000000000001F302                 mov     rcx, rax
PAGE:000000000001F305                 mov     r13b, r15b
PAGE:000000000001F308                 call    memset
PAGE:000000000001F30D                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F312                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F317                 call    sub_11C9C
PAGE:000000000001F31C                 cmp     al, r15b
PAGE:000000000001F31F                 jnz     short loc_1F330
PAGE:000000000001F321                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F326                 call    sub_1210C
PAGE:000000000001F32B                 cmp     al, r15b
PAGE:000000000001F32E                 jz      short loc_1F333
PAGE:000000000001F330
PAGE:000000000001F330 loc_1F330:                              ; CODE XREF: CallbackFunction+2B7↑j
PAGE:000000000001F330                 mov     r13b, 1
PAGE:000000000001F333
PAGE:000000000001F333 loc_1F333:                              ; CODE XREF: CallbackFunction+2C6↑j
PAGE:000000000001F333                 cmp     [rsp+0C8h+var_90], r15w
PAGE:000000000001F339                 jbe     short loc_1F341
PAGE:000000000001F33B                 cmp     r13b, r15b
PAGE:000000000001F33E                 cmovz   ebx, edi
PAGE:000000000001F341
PAGE:000000000001F341 loc_1F341:                              ; CODE XREF: CallbackFunction+2D1↑j
PAGE:000000000001F341                 lea     r8, [rsp+0C8h+var_80]
PAGE:000000000001F346                 mov     edx, 0F003Fh
PAGE:000000000001F34B                 xor     ecx, ecx
PAGE:000000000001F34D                 mov     [rsp+0C8h+var_80], 30h ; '0'
PAGE:000000000001F355                 mov     [rsp+0C8h+var_78], r15
PAGE:000000000001F35A                 mov     [rsp+0C8h+var_68], 40h ; '@'
PAGE:000000000001F362                 mov     [rsp+0C8h+var_70], r12
PAGE:000000000001F367                 mov     [rsp+0C8h+var_60], r15
PAGE:000000000001F36C                 mov     [rsp+0C8h+var_58], r15
PAGE:000000000001F371                 call    cs:ZwOpenKey
PAGE:000000000001F377                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F37C                 mov     edx, esi
PAGE:000000000001F37E                 cmp     eax, r15d
PAGE:000000000001F381                 cmovl   ebx, r15d
PAGE:000000000001F385                 call    cs:ExFreePoolWithTag
PAGE:000000000001F38B
PAGE:000000000001F38B loc_1F38B:                              ; CODE XREF: CallbackFunction+263↑j
PAGE:000000000001F38B                                         ; CallbackFunction+28C↑j
PAGE:000000000001F38B                 mov     rcx, rbp
PAGE:000000000001F38E
PAGE:000000000001F38E loc_1F38E:                              ; CODE XREF: CallbackFunction+213↑j
PAGE:000000000001F38E                 mov     edx, esi
PAGE:000000000001F390                 call    cs:ExFreePoolWithTag
PAGE:000000000001F396                 cmp     ebx, edi
PAGE:000000000001F398                 jnz     loc_1F189
PAGE:000000000001F39E                 mov     cs:byte_1C3A4, 1
PAGE:000000000001F3A5                 jmp     loc_1F90E
PAGE:000000000001F3AA ; ---------------------------------------------------------------------------
PAGE:000000000001F3AA
PAGE:000000000001F3AA loc_1F3AA:                              ; CODE XREF: CallbackFunction+104↑j
PAGE:000000000001F3AA                 cmp     cs:byte_1C3A3, r15b
PAGE:000000000001F3B1                 jz      short loc_1F3C4
PAGE:000000000001F3B3                 mov     ebx, 0C0000022h
PAGE:000000000001F3B8
PAGE:000000000001F3B8 loc_1F3B8:                              ; CODE XREF: CallbackFunction+363↓j
PAGE:000000000001F3B8                                         ; CallbackFunction+36A↓j ...
PAGE:000000000001F3B8                 mov     cs:byte_1C3A3, r15b
PAGE:000000000001F3BF                 jmp     loc_1F90E
PAGE:000000000001F3C4 ; ---------------------------------------------------------------------------
PAGE:000000000001F3C4
PAGE:000000000001F3C4 loc_1F3C4:                              ; CODE XREF: CallbackFunction+349↑j
PAGE:000000000001F3C4                 mov     rbp, [rbp+0]
PAGE:000000000001F3C8                 cmp     rbp, r15
PAGE:000000000001F3CB                 jz      short loc_1F3B8
PAGE:000000000001F3CD                 cmp     [rbp+0], r15w
PAGE:000000000001F3D2                 jbe     short loc_1F3B8
PAGE:000000000001F3D4                 mov     rdx, rbp
PAGE:000000000001F3D7                 xor     ecx, ecx
PAGE:000000000001F3D9                 call    sub_121A0
PAGE:000000000001F3DE                 cmp     al, r15b
PAGE:000000000001F3E1                 jz      short loc_1F3B8
PAGE:000000000001F3E3                 mov     edx, 200h
PAGE:000000000001F3E8                 mov     esi, 4D4158h
PAGE:000000000001F3ED                 xor     ecx, ecx
PAGE:000000000001F3EF                 mov     r8d, esi
PAGE:000000000001F3F2                 mov     [rsp+0C8h+var_90], r15w
PAGE:000000000001F3F8                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F3FD                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F403                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F408                 cmp     rax, r15
PAGE:000000000001F40B                 jz      short loc_1F3B8
PAGE:000000000001F40D                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F413                 xor     edx, edx
PAGE:000000000001F415                 mov     rcx, rax
PAGE:000000000001F418                 mov     r12b, r15b
PAGE:000000000001F41B                 call    memset
PAGE:000000000001F420                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F425                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F42A                 call    sub_11C9C
PAGE:000000000001F42F                 cmp     al, r15b
PAGE:000000000001F432                 jnz     short loc_1F443
PAGE:000000000001F434                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F439                 call    sub_1210C
PAGE:000000000001F43E                 cmp     al, r15b
PAGE:000000000001F441                 jz      short loc_1F446
PAGE:000000000001F443
PAGE:000000000001F443 loc_1F443:                              ; CODE XREF: CallbackFunction+3CA↑j
PAGE:000000000001F443                 mov     r12b, 1
PAGE:000000000001F446
PAGE:000000000001F446 loc_1F446:                              ; CODE XREF: CallbackFunction+3D9↑j
PAGE:000000000001F446                 mov     edi, 0C0000022h
PAGE:000000000001F44B                 cmp     [rsp+0C8h+var_90], r15w
PAGE:000000000001F451                 jbe     short loc_1F459
PAGE:000000000001F453                 cmp     r12b, r15b
PAGE:000000000001F456                 cmovz   ebx, edi
PAGE:000000000001F459
PAGE:000000000001F459 loc_1F459:                              ; CODE XREF: CallbackFunction+3E9↑j
PAGE:000000000001F459                 lea     r8, [rsp+0C8h+var_80]
PAGE:000000000001F45E                 mov     edx, 0F003Fh
PAGE:000000000001F463                 xor     ecx, ecx
PAGE:000000000001F465                 mov     [rsp+0C8h+var_80], 30h ; '0'
PAGE:000000000001F46D                 mov     [rsp+0C8h+var_78], r15
PAGE:000000000001F472                 mov     [rsp+0C8h+var_68], 40h ; '@'
PAGE:000000000001F47A                 mov     [rsp+0C8h+var_70], rbp
PAGE:000000000001F47F                 mov     [rsp+0C8h+var_60], r15
PAGE:000000000001F484                 mov     [rsp+0C8h+var_58], r15
PAGE:000000000001F489                 call    cs:ZwOpenKey
PAGE:000000000001F48F                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F494                 mov     edx, esi
PAGE:000000000001F496                 cmp     eax, r15d
PAGE:000000000001F499                 cmovl   ebx, r15d
PAGE:000000000001F49D                 call    cs:ExFreePoolWithTag
PAGE:000000000001F4A3                 cmp     ebx, edi
PAGE:000000000001F4A5                 jnz     loc_1F3B8
PAGE:000000000001F4AB                 mov     cs:byte_1C3A3, 1
PAGE:000000000001F4B2                 jmp     loc_1F90E
PAGE:000000000001F4B7 ; ---------------------------------------------------------------------------
PAGE:000000000001F4B7
PAGE:000000000001F4B7 loc_1F4B7:                              ; CODE XREF: CallbackFunction+FB↑j
PAGE:000000000001F4B7                 mov     rdi, [rbp+0]
PAGE:000000000001F4BB                 mov     rcx, rdi
PAGE:000000000001F4BE                 call    cs:MmIsAddressValid
PAGE:000000000001F4C4                 cmp     al, r15b
PAGE:000000000001F4C7                 jz      loc_1F90E
PAGE:000000000001F4CD                 cmp     rdi, r15
PAGE:000000000001F4D0                 jz      loc_1F90E
PAGE:000000000001F4D6                 mov     rcx, rdi
PAGE:000000000001F4D9                 call    sub_11D0C
PAGE:000000000001F4DE                 mov     r12, rax
PAGE:000000000001F4E1                 cmp     rax, r15
PAGE:000000000001F4E4                 jz      loc_1F90E
PAGE:000000000001F4EA                 mov     rdx, rax
PAGE:000000000001F4ED                 xor     ecx, ecx
PAGE:000000000001F4EF                 call    sub_121A0
PAGE:000000000001F4F4                 mov     esi, 4D4158h
PAGE:000000000001F4F9                 cmp     al, r15b
PAGE:000000000001F4FC                 jnz     short loc_1F50E
PAGE:000000000001F4FE                 mov     rdx, [rbp+8]
PAGE:000000000001F502                 xor     ecx, ecx
PAGE:000000000001F504                 call    sub_121A0
PAGE:000000000001F509
PAGE:000000000001F509 loc_1F509:                              ; CODE XREF: CallbackFunction+570↓j
PAGE:000000000001F509                 cmp     al, r15b
PAGE:000000000001F50C                 jz      short loc_1F58C
PAGE:000000000001F50E
PAGE:000000000001F50E loc_1F50E:                              ; CODE XREF: CallbackFunction+494↑j
PAGE:000000000001F50E                 mov     edx, 200h
PAGE:000000000001F513                 mov     r8d, esi
PAGE:000000000001F516                 xor     ecx, ecx
PAGE:000000000001F518                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F51D                 mov     [rsp+0C8h+var_90], r15w
PAGE:000000000001F523                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F529                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F52E                 cmp     rax, r15
PAGE:000000000001F531                 jz      short loc_1F58C
PAGE:000000000001F533                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F539                 xor     edx, edx
PAGE:000000000001F53B                 mov     rcx, rax
PAGE:000000000001F53E                 mov     bpl, r15b
PAGE:000000000001F541                 call    memset
PAGE:000000000001F546                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F54B                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F550                 call    sub_11C9C
PAGE:000000000001F555                 cmp     al, r15b
PAGE:000000000001F558                 jnz     short loc_1F569
PAGE:000000000001F55A                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F55F                 call    sub_1210C
PAGE:000000000001F564                 cmp     al, r15b
PAGE:000000000001F567                 jz      short loc_1F56C
PAGE:000000000001F569
PAGE:000000000001F569 loc_1F569:                              ; CODE XREF: CallbackFunction+4F0↑j
PAGE:000000000001F569                 mov     bpl, 1
PAGE:000000000001F56C
PAGE:000000000001F56C loc_1F56C:                              ; CODE XREF: CallbackFunction+4FF↑j
PAGE:000000000001F56C                 cmp     [rsp+0C8h+var_90], r15w
PAGE:000000000001F572                 jbe     short loc_1F57F
PAGE:000000000001F574                 mov     edi, 0C0000022h
PAGE:000000000001F579                 cmp     bpl, r15b
PAGE:000000000001F57C                 cmovz   ebx, edi
PAGE:000000000001F57F
PAGE:000000000001F57F loc_1F57F:                              ; CODE XREF: CallbackFunction+50A↑j
PAGE:000000000001F57F                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F584                 mov     edx, esi
PAGE:000000000001F586                 call    cs:ExFreePoolWithTag
PAGE:000000000001F58C
PAGE:000000000001F58C loc_1F58C:                              ; CODE XREF: CallbackFunction+4A4↑j
PAGE:000000000001F58C                                         ; CallbackFunction+4C9↑j
PAGE:000000000001F58C                 mov     rcx, r12
PAGE:000000000001F58F                 jmp     loc_1F906
PAGE:000000000001F594 ; ---------------------------------------------------------------------------
PAGE:000000000001F594
PAGE:000000000001F594 loc_1F594:                              ; CODE XREF: CallbackFunction+F2↑j
PAGE:000000000001F594                 mov     rdi, [rbp+0]
PAGE:000000000001F598                 mov     rcx, rdi
PAGE:000000000001F59B                 call    cs:MmIsAddressValid
PAGE:000000000001F5A1                 cmp     al, r15b
PAGE:000000000001F5A4                 jz      loc_1F90E
PAGE:000000000001F5AA                 cmp     rdi, r15
PAGE:000000000001F5AD                 jz      loc_1F90E
PAGE:000000000001F5B3                 mov     rcx, rdi
PAGE:000000000001F5B6                 call    sub_11D0C
PAGE:000000000001F5BB                 mov     r12, rax
PAGE:000000000001F5BE                 cmp     rax, r15
PAGE:000000000001F5C1                 jz      loc_1F90E
PAGE:000000000001F5C7                 mov     rdx, [rbp+8]
PAGE:000000000001F5CB                 mov     rcx, rax
PAGE:000000000001F5CE                 call    sub_121A0
PAGE:000000000001F5D3                 mov     esi, 4D4158h
PAGE:000000000001F5D8                 jmp     loc_1F509
PAGE:000000000001F5DD ; ---------------------------------------------------------------------------
PAGE:000000000001F5DD
PAGE:000000000001F5DD loc_1F5DD:                              ; CODE XREF: CallbackFunction+E9↑j
PAGE:000000000001F5DD                 mov     r12d, [rbp+14h]
PAGE:000000000001F5E1                 cmp     r12d, 1
PAGE:000000000001F5E5                 jz      short loc_1F609
PAGE:000000000001F5E7                 cmp     r12d, 2
PAGE:000000000001F5EB                 jz      short loc_1F609
PAGE:000000000001F5ED                 cmp     r12d, 7
PAGE:000000000001F5F1                 jz      short loc_1F609
PAGE:000000000001F5F3                 cmp     r12d, 4
PAGE:000000000001F5F7                 jz      short loc_1F609
PAGE:000000000001F5F9                 cmp     r12d, 0Bh
PAGE:000000000001F5FD                 jz      short loc_1F609
PAGE:000000000001F5FF                 cmp     r12d, 3
PAGE:000000000001F603                 jnz     loc_1F90E
PAGE:000000000001F609
PAGE:000000000001F609 loc_1F609:                              ; CODE XREF: CallbackFunction+57D↑j
PAGE:000000000001F609                                         ; CallbackFunction+583↑j ...
PAGE:000000000001F609                 mov     rdi, [rbp+0]
PAGE:000000000001F60D                 mov     rcx, rdi
PAGE:000000000001F610                 call    cs:MmIsAddressValid
PAGE:000000000001F616                 cmp     al, r15b
PAGE:000000000001F619                 jz      loc_1F90E
PAGE:000000000001F61F                 cmp     rdi, r15
PAGE:000000000001F622                 jz      loc_1F90E
PAGE:000000000001F628                 mov     rcx, rdi
PAGE:000000000001F62B                 call    sub_11D0C
PAGE:000000000001F630                 mov     r14, rax
PAGE:000000000001F633                 cmp     rax, r15
PAGE:000000000001F636                 jz      loc_1F90E
PAGE:000000000001F63C                 mov     r15, [rbp+8]
PAGE:000000000001F640                 mov     rcx, rax
PAGE:000000000001F643                 mov     rdx, r15
PAGE:000000000001F646                 call    sub_121A0
PAGE:000000000001F64B                 xor     edi, edi
PAGE:000000000001F64D                 mov     esi, 4D4158h
PAGE:000000000001F652                 cmp     al, dil
PAGE:000000000001F655                 jz      loc_1F836
PAGE:000000000001F65B                 mov     al, [rsp+0C8h+var_98]
PAGE:000000000001F65F                 mov     r13b, dil
PAGE:000000000001F662                 cmp     al, dil
PAGE:000000000001F665                 jnz     loc_1F779
PAGE:000000000001F66B                 mov     edx, 200h
PAGE:000000000001F670                 mov     r8d, esi
PAGE:000000000001F673                 xor     ecx, ecx
PAGE:000000000001F675                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F67A                 mov     [rsp+0C8h+var_90], di
PAGE:000000000001F67F                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F685                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F68A                 cmp     rax, rdi
PAGE:000000000001F68D                 jz      loc_1F775
PAGE:000000000001F693                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F699                 xor     edx, edx
PAGE:000000000001F69B                 mov     rcx, rax
PAGE:000000000001F69E                 call    memset
PAGE:000000000001F6A3                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F6A8                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F6AD                 call    sub_11C9C
PAGE:000000000001F6B2                 cmp     al, dil
PAGE:000000000001F6B5                 jnz     short loc_1F6C6
PAGE:000000000001F6B7                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F6BC                 call    sub_1210C
PAGE:000000000001F6C1                 cmp     al, dil
PAGE:000000000001F6C4                 jz      short loc_1F6C9
PAGE:000000000001F6C6
PAGE:000000000001F6C6 loc_1F6C6:                              ; CODE XREF: CallbackFunction+64D↑j
PAGE:000000000001F6C6                 mov     r13b, 1
PAGE:000000000001F6C9
PAGE:000000000001F6C9 loc_1F6C9:                              ; CODE XREF: CallbackFunction+65C↑j
PAGE:000000000001F6C9                 cmp     [rsp+0C8h+var_90], di
PAGE:000000000001F6CE                 jbe     short loc_1F6DD
PAGE:000000000001F6D0                 mov     edi, 0C0000022h
PAGE:000000000001F6D5                 test    r13b, r13b
PAGE:000000000001F6D8                 cmovz   ebx, edi
PAGE:000000000001F6DB                 xor     edi, edi
PAGE:000000000001F6DD
PAGE:000000000001F6DD loc_1F6DD:                              ; CODE XREF: CallbackFunction+666↑j
PAGE:000000000001F6DD                 lea     r8, [rsp+0C8h+var_80]
PAGE:000000000001F6E2                 mov     edx, 0F003Fh
PAGE:000000000001F6E7                 xor     ecx, ecx
PAGE:000000000001F6E9                 mov     [rsp+0C8h+var_80], 30h ; '0'
PAGE:000000000001F6F1                 mov     [rsp+0C8h+var_78], rdi
PAGE:000000000001F6F6                 mov     [rsp+0C8h+var_68], 40h ; '@'
PAGE:000000000001F6FE                 mov     [rsp+0C8h+var_70], r14
PAGE:000000000001F703                 mov     [rsp+0C8h+var_60], rdi
PAGE:000000000001F708                 mov     [rsp+0C8h+var_58], rdi
PAGE:000000000001F70D                 call    cs:ZwOpenKey
PAGE:000000000001F713                 cmp     eax, edi
PAGE:000000000001F715                 jl      short loc_1F758
PAGE:000000000001F717                 lea     rax, [rsp+0C8h+var_50]
PAGE:000000000001F71C                 lea     r9, [rsp+0C8h+var_48]
PAGE:000000000001F724                 mov     r8d, 2
PAGE:000000000001F72A                 mov     [rsp+0C8h+var_A0], rax
PAGE:000000000001F72F                 mov     rdx, r15
PAGE:000000000001F732                 xor     ecx, ecx
PAGE:000000000001F734                 mov     [rsp+0C8h+var_A8], 10h
PAGE:000000000001F73C                 call    cs:ZwQueryValueKey
PAGE:000000000001F742                 cmp     eax, edi
PAGE:000000000001F744                 jge     short loc_1F768
PAGE:000000000001F746                 cmp     eax, 80000005h
PAGE:000000000001F74B                 jz      short loc_1F768
PAGE:000000000001F74D                 cmp     eax, 0C0000023h
PAGE:000000000001F752                 jz      short loc_1F768
PAGE:000000000001F754                 mov     ebx, edi
PAGE:000000000001F756                 jmp     short loc_1F768
PAGE:000000000001F758 ; ---------------------------------------------------------------------------
PAGE:000000000001F758
PAGE:000000000001F758 loc_1F758:                              ; CODE XREF: CallbackFunction+6AD↑j
PAGE:000000000001F758                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F75D                 call    sub_12174
PAGE:000000000001F762                 cmp     al, dil
PAGE:000000000001F765                 cmovnz  ebx, edi
PAGE:000000000001F768
PAGE:000000000001F768 loc_1F768:                              ; CODE XREF: CallbackFunction+6DC↑j
PAGE:000000000001F768                                         ; CallbackFunction+6E3↑j ...
PAGE:000000000001F768                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F76D                 mov     edx, esi
PAGE:000000000001F76F                 call    cs:ExFreePoolWithTag
PAGE:000000000001F775
PAGE:000000000001F775 loc_1F775:                              ; CODE XREF: CallbackFunction+625↑j
PAGE:000000000001F775                 mov     al, [rsp+0C8h+var_98]
PAGE:000000000001F779
PAGE:000000000001F779 loc_1F779:                              ; CODE XREF: CallbackFunction+5FD↑j
PAGE:000000000001F779                 cmp     r12d, 4
PAGE:000000000001F77D                 jnz     loc_1F836
PAGE:000000000001F783                 cmp     r13b, dil
PAGE:000000000001F786                 jnz     short loc_1F791
PAGE:000000000001F788                 cmp     al, dil
PAGE:000000000001F78B                 jz      loc_1F836
PAGE:000000000001F791
PAGE:000000000001F791 loc_1F791:                              ; CODE XREF: CallbackFunction+71E↑j
PAGE:000000000001F791                 mov     rdi, [rbp+8]
PAGE:000000000001F795                 lea     rdx, asc_1C358  ; "*,"
PAGE:000000000001F79C                 mov     r8b, 1
PAGE:000000000001F79F                 mov     rcx, rdi
PAGE:000000000001F7A2                 call    cs:RtlCompareUnicodeString
PAGE:000000000001F7A8                 xor     r12d, r12d
PAGE:000000000001F7AB                 cmp     eax, r12d
PAGE:000000000001F7AE                 jnz     short loc_1F7C0
PAGE:000000000001F7B0                 mov     rax, [rbp+18h]
PAGE:000000000001F7B4                 cmp     dword ptr [rax], 1
PAGE:000000000001F7B7                 setz    cs:byte_1D1DC   ; #0
PAGE:000000000001F7BE                 jmp     short loc_1F836
PAGE:000000000001F7C0 ; ---------------------------------------------------------------------------
PAGE:000000000001F7C0
PAGE:000000000001F7C0 loc_1F7C0:                              ; CODE XREF: CallbackFunction+746↑j
PAGE:000000000001F7C0                 lea     rdx, unk_1C348
PAGE:000000000001F7C7                 mov     r8b, 1
PAGE:000000000001F7CA                 mov     rcx, rdi
PAGE:000000000001F7CD                 call    cs:RtlCompareUnicodeString
PAGE:000000000001F7D3                 cmp     eax, r12d
PAGE:000000000001F7D6                 jnz     short loc_1F7E8
PAGE:000000000001F7D8                 mov     rax, [rbp+18h]
PAGE:000000000001F7DC                 cmp     dword ptr [rax], 1
PAGE:000000000001F7DF                 setz    cs:byte_1D1DA   ; #0
PAGE:000000000001F7E6                 jmp     short loc_1F836
PAGE:000000000001F7E8 ; ---------------------------------------------------------------------------
PAGE:000000000001F7E8
PAGE:000000000001F7E8 loc_1F7E8:                              ; CODE XREF: CallbackFunction+76E↑j
PAGE:000000000001F7E8                 lea     rdx, unk_1C328
PAGE:000000000001F7EF                 mov     r8b, 1
PAGE:000000000001F7F2                 mov     rcx, rdi
PAGE:000000000001F7F5                 call    cs:RtlCompareUnicodeString
PAGE:000000000001F7FB                 cmp     eax, r12d
PAGE:000000000001F7FE                 jnz     short loc_1F810
PAGE:000000000001F800                 mov     rax, [rbp+18h]
PAGE:000000000001F804                 cmp     dword ptr [rax], 1
PAGE:000000000001F807                 setz    cs:byte_1D170   ; #0
PAGE:000000000001F80E                 jmp     short loc_1F836
PAGE:000000000001F810 ; ---------------------------------------------------------------------------
PAGE:000000000001F810
PAGE:000000000001F810 loc_1F810:                              ; CODE XREF: CallbackFunction+796↑j
PAGE:000000000001F810                 lea     rdx, unk_1C338
PAGE:000000000001F817                 mov     r8b, 1
PAGE:000000000001F81A                 mov     rcx, rdi
PAGE:000000000001F81D                 call    cs:RtlCompareUnicodeString
PAGE:000000000001F823                 cmp     eax, r12d
PAGE:000000000001F826                 jnz     short loc_1F836
PAGE:000000000001F828                 mov     rax, [rbp+18h]
PAGE:000000000001F82C                 cmp     dword ptr [rax], 1
PAGE:000000000001F82F                 setz    cs:byte_1D1DB   ; #0
PAGE:000000000001F836
PAGE:000000000001F836 loc_1F836:                              ; CODE XREF: CallbackFunction+5ED↑j
PAGE:000000000001F836                                         ; CallbackFunction+715↑j ...
PAGE:000000000001F836                 mov     rcx, r14
PAGE:000000000001F839                 jmp     loc_1F906
PAGE:000000000001F83E ; ---------------------------------------------------------------------------
PAGE:000000000001F83E
PAGE:000000000001F83E loc_1F83E:                              ; CODE XREF: CallbackFunction+E0↑j
PAGE:000000000001F83E                 mov     rdi, [rbp+0]
PAGE:000000000001F842                 mov     rcx, rdi
PAGE:000000000001F845                 call    cs:MmIsAddressValid
PAGE:000000000001F84B                 cmp     al, r15b
PAGE:000000000001F84E                 jz      loc_1F90E
PAGE:000000000001F854                 cmp     rdi, r15
PAGE:000000000001F857                 jz      loc_1F90E
PAGE:000000000001F85D                 mov     rcx, rdi
PAGE:000000000001F860                 call    sub_11D0C
PAGE:000000000001F865                 mov     rbp, rax
PAGE:000000000001F868                 cmp     rax, r15
PAGE:000000000001F86B                 jz      loc_1F90E
PAGE:000000000001F871                 mov     rdx, rax
PAGE:000000000001F874                 xor     ecx, ecx
PAGE:000000000001F876                 call    sub_121A0
PAGE:000000000001F87B                 mov     esi, 'MAX'
PAGE:000000000001F880                 cmp     al, r15b
PAGE:000000000001F883                 jz      short loc_1F903
PAGE:000000000001F885                 mov     edx, 200h
PAGE:000000000001F88A                 mov     r8d, esi
PAGE:000000000001F88D                 xor     ecx, ecx
PAGE:000000000001F88F                 mov     word ptr [rsp+0C8h+var_8E], dx
PAGE:000000000001F894                 mov     [rsp+0C8h+var_90], r15w
PAGE:000000000001F89A                 call    cs:ExAllocatePoolWithTag
PAGE:000000000001F8A0                 mov     [rsp+0C8h+var_8E+6], rax
PAGE:000000000001F8A5                 cmp     rax, r15
PAGE:000000000001F8A8                 jz      short loc_1F903
PAGE:000000000001F8AA                 movzx   r8d, word ptr [rsp+0C8h+var_8E]
PAGE:000000000001F8B0                 xor     edx, edx
PAGE:000000000001F8B2                 mov     rcx, rax
PAGE:000000000001F8B5                 mov     r12b, r15b
PAGE:000000000001F8B8                 call    memset
PAGE:000000000001F8BD                 lea     rdx, [rsp+0C8h+var_90]
PAGE:000000000001F8C2                 mov     ecx, 0FFFFFFFFh
PAGE:000000000001F8C7                 call    sub_11C9C
PAGE:000000000001F8CC                 cmp     al, r15b
PAGE:000000000001F8CF                 jnz     short loc_1F8E0
PAGE:000000000001F8D1                 lea     rcx, [rsp+0C8h+var_90]
PAGE:000000000001F8D6                 call    sub_1210C
PAGE:000000000001F8DB                 cmp     al, r15b
PAGE:000000000001F8DE                 jz      short loc_1F8E3
PAGE:000000000001F8E0
PAGE:000000000001F8E0 loc_1F8E0:                              ; CODE XREF: CallbackFunction+867↑j
PAGE:000000000001F8E0                 mov     r12b, 1
PAGE:000000000001F8E3
PAGE:000000000001F8E3 loc_1F8E3:                              ; CODE XREF: CallbackFunction+876↑j
PAGE:000000000001F8E3                 cmp     [rsp+0C8h+var_90], r15w
PAGE:000000000001F8E9                 jbe     short loc_1F8F6
PAGE:000000000001F8EB                 mov     edi, 0C0000022h
PAGE:000000000001F8F0                 cmp     r12b, r15b
PAGE:000000000001F8F3                 cmovz   ebx, edi
PAGE:000000000001F8F6
PAGE:000000000001F8F6 loc_1F8F6:                              ; CODE XREF: CallbackFunction+881↑j
PAGE:000000000001F8F6                 mov     rcx, [rsp+0C8h+var_8E+6]
PAGE:000000000001F8FB                 mov     edx, esi
PAGE:000000000001F8FD                 call    cs:ExFreePoolWithTag
PAGE:000000000001F903
PAGE:000000000001F903 loc_1F903:                              ; CODE XREF: CallbackFunction+81B↑j
PAGE:000000000001F903                                         ; CallbackFunction+840↑j
PAGE:000000000001F903                 mov     rcx, rbp
PAGE:000000000001F906
PAGE:000000000001F906 loc_1F906:                              ; CODE XREF: CallbackFunction+527↑j
PAGE:000000000001F906                                         ; CallbackFunction+7D1↑j
PAGE:000000000001F906                 mov     edx, esi
PAGE:000000000001F908                 call    cs:ExFreePoolWithTag
PAGE:000000000001F90E
PAGE:000000000001F90E loc_1F90E:                              ; CODE XREF: CallbackFunction+10D↑j
PAGE:000000000001F90E                                         ; CallbackFunction+128↑j ...
PAGE:000000000001F90E                 mov     eax, ebx
PAGE:000000000001F910                 jmp     short loc_1F914
PAGE:000000000001F912 ; ---------------------------------------------------------------------------
PAGE:000000000001F912
PAGE:000000000001F912 loc_1F912:                              ; CODE XREF: CallbackFunction+71↑j
PAGE:000000000001F912                                         ; CallbackFunction+7A↑j ...
PAGE:000000000001F912                 xor     eax, eax
PAGE:000000000001F914
PAGE:000000000001F914 loc_1F914:                              ; CODE XREF: CallbackFunction+5F↑j
PAGE:000000000001F914                                         ; CallbackFunction+8A8↑j
PAGE:000000000001F914                 mov     rcx, [rsp+0C8h+var_38]
PAGE:000000000001F91C                 xor     rcx, rsp
PAGE:000000000001F91F                 call    __security_check_cookie
PAGE:000000000001F924                 lea     r11, [rsp+0C8h+var_28]
PAGE:000000000001F92C                 mov     rbx, [r11+30h]
PAGE:000000000001F930                 mov     rbp, [r11+38h]
PAGE:000000000001F934                 mov     rsi, [r11+48h]
PAGE:000000000001F938                 mov     rsp, r11
PAGE:000000000001F93B                 pop     r15
PAGE:000000000001F93D                 pop     r14
PAGE:000000000001F93F                 pop     r13
PAGE:000000000001F941                 pop     r12
PAGE:000000000001F943                 pop     rdi
PAGE:000000000001F944                 retn
PAGE:000000000001F944 CallbackFunction endp
PAGE:000000000001F944