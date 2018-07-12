# Makefile for the usb2000 spectrometer.

# some legacy cleanup; does not generically support 2.4 kernels anymore
# 17.3.215chk


# directory for the driver for the local OS version; legacy code
sourcedir=$(PWD)/driver
loaderdir=hotplug
loadersrc1=$(loaderdir)/udevsrc
loadertarget1=$(loaderdir)/60-oceanoptics.rules
devicegroup=$(shell id -gn)

all: driver hotplug apps

# execute version-specific makefile
.PHONY: driver
driver:	$(loadertarget1)
	$(MAKE) -C /lib/modules/`uname -r`/build M=$(sourcedir)

$(loadertarget1): $(loadersrc1)
	cat $(loadersrc1) | sed "s/users/$(devicegroup)/g" >$(loadertarget1)

.PHONY: apps
apps:
	$(MAKE) -C apps

.PHONY: clean
clean:	
	rm -f $(loadertarget1)
	rm -f driver/*.o driver/*.mod.* driver/*.ko
	rm -fr driver/.[ub]*
	rm -fr driver/.tmp*
	rm -fr *~
	rm -f driver/Module.symvers
	rm -f driver/modules.order
	$(MAKE) -C apps clean

udev: 	driver $(loadertarget1)
	sudo $(MAKE) -C /lib/modules/`uname -r`/build M=$(sourcedir) modules_install
	sudo /sbin/depmod -a
	sudo cp $(loadertarget1) /etc/udev/rules.d/
