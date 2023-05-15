<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 3</title>
                <linkl rel="stylesheet" href="CSS/Ite.css" />
            </head>
            <body>
                <header>
                    <a href="https://institutotecnologico.edix.com"><h1> Instituto Tecnológico Edix </h1><xsl:value-of select="ite/@nombre"/></a>
                    <h3>Proeduca <xsl:value-of select="ite/empresa"/></h3>
                    <p>Telefono: +34 91 787 39 91 <xsl:value-of select="ite/telefono"/></p>
                </header>
                <main>
                    <table>
                        <caption><h4>Profesores</h4></caption>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="ite/profesores">
                        <tbody>
                            <tr>
                                <td>1 <xsl:value-of select="/ite/profesores/profesor[1]/id"/></td>
                                <td>Félix <xsl:value-of select="/ite/profesores/profesor[1]/nombre"/></td>
                            </tr>
                            <tr>
                                <td>2 <xsl:value-of select="/ite/profesores/profesor[2]/id"/></td>
                                <td>Raúl <xsl:value-of select="/ite/profesores/profesor[1]/nombre"/></td>
                            </tr>
                            <tr>
                                <td>3 <xsl:value-of select="/ite/profesores/profesor[3]/id"/></td>
                                <td>Raquel <xsl:value-of select="/ite/profesores/profesor[1]/nombre"/></td>
                            </tr>
                            <tr>
                                <td>4 <xsl:value-of select="/ite/profesores/profesor[4]/id"/></td>
                                <td>Tomás <xsl:value-of select="/ite/profesores/profesor[1]/nombre"/></td>
                            </tr>
                        </tbody>
                        </xsl:for-each>
                    </table>

                    <ul>
                        <li>Director <xsl:for-each select="ite/director">
                            <ul>Datos : 
                                <li>Nombre: Chon <xsl:value-of select="/nombre"/></li>
                                <li> Despacho: Nº31, 3ª Planta, Edificio A <xsl:value-of select="/despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                        <li>Jefe de estudios <xsl:for-each select="ite/jefe_estudios">
                            <ul>Datos : 
                                <li>Nombre: Dani <xsl:value-of select="/nombre"/></li>
                                <li> Despacho: Nº27, 2ª Planta, Edificio B <xsl:value-of select="/despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                    </ul>

                    <table>
                        <a href="https://www.edix.com/es/fp/"><caption> Ciclos formativos </caption></a>
                        <thead>
                            <tr>
                                <th>Ciclo</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Decreto titulo</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="ite/ciclos">
                        <tbody>
                            <tr>
                                <td>ASIR <xsl:value-of select="/ciclo[1]/@id"/></td>
                                <td>Administración de Sistemas Informáticos en Red <xsl:value-of select="/ciclo[1]/nombre"/></td>
                                <td>Superior <xsl:value-of select="/ciclo[1]/grado"/></td>
                                <td>Año 2009 <xsl:value-of select="/ciclo[1]/decretoTitulo/@año"/></td>
                            </tr>
                            <tr>
                                <td>DAW <xsl:value-of select="/ciclo[2]/@id"/></td>
                                <td>Desarrollo de Aplicaciones Web <xsl:value-of select="/ciclo[2]/nombre"/></td>
                                <td>Superior <xsl:value-of select="/ciclo[2]/grado"/></td>
                                <td>Año 2010 <xsl:value-of select="/ciclo[2]/decretoTitulo/@año"/></td>
                            </tr>
                            <tr>
                                <td>DAM <xsl:value-of select="/ciclo[3]/@id"/></td>
                                <td>Desarrollo de Aplicaciones Multiplataforma <xsl:value-of select="/ciclo[3]/nombre"/></td>
                                <td>Superior <xsl:value-of select="/ciclo[3]/grado"/></td>
                                <td>Año 2010 <xsl:value-of select="/ciclo[3]/decretoTitulo/@año"/></td>
                            </tr>
                        </tbody>
                        </xsl:for-each>
                    </table>

                    <div id="contacto">
                        <h2> Contacto </h2>
                        <form action="Contactar.jsp" method="get">
                            <label for="nombre">Nombre :</label>
                            <input id="input_form" type="text" name="nombre" placeholder="Introduce tu nombre" required autofocus />
                            </br> </br>
                            <label for="apellidos">Apellidos :</label>
                            <input id="input_form" type="text" name="apellidos" placeholder="Introduce tus apellidos" required />
                            </br> </br>
                            <label for="telefono">Teléfono :</label>
                            <input id="input_form" type="tel" name="telefono" placeholder="Teléfono" />
                            </br> </br>
                            <label for="email">Email :</label>
                            <input id="input_form" type="text" name="email" placeholder="Introduce tu Email" required />
                            </br> </br>
                            <label for="mensaje">Mensaje :</label>
                            </br> <textarea id="input_form" rows="8" cols="60" name="observaciones"
                                placeholder="Contenido del mensaje "></textarea>
                            </br> </br>
                            <input class="boton_enviar" type="submit" value="Enviar" />
                            </br> </br>
                        </form>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>