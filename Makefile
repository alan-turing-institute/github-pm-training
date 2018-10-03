PANDOC=pandoc

ROOT=""

PANDOCARGS=-t revealjs -s -V theme=night --css=http://lab.hakim.se/reveal-js/css/theme/night.css \
					 --css=$(ROOT)/css/ucl_reveal.css --css=$(ROOT)/site-styles/reveal.css \
           --default-image-extension=png --highlight-style=zenburn --mathjax -V revealjs-url=http://lab.hakim.se/reveal-js

PANDOC_OPTIONS=--smart --standalone

PANDOC_HTML_OPTIONS=--to html5 --template jekyll.tpl

NOTEBOOKS=$(filter-out %.v2.ipynb %.nbconvert.ipynb,$(wildcard ch*/*.ipynb))
# Convert all files in this directory that have a .md suffix
SOURCE_DOCS := $(wildcard ch*/0*.md)
EXPORTED_DOCS = $(SOURCE_DOCS:.md=.html)

HTMLS=$(NOTEBOOKS:.ipynb=.html)

EXECUTED=$(NOTEBOOKS:.ipynb=.nbconvert.ipynb)

NBV2=$(NOTEBOOKS:.ipynb=.v2.ipynb)

default: _site

%/slides.html: %/*.md Makefile
	cat $^ | $(PANDOC) $(PANDOCARGS) -o $@

# https://gist.github.com/kristopherjohnson/7466917
%.html : %.md Makefile #jekyll.tpl
	$(PANDOC) $(PANDOC_HTML_OPTIONS) $< > $@

%.png: %.py Makefile
	python $< $@

%.png: %.nto Makefile
	neato $< -T png -o $@

%.png: %.dot Makefile
	dot $< -T png -o $@

%.png: %.uml Makefile
   java -Djava.awt.headless=true -jar plantuml.jar -p < $< > $@

master.zip: Makefile
	rm -f master.zip
	wget https://github.com/Giovanni1085/indigo-jekyll/archive/master.zip

ready: indigo $(HTMLS)

indigo-jekyll-master: Makefile master.zip
	rm -rf indigo-jekyll-master
	unzip master.zip
	touch indigo-jekyll-master

indigo: indigo-jekyll-master Makefile
	cp -r indigo-jekyll-master/indigo/images .
	cp -r indigo-jekyll-master/indigo/img .
	cp -r indigo-jekyll-master/indigo/js .
	cp -r indigo-jekyll-master/indigo/css .
	cp -r indigo-jekyll-master/indigo/ati_css .
	cp -r indigo-jekyll-master/indigo/fonts .
	cp -r indigo-jekyll-master/indigo/_includes .
	cp -r indigo-jekyll-master/indigo/_layouts .
	cp -r indigo-jekyll-master/indigo/favicon* .
	touch indigo

plantuml.jar:
	wget http://sourceforge.net/projects/plantuml/files/plantuml.jar/download -O plantuml.jar

.PHONY: ready

_site: ready
	jekyll build --verbose

preview: ready
	jekyll serve --verbose

clean:
	- $(RM) $(EXPORTED_DOCS)
	rm -f ch*/generated/*.png
	rm -rf ch*/*.html
	rm -f ch*/*.pyc
	rm -f index.html
	rm -rf _site
	rm -rf images img js css ati_css fonts _includes _layouts favicon* master.zip indigo-jekyll-master
	rm -f indigo
	#rm -f ch01python/analyzer.py
	#rm -f ch01python/eight
	#rm -f ch01python/eight.py
	#rm -rf ch01python/module1/
	#rm -f ch01python/pretty.py
	rm -f ch*/*.nbconvert.ipynb
	rm -rf ch*/*.v2.ipynb
	rm -rf combined*
	#rm -f notes.pdf
	#rm -f notes.tex
	#rm -f ch04packaging/greeter.py
	#rm -f ch04packaging/map.png
	#rm -f ch05construction/anotherfile.py
	#rm -f ch05construction/config.yaml
	#rm -f ch05construction/context.py
	#rm -f ch06design/fixed.png
	#rm -f ch07dry/datasource*.yaml
	#rm -f ch07dry/example.yaml
	#rm -f notebooks.zip
