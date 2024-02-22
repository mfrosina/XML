<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Магазин за Дрехи</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
                    color: #333;
                    margin: 0;
                    padding: 0;
                    }
                    .container {
                    max-width: 800px;
                    margin: 0 auto;
                    padding: 20px;
                    background-color: #fff;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }
                    a:hover {
                    text-decoration: none;
                    }

                    h1 {
                    text-align:center;
                    color: #333;
                    }
                    h2 {
                    font-size: 1.5rem;
                    }
                    p { margin-bottom: 10px; }
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/store-info"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="store-info">
        <h1>Информация за Магазина за Дрехи</h1>
        <p>Име на магазина: <xsl:value-of select="store-name" /></p>
        <p>Местоположение: <xsl:value-of select="location/street" />, <xsl:value-of select="location/city" />, <xsl:value-of select="location/country" /></p>
        <p>Имейл: <xsl:value-of select="store-contact/store-email" /></p>
        <p>Телефон: <xsl:value-of select="store-contact/store-phone" /></p>
        <p>Уебсайт: <a href="{store-contact/website/@uri}" target="_blank"><xsl:value-of select="store-contact/website/@uri" /></a></p>
        <h2>Работно Време</h2>
        <xsl:apply-templates select="opening-hours"/>
    </xsl:template>

    <xsl:template match="opening-hours">
        <p><strong><xsl:value-of select="weekday" /></strong>: <xsl:value-of select="time/start" /> - <xsl:value-of select="time/end" /></p>
    </xsl:template>

</xsl:stylesheet>

