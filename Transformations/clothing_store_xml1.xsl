<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
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

                <xsl:for-each select="clothes-store/store-info/opening-hours">
                    <opening-hours>
                        <weekday>
                            <xsl:value-of select="weekday"/>
                        </weekday>
                        <time>
                            <start>
                                <xsl:value-of select="time/start"/>
                            </start>
                            <end>
                                <xsl:value-of select="time/end"/>
                            </end>
                        </time>
                    </opening-hours>
                </xsl:for-each>
            </store-info>

            <categories>
                <xsl:for-each select="clothes-store/categories/category">
                    <category id="{@id}" name="{@name}">
                        <xsl:for-each select="subcategory">
                            <subcategory id="{@id}" name="{@name}" />
                        </xsl:for-each>
                    </category>
                </xsl:for-each>
            </categories>

            <products>
                <xsl:for-each select="clothes-store/products/product">
                    <product id="{@id}" stock="{@stock}" clearance="{@clearance}">
                        <name>
                            <xsl:value-of select="name"/>
                        </name>
                        <description>
                            <xsl:value-of select="description"/>
                        </description>
                        <price>
                            <xsl:attribute name="currency">
                                <xsl:value-of select="price/@currency"/>
                            </xsl:attribute>
                            <xsl:value-of select="price"/>
                        </price>
                        <sizes>
                            <xsl:attribute name="type">
                                <xsl:value-of select="sizes/@type"/>
                            </xsl:attribute>
                            <xsl:for-each select="sizes/size">
                                <size>
                                    <xsl:value-of select="."/>
                                </size>
                            </xsl:for-each>
                        </sizes>
                        <colors>
                            <xsl:for-each select="colors/color">
                                <size>
                                    <xsl:value-of select="."/>
                                </size>
                            </xsl:for-each>
                        </colors>
                        <product-category>
                            <xsl:attribute name="ref">
                                <xsl:value-of select="product-category/@ref"/>
                            </xsl:attribute>
                        </product-category>
                        <product-subcategory>
                            <xsl:attribute name="ref">
                                <xsl:value-of select="product-subcategory/@ref"/>
                            </xsl:attribute>
                        </product-subcategory>
                        <photo uri="{photo/@uri}"/>
                    </product>
                </xsl:for-each>
            </products>
        </clothes-store>
    </xsl:template>
</xsl:stylesheet>
