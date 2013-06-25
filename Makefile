BinaryDir = bin/
LibraryDir = lib/
WadDir = wad/
WadUrl = http://goldsrc.org/files/wads/

all: zhlt

get-deps:
	git clone git://github.com/kriswema/GoldsrcEditingTools.git $(LibraryDir)
	cd $(LibraryDir);\
	make all

install-deps: get-deps
	cd $(LibraryDir);\
	make install

get-wads:
	wget -P $(WadDir) $(WadUrl)cstrike.wad $(WadUrl)halflife.wad $(WadUrl)osaka_r.wad $(WadUrl)rain.wad $(WadUrl)ravelin.wad $(WadUrl)ricochet.wad $(WadUrl)tfc.wad $(WadUrl)tfc2.wad $(WadUrl)xeno.wad $(WadUrl)zhlt.wad $(WadUrl)zt08_colours.wad $(WadUrl)zt08_roemnum.wad

zhlt: get-wads
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_dm
	hlbsp -chart -dev 2 zt_dm
	hlvis -chart -dev 2 zt_dm
