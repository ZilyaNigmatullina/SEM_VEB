<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Театры</h1>
                <xsl:value-of select="task4-theaters_v2"/>
                <table border="2">
                    <tr>
                        <th>Наименование</th>
                        <th>Тип</th>
                        <th>Расположение</th>
                        <th>Год постройки</th>
                        <th>Архитектор</th>
                        <th>Вместимость</th>
                        <th>Директор</th>
                        <th>Художественный руководитель</th>
                        <th>Главный дирижер</th>
                        <th>Главный баллетмейстер</th>
                        <th>Главный хомейстер</th>
                        <th>Официальный сайт</th>
                    </tr>
                    <xsl:for-each select="theaters/theater">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="type"/>
                            </td>
                            <td>
                                <xsl:value-of select="location/country"/>
                                <xsl>, </xsl>
                                <xsl:value-of select="location/city"/>
                            </td>
                            <td>
                                <xsl:value-of select="foundation"/>
                            </td>
                            <td>
                                <xsl:value-of select="arcitecture"/>
                            </td>
                            <td>
                                <xsl:value-of select="capacity"/>
                            </td>
                            <td>
                                <xsl:value-of select="director"/>
                            </td>
                            <td>
                                <xsl:value-of select="artisticDirector"/>
                            </td>
                            <td>
                                <xsl:value-of select="chiefConductor"/>
                            </td>
                            <td>
                                <xsl:value-of select="chiefChoreografer"/>
                            </td>
                            <td>
                                <xsl:value-of select="chiefChoirmaster"/>
                            </td>
                            <td>
                                <xsl:value-of select="website"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>