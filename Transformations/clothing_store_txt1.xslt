<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">

    <xsl:output method="text" indent="no" />
    <xsl:strip-space elements="*"/>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>



    <xsl:template match="/">
        <xsl:text>&#xa;</xsl:text>
        ######################
        # Магазин за дрехи #
        ######################
        <xsl:text>&#xa;</xsl:text>
        <xsl:value-of select="clothes-store/store-info/store-name"/>
        <xsl:text>&#xa;</xsl:text>
        Адрес: <xsl:value-of select="clothes-store/store-info/location/street"/>, <xsl:value-of select="clothes-store/store-info/location/city"/>
        Страна: <xsl:value-of select="clothes-store/store-info/location/country"/>
        Имейл: <xsl:value-of select="clothes-store/store-info/store-contact/store-email"/>
        Уебсайт: <xsl:value-of select="clothes-store/store-info/store-contact/website/@uri"/>
        <xsl:text>&#xa;</xsl:text>
        Работно време:
        <xsl:for-each select="clothes-store/store-info/opening-hours">
            <xsl:text>&#xa;&#x9;</xsl:text>
            <xsl:value-of select="weekday"/>: <xsl:value-of select="time/start"/> - <xsl:value-of select="time/end"/>
        </xsl:for-each>

        <xsl:text>&#xa;</xsl:text>
        <xsl:text>&#xa;</xsl:text>

        Категории:
        <xsl:for-each select="clothes-store/categories/category">
            Категория: <xsl:value-of select="@name"/>
            <xsl:for-each select="subcategory">
                <xsl:text>&#xa;&#x9;&#x9;- </xsl:text><xsl:value-of select="@name"/>
            </xsl:for-each>
        </xsl:for-each>

        <xsl:text>&#xa;</xsl:text>
        <xsl:text>&#xa;</xsl:text>

        Продукти:
        <xsl:for-each select="clothes-store/products/product">
            <xsl:value-of select="name"/>
            <xsl:value-of select="description"/>
            Цена: <xsl:value-of select="price"/>
            Наличност: <xsl:value-of select="@stock"/>
            Рейтинг: <xsl:value-of select="rating"/>
            Снимка: <xsl:value-of select="photo/@uri"/>
        </xsl:for-each>

        <xsl:text>&#xa;</xsl:text>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>