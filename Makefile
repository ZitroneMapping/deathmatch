BinaryDir = bin/
LibraryDir = lib/

all: zhlt

get-deps:
	git clone git://github.com/kriswema/GoldsrcEditingTools.git $(LibraryDir)
	cd $(LibraryDir);\
	make all

install-deps: get-deps
	cd $(LibraryDir);\
	make install

hlfix:
	hlfix zt_dm.rmf -w

zhlt:
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_dm
	hlbsp -chart -dev 2 zt_dm
	hlvis -chart -dev 2 zt_dm
