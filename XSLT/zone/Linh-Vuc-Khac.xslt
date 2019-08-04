<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">

			<section class="field-detail-relate">
				<div class="container">
					<div class="article-title-brown-start">
						<p class="title">Mục liên quan</p>
					</div>
					<div class="field-detail-relate-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='false'">
			<div class="relate-item">
				<div class="relate-image">
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
				<div class="relate-caption">
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
			</div>

		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
