<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <xsl:element name="xml-stylesheet" use-attribute-sets="g-atributos_1"/>
<xsl:element name="hardware">
    <xsl:element name="printers">
    <xsl:apply-templates select="//impresoras/impresora"/>
    </xsl:element>
    <xsl:element name="laptops">
    <xsl:apply-templates select="//portatiles/portatil"/>
    </xsl:element>
    </xsl:element>
  </xsl:template>
  
 <xsl:attribute-set name="g-atributos_1">
    <xsl:attribute name="type">text/xsl</xsl:attribute>
    <xsl:attribute name="href">hard.xsl</xsl:attribute>
</xsl:attribute-set>
    

<xsl:template match="//impresoras/impresora">
  <xsl:element name="printer">
  <xsl:attribute name="id">
  <xsl:value-of select="@id"/>
  </xsl:attribute>
  <xsl:element name="trademark">
  <xsl:attribute name="manufacturer">
  <xsl:value-of select="marca/@empresa"/></xsl:attribute>
  </xsl:element>
  <xsl:element name="model"><xsl:value-of select="modelo"/></xsl:element>
  <xsl:element name="price"><xsl:value-of select="precio"/></xsl:element>
  <xsl:element name="colors"><xsl:value-of select="colores"/></xsl:element>
  </xsl:element>
</xsl:template>

<xsl:template match="//portatiles/portatil">
  <xsl:element name="laptop" use-attribute-sets="g-atributos_2">
  
  <xsl:element name="trademark">
  <xsl:attribute name="manufacturer"><xsl:value-of select="marca/@empresa"/></xsl:attribute>
  </xsl:element>
  <xsl:element name="model"><xsl:value-of select="modelo"/></xsl:element>
  <xsl:element name="price"><xsl:value-of select="precio"/></xsl:element>
  <xsl:element name="price"><xsl:value-of select="precio[2]"/></xsl:element>
  <xsl:element name="configuration">
  <xsl:apply-templates select="//portatiles/portatil/configuracion"/>
  </xsl:element>
  </xsl:element>
</xsl:template>

<xsl:attribute-set name="g-atributos_2">
    <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
  <xsl:attribute name="warranty"><xsl:value-of select="@garantia"/></xsl:attribute>
</xsl:attribute-set>
    
<xsl:template match="//portatiles/portatil/configuracion">
  <xsl:element name="ram"><xsl:value-of select="ram"/></xsl:element>
  <xsl:element name="hard_disk"><xsl:value-of select="disco_duro"/></xsl:element>
  <xsl:element name="hard_disk"><xsl:value-of select="disco_duro[2]"/></xsl:element>
  <xsl:element name="processor"><xsl:value-of select="procesador"/></xsl:element>
</xsl:template>
  
</xsl:stylesheet>
