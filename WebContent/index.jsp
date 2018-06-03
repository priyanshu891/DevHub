<%@ page language="java" contentType="text/html; charset=UTD"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DevHub</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&subset=cyrillic,latin,greek,vietnamese">

        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/animate.css/animate.min.css">
        <link rel="stylesheet" href="assets/mobirise/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
       	 <link rel="stylesheet" href="css/override_bootstrapv3.css">
        <!-- <style>
            .my-navbar{
       			
       			  border: 0;
    border-radius: 0;
    margin-bottom: 0;
    background: rgba(0,0,0,0.5);
    position: fixed;
            }
        .my-navbar .navbar-brand{
            	font-size: 30px;
            	font-weight: bold;
            	color: white;
            	text-decoration:none;
            } 
          .my-navbar .navbar-nav li a{
          		color: white;
          		text-decoration:none;
          }
          .primary-text{
  color:#56a79a;
}
        </style> -->
    </head>

    <body>
        <!-- HEADER -->
        
<%--         <nav class="navbar navbar-inverse navbar-fixed-top my-navbar">
            <div class="container">
          <div class="navbar-header">
          <!-- <a class="navbar-brand" href="default.jsp">DevHub</a> -->
          <a class=" navbar-brand" href="index.jsp">Dev<span class="primary-text">Hub</span></a>
          
          </div>
          <ul class="nav navbar-nav">
          <li class="active " sytle="background-color:green;"><a href="default.jsp">Home</a></li>
           
           <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> &nbsp;Login<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="login.jsp?type=Admin">Administrator</a></li>
                <li><a href="login.jsp?type=Expert">Technical Expert</a></li>
                <li><a href="login.jsp?type=User">User Login</a></li>
              </ul>
            </li>
            <li><a href="aboutus.jsp">About Us</a></li>
             <li><a href="contactus.jsp">Contact Us</a></li>
          </ul>
         <ul class="nav navbar-nav navbar-right">
         <%
          String login = (String)session.getAttribute("login");
          if("yes".equals(login))
          {%>
          <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span height="400px" class="glyphicon glyphicon-user">&nbsp;<%=(String)session.getAttribute("user")%></span><span class="caret"></span></a>
              <ul class="dropdown-menu">
              
                <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </li>
          <%}
          else{
          %>
          <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
         <%} %>
         </ul>
         </div>
        </nav> --%>

        <section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted mbr-parallax-background"
        id="header1-1" data-rv-view="2" style="background-image: url(assets/images/showcase-1920x1275.jpg);">
        <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-left">
            <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
            <div class="mbr-box__container mbr-section__container container">
                <div class="mbr-box mbr-box--stretched">
                    <div class="mbr-box__magnet mbr-box__magnet--center-left">
                        <div class="row">
                            <div class=" col-sm-6 col-sm-offset-6">
                                <div class="mbr-hero animated fadeInUp">
                                    <h1 class="mbr-hero__text">Welcome to
                                        <em color="0000ff">DevHub</em>
                                    </h1>
                                    <p class="mbr-hero__subtext"></p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bug
                                        Tracking System &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ticketing Solution &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; built to Ease Your &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Project
                                        Development&nbsp;
                                    </p>
                                    <p></p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--left">
                                    <a class="mbr-buttons__btn btn btn-lg btn-danger animated fadeInUp delay" href="signup.jsp">SIGN UP</a>
                                    <a class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay" href="default.jsp">LOGIN</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
  
    
        
    <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="features1-2" data-rv-view="5" style="background-color: rgb(255, 255, 255);">

        <div class="mbr-section__container mbr-section__container--std-top-padding mbr-section__container--sm-bot-padding mbr-section-title container"
            style="padding-top: 93px;">
            <div class="mbr-header mbr-header--center mbr-header--wysiwyg row">
                <div class="col-sm-8 col-sm-offset-2">
                    <h3 class="mbr-header__text">Core Features</h3>
                    <p class="mbr-header__subtext">What's Included</p>
                </div>
            </div>
        </div>
        <div class="mbr-section__container container">
            <div class="mbr-section__row row">
                <div class="mbr-section__col col-xs-12 col-lg-2-4 col-md-4 col-sm-6">
                    <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                        <figure class="mbr-figure">
                            <img src="assets/images/dashboard.png" class="mbr-figure__img">
                        </figure>
                    </div>
                    <div class="mbr-section__container mbr-section__container--middle">
                        <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                            <h3 class="mbr-header__text">FULLY
                                <div>OPTIMIZED</div>
                            </h3>
                        </div>
                    </div>
                    <div class="mbr-section__container mbr-section__container--last" style="padding-bottom: 93px;">
                        <div class="mbr-article mbr-article--wysiwyg">
                            <p>Optimized for Better Response &amp; Performance. All features are available with Minimum Response
                                Time.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="mbr-section__col col-xs-12 col-lg-2-4 col-md-4 col-sm-6">
                    <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                        <figure class="mbr-figure">
                            <img src="assets/images/project.png" class="mbr-figure__img">
                        </figure>
                    </div>
                    <div class="mbr-section__container mbr-section__container--middle">
                        <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                            <h3 class="mbr-header__text">PROJECT
                                <div>MANAGEMENT</div>
                            </h3>
                        </div>
                    </div>
                    <div class="mbr-section__container mbr-section__container--last" style="padding-bottom: 93px;">
                        <div class="mbr-article mbr-article--wysiwyg">
                            <p>Track your issues with our simple, intuitive interface. Split your issues into categories and
                                then work.</p>
                        </div>
                    </div>

                </div>
                <div class="clearfix visible-sm-block"></div>
                <div class="mbr-section__col col-xs-12 col-lg-2-4 col-md-4 col-sm-6">
                    <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                        <figure class="mbr-figure">
                            <img src="assets/images/group.png" class="mbr-figure__img">
                        </figure>
                    </div>
                    <div class="mbr-section__container mbr-section__container--middle">
                        <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                            <h3 class="mbr-header__text">FLEXIBILITY &amp; MULTI-USER</h3>
                        </div>
                    </div>
                    <div class="mbr-section__container mbr-section__container--last" style="padding-bottom: 93px;">
                        <div class="mbr-article mbr-article--wysiwyg">
                            <p>An Interactive Platform where Testers &amp; Developers can work on Problem. Resolve the Problem
                                with there Team work.</p>
                        </div>
                    </div>

                </div>
                <div class="clearfix visible-md-block"></div>
                <div class="mbr-section__col col-xs-12 col-lg-2-4 col-md-4 col-sm-6 col-lg-offset-0 col-md-offset-2">
                    <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                        <figure class="mbr-figure">
                            <img src="assets/images/upgrade.png" class="mbr-figure__img">
                        </figure>
                    </div>
                    <div class="mbr-section__container mbr-section__container--middle">
                        <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                            <h3 class="mbr-header__text">FREE
                                <div>UPGRADES</div>
                            </h3>
                        </div>
                    </div>
                    <div class="mbr-section__container mbr-section__container--last" style="padding-bottom: 93px;">
                        <div class="mbr-article mbr-article--wysiwyg">
                            <p>Regular Maintenance &amp; Update pushed to the Application for improving performance and better
                                working
                            </p>
                        </div>
                    </div>

                </div>
                <div class="clearfix visible-sm-block"></div>
                <div class="mbr-section__col col-xs-12 col-lg-2-4 col-md-4 col-sm-6 col-md-offset-0 col-sm-offset-3">
                    <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                        <figure class="mbr-figure">
                            <img src="assets/images/blocks.png" class="mbr-figure__img">
                        </figure>
                    </div>
                    <div class="mbr-section__container mbr-section__container--middle">
                        <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                            <h3 class="mbr-header__text">PLUG &amp; PLAY
                                <br>
                                <br>
                            </h3>
                        </div>
                    </div>
                    <div class="mbr-section__container mbr-section__container--last" style="padding-bottom: 93px;">
                        <div class="mbr-article mbr-article--wysiwyg">
                            <p>Easy &amp; Hassle Free Working Environment. Which Let you Just Sign Up &amp; Start Using the
                                DevHub Today.</p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

    <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="testimonials1-6" data-rv-view="21" style="background-color: rgb(239, 239, 239);">
        <div>

            <div class="mbr-section__container mbr-section__container--std-padding container" style="padding-top: 62px; padding-bottom: 62px;">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="mbr-section__header">WHAT OUR FANTASTIC USERS SAY</h2>
                        <ul class="mbr-reviews mbr-reviews--wysiwyg row">
                            <li class="mbr-reviews__item col-xs-12 col-sm-6 col-md-4">
                                <div class="mbr-reviews__text">
                                    <p class="mbr-reviews__p">It is reliable to its core. Its simple structure and reliable features convinced us to.
                                        You can fully and completely rely on its results without ever being skeptical about
                                        its authenticity..</p>
                                </div>
                                <div class="mbr-reviews__author mbr-reviews__author--short">
                                    <div class="mbr-reviews__author-name">ABANOUB S.</div>
                                    <div class="mbr-reviews__author-bio">User</div>
                                </div>
                            </li>
                            <li class="mbr-reviews__item col-xs-12 col-sm-6 col-md-4">
                                <div class="mbr-reviews__text">
                                    <p class="mbr-reviews__p">This software is an example of simplicity at its best. It is difficult to find software
                                        this user-friendly and straight-forward. As the CEO of a growing business, its ease
                                        of use saves me much time.&nbsp;</p>
                                </div>
                                <div class="mbr-reviews__author mbr-reviews__author--short">
                                    <div class="mbr-reviews__author-name">SUFFIAN A.</div>
                                    <div class="mbr-reviews__author-bio">User</div>
                                </div>
                            </li>
                            <li class="mbr-reviews__item col-xs-12 col-sm-6 col-md-4">
                                <div class="mbr-reviews__text">
                                    <p class="mbr-reviews__p">“At first view, looks like a nice innovative tool, i like the great focus and time that
                                        was given to the responsive design, i also like the simple features. Give me more
                                        control over the Bugs.”</p>
                                </div>
                                <div class="mbr-reviews__author mbr-reviews__author--short">
                                    <div class="mbr-reviews__author-name">JHOLLMAN C.</div>
                                    <div class="mbr-reviews__author-bio">User</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="form2-9" data-rv-view="57" style="background-color: rgb(193, 193, 193);">

        <div class="mbr-section__container mbr-section__container--sm-padding container" style="padding-top: 27.2px; padding-bottom: 27.2px;">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2" data-form-type="formoid">
                            <div class="mbr-header mbr-header--center mbr-header--std-padding">
                                <h2 class="mbr-header__text">SUBSCRIBE TO OUR NEWSLETTER</h2>
                            </div>
                            <div data-form-alert="true">
                                <div class="hide" data-form-alert-success="true">Thanks for filling out form!</div>
                            </div>
                            <form class="mbr-form" action="https://google.com/" method="post" data-form-title="SUBSCRIBE TO OUR NEWSLETTER">
                                <input type="hidden" value="FO0PqS79myATVZETtbjAwkLRtoACIwEKjhjRkR2uCQ1VcoLN1ZS/CY8J5oJjyMaSGpUZEZOfouSUuwX5BlmzVNBf0eQ8R+XcEJ9QOMd21wLLdDzjbOE2kmTxTYbu2lNR"
                                    data-form-email="true">
                                <div class="mbr-form__left">
                                    <input type="email" class="form-control" name="email" required="" placeholder="Enter Your Email Address..." data-form-field="Email">
                                </div>
                                <div class="mbr-form__right mbr-buttons mbr-buttons--no-offset mbr-buttons--right">
                                    <button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">SUBSCRIBE</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="contacts3-3" data-rv-view="8" style="background-color: rgb(44, 43, 43);">

        <div class="mbr-section__container container">
            <div class="mbr-contacts mbr-contacts--wysiwyg row" style="padding-top: 30px; padding-bottom: 30px;">
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-6">
                            <p class="mbr-contacts__text">
                                <strong>ADDRESS</strong>
                                <br>Sector-49, Noida
                                <br>Uttar Pradesh,&nbsp;India
                                <br>
                                <br>
                                <strong>CONTACTS</strong>
                                <br> Email: support@devhub.io
                                <br> Phone: +91-9891929419
                                <br> Fax: +91 (4) 123 54 891</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mbr-contacts__text">
                                <strong>LINKS</strong>
                            </p>
                            <ul class="mbr-contacts__list">
                                <li>
                                    <a href="index.html#header1-1">Home</a>
                                </li>
                                <li>
                                    <a href="index.html#features1-2">Features</a>
                                </li>
                                <li>
                                    <a href="index.html#testimonials1-6">Testimonials</a>
                                </li>
                                <li>
                                    <a href="http://fb.com">About Us</a>
                                </li>
                                <li>
                                    <a class="mbr-contacts__link text-gray" href="http://google.com" target="_blank">Contact Us</a>
                                </li>
                                <li>
                                    <br>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mbr-contacts__column col-sm-4" data-form-type="formoid">
                    <div data-form-alert="true">
                        <div class="hide" data-form-alert-success="true">Thanks for filling out form!</div>
                    </div>
                    <form action="https://gmail.com/" method="post" data-form-title="MESSAGE">
                        <input type="hidden" value="MXUt0w180yiXFxyE5lc5FqwOHaHjA4nPhdAcns62hMldJRWLNTf7N3qztaLuB/GzaMwTM4RvYijM9h7mLycs4EH2eA8v7EsWwb1LXcHRuCSppbh9q9cMn+tHtdkhgRYw"
                            data-form-email="true">

                        <div class="form-group">
                            <input type="email" class="form-control input-sm input-inverse" name="email" required="" placeholder="Email*" data-form-field="Email">
                        </div>

                        <div class="form-group">
                            <textarea class="form-control input-sm input-inverse" name="message" rows="4" placeholder="Message" data-form-field="Message"></textarea>
                        </div>
                        <div class="mbr-buttons mbr-buttons--right btn-inverse">
                            <button type="submit" class="mbr-buttons__btn btn btn-danger">CONTACT US</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer class="mbr-section mbr-section--relative mbr-section--fixed-size" id="footer1-5" data-rv-view="19" style="background-color: rgb(75, 73, 73);">

        <div class="mbr-section__container container">
            <div class="mbr-footer mbr-footer--wysiwyg row" style="padding-top: 12.3px; padding-bottom: 12.3px;">
                <div class="col-sm-12">
                    <p class="mbr-footer__copyright">Copyright (c) 2018 DevHub.
                        <a class="mbr-footer__link text-gray" href="https://google.com/">Terms of Use</a> |
                        <a class="mbr-footer__link text-gray" href="https://google.com/">Privacy Policy</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smooth-scroll/smooth-scroll.js"></script>
    <script src="assets/jarallax/jarallax.js"></script>
    <!--[if lte IE 9]>
    <script src="assets/jquery-placeholder/jquery.placeholder.min.js"></script>
  <![endif]-->
    <script src="assets/mobirise/js/script.js"></script>
    <script src="assets/formoid/formoid.min.js"></script>


    </body>

    </html>