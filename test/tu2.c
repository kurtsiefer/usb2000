/* program to talk to the USB test device - reading a spectrum */

#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "usb2000.h" 

#define DEVICENAME "/dev/ioboards/Spectrometer0"
int main(int argc, char *argv[]) {
    int handle; /* file handle for usb device */
    int retval;
    int i;
    unsigned char data2[4100];
    char plaintext[30];
    
    handle=open(DEVICENAME,O_RDWR);
    if (handle==-1) {
	perror("usbtester tu");
	return -1;
    }

    ioctl(handle,InitializeUSB2000);

    sleep(1);

    //ioctl(handle,SetTriggerMode,0);
    
    //sleep(1);
    //ioctl(handle,SetIntegrationTime,1234);
    //sleep(1);


   for (i=1;i<4096+16;i++) data2[i]=0;

    retval=ioctl(handle,RequestSpectra,&data2);
    
 
    if (retval) {
	printf("retval from ioctl: %d\n",retval);
    } else {
	plaintext[0]=0;
	for (i=0;i<256;i++) { 
	    if ((i & 15)==0) {
		plaintext[16]=0;
		printf("   %s\n %03x:",plaintext, i);
	    } 
	    printf(" %02x",data2[i]); 
	    plaintext[i&15]=((data2[i]>31) &&(data2[i]<127))?data2[i]:'.';
	}
	plaintext[16]=0;
	printf("   %s\n",plaintext);
    }

    close(handle);

    return 0;
	
}
