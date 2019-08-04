<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() =1">

			<section class="about-us-more" id="about-1">
				<div class="container">
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">

			<section class="philosophy-about-us" id="about-2">
				<div class="container">
					<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">

			<section class="about-us-chart">
				<div class="container">
					<div class="row about-us-chart-wrapper">
						<xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() =4">

			<section class="about-us-struture" id="about-3">
				<div class="container">
					<div class="article-title-brown-center">
						<p class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="light-garelly-wrapper">
						<div class="lightgallery">
							<xsl:apply-templates select="News" mode="Image"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() =5">
			<div class="about-us-certificate" id="about-4">
				<div class="container">
					<div class="article-title-brown-center">
						<p class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="certificate-navigation-tab">
						<ul class="tab-list-navigation">
							<xsl:apply-templates select="News" mode="Navs"></xsl:apply-templates>
						</ul>
					</div>
					<div class="certificate-wrapper-tab">

						<div class="certificate-item-tab tab-wrapper">
							<xsl:apply-templates select="News" mode="Swiper"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode="News1">
		<div class="article-title-brown-center">
			<p class="title">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</p>
		</div>
		<article>

			<div class="content">
				<span>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</span>
				<img class="opacity">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
			<div class="watch-more-about-us">
				<a href="javascript:void(0)">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewMoreText"></xsl:value-of>
					<em class="mdi mdi-chevron-down"></em>
				</a>
			</div>
		</article>

	</xsl:template>
	<xsl:template match="News" mode="News2">
		<div class="article-title-brown-center">
			<p class="title">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</p>
		</div>
		<div class="philosophy-wrapper">
			<p class="title">
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</p>
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>

		</div>
	</xsl:template>
	<xsl:template match="News" mode="News3">
		<div class="col-sm-6 col-md-4 chart-item">
			<div class="chart-image opacity">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="caption">
				<p class="title">
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
				<p class="text">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</p>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode="Image">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
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
	<xsl:template match="News" mode="Navs">
		<xsl:if test="position() = 1">
			<li class="active">
				<a href="javascript:void(0)">
					<xsl:attribute name="data-type">
						<xsl:text>Item-Tab-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</li>
		</xsl:if>
		<xsl:if test="position() > 1">
			<li>
				<a href="javascript:void(0)">
					<xsl:attribute name="data-type">
						<xsl:text>Item-Tab-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</li>
		</xsl:if>


	</xsl:template>
	<xsl:template match="News" mode="Swiper">
		<xsl:if test="position() = 1">
			<div class="tab-item active">
				<xsl:attribute name="id">
					<xsl:text>Item-Tab-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="nav-prev-item">
					<em class="mdi mdi-chevron-left"></em>
				</div>
				<div class="nav-next-item">
					<em class="mdi mdi-chevron-right"></em>
				</div>
				<div class="swiper-container certificate-swiper-1">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>

				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() > 1">
			<div class="tab-item ">
				<xsl:attribute name="id">
					<xsl:text>Item-Tab-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>

				</xsl:attribute>
				<div class="nav-prev-item-1">
					<em class="mdi mdi-chevron-left"></em>
				</div>
				<div class="nav-next-item-1">
					<em class="mdi mdi-chevron-right"></em>
				</div>
				<div class="swiper-container certificate-swiper-2">

					<div class="swiper-wrapper">

						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>

				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image shine">
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
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>

	</xsl:template>
</xsl:stylesheet>
