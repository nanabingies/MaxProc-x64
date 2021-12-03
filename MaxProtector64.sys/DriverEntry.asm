INIT:0000000000022008 ; =============== S U B R O U T I N E =======================================
INIT:0000000000022008
INIT:0000000000022008
INIT:0000000000022008 ; __int64 __fastcall DriverEntry(_QWORD *, unsigned __int16 *)
INIT:0000000000022008 DriverEntry     proc near               ; CODE XREF: start+19↓j
INIT:0000000000022008
INIT:0000000000022008 var_58          = dword ptr -58h
INIT:0000000000022008 var_50          = byte ptr -50h
INIT:0000000000022008 anonymous_0     = qword ptr -28h
INIT:0000000000022008 var_20          = dword ptr -20h
INIT:0000000000022008 var_1C          = dword ptr -1Ch
INIT:0000000000022008 var_18          = dword ptr -18h
INIT:0000000000022008 var_14          = dword ptr -14h
INIT:0000000000022008 var_10          = qword ptr -10h
INIT:0000000000022008 var_8           = byte ptr -8
INIT:0000000000022008
INIT:0000000000022008                 mov     r11, rsp
INIT:000000000002200B                 mov     [r11+18h], rbx
INIT:000000000002200F                 mov     [r11+20h], rsi
INIT:0000000000022013                 push    rdi
INIT:0000000000022014                 sub     rsp, 70h
INIT:0000000000022018                 mov     rax, cs:qword_1C100
INIT:000000000002201F                 xor     rax, rsp
INIT:0000000000022022                 mov     [rsp+78h+var_10], rax
INIT:0000000000022027                 xor     esi, esi
INIT:0000000000022029                 xor     eax, eax
INIT:000000000002202B                 mov     rbx, rdx
INIT:000000000002202E                 mov     [rsp+78h+var_1C], eax
INIT:0000000000022032                 mov     [rsp+78h+var_18], eax
INIT:0000000000022036                 mov     [rsp+78h+var_14], eax
INIT:000000000002203A                 lea     rax, [r11-28h]
INIT:000000000002203E                 lea     r9d, [rsi+9]
INIT:0000000000022042                 lea     r8, asc_1C308   ; ",."
INIT:0000000000022049                 mov     [r11-38h], rax
INIT:000000000002204D                 lea     rax, [r11-20h]
INIT:0000000000022051                 mov     edx, 400h
INIT:0000000000022056                 mov     [r11-40h], rax
INIT:000000000002205A                 lea     rax, asc_144D0  ; "~"
INIT:0000000000022061                 mov     rdi, rcx
INIT:0000000000022064                 mov     [r11-48h], rax
INIT:0000000000022068                 mov     [rsp+78h+var_50], sil
INIT:000000000002206D                 mov     [r11-28h], rsi
INIT:0000000000022071                 mov     [rsp+78h+var_58], 100h
INIT:0000000000022079                 mov     [rsp+78h+var_20], esi
INIT:000000000002207D                 mov     cs:byte_1C3A0, sil
INIT:0000000000022084                 mov     cs:byte_1D1DA, sil
INIT:000000000002208B                 mov     cs:byte_1D170, sil
INIT:0000000000022092                 mov     cs:byte_1D1DB, sil
INIT:0000000000022099                 mov     cs:byte_1D1DC, sil
INIT:00000000000220A0                 call    WdmlibIoCreateDeviceSecure
INIT:00000000000220A5                 lea     rdx, asc_1C308  ; ",."
INIT:00000000000220AC                 lea     rcx, a46        ; "46"
INIT:00000000000220B3                 call    cs:IoCreateSymbolicLink
INIT:00000000000220B9                 mov     cs:word_1C3A8, si
INIT:00000000000220C0                 movzx   eax, word ptr [rbx]
INIT:00000000000220C3                 cmp     [rbx+2], ax
INIT:00000000000220C7                 mov     r8d, 425450h
INIT:00000000000220CD                 cmovnb  ax, [rbx+2]
INIT:00000000000220D2                 xor     ecx, ecx
INIT:00000000000220D4                 movzx   edx, ax
INIT:00000000000220D7                 mov     cs:word_1C3AA, ax
INIT:00000000000220DE                 call    cs:ExAllocatePoolWithTag
INIT:00000000000220E4                 mov     cs:qword_1C3B0, rax
INIT:00000000000220EB                 cmp     rax, rsi
INIT:00000000000220EE                 jz      short loc_2210B
INIT:00000000000220F0                 lea     rcx, word_1C3A8
INIT:00000000000220F7                 mov     rdx, rbx
INIT:00000000000220FA                 call    sub_11008
INIT:00000000000220FF                 lea     rcx, word_1C3A8
INIT:0000000000022106                 call    sub_126A8
INIT:000000000002210B
INIT:000000000002210B loc_2210B:                              ; CODE XREF: DriverEntry+E6↑j
INIT:000000000002210B                 mov     cs:word_1C3B8, si
INIT:0000000000022112                 movzx   eax, word ptr [rbx]
INIT:0000000000022115                 mov     r8d, 425450h
INIT:000000000002211B                 cmp     [rbx+2], ax
INIT:000000000002211F                 cmovnb  ax, [rbx+2]
INIT:0000000000022124                 xor     ecx, ecx
INIT:0000000000022126                 movzx   edx, ax
INIT:0000000000022129                 mov     cs:word_1C3BA, ax
INIT:0000000000022130                 call    cs:ExAllocatePoolWithTag
INIT:0000000000022136                 mov     cs:qword_1C3C0, rax
INIT:000000000002213D                 cmp     rax, rsi
INIT:0000000000022140                 jz      short loc_22151
INIT:0000000000022142                 lea     rcx, word_1C3B8
INIT:0000000000022149                 mov     rdx, rbx
INIT:000000000002214C                 call    sub_11008
INIT:0000000000022151
INIT:0000000000022151 loc_22151:                              ; CODE XREF: DriverEntry+138↑j
INIT:0000000000022151                 lea     rax, sub_1123C
INIT:0000000000022158                 lea     rdx, unk_1C348
INIT:000000000002215F                 mov     rcx, rbx
INIT:0000000000022162                 mov     [rdi+0E0h], rax
INIT:0000000000022169                 lea     rax, sub_11214
INIT:0000000000022170                 mov     [rdi+70h], rax
INIT:0000000000022174                 mov     [rdi+80h], rax
INIT:000000000002217B                 lea     rax, sub_11214
INIT:0000000000022182                 mov     [rdi+100h], rax
INIT:0000000000022189                 lea     rax, sub_1111C
INIT:0000000000022190                 mov     [rdi+68h], rax
INIT:0000000000022194                 call    sub_12364
INIT:0000000000022199                 lea     rdx, asc_1C358  ; "*,"
INIT:00000000000221A0                 mov     rcx, rbx
INIT:00000000000221A3                 mov     cs:byte_1D1DA, al
INIT:00000000000221A9                 call    sub_12364
INIT:00000000000221AE                 lea     r8, qword_1C4E0
INIT:00000000000221B5                 lea     rdx, unk_15F70
INIT:00000000000221BC                 mov     rcx, rdi
INIT:00000000000221BF                 mov     cs:qword_1C4D8, rdi
INIT:00000000000221C6                 mov     cs:byte_1D1DC, al
INIT:00000000000221CC                 call    FltRegisterFilter
INIT:00000000000221D1                 cmp     eax, esi
INIT:00000000000221D3                 jl      loc_22274
INIT:00000000000221D9                 mov     rcx, cs:qword_1C4E0
INIT:00000000000221E0                 call    FltStartFiltering
INIT:00000000000221E5                 cmp     eax, esi
INIT:00000000000221E7                 mov     ebx, eax
INIT:00000000000221E9                 jl      short loc_22266
INIT:00000000000221EB                 mov     rdx, [rdi+30h]
INIT:00000000000221EF                 lea     r8, qword_1C3C8
INIT:00000000000221F6                 lea     rcx, sub_1F068
INIT:00000000000221FD                 call    cs:CmRegisterCallback
INIT:0000000000022203                 cmp     eax, esi
INIT:0000000000022205                 jl      short loc_22266
INIT:0000000000022207                 mov     cs:qword_1D180, rsi
INIT:000000000002220E                 mov     cs:qword_1D188, rsi
INIT:0000000000022215                 mov     cs:qword_1D190, rsi
INIT:000000000002221C                 mov     cs:word_1D198, si
INIT:0000000000022223                 mov     cs:qword_1D1C0, rsi
INIT:000000000002222A                 mov     cs:qword_1D1C8, rsi
INIT:0000000000022231                 mov     cs:qword_1D1D0, rsi
INIT:0000000000022238                 mov     cs:word_1D1D8, si
INIT:000000000002223F                 mov     cs:qword_1D1E0, rsi
INIT:0000000000022246                 mov     cs:qword_1D1E8, rsi
INIT:000000000002224D                 mov     cs:qword_1D1F0, rsi
INIT:0000000000022254                 mov     cs:word_1D1F8, si
INIT:000000000002225B                 mov     cs:byte_1C3A0, 1
INIT:0000000000022262                 xor     eax, eax
INIT:0000000000022264                 jmp     short loc_22274
INIT:0000000000022266 ; ---------------------------------------------------------------------------
INIT:0000000000022266
INIT:0000000000022266 loc_22266:                              ; CODE XREF: DriverEntry+1E1↑j
INIT:0000000000022266                                         ; DriverEntry+1FD↑j
INIT:0000000000022266                 mov     rcx, cs:qword_1C4E0
INIT:000000000002226D                 call    FltUnregisterFilter
INIT:0000000000022272                 mov     eax, ebx
INIT:0000000000022274
INIT:0000000000022274 loc_22274:                              ; CODE XREF: DriverEntry+1CB↑j
INIT:0000000000022274                                         ; DriverEntry+25C↑j
INIT:0000000000022274                 mov     rcx, [rsp+78h+var_10]
INIT:0000000000022279                 xor     rcx, rsp
INIT:000000000002227C                 call    __security_check_cookie
INIT:0000000000022281                 lea     r11, [rsp+78h+var_8]
INIT:0000000000022286                 mov     rbx, [r11+20h]
INIT:000000000002228A                 mov     rsi, [r11+28h]
INIT:000000000002228E                 mov     rsp, r11
INIT:0000000000022291                 pop     rdi
INIT:0000000000022292                 retn
INIT:0000000000022292 DriverEntry     endp
INIT:0000000000022292
INIT:0000000000022292 ; ---------------------------------------------------------------------------
