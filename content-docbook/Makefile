# To force files to rebuild because they contain xincludes, 
# use .PHONY: <target-name>.

SG_PDF=../content/tech-doc/style-guide.pdf
SG_FO=style-guide/out/pdf/style-guide.fo

DOCBOOK_XSL=/usr/share/xml/docbook/stylesheet/docbook-xsl

.PHONY: all
all: $(SG_FO) $(SG_PDF)

.PHONY: $(SG_FO)
$(SG_FO):

	xsltproc \
	  --xinclude \
 	  --output $(SG_FO) \
 	  --stringparam fop1.extensions 1 \
 	  --stringparam part.autolabel I \
 	  --stringparam chapter.autolabel 1 \
 	  --stringparam section.autolabel 1 \
 	  --stringparam section.label.includes.component.label 1 \
 	  --stringparam highlight.source 1 \
 	  --stringparam alignment left \
 	  --stringparam paper.type A4 \
 	  $(DOCBOOK_XSL)/fo/profile-docbook.xsl \
	  style-guide/style-guide.xml

.PHONY: $(SG_PDF)
$(SG_PDF):
	fop \
	-fo $(SG_FO) \
	-pdf $@ # Use target name

.PHONY: sg-pdf
sg: $(SG_FO) $(SG_PDF)