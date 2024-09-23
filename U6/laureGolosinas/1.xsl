<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:output  method="html" version="1.0" encoding="UTF-8" indent="yes"/>
 
 <!-- comentario -->
 
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
            <body>
                <h1>TIENDA DE GOLOSINAS</h1>
                
                
                
                <h3>lenguaje de chucherias</h3>
                <table border="1">
                   <thead>
                         <tr>
                               <th>Nombre</th>
                               <th>Precio</th>
                         </tr>
                  </thead>
                  <tbody>
                        <tr>
                            <td><xsl:apply-templates select="/golosinas/golosina/nombre"></xsl:apply-templates></td>
                             <td><xsl:apply-templates select="/golosinas/golosina/precio"></xsl:apply-templates></td>
                        </tr>
                       </tbody> 
                     </table>
                     
                     <h3>lngredientes que utilizan</h3>
                     
                      <table border="1" bgcolor="green" width="100%">
                    <thead>
                        <tr>
                            <th>NOMBRES</th>
                        </tr>
                    </thead>
                  <tbody>
                        <tr>
                            <td><xsl:apply-templates select="/golosinas/golosina/ingredientes"></xsl:apply-templates></td>
                        </tr>
                    </tbody>
              </table>
              
              <h3>Fechas caducidadl</h3>
              
              
              <xsl:apply-templates select="/golosinas/golosina/caduca"></xsl:apply-templates>
              
            </body>
       </html>
       
   </xsl:template>
   
   
   
   
   
   <xsl:template match="/golosinas/golosina/nombre">
         <xsl:value-of select="concat(.,' / ')"/>
   </xsl:template>
   
    <xsl:template match="/golosinas/golosina/precio">
        <xsl:value-of select="concat(.,' / ')"/>
   </xsl:template>
   
   <xsl:template match="/golosinas/golosina/ingredientes">
          <xsl:value-of select="concat(.,' &lt;/&gt; ')"/>
   </xsl:template>
   
   <xsl:template match="/golosinas/golosina/caduca">
          <xsl:value-of disable-output-escaping="yes" select="concat(.,' &lt;br/&gt; ')"/>
   </xsl:template>
   
   
   

</xsl:stylesheet>

