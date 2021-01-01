<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.1"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

    <!-- append xml mark and DTD -->
    <xsl:output version="1.0" encoding="UTF-8" />
    <xsl:output method="xml" doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd" doctype-public="-//W3C//DTD SVG 1.1//EN"/>

    <!-- ignore elements with fill='none' -->
    <xsl:template match="svg:*[@fill = 'none']">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- remove height and with attribute, just not needed -->
    <xsl:template match="svg/@height" />
    <xsl:template match="svg/@width" />

    <!-- copy root element -->
    <xsl:template match="svg:svg">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:attribute name="fill">#000000</xsl:attribute>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>