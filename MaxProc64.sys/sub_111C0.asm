00000000111C0 ; =============== S U B R O U T I N E =======================================
.text:00000000000111C0
.text:00000000000111C0
.text:00000000000111C0 sub_111C0       proc near               ; DATA XREF: sub_110B4+84↑o
.text:00000000000111C0
.text:00000000000111C0 var_48          = word ptr -48h
.text:00000000000111C0 var_46          = qword ptr -46h
.text:00000000000111C0 var_3E          = dword ptr -3Eh
.text:00000000000111C0 var_3A          = word ptr -3Ah
.text:00000000000111C0 var_38          = word ptr -38h
.text:00000000000111C0 var_36          = qword ptr -36h
.text:00000000000111C0 var_2E          = dword ptr -2Eh
.text:00000000000111C0 var_2A          = word ptr -2Ah
.text:00000000000111C0 var_28          = byte ptr -28h
.text:00000000000111C0 arg_0           = qword ptr  8
.text:00000000000111C0 arg_8           = qword ptr  10h
.text:00000000000111C0 arg_10          = qword ptr  18h
.text:00000000000111C0
.text:00000000000111C0                 mov     [rsp+arg_0], rbx
.text:00000000000111C5                 mov     [rsp+arg_8], rbp
.text:00000000000111CA                 mov     [rsp+arg_10], rsi
.text:00000000000111CF                 push    rdi
.text:00000000000111D0                 push    r12
.text:00000000000111D2                 push    r13
.text:00000000000111D4                 push    r14
.text:00000000000111D6                 push    r15
.text:00000000000111D8                 sub     rsp, 40h
.text:00000000000111DC                 xor     r13d, r13d
.text:00000000000111DF                 mov     rbx, rdx
.text:00000000000111E2                 cmp     cs:byte_1B388, r13b
.text:00000000000111E9                 jz      loc_1144D
.text:00000000000111EF                 mov     rax, [rdx+20h]
.text:00000000000111F3                 mov     ecx, [rax+4]
.text:00000000000111F6                 test    cl, 1
.text:00000000000111F9                 jnz     short loc_1120F
.text:00000000000111FB                 test    cl, 8
.text:00000000000111FE                 jnz     short loc_1120F
.text:0000000000011200                 bt      ecx, 0Bh
.text:0000000000011204                 jb      short loc_1120F
.text:0000000000011206                 test    cl, 20h
.text:0000000000011209                 jz      loc_1144D
.text:000000000001120F
.text:000000000001120F loc_1120F:                              ; CODE XREF: sub_111C0+39↑j
.text:000000000001120F                                         ; sub_111C0+3E↑j ...
.text:000000000001120F                 mov     rcx, [rdx+8]
.text:0000000000011213                 call    cs:PsGetProcessId
.text:0000000000011219                 mov     rdi, rax
.text:000000000001121C                 call    cs:PsGetCurrentProcessId
.text:0000000000011222                 cmp     rax, rdi
.text:0000000000011225                 jnz     short loc_11232
.text:0000000000011227                 call    cs:PsGetCurrentProcessId
.text:000000000001122D                 jmp     loc_1144D
.text:0000000000011232 ; ---------------------------------------------------------------------------
.text:0000000000011232
.text:0000000000011232 loc_11232:                              ; CODE XREF: sub_111C0+65↑j
.text:0000000000011232                 mov     bpl, r13b
.text:0000000000011235                 mov     rax, rdi
.text:0000000000011238                 mov     esi, r13d
.text:000000000001123B                 cmp     rdi, r13
.text:000000000001123E                 jnz     short loc_11246
.text:0000000000011240                 call    cs:PsGetCurrentProcessId
.text:0000000000011246
.text:0000000000011246 loc_11246:                              ; CODE XREF: sub_111C0+7E↑j
.text:0000000000011246                 lea     r14, unk_1B390
.text:000000000001124D                 lea     r15, unk_1B498
.text:0000000000011254                 mov     rcx, r14
.text:0000000000011257
.text:0000000000011257 loc_11257:                              ; CODE XREF: sub_111C0+AE↓j
.text:0000000000011257                 cmp     [rcx], r13d
.text:000000000001125A                 jz      short loc_11265
.text:000000000001125C                 cmp     rax, r13
.text:000000000001125F                 jz      short loc_11265
.text:0000000000011261                 cmp     [rcx], eax
.text:0000000000011263                 jz      short loc_11273
.text:0000000000011265
.text:0000000000011265 loc_11265:                              ; CODE XREF: sub_111C0+9A↑j
.text:0000000000011265                                         ; sub_111C0+9F↑j
.text:0000000000011265                 add     rcx, 4
.text:0000000000011269                 inc     esi
.text:000000000001126B                 cmp     rcx, r15
.text:000000000001126E                 jl      short loc_11257
.text:0000000000011270                 mov     esi, r13d
.text:0000000000011273
.text:0000000000011273 loc_11273:                              ; CODE XREF: sub_111C0+A3↑j
.text:0000000000011273                 cmp     esi, r13d
.text:0000000000011276                 jz      loc_1144D
.text:000000000001127C                 call    cs:PsGetCurrentProcessId
.text:0000000000011282                 mov     rcx, r14
.text:0000000000011285
.text:0000000000011285 loc_11285:                              ; CODE XREF: sub_111C0+DE↓j
.text:0000000000011285                 cmp     [rcx], r13d
.text:0000000000011288                 jz      short loc_11297
.text:000000000001128A                 cmp     rax, r13
.text:000000000001128D                 jz      short loc_11297
.text:000000000001128F                 cmp     [rcx], eax
.text:0000000000011291                 jz      loc_1144D
.text:0000000000011297
.text:0000000000011297 loc_11297:                              ; CODE XREF: sub_111C0+C8↑j
.text:0000000000011297                                         ; sub_111C0+CD↑j
.text:0000000000011297                 add     rcx, 4
.text:000000000001129B                 cmp     rcx, r15
.text:000000000001129E                 jl      short loc_11285
.text:00000000000112A0                 xor     eax, eax
.text:00000000000112A2                 mov     r12d, 200h
.text:00000000000112A8                 mov     r8d, 4D4158h
.text:00000000000112AE                 mov     [rsp+68h+var_46], rax
.text:00000000000112B3                 xor     ecx, ecx
.text:00000000000112B5                 mov     rdx, r12
.text:00000000000112B8                 mov     [rsp+68h+var_38], r13w
.text:00000000000112BE                 mov     [rsp+68h+var_36], rax
.text:00000000000112C3                 mov     [rsp+68h+var_2E], eax
.text:00000000000112C7                 mov     [rsp+68h+var_2A], ax
.text:00000000000112CC                 mov     [rsp+68h+var_3E], eax
.text:00000000000112D0                 mov     [rsp+68h+var_3A], ax
.text:00000000000112D5                 mov     sil, r13b
.text:00000000000112D8                 mov     [rsp+68h+var_48], r13w
.text:00000000000112DE                 mov     word ptr [rsp+68h+var_46], r12w
.text:00000000000112E4                 call    cs:ExAllocatePoolWithTag
.text:00000000000112EA                 mov     r8d, 4D4158h
.text:00000000000112F0                 mov     rdx, r12
.text:00000000000112F3                 xor     ecx, ecx
.text:00000000000112F5                 mov     [rsp+68h+var_38], r13w
.text:00000000000112FB                 mov     word ptr [rsp+68h+var_36], r12w
.text:0000000000011301                 mov     [rsp+68h+var_46+6], rax
.text:0000000000011306                 call    cs:ExAllocatePoolWithTag
.text:000000000001130C                 mov     [rsp+68h+var_36+6], rax
.text:0000000000011311                 cmp     [rsp+68h+var_46+6], r13
.text:0000000000011316                 jz      loc_113DC
.text:000000000001131C                 lea     rdx, [rsp+68h+var_48]
.text:0000000000011321                 mov     rcx, rdi
.text:0000000000011324                 call    sub_119A4
.text:0000000000011329                 cmp     [rsp+68h+var_48], r13w
.text:000000000001132F                 jnz     short loc_1133E
.text:0000000000011331                 lea     rdx, [rsp+68h+var_48]
.text:0000000000011336                 mov     rcx, rdi
.text:0000000000011339                 call    sub_11A0C
.text:000000000001133E
.text:000000000001133E loc_1133E:                              ; CODE XREF: sub_111C0+16F↑j
.text:000000000001133E                 call    cs:PsGetCurrentProcessId
.text:0000000000011344                 lea     rcx, [rsp+68h+var_48]
.text:0000000000011349                 call    sub_11A74
.text:000000000001134E                 cmp     al, r13b
.text:0000000000011351                 jz      short loc_113AB
.text:0000000000011353                 call    cs:PsGetCurrentProcessId
.text:0000000000011359                 mov     sil, 1
.text:000000000001135C                 cmp     [rsp+68h+var_36+6], r13
.text:0000000000011361                 jz      short loc_113E2
.text:0000000000011363                 call    cs:PsGetCurrentProcessId
.text:0000000000011369                 lea     rdx, [rsp+68h+var_38]
.text:000000000001136E                 mov     rcx, rax
.text:0000000000011371                 call    sub_119A4
.text:0000000000011376                 cmp     [rsp+68h+var_48], r13w
.text:000000000001137C                 jnz     short loc_11391
.text:000000000001137E                 call    cs:PsGetCurrentProcessId
.text:0000000000011384                 lea     rdx, [rsp+68h+var_38]
.text:0000000000011389                 mov     rcx, rax
.text:000000000001138C                 call    sub_11A0C
.text:0000000000011391
.text:0000000000011391 loc_11391:                              ; CODE XREF: sub_111C0+1BC↑j
.text:0000000000011391                 call    cs:PsGetCurrentProcessId
.text:0000000000011397                 lea     rcx, [rsp+68h+var_38]
.text:000000000001139C                 call    sub_118B8
.text:00000000000113A1                 cmp     eax, r13d
.text:00000000000113A4                 jl      short loc_113E2
.text:00000000000113A6                 mov     bpl, 1
.text:00000000000113A9                 jmp     short loc_113E2
.text:00000000000113AB ; ---------------------------------------------------------------------------
.text:00000000000113AB
.text:00000000000113AB loc_113AB:                              ; CODE XREF: sub_111C0+191↑j
.text:00000000000113AB                 call    cs:PsGetCurrentProcessId
.text:00000000000113B1                 mov     r11d, r13d
.text:00000000000113B4                 cmp     rdi, r13
.text:00000000000113B7                 jz      short loc_113E2
.text:00000000000113B9                 mov     rax, r14
.text:00000000000113BC
.text:00000000000113BC loc_113BC:                              ; CODE XREF: sub_111C0+211↓j
.text:00000000000113BC                 cmp     [rax], r13d
.text:00000000000113BF                 jz      short loc_113C5
.text:00000000000113C1                 cmp     [rax], edi
.text:00000000000113C3                 jz      short loc_113D3
.text:00000000000113C5
.text:00000000000113C5 loc_113C5:                              ; CODE XREF: sub_111C0+1FF↑j
.text:00000000000113C5                 add     rax, 4
.text:00000000000113C9                 inc     r11d
.text:00000000000113CC                 cmp     rax, r15
.text:00000000000113CF                 jge     short loc_113E2
.text:00000000000113D1                 jmp     short loc_113BC
.text:00000000000113D3 ; ---------------------------------------------------------------------------
.text:00000000000113D3
.text:00000000000113D3 loc_113D3:                              ; CODE XREF: sub_111C0+203↑j
.text:00000000000113D3                 movsxd  rax, r11d
.text:00000000000113D6                 mov     [r14+rax*4], r13d
.text:00000000000113DA                 jmp     short loc_113E2
.text:00000000000113DC ; ---------------------------------------------------------------------------
.text:00000000000113DC
.text:00000000000113DC loc_113DC:                              ; CODE XREF: sub_111C0+156↑j
.text:00000000000113DC                 call    cs:PsGetCurrentProcessId
.text:00000000000113E2
.text:00000000000113E2 loc_113E2:                              ; CODE XREF: sub_111C0+1A1↑j
.text:00000000000113E2                                         ; sub_111C0+1E4↑j ...
.text:00000000000113E2                 mov     rcx, [rsp+68h+var_46+6]
.text:00000000000113E7                 cmp     rcx, r13
.text:00000000000113EA                 jz      short loc_113F7
.text:00000000000113EC                 mov     edx, 4D4158h
.text:00000000000113F1                 call    cs:ExFreePoolWithTag
.text:00000000000113F7
.text:00000000000113F7 loc_113F7:                              ; CODE XREF: sub_111C0+22A↑j
.text:00000000000113F7                 mov     rcx, [rsp+68h+var_36+6]
.text:00000000000113FC                 cmp     rcx, r13
.text:00000000000113FF                 jz      short loc_1140C
.text:0000000000011401                 mov     edx, 4D4158h
.text:0000000000011406                 call    cs:ExFreePoolWithTag
.text:000000000001140C
.text:000000000001140C loc_1140C:                              ; CODE XREF: sub_111C0+23F↑j
.text:000000000001140C                 cmp     sil, 1
.text:0000000000011410                 jnz     short loc_1144D
.text:0000000000011412                 mov     rax, [rbx+20h]
.text:0000000000011416                 test    [rax+4], sil
.text:000000000001141A                 jz      short loc_1141F
.text:000000000001141C                 and     dword ptr [rax], 0FFFFFFFEh
.text:000000000001141F
.text:000000000001141F loc_1141F:                              ; CODE XREF: sub_111C0+25A↑j
.text:000000000001141F                 cmp     bpl, r13b
.text:0000000000011422                 jnz     short loc_1143E
.text:0000000000011424                 mov     rax, [rbx+20h]
.text:0000000000011428                 test    byte ptr [rax+4], 8
.text:000000000001142C                 jz      short loc_11431
.text:000000000001142E                 and     dword ptr [rax], 0FFFFFFF7h
.text:0000000000011431
.text:0000000000011431 loc_11431:                              ; CODE XREF: sub_111C0+26C↑j
.text:0000000000011431                 mov     rax, [rbx+20h]
.text:0000000000011435                 test    byte ptr [rax+4], 20h
.text:0000000000011439                 jz      short loc_1143E
.text:000000000001143B                 and     dword ptr [rax], 0FFFFFFDFh
.text:000000000001143E
.text:000000000001143E loc_1143E:                              ; CODE XREF: sub_111C0+262↑j
.text:000000000001143E                                         ; sub_111C0+279↑j
.text:000000000001143E                 mov     rax, [rbx+20h]
.text:0000000000011442                 bt      dword ptr [rax+4], 0Bh
.text:0000000000011447                 jnb     short loc_1144D
.text:0000000000011449                 btr     dword ptr [rax], 0Bh
.text:000000000001144D
.text:000000000001144D loc_1144D:                              ; CODE XREF: sub_111C0+29↑j
.text:000000000001144D                                         ; sub_111C0+49↑j ...
.text:000000000001144D                 lea     r11, [rsp+68h+var_28]
.text:0000000000011452                 xor     eax, eax
.text:0000000000011454                 mov     rbx, [r11+30h]
.text:0000000000011458                 mov     rbp, [r11+38h]
.text:000000000001145C                 mov     rsi, [r11+40h]
.text:0000000000011460                 mov     rsp, r11
.text:0000000000011463                 pop     r15
.text:0000000000011465                 pop     r14
.text:0000000000011467                 pop     r13
.text:0000000000011469                 pop     r12
.text:000000000001146B                 pop     rdi
.text:000000000001146C                 retn
.text:000000000001146C sub_111C0       endp
