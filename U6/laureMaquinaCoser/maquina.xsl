

  <xsl:template match="/">
         <xsl:element name="empresas">
                <xsl:apply-templates select="singer"/>
        </xsl:element>
</xsl:template>

<xsl:template match="singer">
        <xsl:element name="empresa">
                <xsl:attribute name="denominacion">
                        <xsl:value-of select="//denominacion"/>
                </xsl:attribute>
                <xsl:attribute name="nif">
                        <xsl:value-of select="//nif"/>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">SINGER</xsl:text>
                <xsl:apply-templates select="//razon_social"></xsl:apply-templates>
        </xsl:element>
</xsl:template>
  
  <xsl:template match="//razon_social">
        <xsl:element name="direccion"><xsl:value-of select="direccion"/></xsl:element>
        <xsl:element name="telefono"><xsl:value-of select="telefono"/></xsl:element>
        <xsl:element name="email"><xsl:value-of select="email"/></xsl:element>
        <xsl:element name="registro_mercantil">
                <xsl:apply-templates select="//razon_social/registro_mercantil"/>
        </xsl:element>
  </xsl:template>

<xsl:template match="//razon_social/registro_mercantil">
        <xsl:element name="localidad"><xsl:value-of select="substring-before(.,'-')"/></xsl:element>
        <xsl:element name="nombre"><xsl:value-of select="substring-after(.,'-')"/></xsl:element>
</xsl:template>


  
</xsl:stylesheet>
