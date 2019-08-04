<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<secttion class="project-display-wrapper">
			<div class="article-title-brown-center">
				<p class="title">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</p>
			</div>
			<div class="row">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</secttion>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-sm-6 col-md-4">
			<div class="project-item">
				<div class="other-project-image shine">
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
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</p>
					<span class="caption">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>

						</a>
					</span>
				</div>
			</div>
		</div>

	</xsl:template>

</xsl:stylesheet>
