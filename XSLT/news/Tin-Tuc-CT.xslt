<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="container">
			<div class="row">
				<div class="col-lg-9">

					<section class="news-detail">
						<article>
							<time>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate"></xsl:value-of>
							</time>
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<p>
								<em>
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BriefContent"></xsl:value-of>
								</em>
							</p>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="social-network-wrapper">
								<div class="social-network-button">
									<div class="fb-share-button" data-layout="button_count" data-size="small">
										<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
											Share
											<xsl:attribute name="data-href">
												<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
											</xsl:attribute>
										</a>
									</div>
								</div>
								<div class="social-network-button">
									<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="false"></div>
								</div>
								<div class="social-network-button">
									<div class="fb-save" data-size="small">
										<xsl:attribute name="data-uri">
											<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
									</div>
								</div>
							</div>
						</article>
					</section>
				</div>
				<div class="col-lg-3">

					<section class="news-other-side">
						<div class="news-other-side-wrapper">
							<h2>
								<xsl:text>Tin tức khác</xsl:text>
							</h2>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>


						</div>
					</section>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="news-other-side-item">
			<time>
				<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
			</time>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
