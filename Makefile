obj-m := fingermarathon.o
fingermarathon-objs += main.o

# Make sure the whitespaces before the "make" commands below are real tabs!
all:
	make -C $(KDIR) EXTRA_CFLAGS=-fno-pic M=$(PWD) modules
 
clean:
	make -C $(KDIR) M=$(PWD) clean
