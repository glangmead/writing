<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <div class="wrapper">
            <xsl:apply-templates select="tei:TEI/tei:text/tei:body"/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <div class="title" style="font-weight: bold; margin-bottom: 0.5em;">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="tei:lg">
        <div class="verse" style="margin-bottom: 1em;">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="tei:l">
        <div class="verse-line">
            <span style="color: gray;margin-right: 1em;"><xsl:value-of select="@n"/></span> 
            <xsl:if test="contains(@rend,'indent')">
               <span class="alignment indent">&#160;</span>
             </xsl:if>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    </xsl:stylesheet>
