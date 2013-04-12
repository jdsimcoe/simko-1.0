<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- WRITING
     ======== -->


<xsl:template match="/data/blog-latest/entry">
  <xsl:call-template name="blog-entry"/>
</xsl:template>


<xsl:template match="/data/blog-single/entry">
  <xsl:call-template name="blog-entry"/>
</xsl:template>

<xsl:template match="/data/blog-all/entry">
  <xsl:call-template name="blog-list-entry"/>
</xsl:template>


<xsl:template name="blog-entry">

  <div class="blog-entry">

  <div class="container">
    <div class="row">
      <div class="span10 offset1">
        <h4>
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="'%m+; '" />
          </xsl:call-template>
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="'%d;'" />
          </xsl:call-template>
          <xsl:call-template name="format-date">
            <xsl:with-param name="date" select="date/date/start/@iso" />
            <xsl:with-param name="format" select="', %y+;'" />
          </xsl:call-template>
        </h4>
        <h1>
          <a href="{$root}/blog/{title/@handle}">
            <xsl:value-of select="title"/>
          </a>
        </h1>
      </div>
    </div>
  </div>

  <xsl:if test="string-length(image) &gt;0">
    <img class="full-bleed" src="/workspace/img/spacer.gif" width="100%" style="height: 400px">
        <xsl:attribute name="data-responsimage">
          <xsl:value-of select="image/item/image/filename" />
        </xsl:attribute>
      </img>
  </xsl:if>

  <div class="container">
    <div class="row">
      <div class="span10 offset1">

        <xsl:for-each select="verses/item">
          <xsl:call-template name="verse-entry" />
        </xsl:for-each>

        <div class="content">
          <xsl:value-of select="content" disable-output-escaping="yes"/>
        </div>

        <p class="pull-right post-link"><a href="/blog">See all posts &#8594;</a></p>

      </div>
    </div>
  </div>

  </div>
</xsl:template>

<xsl:template name="blog-list-entry">

  <div class="blog-list">
    <a href="{$root}/{$root-page}/{title/@handle}">

        <div class="span9">
          <h2>
            <xsl:value-of select="title"/>
            <span class="date">
              <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="date/date/start/@iso" />
                <xsl:with-param name="format" select="'%m+; '" />
              </xsl:call-template>
              <xsl:call-template name="format-date">
                <xsl:with-param name="date" select="date/date/start/@iso" />
                <xsl:with-param name="format" select="'%d;'" />
              </xsl:call-template>
            </span>
          </h2>
          <div class="content">
            <p>
              <xsl:call-template name="truncate">
                <xsl:with-param name="node" select="content" />
                <xsl:with-param name="length" select="270" />
              </xsl:call-template>
              <xsl:text> &#8594;</xsl:text>
            </p>
          </div>
        </div>
        <xsl:if test="string-length(image) &gt;0">
          <div class="span3">
            <img class="img-polaroid" src="/workspace/img/spacer.gif" width="100%" style="height:165px">
              <xsl:attribute name="data-responsimage">
                <xsl:value-of select="image/item/image/filename" />
              </xsl:attribute>
            </img>
          </div>
        </xsl:if>

    </a>
  </div>
</xsl:template>


<!-- PHOTOGRAPHY
     =========== -->


<xsl:template match="/data/category-all/entry">
  <xsl:call-template name="photo-by-category-entry"/>
</xsl:template>

<xsl:template name="photo-by-category-entry">


  <xsl:variable name="catid" select="@id"/>

  <div class="span3 photo">
    <a href="{$root}/photo/category/{title/@handle}" class="photo-entry home">
      <div class="metadata">
        <h4>
          <xsl:value-of select="title" />
        </h4>
        <p class="description">
          <em><xsl:value-of select="description"/></em>
        </p>
      </div>
      <img class="img-polaroid" src="/workspace/img/spacer.gif" style="width:240px; height:240px;">
        <xsl:attribute name="alt">
          <xsl:value-of select="title"/>
        </xsl:attribute>
        <xsl:attribute name="data-responsimage">
          <xsl:value-of select="//photo-all/entry[category/item/@id = $catid]/image/item/image/filename" />
        </xsl:attribute>
      </img>

    </a>
  </div>

</xsl:template>


<xsl:template match="/data/photo-featured/entry">
  <xsl:call-template name="photo-featured-entry"/>
</xsl:template>

<xsl:template name="photo-featured-entry">

  <div class="item">

    <xsl:attribute name="class">
      <xsl:choose>
        <xsl:when test="position() = 1">
          <xsl:text>item active</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>item</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>

    <div class="span12 photo">
      <a href="{$root}/photo/{title/@handle}" class="photo-entry home featured">
        <div class="metadata">
          <h4>
            <xsl:value-of select="title" />
          </h4>
          <p class="description">
            <em><xsl:value-of select="image/item/caption"/></em>
          </p>
        </div>
        <img class="img-polaroid" src="/workspace/img/spacer.gif" alt="{image/item/image/caption}" style="width:1000px; height:550px;">
          <xsl:attribute name="data-responsimage">
            <xsl:value-of select="image/item/image/filename" />
          </xsl:attribute>
        </img>
      </a>
    </div>
  </div>

</xsl:template>


<xsl:template match="/data/photo-4-latest/entry">
  <xsl:call-template name="photo-entry"/>
</xsl:template>

<xsl:template name="photo-entry">

  <div class="span3 photo">
    <a href="{$root}/photo/{title/@handle}" class="photo-entry home">
      <div class="metadata">
        <h4>
          <xsl:value-of select="title" />
        </h4>
        <p class="description">
          <em><xsl:value-of select="image/item/caption"/></em>
        </p>
      </div>
      <img class="img-polaroid" src="/workspace/img/spacer.gif" alt="{image/item/caption}" style="width:240px; height:240px;">
        <xsl:attribute name="data-responsimage">
          <xsl:value-of select="image/item/image/filename" />
        </xsl:attribute>
      </img>


    </a>
  </div>

</xsl:template>


<!-- VERSES
     ====== -->


<xsl:template name="verse-entry">
  <div class="verse center">
    <blockquote>
      <xsl:value-of select="content" />
      <br />
      <cite>
        <xsl:value-of select="passage" />
        <xsl:text> (</xsl:text>
        <xsl:value-of select="version/item/abbreviation" />
        <xsl:text>)</xsl:text>
      </cite>
    </blockquote>
  </div>
</xsl:template>


</xsl:stylesheet>
