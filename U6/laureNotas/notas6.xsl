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
            
            <xsl:text disable-output-escaping="yes">&lt;br/&gt; >Primera: |</xsl:text>
            <xsl:for-each select="evaluaciones/*/notas/modulo">

                /*CASE , SELECCION*/
                <xsl:choose>
                    <xsl:when test="@nota&lt;4">
                        <font color="Red">
                        <xsl:text disable-output-escaping="yes">|Suspenso:</xsl:text>
                        <xsl:value-of select="@nota"/>
                        <xsl:text disable-output-escaping="yes">|</xsl:text>
                        </font>
                    </xsl:when>
                    <xsl:when test="@nota&lt;5">
                    <font color="Orange">
                        <xsl:text disable-output-escaping="yes">|Insuficiente:</xsl:text>
                        <xsl:value-of select="@nota"/>
                        <xsl:text disable-output-escaping="yes">|</xsl:text>
                        </font>
                    </xsl:when>
                    <xsl:when test="@nota&lt;7">
                    <font color="Green">
                        <xsl:text disable-output-escaping="yes">|Suficiente:</xsl:text>
                        <xsl:value-of select="@nota"/>
                        <xsl:text disable-output-escaping="yes">|</xsl:text>
                        </font>
                    </xsl:when>
                    <xsl:when test="@nota&lt;9">
                    <font color="Purple">
                        <xsl:text disable-output-escaping="yes">|Aprobado:</xsl:text>
                        <xsl:value-of select="@nota"/>
                        <xsl:text disable-output-escaping="yes">|</xsl:text>
                        </font>
                    </xsl:when>
                    <xsl:when test="@nota=10">
                    <font color="Pink">
                        <xsl:text disable-output-escaping="yes">|Perfecto:</xsl:text>
                        <xsl:value-of select="@nota"/>
                        <xsl:text disable-output-escaping="yes">|</xsl:text>
                        </font>
                    </xsl:when>






                </xsl:choose>


            </xsl:for-each>

        <xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>