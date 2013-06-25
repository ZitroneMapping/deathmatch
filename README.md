# Zitrone: Deathmatch #
A map to fight battles between two sides. The idea to create a new deathmatch map probably came from mulch_dm and sq4 being all boring.

Master: [![Build Status](https://travis-ci.org/ZitroneMapping/deathmatch.png?branch=master)](https://travis-ci.org/ZitroneMapping/deathmatch)

Develop: [![Build Status](https://travis-ci.org/ZitroneMapping/deathmatch.png?branch=develop)](https://travis-ci.org/ZitroneMapping/deathmatch)

## Contribute ##
The common file format used is the .map format. The Valve Hammer Editor works better with its native .rmf format though, which is why you should follow these guidelines.

1. Open the .map file in Hammer
2. Save it as .rmf
3. Convert it to .map with [HLFix] (https://github.com/kriswema/hlfix), NOT with Hammer. (See below: Compiling / HLFix)

This way the file stays nice and clean.

## Compiling ##
### HLFix ###
hlfix zt_dm.rmf -w

### ZHLT-CSG: Constructive Solid Geometry ###
hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -estimate -dev 2 zt_dm

### ZHLT-BSP: Binary Space Partitioning ###
hlbsp -chart -estimate -dev 2 zt_dm

### ZHLT-VIS: Visible Information Set ###
hlvis -chart -estimate -dev 2 zt_dm

### ZHLT-RAD: Radiosity ###

## License ##
This work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).
