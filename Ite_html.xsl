<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <!--Genero el html -->
    <html>
    <head>
        <title>AE-3</title>
        <link rel="stylesheet" href="css/Ite.css" />
    </head>
   
    <body>
        <div id="general">
         <header id="header">
            <a href="https://institutotecnologico.edix.com"><h1><xsl:value-of select="ite/@nombre"/></h1></a>
            <h1><xsl:value-of select="ite/empresa"/></h1>
            <p><xsl:value-of select="ite/telefono"/></p>
         </header>
        </div>
        <div id="direccion">
            <table id="table1">
                <h3>DIRECCION</h3>
                    <ul>
                        <li>Director <xsl:for-each select="/ite/director">
                            <ul>Información : 
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li> Despacho: <xsl:value-of select="despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                        <li>Jefe de estudios <xsl:for-each select="/ite/jefe_estudios">
                            <ul>Información : 
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li> Despacho: <xsl:value-of select="despacho"/></li>
                            </ul>
                            </xsl:for-each>
                        </li>
                    </ul> 
            </table>
        
        </div>

        <div id="profesores">
            <table id="table2">
              <h3>PROFESORES</h3>
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
        </div>
        <div id="estudio">
            <table id="table3">
                    <thead>
                        <a href="https://www.edix.com/es/fp/"><h3> CICLOS FORMATIVOS </h3></a>
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
        </div>
        
        <div id="formulario">
            <form action="Registro.jsp" method="get">
           
                    <h3>Formulario de contacto</h3>
                    
                    <label>Nombre</label>
                        <input type="text" placeholder="Introduce su nombre" />
                     <br></br>
                    <label>Apellidos</label>
                        <input type="text"  placeholder="Introduce sus apellidos" />
                    <br></br>
                    <label>Teléfono</label>
                        <input type="number" placeholder="Introduce su teléfono" />
                    <br></br>
                    <label>Email</label>
                        <input type="text" placeholder="Introduce su email" />
                    <br></br>
                        <input id="Enviar" type="submit" value="Enviar" />
              
            </form>
        </div>
    </body>
</html>










    </xsl:template>
</xsl:stylesheet>