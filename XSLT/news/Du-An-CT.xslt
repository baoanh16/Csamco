<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="project-detail">
			<div class="container">
				<div class="article-title-brown-start">
					<p class="tilte">
						<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
				<div class="row">
					<div class="col-lg-7">
						<article>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
						</article>
					</div>
					<div class="col-lg-5">
						<article>
							<div class="article-image">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="ImageSide"></xsl:apply-templates>
							</div>
						</article>
					</div>
				</div>
			</div>
		</section>

		<section class="project-detail-swiper">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="swiper-project-top">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Top"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="swiper-project-thumbs">
							<div class="navigation-prev-project">
								<em class="mdi mdi-chevron-up"></em>
							</div>
							<div class="navigation-next-project">
								<em class="mdi mdi-chevron-down"></em>
							</div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Thumb"></xsl:apply-templates>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">

			<section class="home-project">

				<div class="container">
					<div class="article-title-brown-start">
						<p class="tilte"> Dự án khác</p>
					</div>
					<div class="other-project-wrapper">

						<div class="other-project-swiper-wrapper">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="ImageSide">
		<xsl:if test="position() =1">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Top">
		<xsl:if test="position() >1">
			<div class="swiper-slide">
				<div class="wrapper">
					<div class="swiper-image ">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Thumb">
		<xsl:if test="position() >1">
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
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="other-project-item">
				<div class="other-project-image ">
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
						<xsl:value-of select="/NewsDetail/ZoneTitle"></xsl:value-of>
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
