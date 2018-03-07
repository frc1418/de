PREFIX=/usr
DESTDIR=

INSTDIR=$(DESTDIR)$(PREFIX)
INSTBIN=$(INSTDIR)/local/bin

detected_OS := $(shell uname -s 2>/dev/null)
ifeq ($(detected_OS),Linux)
    INSTMAN=$(INSTDIR)/share/man/man7
endif
ifeq ($(detected_OS),Darwin)
    INSTMAN=$(INSTDIR)/local/share/man/man7
endif

SCRIPT=dep
MANPAGE=$(SCRIPT).7

all:
	@echo did nothing. try targets: install, or uninstall.

install:
	test -d $(INSTDIR) || mkdir -p $(INSTDIR)
	test -d $(INSTBIN) || mkdir -p $(INSTBIN)
	test -d $(INSTMAN) || mkdir -p $(INSTMAN)

	install -m 0755 $(SCRIPT) $(INSTBIN)
	install -m 0644 doc/$(MANPAGE) $(INSTMAN)

uninstall:
	rm -f $(INSTBIN)/$(SCRIPT)
	rm -f $(INSTMAN)/$(MANPAGE)

.PHONY: all install uninstall
