<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Staff</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 0; }
                    .container { max-width: 800px; margin: 0 auto; padding: 20px; background-color: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
                    .store-info {margin-bottom: 10px; color: red;}
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/store-info"/>
                </div>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/staff"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="store-info">
        <h1>Магазин за Дрехи</h1>
        <p class="store-info"><xsl:value-of select="store-name" /></p>
        <p class="store-info">Местоположение: <xsl:value-of select="location/street" />, <xsl:value-of select="location/city" />, <xsl:value-of select="location/country" /></p>
    </xsl:template>

    <xsl:template match="staff">
        <h1>Служители</h1>
        <div class="staff-list">
            <xsl:for-each select="member">
                <div class="staff-member">
                    <h3><xsl:value-of select="member-name/first"/> <xsl:text> </xsl:text> <xsl:value-of select="member-name/last"/></h3>
                    <p>Роля: <xsl:value-of select="@role"/></p>
                    <p>Опит: <xsl:value-of select="@experience"/></p>
                    <p>Електронна Поща: <xsl:value-of select="member-contact/email"/></p>
                    <p>Телефон: <xsl:value-of select="member-contact/phone"/></p>
                    <p>Дата на наемане: <xsl:value-of select="hire-date"/></p>
                    <p>Дата на раждане: <xsl:value-of select="birth-date"/></p>

                    <h4>Отговорности:</h4>
                    <ul>
                        <xsl:for-each select="responsibilities/responsibility">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>

</xsl:stylesheet>
