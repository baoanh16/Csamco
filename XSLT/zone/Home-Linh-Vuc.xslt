<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">

			<section class="field-of-business-display">
				<div class="container">
					<div class="article-title-white-center" data-aos="zoom-in" data-aos-offset="120" data-aos-delay="50" data-aos-duration="1000" data-aos-easing="ease-in-out">
						<p class="title">
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
					<div class="row" data-aos="fade-zoom-in" data-aos-offset="0" data-aos-delay="500" data-aos-duration="1000" data-aos-easing="ease-in-out">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-6 col-sm-4">
			<figure>
				<div class="figure-image shine">
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
				<figcaption>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</p>
					<div class="figure-button">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewMoreText"></xsl:value-of>
							<em class="fas fa-long-arrow-alt-right"></em>
						</a>
					</div>
				</figcaption>
			</figure>
		</div>

	</xsl:template>

</xsl:stylesheet>
