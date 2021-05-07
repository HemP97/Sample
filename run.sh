#!/bin/sh

iverilog -o simple.vvp simple.sv simple_tb.sv
vvp simple.vvp
if [ $1 = "lint" ]
then
    verilator --lint-only -Wall simple.sv
elif [ $1 = "sim" ]
then
    gtkwave simple.vcd
fi
