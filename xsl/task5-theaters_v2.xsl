<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center" style="color: blue">Театры</h1>
                <xsl:value-of select="task4-theaters_v2"/>
                <xsl:for-each select="theaters/theater">
                    <div align="center">
                        <div align="center" style=" width: 660px; height: 460px; border: ridge">
                            <div style="font-size: 20px; margin: 10px">
                                <xsl:value-of select="name"/>
                            </div>
                            <img style="width: 600px; height: 400px" align="center" src="{image}"/>
                        </div>
                    </div>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>