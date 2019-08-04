<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="field-detail-project-2">
			<div class="container">
				<div class="article-title-brown-center">
					<p class="titlle">
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</p>
				</div>
				<div class="field-detail-project-wrapper">

					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>


				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">

		<div class="other-project-item-2">
			<div class="other-project-image">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="other-project-caption">
				<p>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
