#!/bin/bash
sdcc main.c
packihx main.ihx > all.hex
rm main.{ihx,lnk,lst,map,mem,rel,rst,sym} -f