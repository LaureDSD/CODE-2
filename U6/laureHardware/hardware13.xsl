﻿<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
      <xsl:element name="stock" use-attribute-sets="g_atributos_empresa">
          <xsl:attribute name="empresa"></xsl:attribute>
          <xsl:attribute name="fecha"></xsl:attribute>
    </xsl:element>
    </xsl:template>

</xsl:stylesheet>