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
                    <a href="https://institutotecnologico.edix.com"><h1><xsl:value-of select="ite/@nombre"/></h1></a>
                    <h2><xsl:value-of select="ite/empresa"/></h2>
                    <p><xsl:value-of select="ite/telefono"/></p>
                </header>
                <main>
                    <table>
                        <caption><h3>Profesores</h3></caption>
                        <thead>
                            <tr>
                                <th>ID</th>
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
                    <ul>
                        <li>Director <xsl:for-each select="/ite/director">
                            <ul>Datos : 
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li> Despacho: <xsl:value-of select="despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                        <li>Jefe de estudios <xsl:for-each select="/ite/jefe_estudios">
                            <ul>Datos : 
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li> Despacho: <xsl:value-of select="despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                    </ul> 
                    <table>
                        <thead>
                        <a href="https://www.edix.com/es/fp/"><caption><h3> Ciclos formativos </h3></caption></a>
                            <tr>
                                <th>Ciclo</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Decreto titulo</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="/ite/ciclos">
                        <tbody>
                            <tr>
                                <td><xsl:value-of select="ciclo[1]/@id"/></td>
                                <td><xsl:value-of select="ciclo[1]/nombre"/></td>
                                <td><xsl:value-of select="ciclo[1]/grado"/></td>
                                <td><xsl:value-of select="ciclo[1]/decretoTitulo/@año"/></td>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="ciclo[2]/@id"/></td>
                                <td><xsl:value-of select="ciclo[2]/nombre"/></td>
                                <td><xsl:value-of select="ciclo[2]/grado"/></td>
                                <td><xsl:value-of select="ciclo[2]/decretoTitulo/@año"/></td>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="ciclo[3]/@id"/></td>
                                <td><xsl:value-of select="ciclo[3]/nombre"/></td>
                                <td><xsl:value-of select="ciclo[3]/grado"/></td>
                                <td><xsl:value-of select="ciclo[3]/decretoTitulo/@año"/></td>
                            </tr>
                        </tbody>
                        </xsl:for-each>
                    </table>
                    <form action="Contactar.jsp" method="get">
                        <legend><h3> Contacto </h3></legend>
                        <label for="nombre">Nombre :</label>
                        <input type="text" name="nombre" placeholder="Introduce tu nombre" />
  
                        <label for="apellidos">Apellidos :</label>
                        <input type="text" name="apellidos" placeholder="Introduce tus apellidos"/>

                        <label for="telefono">Teléfono :</label>
                        <input type="tel" name="telefono" placeholder="Teléfono" />

                        <label for="email">Email :</label>
                        <input type="text" name="email" placeholder="Introduce tu Email"/>
 
                        <label for="mensaje">Mensaje :</label>
                        <textarea rows="8" cols="60" name="observaciones" placeholder="Contenido del mensaje "></textarea>

                        <input class="boton_enviar" type="submit" value="Enviar" />
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>