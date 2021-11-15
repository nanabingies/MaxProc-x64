NTSTATUS DriverEntry(PDRIVER_OBJECT pDriverObject, PUNICODE_STRING registryPath){
    [r11-28] = 0;
    var_20 = 0;
    *qword_1B380 = 0; // global variable
    var_1c = 0;
    var_18 = 0;
    var_14 = 0;
    *byte_1B388 = 0; // global var
    [r11-38] = &[r11-28];
    [r11-40] = &[r11-20];
    [r11-48] = asc_13480; // "~"

    WdmlibIoCreateDeviceSecure(pDriverObject, 0x400, "\\Device\\MaxProc64", 0x9, 0x100, 0x0);
    IoCreateSymbolicLink(&asc_1B310, &asc_1B300); /* "\\DosDevices\\MaxProc64" */

    pDriverObject->MajorFunction[IRP_MJ_CREATE] = sub_11008();
    pDriverObject->MajorFunction[IRP_MJ_CLOSE] = sub_11008();
    pDRiverObject->MajorFunction[IRP_MJ_SET_INFORMATION] = sub_11008();
    pDriverObject->MajorFunction[IRP_MJ_DEVICE_CONTROL] = sub_11030();

    NTSTATUS ntStatus = FltRegisterFilter()
    if (NT_SUCCESS(ntStatus)){
	    sub_110B4();
    }
    return ntStatus;
}