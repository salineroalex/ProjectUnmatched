<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 1 May 2023, 12:23
    Author     : alexs
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="unmatched">
        <html>
            <head>
                <title>Cards</title>
                <link rel="stylesheet" href="../../css_lore.css"/>
            </head>
            <body>
                <a id="top"></a>
                <div class="topnav">
                    <a href="index.html">Unmatched</a>
                    <div class="dropdown">
                        <button class="dropbtn active">1st button</button>
                        <div class="dropdown-content">
                            <a href="kingdom.html"></a>
                            <a href="charaters.html"></a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn">2nd button</button>
                        <div class="dropdown-content">
                            <a href="buildpvp.html"></a>
                            <a href="buildpve.html"></a>
                            <a href="bosses.html"></a>
                            <a href="charaters.html"></a>
                        </div>
                    </div>
                    <a href="#contact">3rd button</a>
                    <a href="#about">4th button</a>
                </div>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Value</th>
                        <th>Boost</th>
                        <th>Effect</th>
                        <th>Character</th>
                        <th>Apppears in set</th>
                        <th>Amount</th>
                    </tr>
                    <xsl:call-template name="listCards">
                        <xsl:with-param name="idCard" select="/unmatched/cards/card/@id"/>
                    </xsl:call-template>
                    
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="listCards">
        <xsl:param name="idCard"/>
        <xsl:for-each select="/unmatched/cards/card">
            <xsl:sort select="@id" order="ascending"/>
            <tr>
                <td>
                    <xsl:value-of select="@id"/>
                </td>
                <td>
                    <xsl:value-of select="name"/>
                </td>
                <td>
                    <xsl:value-of select="type"/>
                </td>
                <td>
                    <xsl:value-of select="value"/>
                </td>
                <td>
                    <xsl:value-of select="boost"/>
                </td>
                <td>
                    <xsl:choose>
                        <xsl:when test="effect != ''">
                            <xsl:value-of select="effect"/>
                        </xsl:when>
                        <xsl:otherwise>No effect</xsl:otherwise>
                    </xsl:choose>
                </td>
                <td>
                    <xsl:choose>
                        <xsl:when test="character != ''">
                            <xsl:value-of select="character"/>
                        </xsl:when>
                        <xsl:otherwise>No character</xsl:otherwise>
                    </xsl:choose>
                </td>
                <td>
                    <xsl:choose>
                        <xsl:when test="appear != ''">
                            <xsl:value-of select="appear"/>
                        </xsl:when>
                        <xsl:otherwise>No sets</xsl:otherwise>
                    </xsl:choose>
                </td>
                <td>
                    <xsl:choose>
                        <xsl:when test="quantity != ''">
                            <xsl:value-of select="quantity"/>
                        </xsl:when>
                        <xsl:otherwise>0</xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
