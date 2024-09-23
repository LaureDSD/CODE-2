<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <xsl:element name="mi_tienda"></xsl:element>
    <xsl:element name="mi_tienda">
        <xsl:attribute name="nombre">
            <xsl:value-of select="/tienda/nombre "></xsl:value-of> </xsl:attribute>
        <xsl:apply-templates select="/tienda/producto"></xsl:apply-templates>
    </xsl:element>
</xsl:template>


<xsl:template match="/tienda/producto">
    <xsl:element name="articulo">
        <xsl:value-of select="articulo"></xsl:value-of>
    </xsl:element>
</xsl:template>

<xsl:template match="/tienda/nombre">
    <xsl:element name="articulo">
        <xsl:value-of select="text()"></xsl:value-of>
    </xsl:element>
</xsl:template>


 </xsl:stylesheet>
