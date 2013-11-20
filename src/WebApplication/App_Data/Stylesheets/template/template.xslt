<?xml version="1.0" encoding="utf-16" ?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"
    exclude-result-prefixes="xsl">

    <xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-16" />
    
    <!-- This Template matches the root of the document. 
    Because a document only has on root element this template
    will only be called once. This acts as a good entry 
    point and starting point -->
    <xsl:template match="/">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Category</th>
                </tr>
            </thead>
            <tbody>
                <!-- This is a invocation of a match template. It 
                will match all child Book elements of the Collection 
                element. Books nodes located in other areas of the 
                xml document will include in the selection. -->
                <xsl:apply-templates select="/Collection/Book" />
            </tbody>
        </table>

        Categories
        <ul>
            <!-- This select statement selects all Category elements in the document regardless 
            of their location in the document. --> 
            <xsl:apply-templates select="//Category" mode="list" />
        </ul>
    </xsl:template>

    <xsl:template match="Book">

        <!-- Creates a variable of the current element --> 
        <xsl:variable name="self" select="." />
        
        <tr>
            <td>
                <!-- When calling the named template 'Name' the Context will be the same as here -->
                <xsl:call-template name="Name" />
            </td>
            <td>
                <xsl:value-of select="./Title"/>
            </td>
            <td>
                <xsl:value-of select="Author" disable-output-escaping="yes"/>
            </td>
            <td>
                <xsl:value-of select="Publisher"/>
            </td>
            <td>
                <!-- the select attribute of this apply-templates makes use of two predicates. 
                Predicates are covered under 'XSLT Structure > Predicates (AKA Filters)'.
                A quick explanation of what this select state does follows.
                This select statement selects all 'Category' elements that are children of a
                'Collection' element that have an 'id' attribute with a value equal to the 
                'CategoryId' element of a 'BookXCategory' element that are children of a 
                'Collection' element that has a child element 'BookId' with a value equal 
                to $self/@id. The mode attribute tells the apply-template which of the matching 
                templates should be called -->
                
                <xsl:apply-templates 
                    select="/Collection/Category[@id = /Collection/BookXCategory[BookId = $self/@id]/CategoryId]"
                    mode="row"/>
            </td>
        </tr>
    </xsl:template>

    <!-- The Context of this named template is the same as its caller. -->
    <xsl:template name="Name">
            <xsl:value-of select="Name" disable-output-escaping="yes"/>
    </xsl:template>

    <xsl:template match="Category" mode="row">

        
        <!-- When calling the named template 'Name' the Context will be the same as here. -->
        <xsl:call-template name="Name" />
        
        <!-- because XSLT has to be a valid XML document less-than signs have to be xml encoded. 
        The position and last functions are aware of the context in which they are being called. 
        the last function returns the number of nodes that are being iterated over while position 
        function returns the current iteration. -->
        <xsl:if test="position() &lt; last()" >
            <xsl:text>, </xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="Category" mode="list">
        <li>
            <!-- disable-output-escaping has a default of no. Setting this attribute to true 
            will prevent the XSLT from encoding any character that would prevent the result 
            of the value-of statement for being a well formed XML document. -->
            <xsl:value-of select="Name" disable-output-escaping="no"/>
        </li>
        
    </xsl:template>
    
</xsl:stylesheet>