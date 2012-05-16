<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.util.ResourceBundle"%>
<%@ page import="java.util.Locale" %>
<%
    Locale l = new Locale(request.getParameter("locale"));
    System.out.println("Locale: "+ l);
    ResourceBundle bundle = ResourceBundle.getBundle("help-manantiales", l);
%>
    <body>
        <h1><%=bundle.getString("title")%></h1>
        <br>
        <p><%=bundle.getString("title.1")%></p>
        <br/>
        <p><%=bundle.getString("comp.title")%></p>
        <br/>
        <p><%=bundle.getString("comp.1")%></p>
        <br/>
        <p><%=bundle.getString("comp.1.a")%></p>
        <br/>
        <p><%=bundle.getString("comp.1.b")%></p>
        <br/>
        <p><%=bundle.getString("comp.1.c")%></p>
        <br/>
        <p><%=bundle.getString("comp.2")%></p>
        <br/>
        <p><%=bundle.getString("comp.2.a")%></p>
        <br/>
        <p><%=bundle.getString("comp.2.b")%></p>
        <br/>
        <textformat blockindent="5"><%=bundle.getString("comp.2.table.row.1")%></textformat>
        <br/>
        <textformat blockindent="5"><%=bundle.getString("comp.2.table.row.2")%></textformat>
        <br/>
        <textformat blockindent="5"><%=bundle.getString("comp.2.table.row.3")%></textformat>
        <br/>
        <br/>
        <p><%=bundle.getString("comp.2.c")%></p>
        <br/>
        <p><%=bundle.getString("comp.2.d")%></p>
        <br/>
        <p><%=bundle.getString("comp.3")%></p>
        <br/>
        <p><%=bundle.getString("comp.3.a")%></p>
        <br/>
        <p><%=bundle.getString("comp.3.b")%></p>
        <br/>
        <p><%=bundle.getString("comp.4")%></p>
        <br/>
        <p><%=bundle.getString("comp.4.a")%></p>
        <br/>
        <p><%=bundle.getString("comp.4.b")%></p>
        <br/>
        <p><%=bundle.getString("comp.4.c")%></p>
        <br/>
        <p><%=bundle.getString("comp.4.d")%></p>
        <br/>
        <p><%=bundle.getString("comp.5")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.sub")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.a")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.b")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.c")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.d")%></p>
        <br/>
        <p><%=bundle.getString("comp.5.e")%></p>
        <br/>
        <p><%=bundle.getString("coop.title")%></p>
        <br/>
        <p><%=bundle.getString("coop.a")%></p>
        <br/>
        <p><%=bundle.getString("coop.b")%></p>
        <br/>
        <p><%=bundle.getString("coop.c")%></p>
        <br/>
        <p><%=bundle.getString("coop.silvo")%></p>
        <br/>
        <p><%=bundle.getString("coop.silvo.a")%></p>
        <br/>
        <p><%=bundle.getString("coop.silvo.b")%></p>
        <br/>
        <p><%=bundle.getString("enjoy")%></p>
    </body>
</html>
