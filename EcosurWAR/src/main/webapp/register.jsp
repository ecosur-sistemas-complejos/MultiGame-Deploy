<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <meta http-equiv="x-ua-compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ChiapasGames.net</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/globals.css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <div id="main">
        <div id="header">
            <div>
                <a href="http://www.ecosur.mx">
                <img src="img/logo.jpg" width="194" height="96"
                     alt="ECOSUR"/>
                </a>
            </div>
            <div>
                <img src="img/header.png" alt="Chiapasgames" />
            </div>
            <div>
                <a href="http://www.conacyt.mx" target="blank">
                    <img src="img/conacyt.jpg" width="65" height="96"
                         alt="CONACYT" />
                </a>
            </div>
        </div>
        <div id="content">
            <c:choose>
               <c:when test="${sessionScope.sqlerror != null}">
                   <div class="alert alert-error">
                       <button type="button" class="close" data-dismiss="alert">&times;</button>
                       <fmt:bundle basename="register">
                            <strong><fmt:message key="sqlerror"/></strong>
                            <code><c:out value="${sessionScope.sqlerror}"/></code>
                       </fmt:bundle>
                   </div>
               </c:when>
               <c:otherwise>
                    <div class="alert">
                       <fmt:bundle basename="register">
                           <button type="button" class="close" data-dismiss="alert">&times;</button>
                           <strong><fmt:message key="unknown"/></strong>
                    </div>
                    <p class="hero-unit">
                       <fmt:message key="register"/>
                       <fmt:message key="send_password"/>
                       <form method="post" action="register">
                           <c:set var="j_user" value="${param.j_username}"/>
                           <input type="hidden" name="j_username" value="${j_user}"/>
                           <input type="hidden" name="SEND" value="SEND"/>
                           <button class="btn btn-inverse pull-right" type="submit">
                               <fmt:message key="send_copy"/>
                           </button>
                       </form>
                       </fmt:bundle>
                    </p>
               </c:otherwise>
            </c:choose>
            <div class="seperator">
            </div>
            <div id="login">
            <fmt:bundle basename="register">
                <form class="form-horizontal" method="post" action="register">
                    <input type="hidden" name="CREATE" value="CREATE"/>
                    <fieldset>
                        <legend><fmt:message key="title"/></legend>
                        <div class="control-group">
                            <label for="firstname" class="control-label"><fmt:message key="first_name"/></label>
                        <div class="controls">
                            <input id="firstname" type="text" name="firstname"/>
                        </div>
                        <label for="lastname"  class="control-label"><fmt:message key="last_name"/></label>
                        <div class="controls">
                            <input id="lastname"  type="text" name="lastname"/>
                        </div>
                        <label for="email" class="control-label"><fmt:message key="email"/></label>
                        <div class="controls">
                            <input id="email" type="text" name="email"/>
                        </div>
                        <label for="username" class="control-label"><fmt:message key="username"/></label>
                        <div class="controls">
                            <input id="username" type="text" name="username"/>
                        </div>
                        <label for="password1" class="control-label"><fmt:message key="password"/></label>
                        <div class="controls">
                            <input id="password1" type="password" name="password1"/>
                        </div>
                        <label for="password2" class="control-label">
                        <fmt:message key="repeat_password"/>&nbsp;
                        </label>
                        <div class="controls">
                            <input id="password2" type="password" name="password2"/>
                        </div>
                        <div class="controls">
                            <fmt:message key="reset" var="reset"/>
                            <input class="btn" type="reset" value="${reset}"/>
                            <fmt:message key="register_btn" var="register"/>
                            <input class="btn" type="submit" value="${register}"/>
                        </div>
                     </div>
                   </fieldset>
                </form>
            </div>
            </fmt:bundle>
        </div>
    </div>
    <script type="text/javascript">
         $(document).ready(function () {
            /* Activate alert */
            $(".alert").alert();
         });

         var _gaq = _gaq || [];
         _gaq.push(['_setAccount', 'UA-12907657-4']);
         _gaq.push(['_trackPageview']);
         (function() {
           var ga = document.createElement('script'); ga.type =
               'text/javascript'; ga.async = true;
           ga.src = ('https:' == document.location.protocol ? 'https://ssl' :
               'http://www') + '.google-analytics.com/ga.js';
           var s = document.getElementsByTagName('script')[0];
           s.parentNode.insertBefore(ga, s);
         })();
    </script>
    </body>
</html>
