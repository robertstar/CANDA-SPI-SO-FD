onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo2_4k_opt

do {wave.do}

view wave
view structure
view signals

do {fifo2_4k.udo}

run -all

quit -force
