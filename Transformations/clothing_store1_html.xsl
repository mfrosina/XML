<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" />

    <xsl:template match="/">
        <html lang="bg">
            <head>
                <title>ДътиПрада Магазин за Дрехи</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 0; }
                    .container { max-width: 800px; margin: 0 auto; padding: 20px; background-color: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
                    .category { margin-bottom: 20px; }
                    .subcategory { margin-left: 20px; margin-bottom: 10px; }
                    .product { border: 1px solid #ddd; padding: 10px; margin-bottom: 20px; }
                    .staff-member { border: 1px solid #ddd; padding: 10px; margin-bottom: 20px; }
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="clothes-store"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="clothes-store">
        <h1><xsl:value-of select="store-info/store-name"/></h1>
        <p>Местоположение: <xsl:value-of select="location/street" />, <xsl:value-of select="location/city" />, <xsl:value-of select="location/country" /></p>
        <p>Имейл: <xsl:value-of select="store-contact/store-email" /></p>
        <p>Телефон: <xsl:value-of select="store-contact/store-phone" /></p>
        <p>Уебсайт: <a href="{store-contact/website/@uri}" target="_blank"><xsl:value-of select="store-contact/website/@uri" /></a></p>
        <h2>Работно Време</h2>
        <xsl:apply-templates select="opening-hours"/>
        <xsl:apply-templates select="categories"/>
        <xsl:apply-templates select="products"/>
        <xsl:apply-templates select="staff"/>
    </xsl:template>

    <xsl:template match="opening-hours">
        <p><strong><xsl:value-of select="weekday" /></strong>: <xsl:value-of select="time/start" /> - <xsl:value-of select="time/end" /></p>
    </xsl:template>

    <!-- Template for categories -->
    <xsl:template match="categories">
        <h2>Categories</h2>
        <xsl:apply-templates select="category"/>
    </xsl:template>

    <xsl:template match="category">
        <div class="category">
            <h3><xsl:value-of select="@name"/></h3>
            <xsl:apply-templates select="subcategory"/>
        </div>
    </xsl:template>

    <xsl:template match="subcategory">
        <div class="subcategory">
            <h4><xsl:value-of select="@name"/></h4>
            <a href="#{generate-id()}">View Products</a>
        </div>
    </xsl:template>

    <xsl:template match="product">
        <xsl:for-each select="/products/product">
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <countNo>
                            <img class="img-responsive" src="images/prod_{position()}.jpg" />
                        </countNo>
                    </a>
                </div>
                <div class="product">
                    <h2><xsl:value-of select="name"/></h2>
                    <p><xsl:value-of select="description"/></p>
                    <p>Цена: <xsl:value-of select="price"/> <xsl:if test="price/@currency">(<xsl:value-of select="price/@currency"/>)</xsl:if></p>
                    <p>Величини: <xsl:apply-templates select="sizes/size"/></p>
                    <p>Цветове: <xsl:apply-templates select="colors/color"/></p>
                    <p>Материал: <xsl:value-of select="material"/></p>
                    <p>Оценка: <xsl:value-of select="rating"/></p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="sizes/size">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">, </xsl:if>
    </xsl:template>

    <xsl:template match="colors/color">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">, </xsl:if>
    </xsl:template>

    <xsl:template match="staff">
        <h1>Служители</h1>
        <div class="staff-list">
            <xsl:for-each select="member">
                <div class="staff-member">
                    <h3><xsl:value-of select="member-name/first"/> <xsl:value-of select="member-name/last"/></h3>
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
