<xsl:stylesheet version="1.0" xmlns:t="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--empty template suppresses this attribute-->
    <xsl:template match="t:flowRegion/@style" />
    <xsl:template match="t:flowRegion/t:rect/@style" />
    <!--identity template copies everything forward by default-->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>