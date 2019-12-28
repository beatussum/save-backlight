PREFIX  ?= /usr/local
DESTDIR ?=

INITDDIR ?= $(DESTDIR)$(PREFIX)/etc/init.d

INSTALL ?= install -D -m755
RM      ?= rm -f

.PHONY: install
install: 
	$(INSTALL) save-backlight $(INITDDIR)/save-backlight

.PHONY: uninstall
uninstall: 
	$(RM) $(INITDDIR)/save-backlight
