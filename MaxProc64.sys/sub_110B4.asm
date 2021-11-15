.text:00000000000110B4 ; =============== S U B R O U T I N E =======================================
.text:00000000000110B4
.text:00000000000110B4
.text:00000000000110B4 sub_110B4       proc near               ; CODE XREF: DriverEntry+DA↓p
.text:00000000000110B4
.text:00000000000110B4 var_78          = qword ptr -78h
.text:00000000000110B4 var_70          = dword ptr -70h
.text:00000000000110B4 var_68          = qword ptr -68h
.text:00000000000110B4 var_60          = qword ptr -60h
.text:00000000000110B4 var_58          = word ptr -58h
.text:00000000000110B4 var_40          = word ptr -40h
.text:00000000000110B4 var_38          = word ptr -38h
.text:00000000000110B4 var_36          = word ptr -36h
.text:00000000000110B4 var_30          = byte ptr -30h
.text:00000000000110B4 var_20          = qword ptr -20h
.text:00000000000110B4 var_18          = qword ptr -18h
.text:00000000000110B4 var_8           = byte ptr -8
.text:00000000000110B4 arg_0           = qword ptr  8
.text:00000000000110B4 arg_8           = qword ptr  10h
.text:00000000000110B4
.text:00000000000110B4                 mov     [rsp+arg_0], rbx
.text:00000000000110B9                 mov     [rsp+arg_8], rsi
.text:00000000000110BE                 push    rdi
.text:00000000000110BF                 sub     rsp, 90h
.text:00000000000110C6                 xor     edi, edi
.text:00000000000110C8                 call    cs:ObGetFilterVersion
.text:00000000000110CE                 lea     esi, [rdi+20h]
.text:00000000000110D1                 lea     rcx, [rsp+98h+var_78]
.text:00000000000110D6                 xor     edx, edx
.text:00000000000110D8                 mov     r8, rsi
.text:00000000000110DB                 movzx   ebx, ax
.text:00000000000110DE                 call    memset
.text:00000000000110E3                 lea     r8d, [rdi+28h]
.text:00000000000110E7                 lea     rcx, [rsp+98h+var_38]
.text:00000000000110EC                 xor     edx, edx
.text:00000000000110EE                 call    memset
.text:00000000000110F3                 lea     rcx, [rsp+98h+var_58]
.text:00000000000110F8                 mov     r8, rsi
.text:00000000000110FB                 xor     edx, edx
.text:00000000000110FD                 call    memset
.text:0000000000011102                 lea     esi, [rdi+1]
.text:0000000000011105                 lea     eax, [rdi+78h]
.text:0000000000011108                 mov     ecx, 100h
.text:000000000001110D                 mov     [rsp+98h+var_40], si
.text:0000000000011112                 mov     [rsp+98h+var_58], ax
.text:0000000000011117                 cmp     bx, cx
.text:000000000001111A                 jnz     loc_111A1
.text:0000000000011120                 mov     rax, cs:PsProcessType
.text:0000000000011127                 mov     [rsp+98h+var_38], cx
.text:000000000001112C                 lea     rdx, a328620    ; "328620"
.text:0000000000011133                 mov     [rsp+98h+var_78], rax
.text:0000000000011138                 lea     rax, sub_111C0
.text:000000000001113F                 lea     rcx, [rsp+98h+var_30]
.text:0000000000011144                 mov     [rsp+98h+var_68], rax
.text:0000000000011149                 lea     rax, nullsub_1
.text:0000000000011150                 mov     [rsp+98h+var_70], esi
.text:0000000000011154                 mov     [rsp+98h+var_60], rax
.text:0000000000011159                 mov     [rsp+98h+var_36], si
.text:000000000001115E                 call    cs:RtlInitUnicodeString
.text:0000000000011164                 lea     r11, [rsp+98h+var_58]
.text:0000000000011169                 lea     rax, [rsp+98h+var_78]
.text:000000000001116E                 lea     rdx, qword_1B380
.text:0000000000011175                 lea     rcx, [rsp+98h+var_38]
.text:000000000001117A                 mov     [rsp+98h+var_20], r11
.text:000000000001117F                 mov     [rsp+98h+var_18], rax
.text:0000000000011187                 call    cs:ObRegisterCallbacks
.text:000000000001118D                 movzx   ecx, cs:byte_1B388
.text:0000000000011194                 test    eax, eax
.text:0000000000011196                 mov     edi, eax
.text:0000000000011198                 cmovz   ecx, esi
.text:000000000001119B                 mov     cs:byte_1B388, cl
.text:00000000000111A1
.text:00000000000111A1 loc_111A1:                              ; CODE XREF: sub_110B4+66↑j
.text:00000000000111A1                 lea     r11, [rsp+98h+var_8]
.text:00000000000111A9                 mov     eax, edi
.text:00000000000111AB                 mov     rbx, [r11+10h]
.text:00000000000111AF                 mov     rsi, [r11+18h]
.text:00000000000111B3                 mov     rsp, r11
.text:00000000000111B6                 pop     rdi
.text:00000000000111B7                 retn
.text:00000000000111B7 sub_110B4       endp
.text:00000000000111B7