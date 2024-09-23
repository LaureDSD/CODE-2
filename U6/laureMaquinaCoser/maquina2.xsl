<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
    <xsl:element name="historia">
        <xsl:apply-templates select="//cronologia"/>
    </xsl:element>
</xsl:template>

<xsl:template match="//cronologia">


    <xsl:element name="etapas">
        <xsl:attribute name="listado">
            <xsl:text disable-output-escaping="yes">ORDEN ASCENDENT POR AÑOS</xsl:text>
        </xsl:attribute>
    </xsl:element>

<xsl:for-each select="etapa">
    <xsl:sort data-type="number" order="ascending" select="@año"/>
        <xsl:element name="etapa">
            <xsl:attribute name="año">
                <xsl:value-of select="@año"/>
            </xsl:attribute>
                <xsl:value-of select="@imagen"/>
            </xsl:element>
</xsl:for-each>


<xsl:element name="etapas">
    <xsl:attribute name="listado">
        <xsl:text disable-output-escaping="yes">ORDEN DESCENDENT POR AÑOS</xsl:text>
    </xsl:attribute>
            
<xsl:for-each select="etapa">
    <xsl:sort data-type="number" order="descendig" select="@año"/>
        <xsl:element name="etapa">
            <xsl:attribute name="año">
                <xsl:value-of select="@año"/>
            </xsl:attribute>
                <xsl:value-of select="@imagen"/>
            </xsl:element>
</xsl:for-each>


</xsl:element>



</xsl:template>
</xsl:stylesheet>