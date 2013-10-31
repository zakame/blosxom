VERSION=$(shell head -1 ChangeLog | sed -e s/v//)

dist:
	rm -rf ../blosxom-$(VERSION)/
	mkdir ../blosxom-$(VERSION)
	cp -priv * ../blosxom-$(VERSION)/
	cd .. && tar cvzf blosxom-$(VERSION).tar.gz --exclude=CVS --exclude='*~' --exclude=".??*" --exclude="#*#" --exclude="*.t" blosxom-$(VERSION)/
	rm -rf ../blosxom-$(VERSION)/


