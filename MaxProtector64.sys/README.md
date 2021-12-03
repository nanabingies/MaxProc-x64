# DriverEntry
The function sets up a named device object by calling WdmlibIoCreateDeviceSecure which device name MaxProtector64. It proceeds to create a symbolic name for the device before making 2 successive calls to ExAllocatePoolWithTag to allcoate memory in NonPagedPool.

The driver finishes off by setting it's IRP dispatch handlers. IRP_MJ_CREATE and IRP_MJ_CLOSE are both set to sub_11214 and IRP_MJ_DEVICE_CONTROL is set to sub_1123C. The driver then sets its Unload routine to sub_1111C and makes a call to sub_12364. This function reads a value from the registry and stores it in an allocated heap before comparing it to check if it's the value 'one'. It makes another call to sub_12364 this time querying the string 'ProtectSystemRegistry'. 

The driver registers itself as a minifilter driver by calling FltRegisterFilter and starts the filtering process  by calling FltStartFiltering. The driver then registers its callback routine sub_1F068 then sets some global values to 0 before exiting.

[Reversed_DriverEntry](DriverEntry_Reversed.c)

# DISPATCH ROUTINES
# sub_11214
This routine does nothing much other set its Irp->IoStatus.Status to STATUS_SUCCESS and Irp->IoStatus.Information to 0. It calls IofCompleteRequest which indicates that the driver has completed all processing for the given I/O request.

# IRP_MJ_DEVICE_CONTROL
This routines is the Device Control handler. It starts of by comparing the IoControlCode passed to known values and branches based on the value. If the IoControlCode is 0x220007, it sets global variable byte_1C3A0 to zero and exits gracefully. If the IoControlCode is 0x220015, it also sets the global variable byte_1C3A0 to one. If IoControlCode passed is 0x220009, it gets a pointer to the AssociatedIrp.SystemBuffer and dereferences it into another variable. This is the buffer passed in from user mode to the kernel driver. It subtracts 0x41 from user buffer and compares the result to 0x19. If it's still greater than that then it jumps to the exit routine. If it's less or equal, then it uses the result as an index to store values in an array. If the IoControlCode passed is 0x22000D or 0x220011, it does the same checking operations as in the previous ioctl but if the result is 0x2D, it sets some global variables to zero and jumps to exit. If the result is less than 0x19, it will be used as an index to store values in an array. If the IoControlCode is 0x220019, it gets a pointer to the user buffer and uses it as an index to store the current thread's process into an array. If IoControlCode is 0x22001D, it checks a global array and deletes all pointers in the array. The function exits by calling IofCompleteRequest to signal the end of the IRP.

# Driver Unload
This routine first sets some global variables to 0 then unregisters the filter driver. It then unregisters the callback routines that were registered at Driver Initialization and frees all memory that were allocated in the driver initialization process. It then deletes the device driver created as well as any symbolic links created earlier.