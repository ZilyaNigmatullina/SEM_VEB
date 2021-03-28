<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Театры</h1>
                <xsl:value-of select="task4-theaters_v2"/>
                <table border="2">
                    <tr>
                        <th style="background-color: #D8BFD8">Наименование</th>
                        <th style="background-color: #FFD700">Фото</th>
                        <th style="background-color: #48D1CC">Основная информация</th>
                        <th style="background-color: #98FB98">Веб-сайт</th>
                    </tr>
                    <xsl:for-each select="theaters/theater">
                        <tr>
                            <td style="background-color: #E6E6FA">
                                <div align="center">
                                    <xsl:value-of select="name"/>
                                </div>
                            </td>
                            <td>
                                <img style="width: 300px; height: 200px" align="center" src="{image}"/>
                            </td>
                            <td style="background-color: #AFEEEE">
                                <div align="center">
                                    <template style="font-weight: bold;">Тип тетра:</template>
                                    <xsl:value-of select="type"/>
                                    <br/>
                                    <template style="font-weight: bold;">Местоположение:</template>
                                    <xsl:value-of select="location/country"/>
                                    <xsl>,</xsl>
                                    <xsl:value-of select="location/city"/>
                                    <br/>
                                    <template style="font-weight: bold;">Год основания:</template>
                                    <xsl:value-of select="foundation"/>
                                    <br/>
                                    <template style="font-weight: bold;">Вместимость:</template>
                                    <xsl:value-of select="capacity"/>
                                    <br/>
                                    <template style="font-weight: bold;">Директор:</template>
                                    <xsl:value-of select="director"/>
                                </div>

                            </td>
                            <td>
                                <div align="center">
                                    <a href="{website}">
                                        <xsl:value-of select="website"/>
                                    </a>
                                </div>

                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>