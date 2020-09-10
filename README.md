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
We start with an hypothetic design: the *programmer* section of the Arduino UNO.
The schematic is the following:

[![Schematic](https://raw.githubusercontent.com/INTI-CMNB/kibot_variants_arduprog/master/images/schematic.jpg)](https://raw.githubusercontent.com/INTI-CMNB/kibot_variants_arduprog/master/images/schematic.pdf)

