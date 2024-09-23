<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body bgcolor="white">
<h1>Compañias discograficas</h1>
            

<table bordercolor="black">
<tr bgcolor="white">
                <td>Titulo</td>
                <td>Precio Actual</td>
                <td>Precio +10%</td>
            </tr>
  <xsl:for-each select="//cd[compañia/@web]">
    <xsl:sort data-type="text" order="ascending"  select="titulo and compañia"/>
    <xsl:choose>
                <xsl:when test="position() mod 2=0">
                        <tr bgcolor="grey">
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="precio*1.10"/></td>
                        </tr>
                </xsl:when>
                <xsl:when test="position() mod 2!=0">
                        <tr bgcolor="orange">
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="precio*1.10"/></td>
                     </tr>
                </xsl:when>
    </xsl:choose>

</xsl:for-each>
</table>
    </body>
  </html>
</xsl:template>

<xsl:template match="/cd">
</xsl:template>


</xsl:stylesheet>