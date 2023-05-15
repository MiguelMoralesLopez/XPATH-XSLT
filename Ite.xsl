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
                    <a href="https://institutotecnologico.edix.com"><h1> Instituto Tecnológico Edix </h1><xsl:value-of select="html/body/header"/></a>
                    <h3>Proeduca <xsl:value-of select="html/body/header"/></h3>
                    <p>Telefono: +34 91 787 39 91</p>
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
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Félix</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Raúl</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Raquel</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Tomás</td>
                            </tr>
                        </tbody>
                    </table>

                    <ul>
                        <li>Director
                            <ul>Datos : 
                                <li>Nombre: Chon</li>
                                <li> Despacho: Nº31, 3ª Planta, Edificio A</li>
                            </ul>
                        </li>
                        <li>Jefe de estudios
                            <ul>Datos : 
                                <li>Nombre: Dani</li>
                                <li> Despacho: Nº27, 2ª Planta, Edificio B</li>
                            </ul>
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
                        <tbody>
                            <tr>
                                <td>ASIR</td>
                                <td>Administración de Sistemas Informáticos en Red</td>
                                <td>Superior</td>
                                <td>Año 2009</td>
                            </tr>
                            <tr>
                                <td>DAW</td>
                                <td>Desarrollo de Aplicaciones Web</td>
                                <td>Superior</td>
                                <td>Año 2010</td>
                            </tr>
                            <tr>
                                <td>DAM</td>
                                <td>Desarrollo de Aplicaciones Multiplataforma</td>
                                <td>Superior</td>
                                <td>Año 2010</td>
                            </tr>
                        </tbody>
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