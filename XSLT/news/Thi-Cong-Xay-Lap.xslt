<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() =1">

			<section class="field-of-business-1">
				<div class="container">
					<div class="article-title-brown-center">
						<p class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
						<h1>
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</h1>
					</div>
					<div class="row field-chart-wrapper">
						<xsl:apply-templates select="News" mode="Chart"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() =2">

			<section class="field-detail-article-1">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode="Article"></xsl:apply-templates>
					</div>
				</div>
			</section>

		</xsl:if>
		<xsl:if test="position() = 3">

			<section class="field-detail-struture-1">
				<div class="container">
					<div class="article-title-brown-center">
						<p class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="garelly-half-3-wrapper">
						<div class="garelly-half-item big">
							<xsl:apply-templates select="News" mode="BigImage"></xsl:apply-templates>


						</div>
						<div class="garelly-half-wrapper">
							<xsl:apply-templates select="News" mode="SmallImage"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode="Chart">
		<div class="col-lg-4 field-chart-item">
			<div class="field-chart-image">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="field-caption">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Article">
		<div class="col-lg-4">
			<article>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</article>
		</div>
		<div class="col-lg-8">
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
	<xsl:template match="News" mode="BigImage">
		<xsl:if test="position() =1">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

			<div class="lightgallery">
				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="SmallImage">
		<xsl:if test="position() >1 and position() &lt; 4">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

			<div class="garelly-half-item">
				<div class="lightgallery">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>


	</xsl:template>
	<xsl:template match="NewsImages">

		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
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
	</xsl:template>

</xsl:stylesheet>
