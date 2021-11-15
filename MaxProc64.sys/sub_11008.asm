.text:0000000000011008 ; =============== S U B R O U T I N E =======================================
.text:0000000000011008
.text:0000000000011008
.text:0000000000011008 sub_11008       proc near               ; DATA XREF: DriverEntry+92↓o
.text:0000000000011008                                         ; DriverEntry+AB↓o
.text:0000000000011008                 sub     rsp, 28h
.text:000000000001100C                 and     qword ptr [rdx+38h], 0
.text:0000000000011011                 and     dword ptr [rdx+30h], 0
.text:0000000000011015                 mov     rcx, rdx
.text:0000000000011018                 xor     edx, edx
.text:000000000001101A                 call    cs:IofCompleteRequest
.text:0000000000011020                 xor     eax, eax
.text:0000000000011022                 add     rsp, 28h
.text:0000000000011026                 retn
.text:0000000000011026 sub_11008       endp
.text:0000000000011026