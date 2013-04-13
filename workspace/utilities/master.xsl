<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="toolkit.xsl"/>
<xsl:include href="date-time-advanced.xsl" />

<xsl:output method="xml"
    doctype-public="XSLT-compat"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />


<xsl:param name="cookie-username" />

<xsl:template match="/">

  <xsl:variable name="version">1.0.0</xsl:variable>

  <html lang="en">
  <head>
    <xsl:choose>
      <xsl:when test="$page-title = 'Home' or $page-title = 'Error'">
        <title>Simko.io</title>
      </xsl:when>
      <xsl:otherwise>
        <title>
          <xsl:if test="$title != ''">
            <xsl:variable name="title-spaced">
              <xsl:choose>
                <xsl:when test="number($title)">
                  <xsl:text>Page </xsl:text>
                  <xsl:value-of select="$title" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text" select="$title" />
                    <xsl:with-param name="replace" select="'-'" />
                    <xsl:with-param name="by" select="' '" />
                  </xsl:call-template>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <xsl:call-template name="TitleCase">
              <xsl:with-param name="text" select="translate(normalize-space($title-spaced),
          'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
            </xsl:call-template>
            <xsl:text> | </xsl:text>
          </xsl:if>
          <xsl:text>Simko.io | </xsl:text>
          <xsl:value-of select="//data/page-data/entry/title" />
        </title>
      </xsl:otherwise>
    </xsl:choose>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Gospel-centered writing, articles, doctrine and studies to build up the body of Jesus Christ." />
    <meta name="keywords" content="Gospel, Jesus Christ, Jesus, Scripture, Gospel-centered" />
    <meta name="author" content="Jonathan Simcoe" />
    <meta name="responsimage" data-server="{$root}/image/2/width/height/anchor/0/uploads/images/filename" data-static="{$workspace}/img/spacer.gif" data-loading="{$workspace}/img/loading.gif" />

    <link href="{$workspace}/css/simko.{$version}.css" rel="stylesheet" />
    <link href="{$workspace}/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" href="{$workspace}/img/apple-touch-icon-precomposed.png" />

    <script type="text/javascript" src="//use.typekit.net/ixi5eyq.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script type="text/javascript" src="{$workspace}/js/simko.{$version}.js"></script>


    <script type="text/javascript">
      <xsl:comment>
        var _gaq=[["_setAccount","UA-4548059-3"],["_trackPageview"]];
        (function(d,t){
          var g=d.createElement(t), s=d.getElementsByTagName(t)[0];
          g.async=1;
            g.src=("https:"==location.protocol?"//ssl":"//www")+".google-analytics.com/ga.js";
            s.parentNode.insertBefore(g,s)
        }(document,"script"));
      </xsl:comment>
    </script>
  </head>

  <body class="{$root-page}">
    <xsl:apply-templates select="data/navigation"/>

    <div id="content">

      <xsl:apply-templates />

      <xsl:if test="string-length(//data/page-data/entry/image) &gt;0">
        <img class="full-bleed top" src="/workspace/img/spacer.gif" width="100%" style="height:400px">
          <xsl:attribute name="data-responsimage">
            <xsl:value-of select="//data/page-data/entry/image/item/image/filename" />
          </xsl:attribute>
          </img>
      </xsl:if>
      <xsl:if test="string-length(//data/page-data/entry/content) &gt; 0">
        <div class="main">
          <div class="container">
            <xsl:if test="string-length(//data/page-data/entry/title) &gt; 0">
              <h1>
                <xsl:value-of select="//data/page-data/entry/title"/>
              </h1>
            </xsl:if>
            <xsl:value-of select="//data/page-data/entry/content" disable-output-escaping="yes" />
          </div>
        </div>
      </xsl:if>

    </div>

    <div class="baseline">
      <div class="container">
        <div class="row">
          <div class="span3">
            <ul class="nav nav-pills">
              <xsl:apply-templates select="data/navigation/page"/>
            </ul>
          </div>
          <div class="span8">
            <p class="right">
              <xsl:choose>
                <xsl:when test="$this-year = 2013">
                  <xsl:text>&#xa9;&#160;</xsl:text>
                  <xsl:value-of select="$this-year" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>&#xa9;&#160;2013–</xsl:text>
                  <xsl:value-of select="$this-year" />
                </xsl:otherwise>
              </xsl:choose>
              <xsl:text>.&#160;</xsl:text>
              <xsl:text>Simcoe Design LLC. All rights reserved.&#160;&#160;|&#160;&#160;</xsl:text>
              <a class="rss" href="{$root}/rss/">RSS</a>
              <xsl:text>&#160;&#160;|&#160;&#160;</xsl:text>
              <a href="http://getsymphony.com/">Built with <strong>Symphony</strong></a>

             </p>
          </div>
          <div class="span1">
            <a href="{$root}"><span class="logo">S</span></a>
          </div>

        </div>
      </div>
    </div>
  </body>

</html>

</xsl:template>

<xsl:template match="navigation">
  <div class="navbar navbar-inverse navbar-fixed-top">

      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="brand" href="/">Simko.io</a>
      <div class="nav-collapse collapse">

        <xsl:if test="$cookie-username">
          <ul class="nav maint pull-right">
            <li>
              <a href="#" data-toggle="dropdown"><i class="glyphicon-wrench"></i></a>
              <ul class="dropdown-menu">
                <li><a href="/symphony/" target="_blank">Symphony</a></li>
                <li><a href="?debug" target="_blank">Debug</a></li>
                <li><a href="{$root}/symphony/logout/">Logout</a></li>
              </ul>
            </li>
          </ul>
        </xsl:if>
        <ul class="nav pull-right">
          <xsl:apply-templates select="page"/>
        </ul>
      </div>

  </div>
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
