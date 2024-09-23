<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:output  method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  
  <!-- raiz de documneto -->
<xsl:template match="/">
  <xsl:element name="Mi_Tienda"  >
    <xsl:attribute name="nombre">
    <!-- valor de nombre -->
      <xsl:value-of select="/tienda/nombre"></xsl:value-of>
    </xsl:attribute>
    
     <!-- elemento interno -->
    <xsl:element name="telefono">
    <!-- valor de telefono -->
    <xsl:value-of select="tienda/telefono"></xsl:value-of>
  </xsl:element>    
    
    <!-- accesos a subatributos -->
    <xsl:apply-templates select="/tienda/producto"></xsl:apply-templates>

  </xsl:element>
  </xsl:template>

  <!-- sub atributo articulo -->
  <xsl:template match="/tienda/producto">
  <!-- referenci grupo de atributos -->
º<xsl:element name="articulo" use-attribute-sets="grupo">
  <!-- valor de articulo -->
<xsl:value-of select="articulo"></xsl:value-of>
</xsl:element>
  </xsl:template>
  
  <!-- atributos de articulo -->
<xsl:attribute-set name="grupo">
    <!-- atributo -->
 <xsl:attribute name="codigo">
      <xsl:value-of select="codigo"></xsl:value-of>
    </xsl:attribute>
    <!-- atributo -->
  <xsl:attribute name="cantidad">
      <xsl:value-of select="cantidad"></xsl:value-of>
    </xsl:attribute>
    <!-- texto desde xsl -->
    <xsl:attribute name="origen">
    <xsl:text>España</xsl:text>
    </xsl:attribute>
</xsl:attribute-set>  
  
</xsl:stylesheet>
