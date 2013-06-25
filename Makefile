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
	wget -P $(WadDir) $(WadUrl)cstrike.wad
	wget -P $(WadDir) $(WadUrl)halflife.wad
	wget -P $(WadDir) $(WadUrl)osaka_r.wad
	wget -P $(WadDir) $(WadUrl)rain.wad
	wget -P $(WadDir) $(WadUrl)ravelin.wad
	wget -P $(WadDir) $(WadUrl)ricochet.wad
	wget -P $(WadDir) $(WadUrl)tfc.wad
	wget -P $(WadDir) $(WadUrl)tfc2.wad
	wget -P $(WadDir) $(WadUrl)xeno.wad
	wget -P $(WadDir) $(WadUrl)zhlt.wad
	wget -P $(WadDir) $(WadUrl)zt08_colours.wad
	wget -P $(WadDir) $(WadUrl)zt08_roemnum.wad

hlfix:
	hlfix zt_dm.rmf -w

zhlt:
	hlcsg -nowadtextures -wadautodetect -cliptype Precise -chart -dev 2 zt_dm
	hlbsp -chart -dev 2 zt_dm
	hlvis -chart -dev 2 zt_dm
