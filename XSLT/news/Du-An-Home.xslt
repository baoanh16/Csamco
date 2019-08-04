<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<article>
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</article>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position() =1">
			<div class="article-image circle">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="project-title">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
				</p>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
