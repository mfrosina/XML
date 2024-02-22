<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">


        <clothes-store>
        <store-info>
            <xsl:attribute name="id">
                <xsl:value-of select="clothes-store/store-info/@id"/>
            </xsl:attribute>
            <xsl:attribute name="established">
                <xsl:value-of select="clothes-store/store-info/@established"/>
            </xsl:attribute>

            <store-name>
                <xsl:value-of select="clothes-store/store-info/store-name"/>
            </store-name>

            <location>
                <street>
                    <xsl:value-of select="clothes-store/store-info/location/street"/>
                </street>
                <city zip="{clothes-store/store-info/location/city/@zip}">
                    <xsl:value-of select="clothes-store/store-info/location/city"/>
                </city>
                <country>
                    <xsl:value-of select="clothes-store/store-info/location/country"/>
                </country>
            </location>

            <store-contact>
                <store-email>
                    <xsl:value-of select="clothes-store/store-info/store-contact/store-email"/>
                </store-email>
                <store-phone>
                    <xsl:value-of select="clothes-store/store-info/store-contact/store-phone"/>
                </store-phone>
                <website uri="{clothes-store/store-info/store-contact/website/@uri}" />
            </store-contact>
        </store-info>

        <staff>
            <xsl:apply-templates select="/clothes-store/staff/member"/>
        </staff>
    </clothes-store>
    </xsl:template>

    <xsl:template match="/clothes-store/staff/member">
        <member id="{@id}" role="{@role}" experience="{@experience}">
            <member-name>
                <xsl:for-each select="member-name/*">
                    <xsl:element name="{name()}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>
            </member-name>
            <gender>
                <xsl:value-of select="gender"/>
            </gender>
            <member-contact>
                <xsl:for-each select="member-contact/*">
                    <xsl:element name="{name()}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>
            </member-contact>
            <hire-date>
                <xsl:value-of select="hire-date"/>
            </hire-date>
            <birth-date>
                <xsl:value-of select="birth-date"/>
            </birth-date>
            <responsibilities>
                <xsl:for-each select="responsibilities/responsibility">
                    <responsibility>
                        <xsl:value-of select="."/>
                    </responsibility>
                </xsl:for-each>
            </responsibilities>
        </member>
    </xsl:template>
</xsl:stylesheet>
