<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page
    import="java.util.ResourceBundle"
    import="java.security.Principal"
%>
<%
    ResourceBundle bundle = ResourceBundle.getBundle("login", request.getLocale());
    /* Check for Principal and user in MultiGame role, if there redirect to index */
    Principal p = request.getUserPrincipal();
    if (p != null && request.isUserInRole("MultiGame"))
        response.sendRedirect("/index.html");
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ChiapasGames</title>
        <link href="img/favicon.ico" type="image/x-icon" rel="icon" />
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
                        <img src="img/conacyt.jpg" width="65" height="96"
                             alt="CONACYT" />
                    </a>
                </div>
            </div>
            <div id="content">
                <div id="login">
                    <h2><%=bundle.getString("title")%></h2>
                    <form method="post" action="j_security_check">
                        <fieldset>
                            <div class="field">
                                <label><%=bundle.getString("username")%></label><input type="text" name="j_username"/>
                            </div>
                            <div class="field">
                                <label><%=bundle.getString("password")%></label><input type="password" name="j_password"/>
                            </div>
                            <div class="buttons">
                                <input type="submit" value="Login" />
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
                <p><h3><%=bundle.getString("gente")%></h3></p>
                <p>
                    <%=bundle.getString("gente.description")%>
                </p>
                <p><h3><%=bundle.getString("manantiales")%></h3></p>
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
                    <%=bundle.getString("code.staged")%>
                </p>
                <p>
                    <a href="http://github.com/ecosur-sistemas-complejos">http://github.com/ecosur-sistemas-complejos</a>
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
