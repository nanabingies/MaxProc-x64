.text:000000000001123C ; =============== S U B R O U T I N E =======================================
.text:000000000001123C
.text:000000000001123C
.text:000000000001123C ; __int64 __fastcall IRP_MJ_DEVICE_CONTROL(__int64, __int64)
.text:000000000001123C IRP_MJ_DEVICE_CONTROL proc near         ; DATA XREF: DriverEntry:loc_22151↓o
.text:000000000001123C
.text:000000000001123C arg_0           = qword ptr  8
.text:000000000001123C arg_8           = qword ptr  10h
.text:000000000001123C
.text:000000000001123C                 mov     [rsp+arg_0], rbx
.text:0000000000011241                 mov     [rsp+arg_8], rsi
.text:0000000000011246                 push    rdi
.text:0000000000011247                 sub     rsp, 20h
.text:000000000001124B                 mov     r8, [rdx+0B8h]
.text:0000000000011252                 xor     esi, esi
.text:0000000000011254                 mov     rbx, rdx
.text:0000000000011257                 mov     eax, [r8+18h]
.text:000000000001125B                 cmp     eax, 220007h
.text:0000000000011260                 jnz     short loc_1126E
.text:0000000000011262                 mov     cs:byte_1C3A0, sil ; # 0
.text:0000000000011269                 jmp     loc_1143D
.text:000000000001126E ; ---------------------------------------------------------------------------
.text:000000000001126E
.text:000000000001126E loc_1126E:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+24↑j
.text:000000000001126E                 cmp     eax, 220015h
.text:0000000000011273                 jnz     short loc_11281
.text:0000000000011275                 mov     cs:byte_1C3A0, 1 ; # 0
.text:000000000001127C                 jmp     loc_1143D
.text:0000000000011281 ; ---------------------------------------------------------------------------
.text:0000000000011281
.text:0000000000011281 loc_11281:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+37↑j
.text:0000000000011281                 cmp     eax, 220009h
.text:0000000000011286                 jnz     short loc_112D3
.text:0000000000011288                 mov     rax, [rdx+18h]
.text:000000000001128C                 movzx   ecx, word ptr [rax]
.text:000000000001128F                 sub     ecx, 41h ; 'A'
.text:0000000000011292                 cmp     ecx, 19h
.text:0000000000011295                 ja      loc_1143D
.text:000000000001129B                 mov     al, cs:byte_1D170 ; #0
.text:00000000000112A1                 lea     rdx, cs:10000h
.text:00000000000112A8                 movsxd  rcx, ecx
.text:00000000000112AB                 mov     [rcx+rdx+0D1C0h], al
.text:00000000000112B2                 mov     al, cs:byte_1D1DB ; #0
.text:00000000000112B8                 mov     byte ptr [rcx+rdx+0D1E0h], 1
.text:00000000000112C0                 mov     [rcx+rdx+0D180h], al
.text:00000000000112C7                 mov     cs:byte_1C3A1, 1
.text:00000000000112CE                 jmp     loc_1143D
.text:00000000000112D3 ; ---------------------------------------------------------------------------
.text:00000000000112D3
.text:00000000000112D3 loc_112D3:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+4A↑j
.text:00000000000112D3                 mov     r9d, 220011h
.text:00000000000112D9                 cmp     eax, 22000Dh
.text:00000000000112DE                 jz      loc_1136D
.text:00000000000112E4                 cmp     eax, r9d
.text:00000000000112E7                 jz      loc_1136D
.text:00000000000112ED                 cmp     eax, 220019h
.text:00000000000112F2                 jnz     short loc_11325
.text:00000000000112F4                 mov     rdi, [rdx+18h]
.text:00000000000112F8                 cmp     dword ptr [rdi], 42h ; 'B'
.text:00000000000112FB                 jnb     loc_1143D
.text:0000000000011301                 cmp     dword ptr [rdi], 3Ch ; '<'
.text:0000000000011304                 jz      loc_1143D
.text:000000000001130A                 call    cs:PsGetCurrentProcessId
.text:0000000000011310                 mov     ecx, [rdi]
.text:0000000000011312                 lea     rdx, cs:10000h
.text:0000000000011319                 mov     rva dword_1C3D0[rdx+rcx*4], eax
.text:0000000000011320                 jmp     loc_1143D
.text:0000000000011325 ; ---------------------------------------------------------------------------
.text:0000000000011325
.text:0000000000011325 loc_11325:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+B6↑j
.text:0000000000011325                 cmp     eax, 22001Dh
.text:000000000001132A                 jnz     short loc_11356
.text:000000000001132C                 call    sub_12760
.text:0000000000011331                 cmp     cs:qword_1C3C0, rsi
.text:0000000000011338                 jz      loc_1143D
.text:000000000001133E                 lea     rcx, word_1C3B8
.text:0000000000011345                 mov     cs:byte_1C3A2, 1
.text:000000000001134C                 call    sub_126A8
.text:0000000000011351                 jmp     loc_1143D
.text:0000000000011356 ; ---------------------------------------------------------------------------
.text:0000000000011356
.text:0000000000011356 loc_11356:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+EE↑j
.text:0000000000011356                 cmp     eax, 220021h
.text:000000000001135B                 jnz     loc_1143D
.text:0000000000011361                 mov     cs:byte_1C3A2, sil
.text:0000000000011368                 jmp     loc_1143D
.text:000000000001136D ; ---------------------------------------------------------------------------
.text:000000000001136D
.text:000000000001136D loc_1136D:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+A2↑j
.text:000000000001136D                                         ; IRP_MJ_DEVICE_CONTROL+AB↑j
.text:000000000001136D                 mov     rax, [rdx+18h]
.text:0000000000011371                 movzx   ecx, word ptr [rax]
.text:0000000000011374                 lea     eax, [rcx-41h]
.text:0000000000011377                 cmp     eax, 19h
.text:000000000001137A                 ja      short loc_113DD
.text:000000000001137C                 lea     rdx, cs:10000h
.text:0000000000011383                 movsxd  rcx, eax
.text:0000000000011386                 mov     [rcx+rdx+0D1E0h], sil
.text:000000000001138E                 cmp     [r8+18h], r9d
.text:0000000000011392                 jnz     short loc_113A4
.text:0000000000011394                 mov     [rcx+rdx+0D1C0h], sil
.text:000000000001139C                 mov     [rcx+rdx+0D180h], sil
.text:00000000000113A4
.text:00000000000113A4 loc_113A4:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+156↑j
.text:00000000000113A4                 mov     cl, sil
.text:00000000000113A7                 mov     rax, rsi
.text:00000000000113AA
.text:00000000000113AA loc_113AA:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+193↓j
.text:00000000000113AA                 cmp     byte ptr [rax+rdx+0D1E0h], 1
.text:00000000000113B2                 jz      short loc_113D3
.text:00000000000113B4                 cmp     byte ptr [rax+rdx+0D1C0h], 1
.text:00000000000113BC                 jz      short loc_113D3
.text:00000000000113BE                 cmp     byte ptr [rax+rdx+0D180h], 1
.text:00000000000113C6                 jz      short loc_113D3
.text:00000000000113C8                 inc     rax
.text:00000000000113CB                 cmp     rax, 1Ah
.text:00000000000113CF                 jl      short loc_113AA
.text:00000000000113D1                 jmp     short loc_113D5
.text:00000000000113D3 ; ---------------------------------------------------------------------------
.text:00000000000113D3
.text:00000000000113D3 loc_113D3:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+176↑j
.text:00000000000113D3                                         ; IRP_MJ_DEVICE_CONTROL+180↑j ...
.text:00000000000113D3                 mov     cl, 1
.text:00000000000113D5
.text:00000000000113D5 loc_113D5:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+195↑j
.text:00000000000113D5                 mov     cs:byte_1C3A1, cl
.text:00000000000113DB                 jmp     short loc_1143D
.text:00000000000113DD ; ---------------------------------------------------------------------------
.text:00000000000113DD
.text:00000000000113DD loc_113DD:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+13E↑j
.text:00000000000113DD                 cmp     ecx, 2Dh ; '-'
.text:00000000000113E0                 jnz     short loc_1143D
.text:00000000000113E2                 mov     cs:qword_1D180, rsi
.text:00000000000113E9                 mov     cs:qword_1D188, rsi
.text:00000000000113F0                 mov     cs:qword_1D190, rsi
.text:00000000000113F7                 mov     cs:word_1D198, si
.text:00000000000113FE                 mov     cs:qword_1D1C0, rsi
.text:0000000000011405                 mov     cs:qword_1D1C8, rsi
.text:000000000001140C                 mov     cs:qword_1D1D0, rsi
.text:0000000000011413                 mov     cs:word_1D1D8, si
.text:000000000001141A                 mov     cs:qword_1D1E0, rsi
.text:0000000000011421                 mov     cs:qword_1D1E8, rsi
.text:0000000000011428                 mov     cs:qword_1D1F0, rsi
.text:000000000001142F                 mov     cs:word_1D1F8, si
.text:0000000000011436                 mov     cs:byte_1C3A1, sil
.text:000000000001143D
.text:000000000001143D loc_1143D:                              ; CODE XREF: IRP_MJ_DEVICE_CONTROL+2D↑j
.text:000000000001143D                                         ; IRP_MJ_DEVICE_CONTROL+40↑j ...
.text:000000000001143D                 xor     edx, edx
.text:000000000001143F                 mov     rcx, rbx
.text:0000000000011442                 mov     [rbx+30h], esi
.text:0000000000011445                 call    cs:IofCompleteRequest
.text:000000000001144B                 mov     rbx, [rsp+28h+arg_0]
.text:0000000000011450                 mov     rsi, [rsp+28h+arg_8]
.text:0000000000011455                 xor     eax, eax
.text:0000000000011457                 add     rsp, 20h
.text:000000000001145B                 pop     rdi
.text:000000000001145C                 retn
.text:000000000001145C IRP_MJ_DEVICE_CONTROL endp
