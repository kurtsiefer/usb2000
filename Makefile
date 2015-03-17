# Makefile for the usb2000 spectrometer.

# some legacy cleanup; does not generically support 2.4 kernels anymore
# 17.3.215chk


# directory for the driver for the local OS version; legacy code
sourcedir=$(PWD)/2.6
loaderdir=hotplug
loadersrc1=$(loaderdir)/udevsrc
loadertarget1=$(loaderdir)/60-oceanoptics.rules
devicegroup=$(shell id -gn)

all: driver hotplug apps

# execute version-specific makefile
.PHONY: driver
driver:	$(loadertarget1) $(loadertarget2)
	$(MAKE) -C /lib/modules/`uname -r`/build M=$(sourcedir)

$(loadertarget1): $(loadersrc1)
	cat $(loadersrc1) | sed "s/users/$(devicegroup)/g" >$(loadertarget1)

.PHONY: apps
apps:
	$(MAKE) -C apps

.PHONY: clean
clean:	
	rm -f $(loadertarget1)
	rm -f 2.6/*.o 2.6/*.mod.* 2.6/*.ko
	rm -fr 2.6/.+
	rm -fr *~
	rm -f 2.6/Module.symvers
	$(MAKE) -C apps clean

udev: 	driver $(loadertarget1)
	sudo $(MAKE) -C /lib/modules/`uname -r`/build M=$(sourcedir) modules_install
	sudo /sbin/depmod -a
	sudo cp $(loadertarget1) /etc/udev/rules.d/
