text:0000000000011214 ; =============== S U B R O U T I N E =======================================
.text:0000000000011214
.text:0000000000011214
.text:0000000000011214 ; __int64 __fastcall sub_11214(__int64, __int64)
.text:0000000000011214 sub_11214       proc near               ; DATA XREF: DriverEntry+161↓o
.text:0000000000011214                                         ; DriverEntry+173↓o
.text:0000000000011214                 sub     rsp, 28h
.text:0000000000011218                 and     qword ptr [rdx+38h], 0
.text:000000000001121D                 and     dword ptr [rdx+30h], 0
.text:0000000000011221                 mov     rcx, rdx
.text:0000000000011224                 xor     edx, edx
.text:0000000000011226                 call    cs:IofCompleteRequest
.text:000000000001122C                 xor     eax, eax
.text:000000000001122E                 add     rsp, 28h
.text:0000000000011232                 retn
.text:0000000000011232 sub_11214       endp
.text:0000000000011232