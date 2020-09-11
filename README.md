# KiBot variants example

This is an example of how to use variants with [KiBot](https://github.com/INTI-CMNB/KiBot).

## Index

* [Definition](#Definition)
* [Implementation](#Implementation)
* [Example](#Example)
* [**Result**](#Results)

## Definition

In the KiBot context a variant is what is usually known as an *assembly variant*.
So the idea is that you have **one** PCB, but various different *variants* (*flavors*) of the product.
The difference between them is which components are used.

Typical applications are:
- Optional functionality
- Support for different normatives
- Testing purposes

Currently KiBot can handle which components are soldered, not different values.
This functionality will be added in the future.


## Implementation

To create a variant you must add specific fields to the components in the schematic.
Currently KiBot supports two methodes:

- **KiBoM style**: one field, usually named *Config*, contains information to include or exclude a component for one or more variants.
- **IBoM style**: one field assigns the component to a group, you provide lists to exclude or include certain groups.


## Example

The best way to explain how to use it is using an example.
We start with an hypothetic design: the *programmer* section of the [Arduino UNO R3](https://content.arduino.cc/assets/UNO-TH_Rev3e_sch.pdf).
The schematic is the following:

[![Schematic](https://inti-cmnb.github.io/kibot_variants_arduprog/images/schematic.jpg)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/schematic.pdf)

This is basically an ATMega8U2 used as a bridge between USB and the Arduino UNO serial port.
So we will assume this board is useful. We'll also assume we have three possible uses:

- The full board with USB support. Will name it **USB** variant.
- A version of the board that we want to use as a plain microcontroller. So we remove the USB. Will name it **XTAL** variant.
- An even more modest version where we use the internal clock oscillator and we can remove the crystal. Will name it **default** variant.

Additionally:

- In the USB version we want to remove the ICSP1 connector. We will flash the CPU in-house and the user won't need to do it. ICPS1 will be solded for the other two variants.
- The J4 connector is completely optional. It won't be included in any variant.

The first step is to choose a variant mechanism. For this example we will use the [KiBoM](https://github.com/SchrodingersGat/KiBoM) style.
This style puts more information inside the schematic, so you need to provide less information from outside.

Now we choose a format we must add the corresponding *tags*. We can identify four groups of components here:

- The USB components (J2, F1, R1, R2, RV1, RV2 and FB1). Used only for the **USB** variant.
- The ICSP1 connector (J5). Excluded from the **USB** variant.
- The crystal components (R3, Y1, C3, C4). Used only for the **USB** and **XTAL** variant.
- The 2x2M connector (J4). Never used.

To mark components that will be added to the board only for certain variant KiBoM uses **+VARIANT**.
And when we want to exclude a component from a variant we use **-VARIANT**.

We'll use the default *Config* field. So lets see what we'll use for each group.

- For the USB components we'll use **+USB** because these components will be used only for the **USB** variant.
- For the ICSP1 connector we'll use **-USB** because this component will be solded for all variants, except **USB**.
- Now the crystal stuff is a little bit more complex. We could use **+XTAL**, but then these components won't be included in the **USB** version.
  So what we use is **+USB,+XTAL** this makes the components available for both variants.
- The J4 case is handled in a different way. KiBoM filters removes any component mentioning the **DNF** word in the config. So we can just use it.

Now we know what to use we'll add the *Config* field to the mentioned components.
To make it faster we can add it to one component, lets say to J4, and then use the *Tools -> Edit symbol fields* menu option.
Here is what we should have in the *Config* field:

![Symbol fields dialog](https://inti-cmnb.github.io/kibot_variants_arduprog/images/SymbolFields.png)

This is all we need to add to the schematic. Now is time to configure KiBot.

If you don't know about the KiBot file format you could be interested in reading the following [explanation](https://github.com/INTI-CMNB/KiBot/blob/master/docs/KiPlotYAML.md).
YAML files are self explanatory, so perhaps you can go on even without knowing about the format.

Ok, now we have to define the three variants we mentioned before: **USB**, **XTAL** and **default**.
All variants will be put in a section named **variants**. So we'll create a list of items, each item is a variant definition.
Lets start with the simplest: **default**. Here is what we use:

```yaml
variants:
  - name: 'default'
    comment: 'Minimal PCB no USB'
    type: kibom
```

This is the section **variants** and its first item. The name is **default** and we added a comment to remmember what this variant is.
We also define the type as **kibom**, what we called *style*.

Now lets go for the second, here we add:

```yaml
  - name: 'USB'
    comment: 'Full board'
    type: kibom
    file_id: _USB
    variant: USB
```

You'll notice two new attributes: `file_id` and `variant`. The first is what we'll add to the names of the files in order to distinguish from the **default**.
And the second ... well this is just the *tag* we used to mark **USB** components.

You should be able to figure out how to define the third variant, here we go:

```yaml
  - name: 'XTAL'
    comment: 'No USB, but crystal included'
    type: kibom
    file_id: _XTAL
    variant: XTAL
```

A little bit long, but simple. Here is all together:

```yaml
variants:
  - name: 'default'
    comment: 'Minimal PCB no USB'
    type: kibom

  - name: 'USB'
    comment: 'Full board'
    type: kibom
    file_id: _USB
    variant: USB

  - name: 'XTAL'
    comment: 'No USB, but crystal included'
    type: kibom
    file_id: _XTAL
    variant: XTAL
```

This is all we need to define the variants. Of course our config file must define what to do with the variants.
But this document is about the variants, we won't focuse on the rest.

What now? How can we tell KiBot what variant to use?
There are three methodes:

1. Use the `variant` option for an specific output.
2. Select a default variant to be used by all outputs that doesn't specify a variant.
3. Same as above but from the command line.

The simplest way is the third. In this case we just need to add `-g variant=NAME` to the command line.
Lets say we have a copy of the repo containing this example and we want to generate the BoM.
In our example the HTML BoM output is named `bom_html` so we can just run:

```bash
kibot -s all -d Result bom_html
```

This will create `Result/BoM/t1-bom.html`. To generate the BoM for the **USB** variant we can use:

```bash
kibot -s all -d USB -g variant=USB bom_html
```

And we'll get a different BoM in `USB/BoM/t1-bom_USB.html`.

The CI/CD workflow for this repo runs the ERC and DRC checks and them generates all the configured outputs for the three variants.
The commands used are approximately these:

```bash
kibot -d Generated -s run_drc -i
kibot -d Generated -s run_erc -i
kibot -d Generated/default -g variant=default -s all
kibot -d Generated/USB -g variant=USB -s all
kibot -d Generated/XTAL -g variant=XTAL -s all
```

The first two are the checks, no output generated. The other three skips the checks and generates all outputs for each variant.
All files are stored in the `Generated` folder.


# Results

Here is what we get, you can download the results obtained on GitHub CI/CD Actions from [here](https://github.com/INTI-CMNB/kibot_variants_arduprog/suites/1173923934/artifacts/17126083).

## Schematic PDF

Excluded components are marked with a cross:

Default variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic.pdf)

XTAL variant
[![XTAL variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic_XTAL.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic_XTAL.pdf)

USB variant
[![USB variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic_USB.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-schematic_USB.pdf)


## Bill of Materials (HTML and XLSX)

Excluded components are listed as DNF in a separated list. Note we could also remove them.

Default variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom.html)

XTAL variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_XTAL.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_XTAL.html)

USB variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_USB.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_USB.html)


The XLSX files contain the same information, arranged a little bit different, here is the USB variant:

[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_USB_xlsx.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-bom_USB.xlsx)


## Gerbers

Excluded components are marked with a cross in the *.Fab layer. Their solder paste and adhesive glue is removed from *.Paste and *.Adhes:

Default variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_default.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_default_big.png)

XTAL variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_XTAL.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_XTAL_big.png)

USB variant
[![Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_USB.png)](https://inti-cmnb.github.io/kibot_variants_arduprog/images/gerbers_USB_big.png)


## Position

Here only the fitted components are included in the pick and place file:

- [Default variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-both_pos.txt)
- [XTAL variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-both_pos_XTAL.txt)
- [USB variant](https://inti-cmnb.github.io/kibot_variants_arduprog/images/t1-both_pos_USB.txt)



