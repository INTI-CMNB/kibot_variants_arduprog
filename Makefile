#!/usr/bin/make
KIBOT?=kibot
DEBUG?=
OUT_DIR=Generated

all: erc drc ardu_prog

erc:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR) -s run_drc -i

drc:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR) -s run_erc -i

var_default:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR)/default -g variant=default -s run_erc,run_drc

var_usb:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR)/USB -g variant=USB -s run_erc,run_drc

var_xtal:
	$(KIBOT) $(DEBUG) -d $(OUT_DIR)/XTAL -g variant=XTAL -s run_erc,run_drc

ardu_prog: var_default var_usb var_xtal

.PHONY: ardu_prog erc drc var_default var_usb var_xtal
