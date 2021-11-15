PAGE:000000000001E074 ; =============== S U B R O U T I N E =======================================
PAGE:000000000001E074
PAGE:000000000001E074 ; Attributes: library function
PAGE:000000000001E074
PAGE:000000000001E074 WdmlibIoCreateDeviceSecure proc near    ; CODE XREF: DriverEntry+79↓p
PAGE:000000000001E074
PAGE:000000000001E074 var_38          = dword ptr -38h
PAGE:000000000001E074 var_30          = byte ptr -30h
PAGE:000000000001E074 var_28          = qword ptr -28h
PAGE:000000000001E074 var_20          = qword ptr -20h
PAGE:000000000001E074 var_18          = qword ptr -18h
PAGE:000000000001E074 arg_0           = qword ptr  8
PAGE:000000000001E074 arg_8           = qword ptr  10h
PAGE:000000000001E074 arg_10          = qword ptr  18h
PAGE:000000000001E074 arg_20          = dword ptr  28h
PAGE:000000000001E074 arg_28          = byte ptr  30h
PAGE:000000000001E074 arg_30          = qword ptr  38h
PAGE:000000000001E074 arg_38          = qword ptr  40h
PAGE:000000000001E074 arg_40          = qword ptr  48h
PAGE:000000000001E074
PAGE:000000000001E074                 mov     [rsp+arg_0], rbx
PAGE:000000000001E079                 mov     [rsp+arg_8], rbp
PAGE:000000000001E07E                 mov     [rsp+arg_10], rsi
PAGE:000000000001E083                 push    rdi
PAGE:000000000001E084                 sub     rsp, 50h
PAGE:000000000001E088                 cmp     cs:byte_1B340, 0
PAGE:000000000001E08F                 mov     ebx, r9d
PAGE:000000000001E092                 mov     rdi, r8
PAGE:000000000001E095                 mov     esi, edx
PAGE:000000000001E097                 mov     rbp, rcx
PAGE:000000000001E09A                 jnz     short loc_1E0A1
PAGE:000000000001E09C                 call    WdmlibInit
PAGE:000000000001E0A1
PAGE:000000000001E0A1 loc_1E0A1:                              ; CODE XREF: WdmlibIoCreateDeviceSecure+26↑j
PAGE:000000000001E0A1                 mov     rax, [rsp+58h+arg_40]
PAGE:000000000001E0A9                 mov     r9d, ebx
PAGE:000000000001E0AC                 mov     r8, rdi
PAGE:000000000001E0AF                 mov     [rsp+58h+var_18], rax
PAGE:000000000001E0B4                 mov     rax, [rsp+58h+arg_38]
PAGE:000000000001E0BC                 mov     edx, esi
PAGE:000000000001E0BE                 mov     [rsp+58h+var_20], rax
PAGE:000000000001E0C3                 mov     rax, [rsp+58h+arg_30]
PAGE:000000000001E0CB                 mov     rcx, rbp
PAGE:000000000001E0CE                 mov     [rsp+58h+var_28], rax
PAGE:000000000001E0D3                 mov     al, [rsp+58h+arg_28]
PAGE:000000000001E0DA                 mov     [rsp+58h+var_30], al
PAGE:000000000001E0DE                 mov     eax, [rsp+58h+arg_20]
PAGE:000000000001E0E5                 mov     [rsp+58h+var_38], eax
PAGE:000000000001E0E9                 call    cs:qword_1B348
PAGE:000000000001E0EF                 mov     rbx, [rsp+58h+arg_0]
PAGE:000000000001E0F4                 mov     rbp, [rsp+58h+arg_8]
PAGE:000000000001E0F9                 mov     rsi, [rsp+58h+arg_10]
PAGE:000000000001E0FE                 add     rsp, 50h
PAGE:000000000001E102                 pop     rdi
PAGE:000000000001E103                 retn
PAGE:000000000001E103 WdmlibIoCreateDeviceSecure endp
PAGE:000000000001E103


PAGE:000000000001E008 ; =============== S U B R O U T I N E =======================================
PAGE:000000000001E008
PAGE:000000000001E008 ; Attributes: library function
PAGE:000000000001E008
PAGE:000000000001E008 WdmlibInit      proc near               ; CODE XREF: WdmlibIoCreateDeviceSecure+28↓p
PAGE:000000000001E008
PAGE:000000000001E008 var_18          = byte ptr -18h
PAGE:000000000001E008
PAGE:000000000001E008                 sub     rsp, 38h
PAGE:000000000001E00C                 lea     rdx, aIocreatedevice ; "IoCreateDeviceSecure"
PAGE:000000000001E013                 lea     rcx, [rsp+38h+var_18]
PAGE:000000000001E018                 call    cs:RtlInitUnicodeString
PAGE:000000000001E01E                 lea     rcx, [rsp+38h+var_18]
PAGE:000000000001E023                 call    cs:MmGetSystemRoutineAddress
PAGE:000000000001E029                 lea     rcx, IoDevObjCreateDeviceSecure
PAGE:000000000001E030                 lea     rdx, aIovalidatedevi ; "IoValidateDeviceIoControlAccess"
PAGE:000000000001E037                 test    rax, rax
PAGE:000000000001E03A                 cmovz   rax, rcx
PAGE:000000000001E03E                 lea     rcx, [rsp+38h+var_18]
PAGE:000000000001E043                 mov     cs:qword_1B348, rax
PAGE:000000000001E04A                 call    cs:RtlInitUnicodeString
PAGE:000000000001E050                 lea     rcx, [rsp+38h+var_18]
PAGE:000000000001E055                 call    cs:MmGetSystemRoutineAddress
PAGE:000000000001E05B                 mov     cs:byte_1B340, 1
PAGE:000000000001E062                 mov     cs:qword_1B350, rax
PAGE:000000000001E069                 add     rsp, 38h
PAGE:000000000001E06D                 retn
PAGE:000000000001E06D WdmlibInit      endp
PAGE:000000000001E06D