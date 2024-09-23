<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">



    <xsl:template match="//impresora">
  <element name="Printer"></element>
  <xsl:apply-templates select="marca"/>
  </xsl:template>
  
  <xsl:template match="//marca">
  <xsl:element name="{@empresa}"/>
  </xsl:template>
  
  <xsl:template match="//portatil">
  <xsl:element name="laptop"/>
  <xsl:apply-templates select="marca"/>
  </xsl:template>
  
  
</xsl:stylesheet>
