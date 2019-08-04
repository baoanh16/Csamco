<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="job-list-wrapper" id="tuyen-dung-3">
			<div class="container">
				<div class="article-title-brown-center">
					<p class="title">
						<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
				<ol class="job-list-wrapper-item">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</ol>
			</div>
		</section>


	</xsl:template>
	<xsl:template match="News">
		<li>
			<div class="counter"></div>
			<div class="job-wrapper">
				<p class="title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:text> ( </xsl:text>
						<span>
							<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						</span>
						<xsl:text> người )</xsl:text>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

				</p>

				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>
