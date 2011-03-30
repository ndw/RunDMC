<!-- This stylesheet processes an <apidoc:module> document (from the docapp database)
     and creates a new <api:function> document for each uniquely-named <apidoc:function>
     element it finds. -->
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:apidoc="http://marklogic.com/xdmp/apidoc"
  xmlns:api="http://marklogic.com/rundmc/api"
  xmlns:xdmp="http://marklogic.com/xdmp"
  extension-element-prefixes="xdmp"
  exclude-result-prefixes="xs apidoc">

  <xdmp:import-module namespace="http://marklogic.com/rundmc/api" href="/apidoc/model/data-access.xqy"/>

  <!-- Implements some common content fixup rules -->
  <xsl:include href="fixup.xsl"/>

  <xsl:template match="/">
                                                              <!-- Function names aren't unique thanks to the way *:polygon()
                                                                   is documented. -->
    <xsl:apply-templates select="apidoc:module/apidoc:function[not(@fullname = preceding-sibling::apidoc:function/@fullname)]"/>
  </xsl:template>

  <!-- Extract each function as its own document -->
  <xsl:template match="apidoc:function">
    <xsl:result-document href="/apidoc/{@lib}:{@name}.xml">
      <!-- This wrapper is necessary because the *:polygon() functions
           are each (dubiously) documented as two separate functions so
           that raises the possibility of needing to include two different
           <api:function> elements in the same page. -->
      <api:function-page>
        <xsl:apply-templates mode="fixup" select="../apidoc:function[@fullname eq current()/@fullname]"/>
      </api:function-page>
    </xsl:result-document>
  </xsl:template>

  <!-- Ignore hidden functions -->
  <xsl:template match="apidoc:function[@hidden eq true()]"/>

  <!-- Rename "apidoc" elements to "api" so it's clear which docs we're dealing with later -->
  <xsl:template mode="fixup" match="apidoc:*">
    <xsl:element name="{name()}" namespace="http://marklogic.com/rundmc/api">
      <xsl:apply-templates mode="fixup-content-etc" select="."/>
    </xsl:element>
  </xsl:template>

  <!-- Add the namespace URI of the function to the <api:function> result -->
  <xsl:template mode="fixup-add-atts" match="apidoc:function">
    <xsl:attribute name="prefix" select="@lib"/>
    <xsl:attribute name="namespace" select="api:uri-for-lib(@lib)"/>
  </xsl:template>

  <!-- Change the "spell" library to "spell-lib" to disambiguate from the built-in "spell" module -->
  <xsl:template mode="fixup-att-value" match="apidoc:function[@lib eq 'spell' and not(@type eq 'builtin')]/@lib">
    <xsl:text>spell-lib</xsl:text>
  </xsl:template>

</xsl:stylesheet>