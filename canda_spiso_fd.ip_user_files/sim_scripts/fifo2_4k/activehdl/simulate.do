onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo2_4k -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo2_4k xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo2_4k.udo}

run -all

endsim

quit -force
