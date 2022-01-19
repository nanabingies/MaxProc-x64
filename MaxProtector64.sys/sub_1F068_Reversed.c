__int64 __fastcall CallbackFunction(__int64 a1, int a2, _QWORD *a3)
{
  __int64 result; // rax
  unsigned int v6; // ebx
  __int64 v7; // rdx
  __int64 v8; // rcx
  __int64 v9; // r8
  __int64 v10; // r9
  int CurrentProcessId; // eax
  __int64 v12; // rdx
  __int64 v13; // r8
  __int64 v14; // r9
  int v15; // edi
  int v16; // edi
  int v17; // edi
  int v18; // edi
  __int64 v19; // r12
  __int64 v20; // rax
  char v21; // bp
  int v22; // eax
  __int64 v23; // rcx
  __int64 v24; // rdi
  __int64 v25; // rax
  __int64 v26; // rbp
  __int64 v27; // rax
  char v28; // r13
  _WORD *v29; // rbp
  __int64 v30; // rax
  char v31; // r12
  __int64 v32; // rdi
  __int64 v33; // rax
  __int64 v34; // r12
  char v35; // al
  __int64 v36; // rax
  char v37; // bp
  __int64 v38; // rcx
  __int64 v39; // rdi
  __int64 v40; // rax
  int v41; // er12
  __int64 v42; // rdi
  __int64 v43; // rax
  __int64 v44; // r14
  __int64 v45; // r15
  __int64 v46; // r8
  char v47; // al
  char v48; // r13
  __int64 v49; // rax
  int ValueKey; // eax
  __int64 v51; // rdi
  __int64 v52; // r8
  __int64 v53; // r8
  __int64 v54; // r8
  __int64 v55; // rdi
  __int64 v56; // rax
  __int64 v57; // rbp
  __int64 PoolWithTag; // rax
  char v59; // r12
  char v60; // [rsp+30h] [rbp-98h]
  __int128 v61; // [rsp+38h] [rbp-90h] BYREF
  int v62; // [rsp+48h] [rbp-80h] BYREF
  __int64 v63; // [rsp+50h] [rbp-78h]
  _WORD *v64; // [rsp+58h] [rbp-70h]
  int v65; // [rsp+60h] [rbp-68h]
  __int64 v66; // [rsp+68h] [rbp-60h]
  __int64 v67; // [rsp+70h] [rbp-58h]
  char v68[8]; // [rsp+78h] [rbp-50h] BYREF
  char v69[16]; // [rsp+80h] [rbp-48h] BYREF

  result = 0i64;
  v6 = 0;
  LOWORD(v61) = 0;
  memset((char *)&v61 + 2, 0, 0xE);
  v60 = 0;
  if ( byte_1C3A0 )
  {
    if ( (unsigned __int8)MmIsAddressValid(a3) )
    {
      if ( a3 )
      {
        CurrentProcessId = PsGetCurrentProcessId(v8, v7, v9, v10);
        if ( CurrentProcessId )
        {
          if ( CurrentProcessId != 8
            && CurrentProcessId != 4
            && (a2 == 0xA || a2 == 0x1A || a2 == 4 || a2 == 1 || !a2 || a2 == 2) )
          {
            if ( !sub_11C5C(0i64, v12, v13, v14) )
              goto LABEL_16;
            if ( a2 == 1 )
            {
              v60 = 1;
LABEL_16:
              if ( !a2 )
              {
                v55 = *a3;
                if ( !(unsigned __int8)MmIsAddressValid(*a3) )
                  return v6;
                if ( !v55 )
                  return v6;
                v56 = sub_11D0C(v55);
                v57 = v56;
                if ( !v56 )
                  return v6;
                if ( (unsigned __int8)sub_121A0(0i64, v56) )
                {
                  LODWORD(v61) = 0x2000000;
                  PoolWithTag = ExAllocatePoolWithTag(0i64, 0x200i64, 0x4D4158i64);
                  *((_QWORD *)&v61 + 1) = PoolWithTag;
                  if ( PoolWithTag )
                  {
                    v59 = 0;
                    memset(PoolWithTag, 0i64, WORD1(v61));
                    if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                      v59 = 1;
                    if ( (_WORD)v61 && !v59 )
                      v6 = -1073741790;
                    ExFreePoolWithTag(*((_QWORD *)&v61 + 1), 0x4D4158i64);
                  }
                }
                v38 = v57;
                goto LABEL_144;
              }
              v15 = a2 - 1;
              if ( !v15 )
              {
                v41 = *((_DWORD *)a3 + 5);
                if ( v41 != 1 && v41 != 2 && v41 != 7 && v41 != 4 && v41 != 11 && v41 != 3 )
                  return v6;
                v42 = *a3;
                if ( !(unsigned __int8)MmIsAddressValid(*a3) )
                  return v6;
                if ( !v42 )
                  return v6;
                v43 = sub_11D0C(v42);
                v44 = v43;
                if ( !v43 )
                  return v6;
                v45 = a3[1];
                if ( (unsigned __int8)sub_121A0(v43, v45) )
                {
                  v47 = v60;
                  v48 = 0;
                  if ( !v60 )
                  {
                    LODWORD(v61) = 0x2000000;
                    v49 = ExAllocatePoolWithTag(0i64, 512i64, 5063000i64);
                    *((_QWORD *)&v61 + 1) = v49;
                    if ( v49 )
                    {
                      memset(v49, 0i64, WORD1(v61));
                      if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                        v48 = 1;
                      if ( (_WORD)v61 && !v48 )
                        v6 = -1073741790;
                      v62 = 48;
                      v63 = 0i64;
                      v65 = 64;
                      v64 = (_WORD *)v44;
                      v66 = 0i64;
                      v67 = 0i64;
                      if ( (int)ZwOpenKey(0i64, 983103i64, &v62) < 0 )
                      {
                        if ( (unsigned __int8)sub_12174(&v61) )
                          v6 = 0;
                      }
                      else
                      {
                        ValueKey = ZwQueryValueKey(0i64, v45, 2i64, v69, 16, v68);
                        if ( ValueKey < 0 && ValueKey != -2147483643 && ValueKey != -1073741789 )
                          v6 = 0;
                      }
                      ExFreePoolWithTag(*((_QWORD *)&v61 + 1), 5063000i64);
                    }
                    v47 = 0;
                  }
                  if ( v41 == 4 && (v48 || v47) )
                  {
                    v51 = a3[1];
                    LOBYTE(v46) = 1;
                    if ( (unsigned int)RtlCompareUnicodeString(v51, asc_1C358, v46) )
                    {
                      LOBYTE(v52) = 1;
                      if ( (unsigned int)RtlCompareUnicodeString(v51, &unk_1C348, v52) )
                      {
                        LOBYTE(v53) = 1;
                        if ( (unsigned int)RtlCompareUnicodeString(v51, &unk_1C328, v53) )
                        {
                          LOBYTE(v54) = 1;
                          if ( !(unsigned int)RtlCompareUnicodeString(v51, &unk_1C338, v54) )
                            byte_1D1DB = *(_DWORD *)a3[3] == 1;
                        }
                        else
                        {
                          byte_1D170 = *(_DWORD *)a3[3] == 1;
                        }
                      }
                      else
                      {
                        byte_1D1DA = *(_DWORD *)a3[3] == 1;
                      }
                    }
                    else
                    {
                      byte_1D1DC = *(_DWORD *)a3[3] == 1;
                    }
                  }
                }
                v38 = v44;
                goto LABEL_144;
              }
              v16 = v15 - 1;
              if ( v16 )
              {
                v17 = v16 - 2;
                if ( v17 )
                {
                  v18 = v17 - 6;
                  if ( v18 )
                  {
                    if ( v18 == 16 )
                    {
                      if ( byte_1C3A4 )
                      {
                        v6 = -1073741790;
LABEL_24:
                        byte_1C3A4 = 0;
                        return v6;
                      }
                      v19 = *a3;
                      if ( !*a3 || !*(_WORD *)v19 )
                        goto LABEL_24;
                      if ( **(_WORD **)(v19 + 8) == 92 )
                      {
                        if ( !(unsigned __int8)sub_121A0(0i64, *a3) )
                          goto LABEL_24;
                        LODWORD(v61) = 0x2000000;
                        v20 = ExAllocatePoolWithTag(0i64, 512i64, 5063000i64);
                        *((_QWORD *)&v61 + 1) = v20;
                        if ( !v20 )
                          goto LABEL_24;
                        v21 = 0;
                        memset(v20, 0i64, WORD1(v61));
                        if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                          v21 = 1;
                        if ( (_WORD)v61 && !v21 )
                          v6 = -1073741790;
                        v62 = 48;
                        v63 = 0i64;
                        v65 = 64;
                        v64 = (_WORD *)v19;
                        v66 = 0i64;
                        v67 = 0i64;
                        v22 = ZwOpenKey(0i64, 983103i64, &v62);
                        v23 = *((_QWORD *)&v61 + 1);
                        if ( v22 < 0 )
                          v6 = 0;
                      }
                      else
                      {
                        v24 = a3[1];
                        if ( !(unsigned __int8)MmIsAddressValid(v24) )
                          goto LABEL_24;
                        if ( !v24 )
                          goto LABEL_24;
                        v25 = sub_11D0C(v24);
                        v26 = v25;
                        if ( !v25 )
                          goto LABEL_24;
                        if ( (unsigned __int8)sub_121A0(v25, v19) )
                        {
                          LODWORD(v61) = 0x2000000;
                          v27 = ExAllocatePoolWithTag(0i64, 512i64, 5063000i64);
                          *((_QWORD *)&v61 + 1) = v27;
                          if ( v27 )
                          {
                            v28 = 0;
                            memset(v27, 0i64, WORD1(v61));
                            if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                              v28 = 1;
                            if ( (_WORD)v61 && !v28 )
                              v6 = -1073741790;
                            v62 = 48;
                            v63 = 0i64;
                            v65 = 64;
                            v64 = (_WORD *)v19;
                            v66 = 0i64;
                            v67 = 0i64;
                            if ( (int)ZwOpenKey(0i64, 983103i64, &v62) < 0 )
                              v6 = 0;
                            ExFreePoolWithTag(*((_QWORD *)&v61 + 1), 5063000i64);
                          }
                        }
                        v23 = v26;
                      }
                      ExFreePoolWithTag(v23, 5063000i64);
                      if ( v6 == -1073741790 )
                      {
                        byte_1C3A4 = 1;
                        return v6;
                      }
                      goto LABEL_24;
                    }
                  }
                  else
                  {
                    if ( byte_1C3A3 )
                    {
                      v6 = -1073741790;
                    }
                    else
                    {
                      v29 = (_WORD *)*a3;
                      if ( v29 )
                      {
                        if ( *v29 )
                        {
                          if ( (unsigned __int8)sub_121A0(0i64, v29) )
                          {
                            LODWORD(v61) = 0x2000000;
                            v30 = ExAllocatePoolWithTag(0i64, 512i64, 5063000i64);
                            *((_QWORD *)&v61 + 1) = v30;
                            if ( v30 )
                            {
                              v31 = 0;
                              memset(v30, 0i64, WORD1(v61));
                              if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                                v31 = 1;
                              if ( (_WORD)v61 && !v31 )
                                v6 = -1073741790;
                              v62 = 48;
                              v63 = 0i64;
                              v65 = 64;
                              v64 = v29;
                              v66 = 0i64;
                              v67 = 0i64;
                              if ( (int)ZwOpenKey(0i64, 983103i64, &v62) < 0 )
                                v6 = 0;
                              ExFreePoolWithTag(*((_QWORD *)&v61 + 1), 5063000i64);
                              if ( v6 == -1073741790 )
                              {
                                byte_1C3A3 = 1;
                                return v6;
                              }
                            }
                          }
                        }
                      }
                    }
                    byte_1C3A3 = 0;
                  }
                  return v6;
                }
                v32 = *a3;
                if ( !(unsigned __int8)MmIsAddressValid(*a3) )
                  return v6;
                if ( !v32 )
                  return v6;
                v33 = sub_11D0C(v32);
                v34 = v33;
                if ( !v33 )
                  return v6;
                if ( (unsigned __int8)sub_121A0(0i64, v33) )
                  goto LABEL_79;
                v35 = sub_121A0(0i64, a3[1]);
              }
              else
              {
                v39 = *a3;
                if ( !(unsigned __int8)MmIsAddressValid(*a3) )
                  return v6;
                if ( !v39 )
                  return v6;
                v40 = sub_11D0C(v39);
                v34 = v40;
                if ( !v40 )
                  return v6;
                v35 = sub_121A0(v40, a3[1]);
              }
              if ( !v35 )
              {
LABEL_87:
                v38 = v34;
LABEL_144:
                ExFreePoolWithTag(v38, 5063000i64);
                return v6;
              }
LABEL_79:
              LODWORD(v61) = 0x2000000;
              v36 = ExAllocatePoolWithTag(0i64, 512i64, 5063000i64);
              *((_QWORD *)&v61 + 1) = v36;
              if ( v36 )
              {
                v37 = 0;
                memset(v36, 0i64, WORD1(v61));
                if ( (unsigned __int8)sub_11C9C(0xFFFFFFFFi64, &v61) || (unsigned __int8)sub_1210C(&v61) )
                  v37 = 1;
                if ( (_WORD)v61 && !v37 )
                  v6 = -1073741790;
                ExFreePoolWithTag(*((_QWORD *)&v61 + 1), 5063000i64);
              }
              goto LABEL_87;
            }
          }
        }
      }
    }
    return 0i64;
  }
  return result;
}