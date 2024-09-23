<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
      <xsl:element name="stock" use-attribute-sets="g_atributos_empresa">
          <xsl:apply-templates></xsl:apply-templates>
    </xsl:element>
    </xsl:template>
    
    
     <xsl:template match="//impresoras/impresora">
      <xsl:element name="modelo">
      <xsl:value-of select="modelo"></xsl:value-of>
      </xsl:element>
      </xsl:template>
    
    
    
    <xsl:attribute-set name="g-atributos_empresa">
    <xsl:attribute name="empresa">EmpresaL</xsl:attribute>
          <xsl:attribute name="fecha">FechaN</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>