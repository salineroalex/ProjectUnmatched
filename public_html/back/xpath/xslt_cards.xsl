<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="unmatched">
        <html>
            <head>
                <title>Cards</title>
            </head>
            <body>
                <h1>
                    Card table
                </h1>
                <xsl:for-each select="cards/card">
                    
                    <xsl:sort select="@id" order="ascending"/>
                    <table id="tabla">
                        <tr>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Effect</th>
                        </tr>
                        <!--        
<xsl:call-template name="listadoAsignaturas">
    <xsl:with-param name="codCar" select="@id"/>
</xsl:call-template>
                        -->
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
