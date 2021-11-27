# DRIVER INITIALIZATION
The Driver Initialization Function is at offset 0x20008. The Driver begins by setting some global and
local variables to zero. It also does a __security_check_cookie at the beginning and end of the function.
It makes a call to WdmlibIoCreateDeviceSecure, and perhaps this is where it creates a device object and
other stuffs. We'll investigate this function later on. Right after, it sets up a symbolic link and begins
initializing the IRP dispatch Routines. IRP_MJ_CREATE, IRP_MJ_CLOSE and IRP_MJ_SET_INFORMATION
were all initialized to sub_11008. IRP_MJ_DEVICE_CONTROL was set to sub_11008.

The driver then made a call to FltRegisterFilter() and if successful, further made a function call to
sub_110B4; The driver exits the DriverEntry by returning the error code returned by the call to FltRegisterFilter.

[The reversed DriverEntry](DriverEntry_Reversed.c)

# WdmlibIoCreateDeviceSecure
This function is responsible for creating a device object for the driver and setting up some callback
routines by making a call to WdmlibInit(). Lets explain a bit what this function does.

WdmlibInit() resolves the base addresses of kernel functions IoCreateDeviceSecure and 
IoValidateDeviceIoControlAccess. It then creates an object for the driver with device name
"\\Device\\MaxProc64". All this is done in a callback routines which if finally called when the device is
set up and ready to run.

# DISPATCH ROUTINES
# sub_11008
This function is called when IRP_MJ_CREATE, IRP_MJ_CLOSE and IRP_MJ_SET_INFORMATION dispatch routines
are invoked. It basically sets Irp->IoStatus.Status and Irp->IoStatus.Information to zero. I'm guessing 
this function does literally nothing other than return STATUS_success.
[The reversed function](sub_11008_Reversed.c)

# sub_11030
This function is called when a user land process inetarcts with the kernel driver, that's when it receives an IRP_MJ_DEVICE_CONTROL request. On entry the driver gets the ioctl code passed with the IRP request and compares it against known codes. When the ioctl code passed is 0x220007 it sets the global variable byte_1B388 to 0 and when 0x220015 is passed, it sets byte_1B388 to 1.

 The interesting code here is when the ioctl code passed is 0x220019. It first gets the index value passed from the user application and uses it as an array index to store the pid received after the call to PsGetCurrentProcess. This likely means on every succesful call to this ioctl code, the program stores its process ID value in at a particular index which might later be retrieved for a different operation. This will be investigated later. Point to note here is, the index received from the user application is checked if it is not equal to 0x3c or less than 0x42. if any of these checks fails, it exits this ioctl function.

 
 # sub_110B4
 This function is the last function called in DriverEntry and this essentially initializes a
 OB_CALLBACK_OPERATION and calls ObRegisterCallback. This function is a way for the antivirus engine to filter calls to open a handle in its protected space. Lets further delve into the pre callback routine.

 # sub_111C0
 This function is part of the callback operations being registered by the driver, let's delve into its implementation. 