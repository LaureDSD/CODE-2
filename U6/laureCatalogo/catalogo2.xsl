<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body bgcolor="white">
<h1>CD's del ano 95 en adelante</h1>

<table bordercolor="black">
  <tr>
    <th bgcolor="white">TITULO</th>
    <th bgcolor="white">ANO</th>
    <th bgcolor="white">PAIS</th>
    <th bgcolor="white">COMPANIA</th>
    <th bgcolor="white">PRECIO</th>
  </tr>
  <xsl:for-each select="//cd[año>1995]">
    <xsl:sort data-type="text" order="ascending"  select="titulo and compañia"/>
    <xsl:choose>
                <xsl:when test="position() mod 2=0">
                        <tr bgcolor="grey">
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="año"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="compañia"/></td>
                        <td><font color="yellow"><xsl:value-of select="precio"/></font></td>
                        </tr>
                </xsl:when>
                <xsl:when test="position() mod 2!=0">
                        <tr bgcolor="purple">
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="año"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="compañia"/></td>
                        <td><font color="yellow"><xsl:value-of select="precio"/></font></td>
                     </tr>
                </xsl:when>
    </xsl:choose>
</xsl:for-each>
</table>
<xsl:variable name="total" as="" select="count(//cd)"/>
<h4>Total: <font color="red">  <xsl:value-of select="$total"/> </font> </h4>

<h4>El mas caro: <font color="red">10.9</font></h4>
<h4>El mas barato: <font color="red">7.2</font></h4>
<h4>Numero de companias: <font color="red">22</font></h4>

<xsl:variable name="max" as="" select="max(//precio)"/>
<h4>El mas caro: <font color="red">  <xsl:value-of select="$max"/> </font> </h4>

<xsl:variable name="min" as="" select="min(//precio)"/>
<h4>El mas barato: <font color="red">  <xsl:value-of select="$min"/> </font>

</h4><xsl:variable name="distcount" as="" select="count(distinct-values(//compañia))"/>
<h4>Numero de companias: <font color="red">  <xsl:value-of select="$distcount"/> </font> </h4>

    </body>
  </html>
</xsl:template>

<xsl:template match="//cd[año>1995]">
</xsl:template>


</xsl:stylesheet>