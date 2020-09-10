# KiBot variants example

This is an example of how to use variants with [KiBot](https://github.com/INTI-CMNB/KiBot).

## Index

* [Definition](#Definition)
* [Implementation](#How is this implemented)
* [Example](#Example)

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

[![Schematic](https://raw.githubusercontent.com/INTI-CMNB/kibot_variants_arduprog/master/images/schematic.jpg)](https://raw.githubusercontent.com/INTI-CMNB/kibot_variants_arduprog/master/images/schematic.pdf)

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

![Symbol fields dialog](https://raw.githubusercontent.com/INTI-CMNB/kibot_variants_arduprog/master/images/SymbolFields.png)

