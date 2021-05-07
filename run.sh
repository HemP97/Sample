#!/bin/sh

if [ $1 = "lint" ]
then
    verilator --lint-only -Wall sample.sv
elif [ $1 = "sim" ]
then
    iverilog -o sample.vvp sample.sv sample_tb.sv
    vvp sample.vvp
    gtkwave simple.vcd
elif [ $1 = "clean" ]
then
    rm -rf sample.vvp simple.vcd
fi
