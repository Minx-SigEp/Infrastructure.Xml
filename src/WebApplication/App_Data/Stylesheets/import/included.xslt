<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xml:space="preserve">

     <xsl:output method="html" indent="yes" 
                 omit-xml-declaration="yes" encoding="utf-16" />
    
    <xsl:template match="Title">
        <div style="color:red">
            Title - <xsl:value-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="Author">
        Author - <xsl:value-of select="."/><br/>
    </xsl:template>

    <xsl:template match="Publisher">
        Publisher - <xsl:value-of select="."/><br/>
    </xsl:template>

</xsl:stylesheet>
