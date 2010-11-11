# Makefile for the usb2000 spectrometer.
# in pogress, not for release yet. 

# For multiple SuSE versions. Currently
# generates the drivers and uploads different hotpluggers
#
# ToDo: - should allow to choose different install directories than
#	  the source directories.
#	- Should use a cleaner install routine
# 
# current status: started writing 25.4.09chk


# directory for the driver for the local OS version
localdir=$(subst /,\/,$(PWD))
version="2.6"
loaderdir=hotplug
loadersrc1=$(loaderdir)/udevsrc
loadertarget1=$(loaderdir)/60-oceanoptics.rules
devicegroup=$(shell id -gn)

all: driver hotplug apps

# execute version-specific makefile
.PHONY: driver
driver:	$(loadertarget1) $(loadertarget2)
	$(MAKE) -C $(version)

$(loadertarget1): $(loadersrc1)
	cat $(loadersrc1) | sed "s/DRIVERPATH/$(localdir)\/2.6/g" | sed "s/users/$(devicegroup)/g" >$(loadertarget1)


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
	sudo cp $(loadertarget1) /etc/udev/rules.d/
