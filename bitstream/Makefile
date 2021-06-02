all:
	bootgen -image Full_Bitstream.bif -arch zynq -process_bitstream bin

program:
	echo 0 > /sys/class/fpga_manager/fpga0/flags    
	mkdir -p /lib/firmware
	cp auction.bit.bin /lib/firmware/
	echo auction.bit.bin > /sys/class/fpga_manager/fpga0/firmware
