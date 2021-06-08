VERSION ?= auction_spec


all:
	bootgen -image ${VERSION}.bif -arch zynq -process_bitstream bin

program:
	echo 0 > /sys/class/fpga_manager/fpga0/flags    
	mkdir -p /lib/firmware
	cp ${VERSION}.bit.bin /lib/firmware/
	echo ${VERSION}.bit.bin > /sys/class/fpga_manager/fpga0/firmware
