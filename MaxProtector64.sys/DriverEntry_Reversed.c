__int64 __fastcall DriverEntry(_QWORD *a1, unsigned __int16 *a2)
{
  unsigned __int16 v4; // ax
  unsigned __int16 v5; // ax
  bool v6; // al
  __int64 result; // rax
  int started; // ebx
  __int64 v9; // [rsp+50h] [rbp-28h] BYREF
  int v10[4]; // [rsp+58h] [rbp-20h] BYREF

  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v9 = 0i64;
  v10[0] = 0;
  byte_1C3A0 = 0;
  byte_1D1DA = 0;
  byte_1D170 = 0;
  byte_1D1DB = 0;
  byte_1D1DC = 0;
  WdmlibIoCreateDeviceSecure(
    (_DWORD)a1,
    1024,
    (unsigned int)DeviceName,
    9,
    256,
    0,
    (__int64)"~",
    (__int64)v10,
    (__int64)&v9);
  IoCreateSymbolicLink(SymbolicName, DeviceName);
  word_1C3A8 = 0;
  v4 = *a2;
  if ( a2[1] >= *a2 )
    v4 = a2[1];
  word_1C3AA = v4;
  qword_1C3B0 = ExAllocatePoolWithTag(0i64, v4, 'BTP');
  if ( qword_1C3B0 )
  {
    sub_11008((__int64)&word_1C3A8, a2);
    sub_126A8((__int64)&word_1C3A8);
  }
  word_1C3B8 = 0;
  v5 = *a2;
  if ( a2[1] >= *a2 )
    v5 = a2[1];
  word_1C3BA = v5;
  qword_1C3C0 = ExAllocatePoolWithTag(0i64, v5, 'BTP');
  if ( qword_1C3C0 )
    sub_11008((__int64)&word_1C3B8, a2);
  a1[28] = IRP_MJ_DEVICE_CONTROL;
  a1[14] = sub_11214;
  a1[16] = sub_11214;
  a1[32] = sub_11214;
  a1[13] = DriverUnload;
  byte_1D1DA = sub_12364((__int64)a2, (__int64)&unk_1C348);
  v6 = sub_12364((__int64)a2, (__int64)asc_1C358);
  DriverObjectPtr = (__int64)a1;
  byte_1D1DC = v6;
  result = FltRegisterFilter(a1, &unk_15F70, &RetFilter);
  if ( (int)result >= 0 )
  {
    started = FltStartFiltering(RetFilter);
    if ( started < 0 || (int)CmRegisterCallback(sub_1F068, a1[6], &qword_1C3C8) < 0 )
    {
      FltUnregisterFilter(RetFilter);
      return (unsigned int)started;
    }
    else
    {
      qword_1D180 = 0i64;
      qword_1D188 = 0i64;
      qword_1D190 = 0i64;
      word_1D198 = 0;
      qword_1D1C0 = 0i64;
      qword_1D1C8 = 0i64;
      qword_1D1D0 = 0i64;
      word_1D1D8 = 0;
      qword_1D1E0 = 0i64;
      qword_1D1E8 = 0i64;
      qword_1D1F0 = 0i64;
      word_1D1F8 = 0;
      byte_1C3A0 = 1;
      return 0i64;
    }
  }
  return result;
}