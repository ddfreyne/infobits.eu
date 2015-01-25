<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/html/profile-docbook.xsl"/>
  <xsl:output method="html" encoding="UTF-8" indent="no"/>
  <xsl:template match="lineannotation">
    <fo:inline font-style="italic">
      <xsl:call-template name="inline.charseq"/>
    </fo:inline>
  </xsl:template>
  <xsl:param name="paper.type">A4</xsl:param>
  <xsl:param name="double.sided">0</xsl:param>
  <xsl:param name="body.font.master">10</xsl:param>
  <xsl:param name="alignment">left</xsl:param>
  <xsl:param name="draft.watermark.image"
    >http://docbook.sourceforge.net/release/images/draft.png</xsl:param>
  <xsl:param name="draft.mode">Yes</xsl:param>
  <xsl:param name="fop1.extensions">1</xsl:param>
  <xsl:param name="chapter.autolabel">1</xsl:param>
  <xsl:param name="local.l10n.xml" select="document('')"/>
  <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
    <l:l10n language="en">
      <l:context name="title-numbered">
        <l:template name="chapter" text="%n.&#160;%t"/>
        <l:template name="appendix" text="%n.&#160;%t"/>
      </l:context>
    </l:l10n>
  </l:i18n>
  <xsl:param name="section.autolabel">1</xsl:param>
  <xsl:param name="section.label.includes.component.label">1</xsl:param>
  <xsl:param name="highlight.source">1</xsl:param>
  <xsl:param name="show.comments">1</xsl:param>
</xsl:stylesheet>
