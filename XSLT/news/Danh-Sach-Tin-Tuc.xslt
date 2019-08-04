<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="news-display-list">
			<div class="container">
				<div class="news-wrapper">
					<div class="row news-item-wrapper">
						<div class="col-lg-6">
							<xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>

						</div>
						<div class="col-lg-6 news-side-wrapper">

							<xsl:apply-templates select="/NewsList/News" mode="Side"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="news-others">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="Other"></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Big">
		<xsl:if test="position() =1">

			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<div class="news-item-big">
				<div class="news-item-image zoom-in">
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
				<div class="news-item-caption">
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<p class="title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</p>
					<p class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Side">
		<xsl:if test="position() > 1 and position() &lt; 5">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<div class="news-item-side">
				<div class="news-item-image opacity">
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
				<div class="news-item-caption">
					<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
					<p class="title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Other">
		<xsl:if test="position() > 4 and position() &lt; 11">
			<div class="col-sm-6 col-md-4">
				<div class="news-item-others">
					<div class="news-item-image shine">
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
					<div class="news-item-caption">
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<p class="title">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
						</p>
						<p class="caption">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</p>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
