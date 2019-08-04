<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="other-project-wrapper">
			<div class="navigation-wrapper">
				<div class="navigation-prev">
					<em class="mdi mdi-chevron-left"></em>
				</div>
				<div class="navigation-next">
					<em class="mdi mdi-chevron-right"></em>
				</div>
			</div>
			<div class="other-project-swiper-wrapper">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()>1">
			<div class="swiper-slide">
				<div class="other-project-item">
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
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="other-project-caption">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
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
		</xsl:if>


	</xsl:template>
</xsl:stylesheet>
