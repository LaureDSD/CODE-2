<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body bgcolor="white">
<h1>CD's del ano 95 en adelante</h1>

<xsl:for-each select="/catalogo/cd">
<xsl:sort data-type="text" order="ascending"  select="titulo"/>
        <xsl:if test="año>1995">
          <xsl:value-of select="titulo"/>
          <xsl:text disable-output-escaping="yes"> // Ano: </xsl:text>
          <xsl:value-of select="año"/>
          <xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
        </xsl:if>
</xsl:for-each>
  


    </body>
  </html>
</xsl:template>

</xsl:stylesheet>