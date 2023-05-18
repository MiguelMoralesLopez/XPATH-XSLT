<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 3</title>
                <link rel="stylesheet" href="CSS/Ite.css" />
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="ite/@nombre"/></h1>
                    <h3><xsl:value-of select="ite/empresa"/></h3>
                    <h6><xsl:value-of select="ite/telefono"/></h6>
                </header>
                <div class="separadorHorizontal"></div>
                <main>
                    <section id="equipoDirectivo">
                        <table>
                            <caption><h4>Equipo Directivo</h4></caption>
                            <thead>
                                <tr>
                                    <th>Cargo</th>
                                    <th>Nombre</th>
                                    <th>Despacho</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Director</td>
                                    <td><xsl:value-of select="ite/director/nombre"/></td>
                                    <td><xsl:value-of select="ite/director/despacho"/></td>
                                </tr>
                                <tr>
                                    <td>Jefe de Estudios</td>
                                    <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                                    <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <div class="separadorVertical"></div>
                    <section id="profesorado">
                        <table>
                            <caption><h3>Profesores</h3></caption>
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                </tr>
                            </thead>
                            <xsl:for-each select="/ite/profesores">
                            <tbody>
                                <tr>
                                    <td><xsl:value-of select="profesor[1]/id"/></td>
                                    <td><xsl:value-of select="profesor[1]/nombre"/></td>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="profesor[2]/id"/></td>
                                    <td><xsl:value-of select="profesor[2]/nombre"/></td>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="profesor[3]/id"/></td>
                                    <td><xsl:value-of select="profesor[3]/nombre"/></td>
                                </tr>
                                <tr>
                                    <td><xsl:value-of select="profesor[4]/id"/></td>
                                    <td><xsl:value-of select="profesor[4]/nombre"/></td>
                                </tr>
                            </tbody>
                            </xsl:for-each>
                        </table>
                    </section>
                    <div class="separadorHorizontal"></div>
                    <section id="ofertaEducativa">
                        <h3>Oferta Educativa</h3>
                        <xsl:for-each select="ite/ciclos">
                            <ol>
                                <li><xsl:value-of select="ciclo[1]/@id"></xsl:value-of>
                                    <ul>
                                        <li>Nombre: <xsl:value-of select="ciclo[1]/nombre"></xsl:value-of></li>
                                        <li>Grado: <xsl:value-of select="ciclo[1]/grado"></xsl:value-of></li>
                                        <li>Decreto: <xsl:value-of select="ciclo[1]/decretoTitulo/@año"></xsl:value-of></li>
                                        <li>Para mas información
                                        <a href="https://unirfp.unir.net/ingenieria/fp-grado-asir/"> haz click aquí.</a></li>
                                    </ul>
                                </li>
                                <li><xsl:value-of select="ciclo[2]/@id"></xsl:value-of>
                                    <ul>
                                        <li>Nombre: <xsl:value-of select="ciclo[2]/nombre"></xsl:value-of></li>
                                        <li>Grado: <xsl:value-of select="ciclo[2]/grado"></xsl:value-of></li>
                                        <li>Decreto: <xsl:value-of select="ciclo[2]/decretoTitulo/@año"></xsl:value-of></li>
                                        <li>Para mas información
                                        <a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/"> haz click aquí.</a></li>
                                    </ul>
                                </li>
                                <li><xsl:value-of select="ciclo[3]/@id"></xsl:value-of>
                                    <ul>
                                        <li>Nombre: <xsl:value-of select="ciclo[3]/nombre"></xsl:value-of></li>
                                        <li>Grado: <xsl:value-of select="ciclo[3]/grado"></xsl:value-of></li>
                                        <li>Decreto: <xsl:value-of select="ciclo[3]/decretoTitulo/@año"></xsl:value-of></li>
                                        <li>Para mas información
                                        <a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/"> haz click aquí.</a></li>
                                    
                                    </ul>
                                </li>
                            </ol>
                        </xsl:for-each>
                    </section>
                    <div class="separadorVertical"></div>
                    <section id="contacto">
                        <h3>Contacta con nosotros</h3>
                        <form action="Contactar.jsp" method="get">
                            <label for="nombre">Nombre :</label>
                            <input type="text" name="nombre" placeholder="Introduce tu nombre"/><br/>
                            <label for="apellidos">Apellidos :</label>
                            <input type="text" name="apellidos" placeholder="Introduce tus apellidos"/><br/>
                            <label for="telefono">Teléfono :</label> 
                            <input type="tel" name="telefono" placeholder="Teléfono" /><br/>
                            <label for="email">Email :</label>
                            <input type="text" name="email" placeholder="Introduce tu Email"/><br/>
                            <label for="mensaje">Mensaje :</label><br/>
                            <textarea name="observaciones" placeholder="Contenido del mensaje "></textarea><br/>
                            <input id="enviar" type="submit" value="Enviar" />
                            <input type="reset"></input>
                    </form>
                    </section>                    
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>