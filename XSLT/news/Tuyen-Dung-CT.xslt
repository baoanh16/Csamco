<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">

					<section class="job-detail">
						<div class="article-title-small">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
							</h1>
						</div>

						<article>
							<h2>Yêu cầu công việc</h2>
							<xsl:if test="count(/NewsDetail/NewsAttributes)>0">
								<table>
									<tbody>
										<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
									</tbody>
								</table>
							</xsl:if>

							<h3>Mô tả công việc</h3>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
							<div class="job-apply-button-wrapper">
								<div class="red-button">
									<a href="#">Ứng tuyển ngay</a>
								</div>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>

								</a>
								<p>hoặc</p>
								<div class="grey-button">
									<a target="_blank">
										<xsl:attribute name="href">
											<xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:text disable-output-escaping="yes">Tải mẫu đơn xin việc</xsl:text>
									</a>
									<span>(Nộp trực
										tiếp)</span>
								</div>
							</div>
						</article>
					</section>
				</div>
				<div class="col-lg-4">

					<section class="other-job">
						<p class="title">
							<xsl:text>Vị trí khác</xsl:text>
						</p>
						<ol class="job-list-other">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>


						</ol>
					</section>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<li class="job-list-item-other">
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

					</a>
				</p>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
		</li>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<tr>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</td>
		</tr>

	</xsl:template>
</xsl:stylesheet>
