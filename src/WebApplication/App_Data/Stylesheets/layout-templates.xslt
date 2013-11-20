<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    extension-element-prefixes =""
    exclude-result-prefixes="xsl">

    <xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-16" />
    
    <xsl:template name="feature">
        <xsl:param name="hash" />
        <xsl:param name="name" />
        <xsl:param name="reference" />
        <xsl:param name="description" />
        <xsl:param name="example" />
        <a id="{$hash}" />
        <div class="feature">
            <div class="header clear">
                <div class="name">
                    <pre>
                        <xsl:copy-of select="$name"/>
                    </pre>
                </div>
                <xsl:if test="normalize-space($reference) != ''">
                    <div class="reference">
                        Reference:<br />
                        <xsl:copy-of select="$reference" />
                    </div>
                </xsl:if>
            </div>
            <div class="content">
                <xsl:if test="normalize-space($description) != ''">
                    <div class="description">
                        <strong>
                            Description:<br />
                        </strong>
                        <xsl:copy-of select="$description" />
                    </div>
                </xsl:if>
                <xsl:if test="normalize-space($example) != ''">
                    <div class="example">
                        <strong>
                            Example:<br />
                        </strong>
                        <xsl:copy-of select="$example"/>
                    </div>
                </xsl:if>
            </div>

            <div class="goto-top ">
                <a href="#top" >TOP</a>
            </div>
            <div style="clear:both;" />
        </div>
    </xsl:template>

    <xsl:template name="code-section">
        <xsl:param name="section" />
        <xsl:param name="annotation" />
        <xsl:param name="content" />
        <li id="{$section}">
            <div class="annotation">

                <div class="pilwrap ">
                    <a href="#{$section}" class="pilcrow">&#182;</a>
                </div>
                <p>
                    <xsl:copy-of select="$annotation"/>
                </p>

            </div>

            <div class="content">
                <xsl:copy-of select="$content"/>
            </div>
        </li>
    </xsl:template>

</xsl:stylesheet>
