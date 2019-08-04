<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="about-us-block">
			<div class="container">
				<div class="article-title-brown-center">
					<p class="title">
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
					</p>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-lg-6">
			<article>
				<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				<div class="article-red-button">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text> Xem thêm</xsl:text>
						<em class="fas fa-long-arrow-alt-right"></em>
					</a>
				</div>
			</article>
		</div>
		<div class="col-lg-6">
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
	</xsl:template>
</xsl:stylesheet>
