<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet
    xml:space="preserve"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:UI="urn:UI"
    extension-element-prefixes="UI"
    exclude-result-prefixes="xsl msxsl UI">

    <xsl:import href="layout-templates.xslt"/>

    <xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-16" />


    <xsl:template match="/" >

        <h1 id="document-structure">Document Structure Overview.</h1>
        <div id="container">
            <div id="background"></div>

            <ul class="sections">

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-2'" />
                    <xsl:with-param name="annotation">
                        A XML (Extensible Markup Language) document declaration. This tag identifies the document as XML and
                        is recommended at the top of all XML documents but is not required. For more information on XML see
                        the <a href="http://www.w3.org/TR/xml/">W3C XML Recommendation</a>
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[<?xml version="1.0" encoding="utf-16" ?>]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-2'" />
                    <xsl:with-param name="annotation">
                        The root of the XSLT document. The namespace <code>xsl</code> that proceeds the element name is declared on
                        the next line. <a href="http://msdn.microsoft.com/en-us/library/ms256204%28v=vs.110%29.aspx">MSDN Documentation</a>
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[<xsl:stylesheet]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-3'" />
                    <xsl:with-param name="annotation">
                        Assigns the prefix <code>xsl</code> to the XSLT namespace as defined in the
                        <a href="http://www.w3.org/TR/xslt#xslt-namespace">XSLT standard.</a>
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-4'" />
                    <xsl:with-param name="annotation">
                        A <code>xsl:stylesheet</code> element must have a <code>version</code> attribute,
                        indicating the version of XSLT that the stylesheet requires. The .Net Framework only
                        supports XSLT 1.0, but third party implemenations of XSLT 2 such as Saxon are available.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        version="1.0"]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-5'" />
                    <xsl:with-param name="annotation">
                        Assigns the prefix <code>msxsl</code> to the Microsoft XSL namespace that
                        provides additional functionallity for XSLTs in the .Net Framework.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        xmlns:msxsl="urn:schemas-microsoft-com:xslt"]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-6'" />
                    <xsl:with-param name="annotation">
                        Assigns the prefix <code>UI</code> to the namespace <code>urn:UI</code>. This namespace
                        gives the stylesheet access to the extesion object that was provided to the transformer.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        xmlns:UI="urn:UI"]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-7'" />
                    <xsl:with-param name="annotation">
                        A whitespace separated list of namespace prefixes that are designated as extension namespaces.
                        Although this attribute does not have to be used because the .Net Framework is smart enought to
                        figure out if a namespace is being used for extension functions its recommended for sanity's sake.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        extension-element-prefixes="UI"]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-8'" />
                    <xsl:with-param name="annotation">
                        A whitespace speparated list of namespace prefixes that should be exclused from the result of the transformation.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[        exclude-result-prefixes="xsl msxsl UI" >]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-9'" />
                    <xsl:with-param name="annotation">
                        <code>xsl:import</code> and <code>xsl:include</code> elements create references to external stylesheets.
                        For a more detailed explanation of how they work see <a href="#import-include">include and import</a> below
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[    <xsl:import href="external-resource.xslt"/>
    <xsl:include href="external-resource.xslt"/>]]></pre>
                    </xsl:with-param>
                </xsl:call-template>
            
                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-10'" />
                    <xsl:with-param name="annotation">
                        Specifies setting for the result of the transformation. <code>method</code>, <code>indent</code>, <code>omit-xml-declaration</code>, and
                        <code>encoding</code> are the must commonly used but other attributes are available. For a complete list see the
                        <a href="http://msdn.microsoft.com/en-us/library/ms256187%28v=vs.110%29.aspx">MSDN Documentation</a>
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[    <xsl:output
        method="html"
        indent="yes"
        omit-xml-declaration="yes"
        encoding="utf-16" />]]></pre>
                    </xsl:with-param>
                </xsl:call-template>
                
                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-11'" />
                    <xsl:with-param name="annotation">
                        Defines a reusable template for generating output for nodes of a particular type. In this example this template matches
                        the root of the document.
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[    <xsl:template match="/" >
        <!-- Template Body -->
    </xsl:template>]]></pre>
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:call-template name="code-section">
                    <xsl:with-param name="section" select="'section-12'" />
                    <xsl:with-param name="annotation">
                        Ends the stylesheet node
                    </xsl:with-param>
                    <xsl:with-param name="content">
                        <pre class="highlight"><![CDATA[</xsl:stylesheet>]]></pre>
                    </xsl:with-param>
                </xsl:call-template>
               
            </ul>
        </div>

        <h1 id="template">&lt;xsl:template></h1>
        <div class="feature">
            <div class="content">
                <div class="description">
                    XSLT Templates define the desired output for nodes of a particular type and context. templates can be defined in two 
                    ways: named templates and match templates. Named templates are given a name that identifies them and is used execute them. 
                    Its useful to think of named templates as functions in languages such as C#, JavaScript, C++, Ada, and many others.
                    Match templates use a pattern to identify the node or nodes the template applies to. Unlike named templates match templates 
                    can execute multiple times from a single invocation. this gives them the ability to iterate over collections.
                </div>
                <div class="example">
                    <strong>
                        Example:<br />
                    </strong>
                    <br />
                                        
                    <div class="clear">
                        <div class="code-block block-50 pull-left">
                            <span class="title">XSLT</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./template/template.xslt'))"/></code></pre>
                        </div> 
                        <div class="code-block block-50 pull-right">
                            <span class="title">XML</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('../xml/template.xml'))"/></code></pre>
                        </div> 
                          <div class="code-block block-50 pull-right">
                            <span class="title">Result: <a href="/example/template.aspx">(View)</a></span>
                            <pre style="white-space: pre-wrap;"><code data-inject="/example/template.aspx"></code></pre>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <h1 id="include">&lt;xsl:include></h1>
        <div class="feature">
            <div class="content">
                <div class="description">
                    An XSLT file can include another XSLT file using the <code class="code-box">xsl:include</code> element. The resource
                    located by the <code class="code-box">href</code> attribute is parsed as an xml document and
                    the children of the <code class="code-box">&lt;xsl:stylesheet></code> element in this document replace the
                    <code class="code-box">&lt;xsl:include></code> element in the including document. The included
                    templates have the same precidence as the templates of the including style sheet. This mean if the including and included style
                    sheet both contain a template for the same element the last template in the document wins.
                    <a href="http://msdn.microsoft.com/en-us/library/ms256094%28v=vs.110%29.aspx">MSDN Documentation</a>
                </div>
                <div class="example">
                    <strong>
                        Example:<br />
                    </strong>
                    <br />
                                        
                    <div class="clear">
                        <div class="code-block block-50 pull-left">
                            <span class="title">Including XSLT:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./include/including.xslt'))"/></code></pre>
                        </div>
                      
                        <div class="code-block block-50 pull-right">
                            <span class="title">XML:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('../xml/include-import.xml'))"/></code></pre>
                        </div>
                       
                        <div class="code-block block-50 pull-right">
                            <span class="title">Result: <a href="/example/include.aspx">(View)</a></span>
                            <pre style="white-space: pre-wrap; min-height:400px;"><code data-inject="/example/include.aspx"></code></pre>
                        </div>
                         <div class="code-block block-50 pull-left">
                            <span class="title">Included XSLT:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./include/included.xslt'))"/></code></pre>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
        
        <h1 id="import">&lt;xsl:import></h1>
        <div class="feature">
            <div class="content">
                <div class="description">
                    An XSLT file can import another XSLT file using the <code class="code-box">xsl:import</code> element. 
                    Importing an XSLT file is the same as including it except that definitions and templates in the 
                    importing file take precedence over those in the imported XSLT file. Another key difference is imported
                    templates that have been overridden can still be invoked. Invoking these overridden template can be done
                    with the <a href="#apply-imports"><code class="code-box"> xsl:apply-imports element</code></a>. 
                    For more information about the xsl:import element see the 
                    <a href="http://msdn.microsoft.com/en-us/library/ms256126%28v=vs.110%29.aspx">. MSDN Documentation</a> 
                </div>
                <div class="example">
                    <strong>
                        Example One:<br />
                    </strong>
                    <br />
                                        
                    <div class="clear">
                        <div class="code-block block-50 pull-left">
                            <span class="title">Including XSLT:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./import/including.xslt'))"/></code></pre>
                        </div>
                        <div class="code-block block-50 pull-right">
                            <span class="title">XML:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('../xml/include-import.xml'))"/></code></pre>
                        </div>
                        <div class="code-block block-50 pull-right">
                            <span class="title">Result: <a href="/example/import.aspx">(View)</a></span>
                            <pre style="white-space: pre-wrap; min-height:400px;"><code data-inject="/example/import.aspx"></code></pre>
                        </div>
                         <div class="code-block block-50 pull-left">
                            <span class="title">Included XSLT:</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./import/included.xslt'))"/></code></pre>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
        
        <h1 id="apply-imports">&lt;xsl:apply-imports></h1>
        <div class="feature">
            <div class="content">
                <div class="description">
                    The <code class="code-box">xsl:apply-imports</code> element is used in conjunction with the
                    <code class="code-box">xsl:import</code> element. It allows overridden templates defined in an 
                    imported style sheet to be invoked. The <code class="code-box">xsl:apply-imports</code> element
                    invokes the corresponding template for the active tempalte. The only time a 
                    <code class="code-box">xsl:apply-imports</code> can not be used is inside a 
                    <code class="code-box">xsl:for-each</code>
                </div>
                <div class="example">
                    <strong>
                        Example:<br />
                    </strong>
                    <br />
                                        
                    <div class="clear">
                        <div class="code-block block-50 pull-left">
                            <span class="title">Importing XSLT</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./apply-imports/importing.xslt'))"/></code></pre>
                        </div> 
                        <div class="code-block block-50 pull-right">
                            <span class="title">XML</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('../xml/apply-imports.xml'))"/></code></pre>
                        </div> 
                        <div class="code-block block-50 pull-left">
                            <span class="title">Imported XSLT</span>
                            <pre style="white-space: pre-wrap;"><code><xsl:value-of select="UI:StringifyXml(document('./apply-imports/imported.xslt'))"/></code></pre>
                        </div> 
                        <div class="code-block block-50 pull-right">
                            <span class="title">Result: <a href="/example/apply-imports.aspx">(View)</a></span>
                            <pre style="white-space: pre-wrap;"><code data-inject="/example/apply-imports.aspx"></code></pre>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>


</xsl:stylesheet>