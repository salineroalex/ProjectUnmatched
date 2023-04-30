<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : surpriseAttack.xsl
    Created on : 30 de abril de 2023, 18:09
    Author     : Iñi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Surprise Attack</title>
                <link rel="stylesheet" type="text/css" href="surpriseAttack.css"/>
            </head>
            <body>
                <table>
                    <th>Surprise Attack</th>
                        <tr>
                        <td>Name</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/name"/>
                        </td>
                        </tr>  
                        <tr>
                        <td>Type</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/type"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Value</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/value"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Boost</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/boost"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Effect</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/effect"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Character</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/character"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Appear</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/appear"/>
                        </td>
                        </tr>
                        <tr>
                        <td>Quantity</td>
                        <td>
                            <xsl:value-of select="//cards/card[@id='001']/quantity"/>
                        </td>
                        </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
