<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" version="1.0" encoding="UTF-8"/>
<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body bgcolor="cyan">
<h1>Alumnos</h1>
<h4><font color="green">ASIR</font></h4>
<h4><font color="yellow">SMIR</font></h4>
<table bordercolor="black">
  <tr>
    <th bgcolor="white">NOMBRE</th>
    <th bgcolor="white">CURSO</th>
  </tr>
  <xsl:for-each select="//alumno">
    <xsl:sort data-type="text" order="ascending"  select="nombre"/>
    <xsl:choose>

    <xsl:when test="ciclo/@nombre='SMR'">
            <tr bgcolor="yellow">
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="ciclo/@curso"/></td>
            </tr>
        </xsl:when>

        <xsl:when test="ciclo/@nombre='ASIR'">
            <tr bgcolor="green">
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="ciclo/@curso"/></td>
            </tr>
        </xsl:when>
        
    </xsl:choose>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>