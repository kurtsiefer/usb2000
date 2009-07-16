/* usb2000.h:  IOCTL definitions for the ocean optics spectrometer 
               driver. Details see below. 
		  
 Copyright (C) 2009      Christian Kurtsiefer, National University
                         of Singapore <christian.kurtsiefer@gmail.com>

 This source code is free software; you can redistribute it and/or
 modify it under the terms of the GNU Public License as published
 by the Free Software Foundation; either version 2 of the License,
 or (at your option) any later version.

 This source code is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Please refer to the GNU Public License for more details.

 You should have received a copy of the GNU Public License along with
 this source code; if not, write to:
 Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

--
   Definitions of ioctl commands passed to the driver. They essentially map
   to the USB commands of the device (TBD), but there are some generic
   commands which allow to play with the interface from user space.

   STATUS:   first version 26.4.2009
 */

/* confirmed operation: */
#define  InitializeUSB2000   1    /* needs no argument */
#define  SetIntegrationTime  2    /* takes a 32bit value as argument */
#define  QueryInformation    5    /* takes  arg in byte 0, returns 17 bytes 
				     the argument must be a pointer to an array
				     of char of at least 17 bytes. */
#define  RequestSpectra      9    /* returns 4097 bytes of data. The argument
				     of the ioctl call is a pointer to an array
				     of char of at least 4097 bytes size */
#define  QueryStatus      0xfe    /* returns 16 bytes. The argument is a
				     pointer to an array of char of at least
				     16 bytes size */

/* ioctls for the USB driver which have no direct USB firmawre command
   equivalent */
#define EmptyPipe             0x200 /* reads the reminder of the EP2 data */
#define TriggerPacket         0x109 /* issues a trigger cmd, but does not
				       read. This is a no-blocking version
				       of a RequestSpectra command */

/* unconfirmed operation */ 
#define  SetStrobeEnable     3    /* takes integer argument */
#define  SetShutdownMode     4    /* takes integer argument */
#define  SetTriggerMode     10    /* takes trigger mode as argument */
#define  ReadRegister     0x6b    /* returns 2 bytes into a user variable. The
				     argument holds a pointer to int, which
				     initially also contains the rgister adr. */
#define  ReadPCBTemperature 0x6c  /* returns 2 bytes into a user variable. The
				     argument holds a pointer to int. */

#define SetIntegrationTime2   0x102 /* takes a 16bit value as argument */
#define SetTimeout            0x201 /* sets the timeout for a EP2 read event
				       argument is in miliseconds */

#define GetDeviceID           0x999 /* retrieve the USB device ID */
