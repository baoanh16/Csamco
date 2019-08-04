<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">

			<section class="side-navigation-project-wrapper">
				<h1>
					<xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
				</h1>
				<ul class="side-navigation-project">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</ul>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone">

		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<span>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<em class="mdi mdi-chevron-down"></em>
			</span>
			<xsl:if test="count(Zone) > 0">
				<ul>
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</ul>
			</xsl:if>

		</li>

	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<i class="fa fa-angle-right"></i>
				<xsl:text></xsl:text>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
