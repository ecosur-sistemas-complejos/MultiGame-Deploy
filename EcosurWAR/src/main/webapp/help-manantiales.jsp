<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.util.ResourceBundle"%>
<% ResourceBundle bundle = ResourceBundle.getBundle("help-manantiales-comp", request.getLocale()); %>
    <body>
        <h1><%=bundle.getString("title")%>
        </h1>
        <br>

        <h3><%=bundle.getString("purpose.title")%>
        </h3>

        <p><%=bundle.getString("purpose.1")%>
        </p>

        <p><%=bundle.getString("purpose.2")%>
        </p>

        <h3><%=bundle.getString("token.title")%>
        </h3>

        <p><%=bundle.getString("token.1")%>
        </p>

        <p><%=bundle.getString("token.2")%>
        </p>
        <table><%=bundle.getString("token.table")%>
        </table>
        <p><%=bundle.getString("token.3")%>
        </p>

        <p><%=bundle.getString("token.4")%>
        </p>

        <h3><%=bundle.getString("board.title")%>
        </h3>

        <p><%=bundle.getString("board.1")%>
        </p>

        <p><%=bundle.getString("board.2")%>
        </p>

        <h3><%=bundle.getString("land_use.title")%>
        </h3>

        <p><%=bundle.getString("land_use.1")%>
        </p>

        <p><%=bundle.getString("land_use.2")%>
        </p>

        <p><%=bundle.getString("land_use.3")%>
        </p>

        <p><%=bundle.getString("land_use.4")%>
        </p>

        <h3><%=bundle.getString("decisions.title")%>
        </h3>

        <p><%=bundle.getString("decisions.subtitle")%>
        </p>

        <p><%=bundle.getString("decisions.1")%>
        </p>

        <p><%=bundle.getString("decisions.2")%>
        </p>

        <p><%=bundle.getString("decisions.3")%>
        </p>

        <p><%=bundle.getString("decisions.4")%>
        </p>

        <p><%=bundle.getString("decisions.5")%>
        </p>
    </body>
</html>
