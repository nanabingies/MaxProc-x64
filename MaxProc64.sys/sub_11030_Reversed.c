NTSTATUS sub_11030(PDEVICE_OBJECT pDeviceObject, PIRP pIrp){
    PIO_STACK_LOCATION ioStack = IoGetCurrentIrpStackLocation(pIrp);
    ULONG ctlCode = ioStack->IoControlCode;
    switch (ctlCode){
    case 0x220007:{
        *byte_1B388 = 0;
    }break;

    case 0x220015:{
        *byte_1B388 = 1;
    }break;

    case 0x220019:{
        ULONG *buffer = Irp->AssociatedIrp.SystemBuffer;
        if (*buffer < 0x42 || *buffer == 0x3c){
	        ULONG pid = PsGetCurrentProcessId();
	        unk_1B390[buffer] = pid;
        }
    }break;

    default:
        break;
    }

    Irp->IoStatus.Status = 0;
    IofCompleteRequest(pIrp, IO_NO_INCREMENT);
    return STATUS_SUCCESS;
}
