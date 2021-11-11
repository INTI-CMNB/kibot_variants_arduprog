#!/usr/bin/make
KIBOT=kibot
DEBUG=
OUT_DIR=Generated

all: erc drc ardu_prog

erc:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR) -s run_erc -i

drc:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR) -s run_drc -i

ardu_prog:
	$(KIBOT) $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/default -g variant=default -s all
	$(KIBOT) $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/USB -g variant=USB -s all
	$(KIBOT) $(DEBUG) -c ardu_prog.kibot.yaml -e t1.sch -d $(OUT_DIR)/XTAL -g variant=XTAL -s all

.PHONY: ardu_prog erc drc
