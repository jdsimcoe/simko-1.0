<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="../utilities/master.xsl"/>
<xsl:include href="../utilities/globals.xsl"/>


<xsl:template match="data">

  <div class="main">

    <xsl:apply-templates select="/data/blog-latest/entry"/>

    <h4>Recent Work</h4>

    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h5><a href="http://atheycreek.com/">AtheyCreek.com <i class="glyphicon glyphicon-link"></i></a></h5>
          <p>I have worked on AtheyCreek.com for several years taking on the development of their XSLT-based front-end and MySQL-based backend. The site is built on <a href="http://getsymphony.com/">Symphony</a>, <a href="http://getbootstrap.com/">Bootstrap</a>, and the latest web technologies. It is fully responsive, optimized for mobile devices and tablets. It is featured by Bootstrap in their <a href="http://expo.getbootstrap.com/">Expo</a>, a showcase of exemplary uses of their web framework. I have also worked on implementing the visual brand and developing artwork for sermons, events, and church functions.</p>
        </div>
        <div class="col-md-6">
          <img src="{$root}/workspace/assets/img/main/athey-site.png" alt="AtheyCreek.com" class="img-responsive"/>
        </div>
      </div>
      <hr/>
      <div class="row">
        <div class="col-md-6 col-md-push-6">
          <h5><a href="http://dapperandwise.com/">Dapper &amp; Wise Roasters <i class="glyphicon glyphicon-link"></i></a></h5>
          <p>Dapper &amp; Wise wanted a sleek, clean looking site with original photography to compliment their top-notch coffee roasting outfit in Beaverton, OR. The site is built on <a href="http://getsymphony.com/">Symphony</a> and <a href="http://getbootstrap.com/">Bootstrap</a> is fully responsive and optimized for mobile and tablet devices. For Dapper &amp; Wise I worked on moving their branding and iconography to a vector font method that ensures crispness on any device. I also photographed their location and coffee products for use on the site and in their <a href="https://squareup.com/market/dapper-and-wise-roasters">Square Market store</a>.</p>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <img src="{$root}/workspace/assets/img/main/dapper-site.png" alt="AtheyCreek.com" class="img-responsive"/>
        </div>
      </div>
      <hr/>
      <div class="row">
        <div class="col-md-6">
          <h5><a href="http://churchdeploy.com/">Church Deploy <i class="glyphicon glyphicon-link"></i></a></h5>
          <p>Church Deploy is an open-source project CMS that I am working on. It currently powers <a href="http://atheycreek.com/">AtheyCreek.com</a>. Church Deploy leverages <a href="http://getsymphony.com/">Symphony</a> and <a href="http://getbootstrap.com/">Bootstrap</a> and provides a way for churches to get up and running with a powerful CMS that is open source. The idea is to collectively build a better church CMS that is publicly-availble and will grow over time. Church Deploy has built-in support for retina images, icon fonts, and is optimized for mobile devices responsibly.</p>
        </div>
        <div class="col-md-6">
          <img src="{$root}/workspace/assets/img/main/churchdeploy-site-alt.png" alt="ChurchDeploy.com" class="img-responsive"/>
        </div>
      </div>
      <hr/>
      <div class="row">
        <div class="col-md-6 col-md-push-6">
          <h5><a href="http://dtr.mn/">Determine (dtr.mn) <i class="glyphicon glyphicon-link"></i></a></h5>
          <p>Determine is a website and ministry with my wife of sharing the Gospel of Jesus Christ through writing, design, quotes, book reviews, and Bible studies. The site is built on <a href="http://getsymphony.com/">Symphony</a> and <a href="http://getbootstrap.com/">Bootstrap</a> and is also mobile-optimized and fully responsive. Some of the photography on the site and all of the design has been custom-made for Determine as both a creative outlet and a way to build up the body of Christ and introduce the general public to life-giving Christian doctrine.</p>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <img src="{$root}/workspace/assets/img/main/dtrmn-site.png" alt="Dtr.mn" class="img-responsive"/>
        </div>
      </div>
    </div>

  </div><!-- .main -->


  <div class="showcase">
    <h4>Showcase</h4>
    <p class="lead">Here is a showcase of the most recent photography, design, and illustration work that I have done. Most of the photography is mine, and all of the work is original design.</p>
    <hr/>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/a-great-light-521edebbf4170.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="a-great-light-521edebbf4170.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/fourteen-521edf9780d9b.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="fourteen-521edf9780d9b.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/gospel-culture-521edef3b1d8c.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="gospel-culture-521edef3b1d8c.jpg" />
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/have-life-521ee00b3923f.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="have-life-521ee00b3923f.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/high-priestly-wallpaper_2-521ee02f5088b.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="high-priestly-wallpaper_2-521ee02f5088b.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/revelation-19-521ee059aa410.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="revelation-19-521ee059aa410.jpg" />
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/sunday-celebration-web-final-5-521edd6150ae9.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="sunday-celebration-web-final-5-521edd6150ae9.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/rafting-01-51e727687bb86-521edd07c2140.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="rafting-01-51e727687bb86-521edd07c2140.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/camp-web-521edcb532013.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="camp-web-521edcb532013.jpg" />
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/teaching-revelation-521ede1dc968e.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="teaching-revelation-521ede1dc968e.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/teaching-holyspiritseries-521ede5e86899.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="teaching-holyspiritseries-521ede5e86899.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/teaching-foryourjoyseries-521eddb6b6929.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="teaching-foryourjoyseries-521eddb6b6929.jpg" />
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/christmas-together-web-521edcce7cf72.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="christmas-together-web-521edcce7cf72.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/mens-breakfasts-5172ce63d72a5-521f7a944a049.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="mens-breakfasts-5172ce63d72a5-521f7a944a049.jpg" />
          </a>
        </div>
        <div class="col-md-4">
          <a href="{$root}/workspace/uploads/images/family-camp_2-01-518927e98e524-521f7a8210f9e.jpg">
            <img src="/workspace/img/spacer.gif" class="img-thumbnail img-responsive" width="100%" data-responsimage="family-camp_2-01-518927e98e524-521f7a8210f9e.jpg" />
          </a>
        </div>
      </div>
    </div>
  </div><!-- .showcase -->


  <div class="about">
    <h4>About Me</h4>
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-4">
          <img src="/workspace/img/spacer.gif" class="img-circle img-responsive" width="100%" data-responsimage="jds-headshot-521f81564b817.jpg"/>
        </div>
      </div>
    </div>
    <div class="container">
      <p class="lead">Jonathan Simcoe is the owner and curator of Simko.io and Simcoe Design LLC.<br/>In his own words:</p>
      <p>I am first a Christian and then a husband and father who strives to glorify God in all aspects of my life. I am the principal design and web lead of <a href="http://atheycreek.com/">AtheyCreek.com</a> and the wheels behind <a href="http://dtr.mn">Determine</a> a ministry with my wife encouraging people to see Jesus Christ at the center of all of life. I also actively working on <a href="http://churchdeploy.com/">Church Deploy</a>, an open source CMS for churches.</p>
      <p>I previously worked at WebMD Health Services where I helped push new standards like responsive design and adoption of HTML5 and CSS3 to produce better web experiences for clients. Prior to WebMD, I worked at the Waggener Edstrom Studio D™ digital strategies practice, churning out creative web, digital and print work for clients such as Microsoft, Bing, Verizon, HTC, Sasquatch! Music Festival, Washington Roundtable, and the Jebsen Group.</p>
      <p>Before Waggener Edstrom, I worked for four years in the financial industry, where I was responsible for driving the marketing and creative output of an investment consultancy. This role involved crafting the web experiences, content, branding, and graphic design for the agency, as well as distilling complicated investment concepts into forms that were easily digested by clients and investors.</p>
      <p>I have worked on and off for the past seven years doing freelance Web, graphic and print design work, consulting on the creative process with startups and developing a passion to think beyond visual design in dreaming up rich and usable experiences for consumers.</p>
      <p>I have a passion for learning and am excited about the direction of the web, as well as how technologies such as HTML5 and mobile-first design are facilitating great content and taking on a variety of forms to reach new audiences. This site and my other projects embrace new technologies like HTML5, responsive design and responsive images (including retina images), as well as open standard such as PHP, XML, and XSLT.</p>
      <hr/>
      <p class="lead">My desire is to use design and the web to build a better future for clients and to display God’s creative goodness in all that I do.</p>
    </div>
  </div><!-- .about -->

  <div class="contact" id="contact">
    <h4>Contact Me</h4>
    <p class="lead">Please use the form below to get in touch, offer feedback, or get started on a project. I will consider projects of all types and sizes, so don't be shy!</p>
    <hr/>

    <div class="container">

      <div class="row">

        <form class="form-horizontal" role="form" method="post" action="#contact">

          <xsl:for-each select="/data/events/contact-message">
            <div>
              <xsl:attribute name="class">
                <xsl:choose>
                  <xsl:when test="@result = 'error'">
                    <xsl:text>alert alert-danger</xsl:text>
                  </xsl:when>
                  <xsl:when test="filter/@status = 'failed'">
                    <xsl:text>alert</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text>alert alert-success</xsl:text>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              <p>
                <xsl:choose>
                  <xsl:when test="@result = 'error'">
                    <strong>Your submission is incomplete! </strong>
                    <xsl:text>The system encountered errors while sending your email. Please check if all the required fields have been filled.</xsl:text>
                  </xsl:when>
                  <xsl:when test="filter/@status = 'failed'">
                    <strong>System error! </strong>
                    <xsl:text>The system encountered technical problems while sending your email.</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <strong>Success! </strong>
                    <xsl:text>Your email was sent successfully.</xsl:text>
                  </xsl:otherwise>
                </xsl:choose>
              </p>
            </div>
            <br/>
          </xsl:for-each>

          <!-- <legend>Contact Form <em class="pull-right"><small>all fields are required </small></em></legend> -->
          <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />

          <div>
            <xsl:attribute name="class">
              <xsl:choose>
                <xsl:when test="/data/events/contact-message/name">
                  <xsl:text>form-group has-error</xsl:text>
                </xsl:when>
                <xsl:when test="/data/events/contact-message/@result = 'success'">
                  <xsl:text>form-group has-success</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>form-group</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <label class="col-lg-2 control-label" for="fields-name">Full Name</label>
            <div class="col-lg-9">
              <input class="form-control" name="fields[name]" type="text" placeholder="Full Name">
                <xsl:if test="/data/events/contact-message/post-values/name">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/data/events/contact-message/post-values/name"/>
                  </xsl:attribute>
                </xsl:if>
              </input>
              <xsl:if test="/data/events/contact-message/name">
                <span class="help-block">
                  <xsl:value-of select="/data/events/contact-message/name/@message"/>
                </span>
              </xsl:if>
            </div>
            <br/>
          </div>

          <div>
            <xsl:attribute name="class">
              <xsl:choose>
                <xsl:when test="/data/events/contact-message/email">
                  <xsl:text>form-group has-error</xsl:text>
                </xsl:when>
                <xsl:when test="/data/events/contact-message/@result = 'success'">
                  <xsl:text>form-group has-success</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>form-group</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <label class="col-lg-2 control-label" for="fields-email">Email</label>
            <div class="col-lg-9">
              <input class="form-control" name="fields[email]" type="text" placeholder="Email Address">
                <xsl:if test="/data/events/contact-message/post-values/email">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/data/events/contact-message/post-values/email"/>
                  </xsl:attribute>
                </xsl:if>
              </input>
              <xsl:if test="/data/events/contact-message/email">
                <span class="help-block">
                  <xsl:value-of select="/data/events/contact-message/email/@message"/>
                </span>
              </xsl:if>
            </div>
            <br/>
          </div>

          <div>
            <xsl:attribute name="class">
              <xsl:choose>
                <xsl:when test="/data/events/contact-message/phone">
                  <xsl:text>form-group has-error</xsl:text>
                </xsl:when>
                <xsl:when test="/data/events/contact-message/@result = 'success'">
                  <xsl:text>form-group has-success</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>form-group</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <label class="col-lg-2 control-label" for="fields-phone">Phone</label>
            <div class="col-lg-9">
              <input class="form-control" name="fields[phone]" type="text" placeholder="Phone Number">
                <xsl:if test="/data/events/contact-message/post-values/phone">
                  <xsl:attribute name="value">
                    <xsl:value-of select="/data/events/contact-message/post-values/phone"/>
                  </xsl:attribute>
                </xsl:if>
              </input>
              <xsl:if test="/data/events/contact-message/phone">
                <span class="help-block">
                  <xsl:value-of select="/data/events/contact-message/phone/@message"/>
                </span>
              </xsl:if>
            </div>
            <br/>
          </div>

          <div>
            <xsl:attribute name="class">
              <xsl:choose>
                <xsl:when test="/data/events/contact-message/inquiry">
                  <xsl:text>form-group has-error</xsl:text>
                </xsl:when>
                <xsl:when test="/data/events/contact-message/@result = 'success'">
                  <xsl:text>form-group has-success</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>form-group</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <label class="col-lg-2 control-label" for="fields-inquiry">Subject:</label>
            <div class="col-lg-9">
              <select class="form-control" name="fields[inquiry]">
                <option value="Choose an option:">
                  <xsl:if test="/data/events/contact-message/post-values/inquiry = 'Choose an option:'">
                    <xsl:attribute name="selected"></xsl:attribute>
                  </xsl:if>
                  <xsl:text>Choose an option:</xsl:text>
                </option>
                <option value="General Question">
                  <xsl:if test="/data/events/contact-message/post-values/inquiry = 'General Question'">
                    <xsl:attribute name="selected"></xsl:attribute>
                  </xsl:if>
                  <xsl:text>General Question</xsl:text>
                </option>
                <option value="Get an Estimate">
                  <xsl:if test="/data/events/contact-message/post-values/inquiry = 'Get an Estimate'">
                    <xsl:attribute name="selected"></xsl:attribute>
                  </xsl:if>
                  <xsl:text>Get an Estimate</xsl:text>
                </option>
                <option value="Start a Project">
                  <xsl:if test="/data/events/contact-message/post-values/inquiry = 'Start a Project'">
                    <xsl:attribute name="selected"></xsl:attribute>
                  </xsl:if>
                  <xsl:text>Start a Project</xsl:text>
                </option>
                <option value="Suggestion">
                  <xsl:if test="/data/events/contact-message/post-values/inquiry = 'Suggestion'">
                    <xsl:attribute name="selected"></xsl:attribute>
                  </xsl:if>
                  <xsl:text>Suggestion</xsl:text>
                </option>
              </select>
            </div>
            <br/>
          </div>

          <div>
            <xsl:attribute name="class">
              <xsl:choose>
                <xsl:when test="/data/events/contact-message/content">
                  <xsl:text>form-group has-error</xsl:text>
                </xsl:when>
                <xsl:when test="/data/events/contact-message/@result = 'success'">
                  <xsl:text>form-group has-success</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>form-group</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <label class="col-lg-2 control-label" for="fields-message">My Message:</label>
            <div class="col-lg-9">
              <textarea class="form-control" name="fields[content]" rows="15">
                <xsl:if test="/data/events/contact-message/post-values/content">
                  <xsl:value-of select="/data/events/contact-message/post-values/content"/>
                </xsl:if>
              </textarea>
              <xsl:if test="/data/events/contact-message/content">
                <span class="help-block">
                  <xsl:value-of select="/data/events/contact-message/content/@message"/>
                </span>
              </xsl:if>
            </div>
            <br/>
          </div>

          <input name="send-email[sender-email]" value="fields[email]" type="hidden" />
          <input name="send-email[sender-name]" value="{$website-name}" type="hidden" />
          <input name="send-email[reply-to-email]" value="fields[email]" type="hidden" />
          <input name="send-email[reply-to-name]" value="fields[name]" type="hidden" />
          <input name="send-email[subject]" value="fields[inquiry]" type="hidden" />
          <input name="send-email[body]" value="fields[inquiry],fields[content],fields[email],fields[name]" type="hidden" />
          <input name="send-email[recipient]" value="jdsimcoe" type="hidden" />

          <div class="col-lg-4 col-lg-offset-4">
            <input class="btn btn-large btn-block btn-primary" name="action[contact-message]" type="submit" value="Submit Form" />
          </div>

        </form>

      </div>
    </div>

  </div>

</xsl:template>


</xsl:stylesheet>