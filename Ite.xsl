<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <edix> <a href="https://institutotecnologico.edix.com"><xsl:value-of select="ite2/@nombre"/>  <xsl:value-of select="ite2/empresa"/> </a>
        <telefono>Telefono : <xsl:value-of select="ite2/telefono"/></telefono>
        <xsl:for-each select="/ite2/profesores">
        <profesores>
            <profesor>
                <id_profesor><xsl:value-of select="profesor[1]/id"/></id_profesor>
                <nombre_profesor><xsl:value-of select="profesor[1]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <id_profesor><xsl:value-of select="profesor[2]/id"/></id_profesor>
                <nombre_profesor><xsl:value-of select="profesor[2]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <id_profesor><xsl:value-of select="profesor[3]/id"/></id_profesor>
                <nombre_profesor><xsl:value-of select="profesor[3]/nombre"/></nombre_profesor>
            </profesor>
            <profesor>
                <id_profesor><xsl:value-of select="profesor[4]/id"/></id_profesor>
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
                <id_ciclo><xsl:value-of select="ciclo[1]/@id"/></id_ciclo>
                <grado><xsl:value-of select="ciclo[1]/nombre"/> Grado <xsl:value-of select="ciclo[1]/grado"/></grado>
                <Decreto_Titulo>
                    <año><xsl:value-of select="ciclo[1]/decretoTitulo/@año"/></año>
                </Decreto_Titulo>
            </ciclo>
            <ciclo>
                <id_ciclo><xsl:value-of select="ciclo[2]/@id"/></id_ciclo>
                <grado><xsl:value-of select="ciclo[2]/nombre"/> Grado <xsl:value-of select="ciclo[2]/grado"/></grado>
                <Decreto_Titulo>
                    <año><xsl:value-of select="ciclo[2]/decretoTitulo/@año"/></año>
                </Decreto_Titulo>
            </ciclo>
            <ciclo>
                <id_ciclo><xsl:value-of select="ciclo[3]/@id"/></id_ciclo>
                <grado><xsl:value-of select="ciclo[3]/nombre"/> Grado <xsl:value-of select="ciclo[3]/grado"/></grado>
                <Decreto_Titulo>
                    <año><xsl:value-of select="ciclo[3]/decretoTitulo/@año"/></año>
                </Decreto_Titulo>
            </ciclo>
        </ciclos>
        </xsl:for-each>
    </edix>
    </xsl:template>
</xsl:stylesheet>