<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:UI="urn:UI"
    extension-element-prefixes =""
    exclude-result-prefixes="xsl msxsl UI">

    <xsl:import href="layout-templates.xslt"/>
    
    <xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-16" />
    
    <xsl:template match="/" >

        <h2>Number Function </h2>
        

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">number</xsl:with-param>
            <xsl:with-param name="name">
                <span class="type">number</span>&#160;<span class="method">number</span>(<span class="type">object</span>&#160;<span class="parameter-name">input</span>)
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-round">http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-round</a>
                <br />
                <a href="http://msdn.microsoft.com/en-us/library/ms256213%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256213%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                Converts the argument to a number. If the argument can not be converted to a number returns NaN. 
                <ul>
                    <li>
                        A string that consists of optional white space followed by an optional minus sign followed by a number followed by white space is converted; any other string is converted to NaN.
                    </li>
                    <li>
                        Boolean true is converted to 1; Boolean false is converted to 0.
                    </li>
                    <li>
                        A node-set is first converted to a string and then converted in the same way as a string argument.
                    </li>
                </ul>
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates calling the number() fucntion.
                <br />
                <div class="clear">
                    <div class="code-block block-50 pull-left">
                        <span class="title">XML:</span>
                        <pre>
                            <code>
                                <xsl:value-of select="UI:StringifyXml(/)"/>
                            </code>
                        </pre>
                    </div>
                    <div class="code-block block-50 pull-right">
                        <span class="title">XSLT:</span>
                        <pre>
                            <code>
                                <![CDATA[
The first item has a numerical value of 
<xsl:value-of select="number(/root/item[1])"/>
<br />
The string 'text' will result in 
<xsl:value-of select="number('text')"/>]]>
                            </code>
                        </pre>
                    </div>
                </div>
                <div class="code-block block-100">
                    <span class="title">RESULT:</span>
                    <pre>
                        <code>
                            <xsl:text>The first item has a numerical value of </xsl:text>
                            <xsl:value-of select="number(/root/item[1])"/>
                            <br />
                            <xsl:text>The string 'text' will result in </xsl:text>
                            <xsl:value-of select="number('text')"/>
                        </code>
                    </pre>
                </div>
            </xsl:with-param>
        </xsl:call-template>

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">sum</xsl:with-param>
            <xsl:with-param name="name">
                <span class="type">number</span>&#160;<span class="method">sum</span>(<span class="type">node-set</span>&#160;<span class="parameter-name">nodes</span>)
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-sum">http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-sum</a>
                <br />
                <a href="http://msdn.microsoft.com/en-us/library/ms256160%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256160%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                Returns the sum of all nodes in the node-set. Each node is first converted to a number value before summing.
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates the XPath expression sum(/root/item).
                <br />
                <div class="clear">
                <div class="code-block block-50 pull-left">
                    <span class="title">XML:</span>
                    <pre>
                        <code>
                            <xsl:value-of select="UI:StringifyXml(/)"/>
                        </code>
                    </pre>
                </div>
                <div class="code-block block-50 pull-right">
                    <span class="title">XSLT:</span>
                    <pre>
                        <code>
                            <![CDATA[
The sum of
<xsl:for-each select="/root/item">
    <xsl:value-of select="."/>
    <xsl:if test="position() &lt; last()">
        <xsl:text>,</xsl:text>
    </xsl:if>
</xsl:for-each>
is
<xsl:value-of select="sum(/root/item)"/>]]>
                        </code>
                    </pre>
                </div>
                </div>
                <div class="code-block block-100">
                    <span class="title">RESULT:</span>
                    <pre>
                        <code>
                            <xsl:text>The sum of </xsl:text>
                            <xsl:for-each select="/root/item">
                                <xsl:value-of select="."/>
                                <xsl:if test="position() &lt; last()">
                                    <xsl:text>,</xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                            <xsl:text> is </xsl:text>
                            <xsl:value-of select="sum(/root/item)"/>
                        </code>
                    </pre>
                </div>
            </xsl:with-param>
        </xsl:call-template>

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">floor</xsl:with-param>
            <xsl:with-param name="name">
                <span class="type">number</span>&#160;<span class="method">floor</span>(<span class="type">number</span>&#160;<span class="parameter-name">number</span>)
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-floor">http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-floor</a>
                <br />
                <a href="http://msdn.microsoft.com/en-us/library/ms256464%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256464%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                Returns the largest integer that is not greater than the argument.
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates calling the floor() function.
                <br />
                <div class="clear">
                    <div class="code-block block-50 pull-left">
                        <span class="title">XML:</span>
                        <pre>
                            <code>
                                <xsl:value-of select="UI:StringifyXml(/)"/>
                            </code>
                        </pre>
                    </div>
                    <div class="code-block block-50 pull-right">
                        <span class="title">XSLT:</span>
                        <pre>
                            <code>
                                <![CDATA[
 the floor of <xsl:value-of select="/root/floor" /> is
<xsl:value-of select="floor(/root/floor)" />]]>
                            </code>
                        </pre>
                    </div>
                </div>
                <div class="code-block block-100">
                    <span class="title">RESULT:</span>
                    <pre>
                        <code>
                            <xsl:text>the floor of </xsl:text>
                            <xsl:value-of select="/root/floor" />
                            <xsl:text> is </xsl:text>
                            <xsl:value-of select="floor(/root/floor)" />
                        </code>
                    </pre>
                </div>
            </xsl:with-param>
        </xsl:call-template>

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">ceiling</xsl:with-param>
            <xsl:with-param name="name">
                <span class="type">number</span>&#160;<span class="method">ceiling</span>(<span class="type">number</span>&#160;<span class="parameter-name">number</span>)
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-ceiling">http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-ceiling</a>
                <br />
                <a href="http://msdn.microsoft.com/en-us/library/ms256087%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256087%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                Returns the largest integer that is not greater than the argument.
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates calling the ceiling() fucntion.
                <br />
                <div class="clear">
                    <div class="code-block block-50 pull-left">
                        <span class="title">XML:</span>
                        <pre>
                            <code>
                                <xsl:value-of select="UI:StringifyXml(/)"/>
                            </code>
                        </pre>
                    </div>
                    <div class="code-block block-50 pull-right">
                        <span class="title">XSLT:</span>
                        <pre>
                            <code>
                                <![CDATA[
 the ceiling of <xsl:value-of select="/root/ceiling" /> is
<xsl:value-of select="ceiling(/root/ceiling)" />]]>
                            </code>
                        </pre>
                    </div>
                </div>
                <div class="code-block block-100">
                    <span class="title">RESULT:</span>
                    <pre>
                        <code>
                            <xsl:text>the ceiling of </xsl:text>
                            <xsl:value-of select="/root/ceiling" />
                            <xsl:text> is </xsl:text>
                            <xsl:value-of select="ceiling(/root/ceiling)" />
                        </code>
                    </pre>
                </div>
            </xsl:with-param>
        </xsl:call-template>

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">round</xsl:with-param>
            <xsl:with-param name="name">
                <span class="type">number</span>&#160;<span class="method">round</span>(<span class="type">number</span>&#160;<span class="parameter-name">number</span>)
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-round">http://zvon.org/xxl/XSLTreference/W3C/xpath.html#function-round</a>
                <br />
                <a href="http://msdn.microsoft.com/en-us/library/ms256213%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256213%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                Returns an integer closest in value to the argument.
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates calling the round() fucntion.
                <br />
                <div class="clear">
                    <div class="code-block block-50 pull-left">
                        <span class="title">XML:</span>
                        <pre>
                            <code>
                                <xsl:value-of select="UI:StringifyXml(/)"/>
                            </code>
                        </pre>
                    </div>
                    <div class="code-block block-50 pull-right">
                        <span class="title">XSLT:</span>
                        <pre>
                            <code>
                                <![CDATA[
rounding <xsl:value-of select="/root/round" /> is
<xsl:value-of select="round(/root/round)"/>]]>
                            </code>
                        </pre>
                    </div>
                </div>
                <div class="code-block block-100">
                    <span class="title">RESULT:</span>
                    <pre>
                        <code>
                            <xsl:text>rounding </xsl:text><xsl:value-of select="/root/round" />
                            <xsl:text> is </xsl:text>
                            <xsl:value-of select="round(/root/round)"/>
                        </code>
                    </pre>
                </div>
            </xsl:with-param>
        </xsl:call-template>

        <xsl:call-template name="feature">
            <xsl:with-param name="hash">nan</xsl:with-param>
            <xsl:with-param name="name">
                <xsl:text>Checking for non numbers (AKA NaN)</xsl:text>
            </xsl:with-param>
            <xsl:with-param name="reference">
                <a href="http://msdn.microsoft.com/en-us/library/ms256038%28v=vs.110%29.aspx">http://msdn.microsoft.com/en-us/library/ms256038%28v=vs.110%29.aspx</a>
            </xsl:with-param>
            <xsl:with-param name="description">
                There are severial situations that can result in a NaN being return when doing arithmatic. To check for this do the following
            </xsl:with-param>
            <xsl:with-param name="example">
                This example demonstrates checking for a non number.
                <br />
                <div class="clear">
                    <div class="code-block block-50 pull-left">
                        <span class="title">XSLT:</span>
                        <pre>
                            <code>
                                <![CDATA[
 <xsl:if test="string(number('Text')) = 'NaN'">
    The Value 'Text' is not a number />
</xsl:if>
<br  />
<xsl:if test="string(number('  123  ')) != 'NaN'">
    The Value '  123  ' is a number
</xsl:if>]]>
                            </code>
                        </pre>
                    </div>
                    <div class="code-block block-50 pull-right">
                        <span class="title">RESULT:</span>
                        <pre>
                            <code>
                                <xsl:if test="string(number('Text')) = 'NaN'">
                                    <xsl:text>The Value 'Text' is not a number /></xsl:text>
                                </xsl:if>
                                <br  />
                                <xsl:if test="string(number('  123  ')) != 'NaN'">
                                    <xsl:text>The Value '  123  ' is a number </xsl:text>
                                </xsl:if>
                            </code>
                        </pre>   
                    </div>
                </div>
            </xsl:with-param>
        </xsl:call-template>
        
    </xsl:template>

 

</xsl:stylesheet>