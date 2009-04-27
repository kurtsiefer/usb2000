/* program to talk to the USB test device */

#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include "usb2000.h" 

#define DEVICENAME "/dev/ioboards/Spectrometer0"
int main(int argc, char *argv[]) {
    int value;
    int handle; /* file handle for usb device */
    int retval;

    char data[30];

    handle=open(DEVICENAME,O_RDWR);
    if (handle==-1) {
	perror("usbtester tu");
	return -1;
    }

    ioctl(handle,InitializeUSB2000);

    do {
	/* extract argument from command line */
	if (argc==2) {
	    sscanf(argv[1],"%d",&value);
	} else {
	    printf("value (-1: terminate):");
	    scanf("%d",&value);
	}
	if (value==-1) break;
	data[0]=value;
	retval=ioctl(handle,QueryInformation,&data); /* send to USB device */
	printf("retval from ioctl: %d\n",retval);
	printf("return byte 0/1: %d %d text: >%15s<\n",
	       data[0],data[1],&data[2]);
    } while ((argc!=2) && (value !=-1));

    close(handle);
	
}
