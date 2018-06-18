<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<html>
    <head>
        <title>Display All Request Parameters</title>
    </head>
    <body>
        <%

            Enumeration enParams = request.getParameterNames();
            while (enParams.hasMoreElements()) {
                String paramName = (String) enParams.nextElement();
                out.println(paramName + ":" + request.getParameter(paramName)+ "<br/>");
            }

//            enParams = request.getParameterNames();
//            int i = 1;
//            while (enParams.hasMoreElements()) {
//                String paramName = (String) enParams.nextElement();
//                response.getWriter().print(paramName + ":" + request.getParameter(paramName) + "<br/>");
//            }
        %>
        
        
        
    </body>
</html>