<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">

    <xsl:output method="text" indent="no" />

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>

    <xsl:template match="/">
        <xsl:text>&#xa;</xsl:text>
        ######################
        # Магазин за дрехи #
        ######################
        <xsl:text>&#xa;&#x9;&#x9;</xsl:text>
        <xsl:value-of select="clothes-store/store-info/store-name"/>
        <xsl:text>&#xa;</xsl:text>

        Персонал:
        <xsl:apply-templates select="/clothes-store/staff/member"/>
    </xsl:template>

    <xsl:template match="member">
        <xsl:value-of select="$newline"/>
        Служител:
        Име: <xsl:value-of select="member-name/first"/> <xsl:text> </xsl:text> <xsl:value-of select="member-name/last"/>
        Роля: <xsl:value-of select="@role"/>
        Опит: <xsl:value-of select="@experience"/>
        Пол: <xsl:value-of select="gender"/>
        Имейл: <xsl:value-of select="member-contact/email"/>
        Телефон: <xsl:value-of select="member-contact/phone"/>
        Наемане на: <xsl:value-of select="hire-date"/>
        Рождена дата: <xsl:value-of select="birth-date"/>
        Отговорности:
        <xsl:for-each select="responsibilities/responsibility">
            - <xsl:value-of select="."/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
