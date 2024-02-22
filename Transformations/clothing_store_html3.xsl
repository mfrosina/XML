<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" />

    <xsl:variable name="current-position" select="1" />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Продукти</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 0; }
                    .container { max-width: 800px; margin: 0 auto; padding: 20px; background-color: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
                    .product { border: 1px solid #ddd; padding: 10px; margin-bottom: 20px; }
                    .product img { max-width: 100%; height: auto; }
                    .store-info {margin-bottom: 10px; color: red;}
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="clothes-store/store-info"/>
                </div>
                <div class="container">
                    <h1>Продукти</h1>
                    <xsl:apply-templates select="clothes-store/products"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="store-info">
        <h1>Магазин за Дрехи</h1>
        <p class="store-info"><xsl:value-of select="store-name" /></p>
        <p class="store-info">Местоположение: <xsl:value-of select="location/street" />, <xsl:value-of select="location/city" />, <xsl:value-of select="location/country" /></p>
    </xsl:template>

    <xsl:template match="products">
        <xsl:apply-templates select="product"/>
    </xsl:template>

    <xsl:template match="product">
            <div class="row">
                <div class="product">
                    <img src="{photo/@uri}" alt="{name} " style="width: 200px; height: 200px;"/>
                    <h2><xsl:value-of select="name"/></h2>
                    <p><xsl:value-of select="description"/></p>
                    <p>Цена: <xsl:value-of select="price"/> <xsl:if test="price/@currency">(<xsl:value-of select="price/@currency"/>)</xsl:if></p>
                    <p>Величини: <xsl:apply-templates select="sizes/size"/></p>
                    <p>Цветове: <xsl:apply-templates select="colors/color"/></p>
                    <p>Материал: <xsl:value-of select="material"/></p>
                    <p>Оценка: <xsl:value-of select="rating"/></p>
                </div>
            </div>
    </xsl:template>

    <xsl:template match="sizes/size">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">, </xsl:if>
    </xsl:template>

    <xsl:template match="colors/color">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">, </xsl:if>
    </xsl:template>

</xsl:stylesheet>
