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
    <script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>
    <c:set var="localeCode" value="${pageContext.request.locale}" />
    <c:if test="${localeCode eq 'es_ES' or localeCode eq 'es_MX'}">
      <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/localization/messages_es.js"></script>
    </c:if>
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
            <p class="hero-unit">
            <fmt:bundle basename="update">
                <fmt:message key="update_msg"/>
            </fmt:bundle>
            </p>
            <form id="uForm" class="form-horizontal" method="post" action="register">
              <div class="control-group">
                <input type="hidden" name="UPDATE" value="UPDATE" />
                <input type="hidden" name="uid" value="${param.uid}" />
                <fieldset>
                    <fmt:bundle basename="update">
                        <label for="password1" class="control-label">
                            <fmt:message key="password"/>
                            <em>*</em>
                        </label>
                        <div class="controls">
                            <input id="password1" type="password" name="password1" minlength="6"/>
                        </div>
                        <label for="password2" class="control-label">
                            <fmt:message key="repeat_password"/>
                            <em>*</em>
                        </label>
                        <div class="controls">
                            <input id="password2" type="password" name="password2"/>
                        </div>
                        <div class="controls">
                            <fmt:message key="reset" var="reset"/>
                            <input class="btn" type="reset" value="${reset}"/>
                            <fmt:message key="update" var="update"/>
                            <input class="btn" type="submit" value="${update}"/>
                        </div>
                    </fmt:bundle>
                </fieldset>
              </div>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#uForm").validate({
               rules: {
                 password: "required",
                 password2: {
                   equalTo: "#password1"
                 }
               }
             });
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
