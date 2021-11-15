sub_110B4(){
    NTSTATUS ob = ObGetFilterVersion();
    OB_CALLBACK_OPERATION var_38;

    memset(&var_78, 0x0, 0x20);
    memset(&var_38, 0x0, 0x28);
    memset(&var_58, 0x0, 0x20);

    var_40 = 0;
    var_58 = LOWORD(0x78);

    if (ob == LOWORD(0x100)){
        var_38.Version = LOWORD(0x100);
        OB_OPERATION_REGISTRATION or = {PsProcessType, OB_OPERATION_HANDLE_CREATE, sub_111C0, nullsub_1}
        var_38.Operationregistration = &or;
        RtlInitUnicodeString(&var_30, "328620");
        obReg = ObRegisterCallbacks(&var_38, &qword_1B380);
        if (NT_SUCCESS(obReg)){
	        *byte_1B388 = 1;
        }
    }
}