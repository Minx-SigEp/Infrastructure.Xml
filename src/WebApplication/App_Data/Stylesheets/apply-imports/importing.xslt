<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    exclude-result-prefixes="xsl">

    <xsl:import href="imported.xslt"/>

    <xsl:output method="html" indent="yes"
                omit-xml-declaration="yes" encoding="utf-16" />

    <!-- This Template overrides the book template in the
    imported xslt. It adds a span tag and then calls the overridden
    template.
    -->
    <xsl:template match="book">
        <span style="color:red; font-weight:600">
            <xsl:apply-imports />
        </span>
    </xsl:template>

</xsl:stylesheet>