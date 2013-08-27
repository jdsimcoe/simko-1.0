<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/data/page-data/entry" mode="masthead">

  <div class="masthead">
    <xsl:if test="string-length(title) and $current-page != 'home'">
      <h1><xsl:value-of select="title"/></h1>
    </xsl:if>
    <xsl:if test="string-length(description)">
      <p class="lead">
        <xsl:value-of select="description"/>
      </p>
    </xsl:if>
  </div>
</xsl:template>

<xsl:template match="/data/page-data/entry" mode="content">
  <xsl:value-of select="content" disable-output-escaping="yes" />
</xsl:template>


</xsl:stylesheet>
