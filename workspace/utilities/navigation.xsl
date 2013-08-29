<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
<!--   <nav class="navbar navbar-default navbar-fixed-top" role="navigation">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Simko.io</a>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav navbar-right">
        <xsl:apply-templates select="page"/>
        <xsl:if test="$cookie-username">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <span class="glyphicon glyphicon-wrench"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="/symphony/" target="_blank">Symphony</a></li>
              <li><a href="?debug" target="_blank">Debug</a></li>
              <li><a href="{$root}/symphony/logout/">Logout</a></li>
            </ul>
          </li>
        </xsl:if>
      </ul>
    </div>

  </nav> -->
</xsl:template>

<xsl:template match="navigation/page">
  <xsl:if test="not(types/type = 'hidden' or types/type = 'XML' or @handle = 'home')">
    <li>
      <xsl:attribute name="class">
        <xsl:choose>
          <xsl:when test="@handle = $current-page">
            <xsl:text>active</xsl:text>
          </xsl:when>
          <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <a>
        <xsl:choose>
          <xsl:when test="types/type = 'index'">
            <xsl:attribute name="href"><xsl:value-of select="$root"/>/</xsl:attribute>
          </xsl:when>
          <xsl:otherwise>
            <xsl:attribute name="href"><xsl:value-of select="$root"/>/<xsl:value-of select="@handle"/></xsl:attribute>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="name"/>
      </a>
    </li>
  </xsl:if>
</xsl:template>


</xsl:stylesheet>