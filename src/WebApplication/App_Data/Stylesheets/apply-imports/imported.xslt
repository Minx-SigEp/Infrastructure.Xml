<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    exclude-result-prefixes="xsl">

    <xsl:output method="html" indent="yes"
                omit-xml-declaration="yes" encoding="utf-16" />

    <xsl:template match="/">
        <xsl:apply-templates select="/catalog/book"/>
    </xsl:template>

    <xsl:template match="book">
        <i>
            <xsl:apply-templates select="title"/>
        </i>
        By:
        <xsl:apply-templates select="author"/>
        <br/>
    </xsl:template>

    <xsl:template match="title">
        <b>
            <xsl:value-of select="."/>
        </b>
    </xsl:template>

    <xsl:template match="author">
        <font color="blue">
            <xsl:value-of select="."/>
        </font>
    </xsl:template>

</xsl:stylesheet>
