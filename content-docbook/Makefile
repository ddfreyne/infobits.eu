# To force files to rebuild because they contain xincludes, 
# use .PHONY: <target-name>.

DOCBOOK_XSL_FO=infobits-fo-customization.xsl
DOCBOOK_XSL_HTML=infobits-html-customization.xsl

SG_FO=style-guide/out/pdf/style-guide.fo
SG_PDF=style-guide/out/pdf/style-guide-pdf.pdf
SG_HTML=style-guide/out/html/style-guide.html
SG_TARGET_LOCATION=../content/documentation/style-guide.html

.PHONY: all
all: sg-pdf sg-html sg-cp

################
.PHONY: sg-cp
sg-cp:
	cp $(SG_HTML) $(SG_TARGET_LOCATION)

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
