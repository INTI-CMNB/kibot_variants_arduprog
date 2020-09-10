#!/usr/bin/make
DEBUG=
OUT_DIR=Generated

all: erc drc ardu_prog

erc:
	kibot $(DEBUG) -d $(OUT_DIR) -s run_drc -i

drc:
	kibot $(DEBUG) -d $(OUT_DIR) -s run_erc -i

ardu_prog:
	kibot $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/default -g variant=default -s all
	kibot $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/USB -g variant=USB -s all
	kibot $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/XTAL -g variant=XTAL -s all

.PHONY: ardu_prog erc drc
