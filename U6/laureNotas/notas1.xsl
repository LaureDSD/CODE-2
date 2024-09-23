<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
<head><title>For each</title></head>
<body>
<h1>Alumnos del ciclo</h1>

<xsl:for-each select="//nombre">
    <xsl:value-of select="."/>
    <xsl:text disable-output-escaping="yes">&lt;br&lt;</xsl:text>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>