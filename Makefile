
PREFIX = /usr/local

njb: njb.sh njb.awk njb.tsv
	cat njb.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar cz njb.awk njb.tsv >> $@
	chmod +x $@

test: njb.sh
	shellcheck -s sh njb.sh

clean:
	rm -f njb

install: njb
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f njb $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/njb

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/njb

.PHONY: test clean install uninstall
