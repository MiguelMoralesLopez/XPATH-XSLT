<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <edix> <a href="{/ite2/@web}"><xsl:value-of select="ite2/@nombre"/> junto a <xsl:value-of select="ite2/empresa"/> </a>
        <telefono>Telefono : <xsl:value-of select="ite2/telefono"/></telefono>
        <xsl:for-each select="/ite2/profesores">
        <profesores>
            <profesor>
                <codigo_profesor><xsl:value-of select="profesor[1]/id"/></codigo_profesor>
                <nombre_profesor><xsl:value-of select="profesor[1]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <codigo_profesor><xsl:value-of select="profesor[2]/id"/></codigo_profesor>
                <nombre_profesor><xsl:value-of select="profesor[2]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <codigo_profesor><xsl:value-of select="profesor[3]/id"/></codigo_profesor>
                <nombre_profesor><xsl:value-of select="profesor[3]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <codigo_profesor><xsl:value-of select="profesor[4]/id"/></codigo_profesor>
                <nombre_profesor><xsl:value-of select="profesor[4]/nombre"/></nombre_profesor>
            </profesor>
        </profesores>
        </xsl:for-each>
        <xsl:for-each select="/ite2/director">
        <director>
            <nombre_director><xsl:value-of select="nombre"/></nombre_director>
            <despacho_director><xsl:value-of select="despacho"/></despacho_director>
        </director>
        </xsl:for-each>
        <xsl:for-each select="/ite2/jefe_estudios">
        <jefe_estudios>
            <nombre_jefe><xsl:value-of select="nombre"/></nombre_jefe>
            <despacho_jefe><xsl:value-of select="despacho"/></despacho_jefe>
        </jefe_estudios>
        </xsl:for-each>
        <xsl:for-each select="/ite2/ciclos">
        <ciclos>
            <ciclo>
                <codigo_ciclo><xsl:value-of select="ciclo[1]/@id"/></codigo_ciclo>
                <nombre_grado><xsl:value-of select="ciclo[1]/nombre"/> Grado <xsl:value-of select="ciclo[1]/grado"/></nombre_grado>
                <Titulo>
                    <año><xsl:value-of select="ciclo[1]/decretoTitulo/@año"/></año>
                </Titulo>
            </ciclo>
            <ciclo>
                <codigo_ciclo><xsl:value-of select="ciclo[2]/@id"/></codigo_ciclo>
                <nombre_grado><xsl:value-of select="ciclo[2]/nombre"/> Grado <xsl:value-of select="ciclo[2]/grado"/></nombre_grado>
                <Titulo>
                    <año><xsl:value-of select="ciclo[2]/decretoTitulo/@año"/></año>
                </Titulo>
            </ciclo>
            <ciclo>
                <codigo_ciclo><xsl:value-of select="ciclo[3]/@id"/></codigo_ciclo>
                <nombre_grado><xsl:value-of select="ciclo[3]/nombre"/> Grado <xsl:value-of select="ciclo[3]/grado"/></nombre_grado>
                <Titulo>
                    <año><xsl:value-of select="ciclo[3]/decretoTitulo/@año"/></año>
                </Titulo>
            </ciclo>
        </ciclos>
        </xsl:for-each>
    </edix>
    </xsl:template>
</xsl:stylesheet>