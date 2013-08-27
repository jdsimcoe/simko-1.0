<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="toolkit.xsl"/>
<xsl:include href="date-time-advanced.xsl" />
<xsl:include href="navigation.xsl"/>
<xsl:include href="globals.xsl"/>

<xsl:output method="xml"
    doctype-public="XSLT-compat"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />


<xsl:param name="cookie-username" />

<xsl:template match="/">

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
    <meta name="description" content="The graphic + web portfolio of Jonathan Simcoe" />
    <meta name="keywords" content="Jonathan Simcoe, Simcoe Design, Simcoe Design LLC, Simko.io" />
    <meta name="author" content="Jonathan Simcoe" />
    <meta name="responsimage" data-server="{$root}/image/2/width/height/anchor/0/uploads/images/filename" data-static="{$workspace}/img/spacer.gif" data-loading="{$workspace}/img/loading.gif" />

    <link href="{$workspace}/assets/css/main.css" rel="stylesheet" />
    <link href="{$workspace}/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" href="{$workspace}/img/apple-touch-icon-precomposed.png" />

    <script type="text/javascript" src="//use.typekit.net/ixi5eyq.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script type="text/javascript" src="{$workspace}/assets/js/application.min.js"></script>


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

      <xsl:apply-templates select="/data/page-data/entry" mode="masthead"/>

      <xsl:apply-templates />

      <xsl:apply-templates select="/data/page-data/entry" mode="content"/>

    </div>

    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <p class="center">
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

        </div>
      </div>
    </footer>

  </body>

</html>

</xsl:template>


</xsl:stylesheet>
