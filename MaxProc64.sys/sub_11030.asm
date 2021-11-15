.text:0000000000011030 ; =============== S U B R O U T I N E =======================================
.text:0000000000011030
.text:0000000000011030
.text:0000000000011030 sub_11030       proc near               ; DATA XREF: DriverEntry+99↓o
.text:0000000000011030
.text:0000000000011030 arg_0           = qword ptr  8
.text:0000000000011030
.text:0000000000011030                 mov     [rsp+arg_0], rbx
.text:0000000000011035                 push    rdi
.text:0000000000011036                 sub     rsp, 20h
.text:000000000001103A                 mov     rax, [rdx+0B8h]
.text:0000000000011041                 mov     rbx, rdx
.text:0000000000011044                 cmp     dword ptr [rax+18h], 220007h
.text:000000000001104B                 jnz     short loc_11056
.text:000000000001104D                 mov     cs:byte_1B388, 0
.text:0000000000011054                 jmp     short loc_11091
.text:0000000000011056 ; ---------------------------------------------------------------------------
.text:0000000000011056
.text:0000000000011056 loc_11056:                              ; CODE XREF: sub_11030+1B↑j
.text:0000000000011056                 cmp     dword ptr [rax+18h], 220015h
.text:000000000001105D                 jnz     short loc_11068
.text:000000000001105F                 mov     cs:byte_1B388, 1
.text:0000000000011066                 jmp     short loc_11091
.text:0000000000011068 ; ---------------------------------------------------------------------------
.text:0000000000011068
.text:0000000000011068 loc_11068:                              ; CODE XREF: sub_11030+2D↑j
.text:0000000000011068                 cmp     dword ptr [rax+18h], 220019h
.text:000000000001106F                 jnz     short loc_11091
.text:0000000000011071                 mov     rdi, [rdx+18h]  ; # UserBuffer
.text:0000000000011075                 cmp     dword ptr [rdi], 42h ; 'B'
.text:0000000000011078                 jnb     short loc_11091
.text:000000000001107A                 cmp     dword ptr [rdi], 3Ch ; '<'
.text:000000000001107D                 jz      short loc_11091
.text:000000000001107F                 call    cs:PsGetCurrentProcessId
.text:0000000000011085                 mov     ecx, [rdi]
.text:0000000000011087                 lea     rdx, unk_1B390
.text:000000000001108E                 mov     [rdx+rcx*4], eax
.text:0000000000011091
.text:0000000000011091 loc_11091:                              ; CODE XREF: sub_11030+24↑j
.text:0000000000011091                                         ; sub_11030+36↑j ...
.text:0000000000011091                 and     dword ptr [rbx+30h], 0
.text:0000000000011095                 xor     edx, edx
.text:0000000000011097                 mov     rcx, rbx
.text:000000000001109A                 call    cs:IofCompleteRequest
.text:00000000000110A0                 mov     rbx, [rsp+28h+arg_0]
.text:00000000000110A5                 xor     eax, eax
.text:00000000000110A7                 add     rsp, 20h
.text:00000000000110AB                 pop     rdi
.text:00000000000110AC                 retn
.text:00000000000110AC sub_11030       endp
.text:00000000000110AC