<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() =1">

			<section class="field-detail-article-2">
				<div class="container">
					<div class="article-title-brown-center">
						<p class="titlle">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode="Article"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode="Article">
		<div class="col-lg-8 offset-50">
			<article>
				<div class="article-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</article>
		</div>
		<div class="col-lg-4">
			<article>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</article>
		</div>
	</xsl:template>

</xsl:stylesheet>
