<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet 
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="included.xslt"/>

    <xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-16" />

    <xsl:template match="/">
        <xsl:for-each select="Collection/Book">
            <xsl:apply-templates select="Title"/>
            <xsl:apply-templates select="Author"/>
            <xsl:apply-templates select="Publisher"/>
            <br/>
            <!-- add this -->
        </xsl:for-each>
    </xsl:template>

    <!-- The following template rule will not be called,
  because the related template in the including stylesheet
  will be called. If we move this template so that
  it follows the xsl:include instruction, this one
  will be called instead.-->
    <xsl:template match="Title">
        <div style="color:blue">
            Title: <xsl:value-of select="."/>
        </div>
    </xsl:template>

    

</xsl:stylesheet>