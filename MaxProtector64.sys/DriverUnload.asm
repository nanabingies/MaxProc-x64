.text:000000000001111C ; =============== S U B R O U T I N E =======================================
.text:000000000001111C
.text:000000000001111C
.text:000000000001111C ; __int64 __fastcall DriverUnload(__int64)
.text:000000000001111C DriverUnload    proc near               ; DATA XREF: DriverEntry+181↓o
.text:000000000001111C
.text:000000000001111C arg_0           = qword ptr  8
.text:000000000001111C
.text:000000000001111C                 mov     [rsp+arg_0], rbx
.text:0000000000011121                 push    rdi
.text:0000000000011122                 sub     rsp, 20h
.text:0000000000011126                 xor     edi, edi
.text:0000000000011128                 mov     rbx, rcx
.text:000000000001112B                 mov     rcx, cs:RetFilter
.text:0000000000011132                 mov     cs:byte_1C3A0, dil ; # 0
.text:0000000000011139                 mov     cs:qword_1D180, rdi
.text:0000000000011140                 mov     cs:qword_1D188, rdi
.text:0000000000011147                 mov     cs:qword_1D190, rdi
.text:000000000001114E                 mov     cs:word_1D198, di
.text:0000000000011155                 mov     cs:qword_1D1C0, rdi
.text:000000000001115C                 mov     cs:qword_1D1C8, rdi
.text:0000000000011163                 mov     cs:qword_1D1D0, rdi
.text:000000000001116A                 mov     cs:word_1D1D8, di
.text:0000000000011171                 mov     cs:qword_1D1E0, rdi
.text:0000000000011178                 mov     cs:qword_1D1E8, rdi
.text:000000000001117F                 mov     cs:qword_1D1F0, rdi
.text:0000000000011186                 mov     cs:word_1D1F8, di
.text:000000000001118D                 cmp     rcx, rdi
.text:0000000000011190                 jz      short loc_1119E
.text:0000000000011192                 call    FltUnregisterFilter
.text:0000000000011197                 mov     cs:RetFilter, rdi
.text:000000000001119E
.text:000000000001119E loc_1119E:                              ; CODE XREF: DriverUnload+74↑j
.text:000000000001119E                 mov     rcx, cs:qword_1C3C8
.text:00000000000111A5                 cmp     rcx, rdi
.text:00000000000111A8                 jz      short loc_111B7
.text:00000000000111AA                 call    cs:CmUnRegisterCallback
.text:00000000000111B0                 mov     cs:qword_1C3C8, rdi
.text:00000000000111B7
.text:00000000000111B7 loc_111B7:                              ; CODE XREF: DriverUnload+8C↑j
.text:00000000000111B7                 call    sub_12760
.text:00000000000111BC                 mov     rcx, cs:qword_1C3B0
.text:00000000000111C3                 cmp     rcx, rdi
.text:00000000000111C6                 jz      short loc_111D3
.text:00000000000111C8                 mov     edx, 425450h
.text:00000000000111CD                 call    cs:ExFreePoolWithTag
.text:00000000000111D3
.text:00000000000111D3 loc_111D3:                              ; CODE XREF: DriverUnload+AA↑j
.text:00000000000111D3                 mov     rcx, cs:qword_1C3C0
.text:00000000000111DA                 cmp     rcx, rdi
.text:00000000000111DD                 jz      short loc_111EA
.text:00000000000111DF                 mov     edx, 425450h
.text:00000000000111E4                 call    cs:ExFreePoolWithTag
.text:00000000000111EA
.text:00000000000111EA loc_111EA:                              ; CODE XREF: DriverUnload+C1↑j
.text:00000000000111EA                 lea     rcx, SymbolicName ; "46"
.text:00000000000111F1                 call    cs:IoDeleteSymbolicLink
.text:00000000000111F7                 mov     rcx, [rbx+8]
.text:00000000000111FB                 mov     rbx, [rsp+28h+arg_0]
.text:0000000000011200                 add     rsp, 20h
.text:0000000000011204                 pop     rdi
.text:0000000000011205                 jmp     cs:IoDeleteDevice
.text:0000000000011205 DriverUnload    endp
.text:0000000000011205