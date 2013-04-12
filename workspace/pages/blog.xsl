<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="../utilities/master.xsl"/>
<xsl:include href="../utilities/globals.xsl"/>
<xsl:include href="../utilities/pagination.xsl"/>


<xsl:template match="data">

  <xsl:choose>
    <xsl:when test="$title = '' or number($title)">

      <div class="container main">
        <div class="row">
          <div class="span12">
            <h1>Blog Posts</h1>
          </div>
        </div>
        <div class="row">

          <xsl:apply-templates select="/data/blog-all/entry"/>

          <xsl:call-template name="cd-pagination">
            <xsl:with-param name="pagination" select="/data/blog-all/pagination" />
            <xsl:with-param name="pagination-url" select="'/blog/$'" />
          </xsl:call-template>

        </div>
      </div>

    </xsl:when>
    <xsl:otherwise>

      <xsl:apply-templates select="/data/blog-single/entry"/>

    </xsl:otherwise>
  </xsl:choose>


</xsl:template>


</xsl:stylesheet>