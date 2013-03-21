<!DOCTYPE html>
<html>
<%@ page
    import="java.util.ResourceBundle"
%>
<%
    ResourceBundle bundle = ResourceBundle.getBundle("login", request.getLocale());
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.getSession().setMaxInactiveInterval(-1); %>
    <head>
        <meta http-equiv="x-ua-compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ChiapasGames</title>
        <link href="img/favicon.ico" type="image/x-icon" rel="icon" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/globals.css" />
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div>
                    <a href="http://www.ecosur.mx">
                    <img src="img/logo.jpg" width="194" height="96"
                         alt="P�gina Principal de ECOSUR"/>
                    </a>
                </div>
                <div>
                    <img src="img/header.png" alt="Chiapasgames" />
                </div>
                <div>
                    <a href="http://www.conacyt.mx" target="blank">
                        <img src="img/conacyt.jpg" alt="CONACYT" />
                    </a>
                </div>
            </div>
            <div id="content">
                <div id="login">
                    <h2><%=bundle.getString("title")%></h2>
                    <form class="form-horizontal" method="post" action="j_security_check">
                        <fieldset>
                            <div class="control-group">
                                <label for="username" class="control-label">
                                    <%=bundle.getString("username")%></label>
                                <div class="controls">
                                    <input id="username" type="text" name="j_username"/>
                                </div>
                                <label for="password" class="control-label">
                                    <%=bundle.getString("password")%></label>
                                <div class="controls">
                                    <input id="password" type="password" name="j_password"/>
                                </div>
                                <div class="controls">
                                    <fmt:bundle basename="login">
                                        <fmt:message key="login_button" var="login" />
                                        <input class="btn" type="submit" value="${login}">
                                        <fmt:message key="reset" var="reset"/>
                                        <input class="btn" type="reset" value="${reset}"/>
                                    </fmt:bundle>
                                </div>
                            </div>
                       </fieldset>
                    </form>
                    <p>
                        <%=bundle.getString("login")%>
                    </p>
                </div>
                <div class="separator"></div>
                <h2><%=bundle.getString("background")%></h2>
                <p>
                    <%=bundle.getString("main.page.1")%>&nbsp;<a href="http://chiapasgames.org">http://chiapasgames.org</a>&nbsp;
                    <%=bundle.getString("main.page.2")%>
                </p>
                <div class="separator"></div>
                <h2><%=bundle.getString("games")%></h2>
                <p>
                    <%=bundle.getString("code.staged")%>
                    <a href="http://github.com/ecosur-sistemas-complejos">http://github.com/ecosur-sistemas-complejos</a>
                </p>
                <p><h3><%=bundle.getString("gente")%></h3>
                <p>
                    <%=bundle.getString("gente.description")%>
                </p>
                <p><h3><%=bundle.getString("manantiales")%></h3>
                <p>
                    <%=bundle.getString("manantiales.description.1")%>
                </p>
                <p>
                    <%=bundle.getString("manantiales.description.2")%>
                </p>
                <p>
                    <%=bundle.getString("manantiales.description.3")%>
                </p>
                <div class="separator"></div>
                <h3><%=bundle.getString("methodology")%></h3>
                <p>
                    <%=bundle.getString("methodology.description")%>
                </p>

                <div class="separator"></div>
                <h3><%=bundle.getString("architecture")%></h3>
                <p>
                    <%=bundle.getString("architecture.description.1")%>
                </p>
                <p>
                    <%=bundle.getString("collab")%>
                </p>
                <div class="centered"><img src="img/architecture.png" alt="MultiGame Architecture Diagram"/></div>
                <p>
                    <%=bundle.getString("architecture.description.2")%>
                </p>
                <p>
                    <%=bundle.getString("code.private")%>
                </p>
            </div>
            <div id="footer" class="mesmis">
                <a href="http://mesmis.gira.org.mx/"><img src="http://mesmis.gira.org.mx/images/logo.png" alt="MESMIS" /></a>
            </div>
        </div>
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-12907657-4']);
            _gaq.push(['_setDomainName', 'chiapasgames.net']);
            _gaq.push(['_setAllowLinker', true]);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

</script>
    </body>
</html>
