/* program to talk to the USB test device */
 
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include "usb2000.h"

#define DEVICENAME "/dev/ioboards/Spectrometer0"
int main(int argc, char *argv[]) {
    int value;
    int handle; /* file handle for usb device */


    handle=open(DEVICENAME,O_RDWR);
    if (handle==-1) {
	perror("usbtester tu");
	return -1;
    }

    /* extract argument from command line */
    if (argc==2) {
	sscanf(argv[1],"%d",&value);
	ioctl(handle,SetIntegrationTime,value);
	printf("set integ value to %d\n",value);
    }

    close(handle);
    return 0;
	
}
