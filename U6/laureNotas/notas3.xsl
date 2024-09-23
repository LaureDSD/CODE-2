<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body>
<h1>Alumnos del ciclo</h1>

<xsl:for-each select="//alumno">
    <xsl:value-of select="nombre"/>
       
        <xsl:text disable-output-escaping="yes">&lt;br/&gt; --Notas</xsl:text>
            
            /*USO FOR EACH*/
            <xsl:text disable-output-escaping="yes">&lt;br/&gt; >Primera: |</xsl:text>
            <xsl:for-each select="evaluaciones/primera/notas/modulo">
            <xsl:value-of select="@nota"/>
            <xsl:text disable-output-escaping="yes">|</xsl:text>
            </xsl:for-each>

            <xsl:text disable-output-escaping="yes">&lt;br/&gt; >Segunda: |</xsl:text>
            <xsl:for-each select="evaluaciones/segunda/notas/modulo">
            <xsl:value-of select="@nota"/>
            <xsl:text disable-output-escaping="yes">|</xsl:text>
            </xsl:for-each>

            <xsl:text disable-output-escaping="yes">&lt;br/&gt; >Tercera: |</xsl:text>
            <xsl:for-each select="evaluaciones/tercera/notas/modulo">
            <xsl:value-of select="@nota"/>
            <xsl:text disable-output-escaping="yes">|</xsl:text>
            </xsl:for-each>

        <xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>