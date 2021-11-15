NTSTATUS sub_11008(PDEVICE_OBJECT pDeviceObject, PIRP pIrp){
    pIrp->IoStatus.Status = 0;
    pIrp->IoStatus.Information = 0;
    IoCompleteRequest(pirp, IO_NO_INCREMENT);
    return STATUS_SUCCESS;
}