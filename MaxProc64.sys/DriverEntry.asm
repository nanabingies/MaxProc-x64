INIT:0000000000020008 ; =============== S U B R O U T I N E =======================================
INIT:0000000000020008
INIT:0000000000020008
INIT:0000000000020008 DriverEntry     proc near               ; CODE XREF: start+19↓j
INIT:0000000000020008
INIT:0000000000020008 var_58          = dword ptr -58h
INIT:0000000000020008 var_50          = byte ptr -50h
INIT:0000000000020008 var_20          = dword ptr -20h
INIT:0000000000020008 var_1C          = dword ptr -1Ch
INIT:0000000000020008 var_18          = dword ptr -18h
INIT:0000000000020008 var_14          = dword ptr -14h
INIT:0000000000020008 cookie          = qword ptr -10h
INIT:0000000000020008
INIT:0000000000020008                 mov     r11, rsp
INIT:000000000002000B                 push    rbx
INIT:000000000002000C                 sub     rsp, 70h
INIT:0000000000020010                 mov     rax, cs:qword_1B100
INIT:0000000000020017                 xor     rax, rsp
INIT:000000000002001A                 mov     [rsp+78h+cookie], rax
INIT:000000000002001F                 and     qword ptr [r11-28h], 0
INIT:0000000000020024                 and     [rsp+78h+var_20], 0
INIT:0000000000020029                 xor     eax, eax
INIT:000000000002002B                 and     cs:qword_1B380, rax
INIT:0000000000020032                 mov     [rsp+78h+var_1C], eax
INIT:0000000000020036                 mov     [rsp+78h+var_18], eax
INIT:000000000002003A                 mov     [rsp+78h+var_14], eax
INIT:000000000002003E                 mov     cs:byte_1B388, al
INIT:0000000000020044                 lea     rax, [r11-28h]
INIT:0000000000020048                 mov     [r11-38h], rax
INIT:000000000002004C                 lea     rax, [r11-20h]
INIT:0000000000020050                 lea     r8, asc_1B300   ; "\"$"
INIT:0000000000020057                 mov     [r11-40h], rax
INIT:000000000002005B                 lea     rax, asc_13480  ; "~"
INIT:0000000000020062                 mov     r9d, 9
INIT:0000000000020068                 mov     [r11-48h], rax
INIT:000000000002006C                 mov     edx, 400h
INIT:0000000000020071                 mov     [rsp+78h+var_50], 0
INIT:0000000000020076                 mov     [rsp+78h+var_58], 100h
INIT:000000000002007E                 mov     rbx, rcx
INIT:0000000000020081                 call    WdmlibIoCreateDeviceSecure
INIT:0000000000020086                 lea     rdx, asc_1B300  ; "\"$"
INIT:000000000002008D                 lea     rcx, asc_1B310  ; "*,"
INIT:0000000000020094                 call    cs:IoCreateSymbolicLink
INIT:000000000002009A                 lea     rax, sub_11008
INIT:00000000000200A1                 lea     r11, sub_11030
INIT:00000000000200A8                 mov     [rbx+70h], rax
INIT:00000000000200AC                 mov     [rbx+80h], rax
INIT:00000000000200B3                 lea     rax, sub_11008
INIT:00000000000200BA                 lea     r8, unk_1B4C8
INIT:00000000000200C1                 lea     rdx, unk_14DF0
INIT:00000000000200C8                 mov     rcx, rbx
INIT:00000000000200CB                 mov     [rbx+100h], rax
INIT:00000000000200D2                 mov     [rbx+0E0h], r11
INIT:00000000000200D9                 call    FltRegisterFilter
INIT:00000000000200DE                 test    eax, eax
INIT:00000000000200E0                 js      short loc_200E7
INIT:00000000000200E2                 call    sub_110B4
INIT:00000000000200E7
INIT:00000000000200E7 loc_200E7:                              ; CODE XREF: DriverEntry+D8↑j
INIT:00000000000200E7                 mov     rcx, [rsp+78h+cookie]
INIT:00000000000200EC                 xor     rcx, rsp
INIT:00000000000200EF                 call    __security_check_cookie
INIT:00000000000200F4                 add     rsp, 70h
INIT:00000000000200F8                 pop     rbx
INIT:00000000000200F9                 retn
INIT:00000000000200F9 DriverEntry     endp
INIT:00000000000200F9
INIT:00000000000200F9 ; ---------------------------------------------------------------------------