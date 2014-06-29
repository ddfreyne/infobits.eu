# To force files to rebuild because they contain xincludes, 
# use .PHONY: <target-name>.

SG_PDF=../content/tech-doc/style-guide-pdf.pdf
SG_FO=style-guide/out/pdf/style-guide.fo
SG_HTML=../content/tech-doc/style-guide.html

DOCBOOK_XSL_HTML=infobits-html-customization.xsl
DOCBOOK_XSL_FO=infobits-fo-customization.xsl

.PHONY: all
all: $(SG_FO) $(SG_PDF) $(SG_HTML)

################
.PHONY: $(SG_FO)
$(SG_FO):

	xsltproc \
	  --xinclude \
 	  --output $(SG_FO) \
 	  $(DOCBOOK_XSL_FO) \
	  style-guide/style-guide.xml

.PHONY: sg-fo
sg-fo: $(SG_FO)

#################
.PHONY: $(SG_FO) $(SG_PDF)
$(SG_PDF):
	fop \
	-fo $(SG_FO) \
	-pdf $@ # Use target name

.PHONY: sg-pdf
sg-pdf: $(SG_FO) $(SG_PDF)

##################
.PHONY: $(SG_HTML)
$(SG_HTML):

	xsltproc \
	  --xinclude \
 	  --output $(SG_HTML) \
 	  $(DOCBOOK_XSL_HTML) \
	  style-guide/style-guide.xml

.PHONY: sg-html
sg-html: $(SG_HTML)
