PREFIX  ?= /usr/local
DESTDIR ?=

INITDDIR ?= $(DESDIR)$(PREFIX)/etc/init.d

INSTALL ?= install -D -m755
RM      ?= rm -f

.PHONY: install
install: 
	$(INSTALL) backlight-restorer $(INITDDIR)/backlight-restorer

.PHONY: uninstall
uninstall: 
	$(RM) $(INITDDIR)/backlight-restorer
