<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Login - Who Teaches What </title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="shortcut icon" href="favicon.ico" />
        <link rel="apple-touch-icon" href="iosicon.png" />
<!--    DEVELOPMENT LESS -->
<!--          <link rel="stylesheet/less" href="static/css/photon.less" media="all" />
        <link rel="stylesheet/less" href="static/css/photon-responsive.less" media="all" /> -->
<!--    PRODUCTION CSS -->
        <link rel="stylesheet" href="static/css/css/photon.css" media="all" />
<link rel="stylesheet" href="static/css/css/photon-pt2.css" media="all" />

        <link rel="stylesheet" href="static/css/css/photon-responsive.css" media="all" />

<!--[if IE]>
        <link rel="stylesheet" type="text/css" href="static/css/css_compiled/ie-only-min.css" />


<![endif]-->

<!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="static/css/css_compiled/ie8-only-min.css" />
        <script type="text/javascript" src="static/js/plugins/excanvas.js"></script>
        <script type="text/javascript" src="static/js/plugins/html5shiv.js"></script>
        <script type="text/javascript" src="static/js/plugins/respond.min.js"></script>
        <script type="text/javascript" src="static/js/plugins/fixFontIcons.js"></script>
<![endif]-->


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>
 
<script type="text/javascript" src="static/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/plugins/modernizr.custom.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.pnotify.min.js"></script>
<script type="text/javascript" src="static/js/plugins/less-1.3.1.min.js"></script>
<script type="text/javascript" src="static/js/plugins/xbreadcrumbs.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.autotab-1.1b.js"></script>
<script type="text/javascript" src="static/js/plugins/charCount.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.textareaCounter.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.min.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.en.js"></script>
<script type="text/javascript" src="static/js/plugins/select2.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery-picklist.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="static/js/plugins/additional-methods.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.form.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.metadata.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.rating.pack.js"></script>
<script type="text/javascript" src="static/js/plugins/farbtastic.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jstree.js"></script>
<script type="text/javascript" src="static/js/plugins/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.stack.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.pie.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.resize.js"></script>
<script type="text/javascript" src="static/js/plugins/raphael.2.1.0.min.js"></script>
<script type="text/javascript" src="static/js/plugins/justgage.1.0.1.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.clock.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.countdown.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jqtweet.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="static/js/plugins/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="static/js/plugins/prettify/prettify.js"></script>
<script type="text/javascript" src="static/js/plugins/bootstrapSwitch.js"></script>
<script type="text/javascript" src="static/js/plugins/mfupload.js"></script>
<script  src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>

<style>
.error {
	color:#ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin:16px;
}

</style>
    </head>

    <body class="body-login light-version" style="display:none">
    <!-- BODY STARTS -->
<script>
    $(function(){
        setTimeout(function(){
            $('.nav-fixed-topright').removeAttr('style');
        }, 300);

        $(window).scroll(function(){
            if($('.breadcrumb-container').length){
                var scrollState = $(window).scrollTop();
                if (scrollState > 0) $('.nav-fixed-topright').addClass('nav-released');
                else {
                    $('.nav-fixed-topright').removeClass('nav-released');
                }
            }
        });
        $('.user-sub-menu-container').on('click', function(){
            $(this).toggleClass('active-user-menu');
        });
        $('.user-sub-menu .light').on('click', function(){
            if ($('body').is('.light-version')) return;
            $('body').addClass('light-version');
            setTimeout(function() {
                $.cookie('themeColor', 'light', {
                    expires: 7,
                    path: '/'
                });
            }, 500);
        });
        $('.user-sub-menu .dark').on('click', function(){
            if ($('body').is('.light-version')) {
                $('body').removeClass('light-version');
                $.cookie('themeColor', 'dark', {
                    expires: 7,
                    path: '/'
                });
            }
        });
    });

    /**
     A little animation don't hurt nobody!!! 
    **/
     $("body").hide();
    $(".form-centering-wrapper").hide();
    
    $("body").fadeIn(500,function(){
 		$(".form-centering-wrapper").show({
 			  effect : 'slide',
 			  easing : 'easeOutQuart',
 			  direction : 'up',
 			  duration : 1000
 			});	
 });

    
    /**
     @Author: Zakeria Hassan
     @Purpose: Validation
      
    */
     
        $('#login-validate').validate({
            onkeyup: false,
            errorClass: 'error',
            rules: {
                username: { required: true, minlength:6 },
                password: { required: true, minlength:6,  }
            },messages:{
            	username:"",
            	password: ""
            }
        });
 
    var login= function(){
    	$.post("ajaxLogin",{ username: document.getElementById("username").value, 
    		password: document.getElementById("password").value }).
    		done(function(data){
        		console.log("AJAX RETURNED"+JSON.stringify(data));
    			if(data.success==="false"){
    				$("#err").fadeIn(200);
    				$(".form-centering-wrapper").effect( "shake", { times:3 ,distance:100 , direction:"right"}, 900);
    			}else{
    			    $(".form-centering-wrapper").effect("drop",function(){
        				location.replace(data.redirectUrl);
    			    });
    			}
    			return false;
    	});
        return false;
    };
 
</script>

        <div class="container-login">
            <div class="form-centering-wrapper">
                <div class="form-window-login" style="background:#fff">
                    <div class="form-window-login-logo">
                        <div class="login-logo">
                            <img src="static/images/seneca/seneca_logo.gif" alt="seneca logo" />
                        </div>
                        <h1 class="login-title">Who Teaches What!</h1>
                        </div>
                        <div class="login-input-area">
                       
						<form method="post" action="ajaxLogin" id="login-validate" onsubmit="return login();">
<!--<c:if test="${exception ne null}">
     <div class="errorblock"><div class="error">${exception.message}</div></div>
</c:if>	-->					<div id="err" class="errorblock" style="display:none;">Wrong password or Username</div>
                                    <span class="help-block">Login</span>
                                    <input type="text" id="username" name="username" placeholder="Email">
                                    <input type="password" id="password" name="password" placeholder="Password">
                                    <button type="submit" class="btn btn-large btn-danger btn-login">Login</button>
</form>
                                                    
                            <a href="http://www.senecacollege.ca/pwservice" class="forgot-pass">Trouble logging in?</a>
                        </div>
                    </div>
                </div>
            </div>
        
        <!--  END OF BODY -->
        
        </body>
</html>
