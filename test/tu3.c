/* program to talk to the USB test device - reading a spectrum */

#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "usb2000.h" 

#define DEVICENAME "/dev/ioboards/Spectrometer0"

/* coefficients to convert into wavelength */
double lam_coeff[4];


void pd2(unsigned char *data2) {
    int i;
    for (i=0;i<2048;i++) {
	printf("%d %d\n", i, data2[(i%64)+(i>>6)*128+64]*256 +
	       data2[(i%64)+(i>>6)*128]);
    }
}
void pd3(unsigned char *data2) {
    int i;
    double l;
    for (i=0;i<2048;i++) {
	l=lam_coeff[0]+i*(lam_coeff[1]+i*(lam_coeff[2]+i*lam_coeff[3]));
	printf("%6.2f %d\n", l, data2[(i%64)+(i>>6)*128+64]*256 +
	       data2[(i%64)+(i>>6)*128]);
    }
}


void printData(unsigned char *data2, int max) {
    char plaintext[30];
    int i ;
    plaintext[0]=0;
	for (i=0;i<max;i++) { 
	    if ((i & 15)==0) {
		plaintext[16]=0;
		printf("   %s\n %03x:",plaintext, i);
	    } 
	    printf(" %02x",data2[i]); 
	    plaintext[i&15]=((data2[i]>31) &&(data2[i]<127))?data2[i]:'.';
	}
	plaintext[16]=0;
	printf("   %s\n",plaintext);
	printf("last byte: %02x\n",data2[4096]);
}

int main(int argc, char *argv[]) {
    int handle; /* file handle for usb device */
    int retval;
    int i;
    unsigned char data2[4100];
    
    handle=open(DEVICENAME,O_RDWR);
    if (handle==-1) {
	perror("usbtester tu");
	return -1;
    }

    /* extract timing parameter */
    

    ioctl(handle,InitializeUSB2000);

    /* get wavelength coefficients */
    for (i=0;i<4;i++) {
	data2[0]=i+1;
	ioctl(handle,QueryInformation,&data2);
	data2[17]=0;
	sscanf((char *)&data2[2],"%lf",&lam_coeff[i]);
	//printf("c%d = %f\n",i,lam_coeff[i]);
    }
    

    //sleep(1); 

    //ioctl(handle,SetTriggerMode,1);

    ioctl(handle,SetTimeout,20);
    do {
    retval=ioctl(handle,EmptyPipe,&data2); 
	//printf("emty: rv=%d\n",retval);
	//if (retval==0) printData(data2);
    } while (retval!=110);  /* wait until line is empty */

    

    
    //sleep(1);
    //ioctl(handle,SetIntegrationTime,1000);
    //sleep(1);

    ioctl(handle,SetTimeout,10000);

    //ioctl(handle,TriggerPacket);
    //for (i=1;i<4096+16;i++) data2[i]=0;
 
    //sleep(1);

    
    retval=ioctl(handle,RequestSpectra,&data2);
    
    if (retval) {
	fprintf(stderr,"retval from ioctl: %d\n",retval);
    } else {
	//printData(data2,256);
	pd3(data2);
    }
 
    //ioctl(handle,QueryStatus,&data2);
    //printf("status:\n");printData(data2,16);


//retval=ioctl(handle,EmptyPipe,&data2); 
    //printf("emty: rv=%d\n",retval);

    close(handle);

    return 0;
	
}
