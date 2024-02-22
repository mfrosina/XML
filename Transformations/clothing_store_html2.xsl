<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Categories</title>
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
                    h1 {
                    text-align:center;
                    color: #333;
                    }
                    h2 {
                    font-size: 1.5rem;
                    color: navy;
                    }
                    p { margin-bottom: 10px; color: red;}
                    a:hover {
                    text-decoration: none;
                    color: dark-blue;
                    }
                    li {
                    list-style-type: none;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/store-info"/>
                </div>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/categories"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="store-info">
        <h1>Магазин за Дрехи</h1>
        <p><xsl:value-of select="store-name" /></p>
        <p>Местоположение: <xsl:value-of select="location/street" />, <xsl:value-of select="location/city" />, <xsl:value-of select="location/country" /></p>
    </xsl:template>

    <xsl:template match="categories">
        <h1>Категории</h1>
        <ul>
            <xsl:apply-templates select="category"/>
        </ul>
    </xsl:template>

    <xsl:template match="category">
        <li>
            <h2><xsl:value-of select="@name"/></h2>
            <ul>
                <xsl:apply-templates select="subcategory"/>
            </ul>
        </li>
    </xsl:template>

    <xsl:template match="subcategory">
        <li>
            <a href="#">
                <xsl:value-of select="@name"/>
            </a>
            <ul>
                <xsl:apply-templates select="product"/>
            </ul>
        </li>
    </xsl:template>


</xsl:stylesheet>