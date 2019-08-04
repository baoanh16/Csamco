<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="home-banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>

				</div>
				<div class="swiper-pagination"></div>
				<div class="home-banner-prev">
					<em class="mdi mdi-chevron-left"></em>
				</div>
				<div class="home-banner-next">
					<em class="mdi mdi-chevron-right"></em>
				</div>
			</div>
		</section>
		<div class="tp-banner">
			<ul></ul>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="swiper-caption">
					<span class="caption">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</span>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
