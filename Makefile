#KDIR = /usr/src/$(shell uname -r)
#PWD  = $(shell pwd)
#obj-m = hello.o


#ALL:
#	make -C $(KDIR) M=$(PWD) modules



TARGET=hello
#KDIR is different on the other PC
#KDIR = /usr/src/$(shell uname -r)
KDIR=/lib/modules/4.15.0-162-generic/build
PWD=$(shell pwd)
obj-m:=$(TARGET).o
default:
	make -C $(KDIR) M=$(PWD) modules


clean:
	 rm -rf *.cmd *.d *.ko *.mod.c *.symvers *.order *.o
