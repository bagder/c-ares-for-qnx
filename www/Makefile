MAKEFLAGS += --no-print-directory
MARKDOWN=pandoc -f gfm

MAINPARTS= doctype.t body.t footer.t setup.t menu.t
ACTION=@echo generating $@; \
       fcpp -WWW -Uunix -H -C -V -LL $< $@

PAGES=index.html support.html
CSS=qnx.css
IMAGES=dl.svg
WEBROOT=$$HOME/qnx_html/
DLFILES=$$HOME/qnx_html/dl/

all: $(PAGES)

index.html: index.t $(MAINPARTS) files.gen
	$(ACTION)

support.html: support.t $(MAINPARTS)
	$(ACTION)

files.gen: mkfiles.pl dl/*
	./mkfiles.pl >$@

clean:
	rm -f $(PAGES)
	find . -name "*~" -exec rm {} \;

deploy:
	cp -p $(PAGES) $(CSS) $(IMAGES) $(WEBROOT)
	cp -p dl/c-ares* $(DLFILES)
