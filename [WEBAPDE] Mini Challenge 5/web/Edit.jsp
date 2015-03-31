<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" 	media="all" href="css/Edit.css" />
        <title>Edit Picture Caption - PicKraken</title>
        
        <link rel="shortcut icon" href="img/KrakenIco.ico"/>
    </head>
    <body>
        <div id = "container">
            <img src = "<%=request.getParameter("Path")%>" id = "image" height="500" width="500"/>
            <p id = "caption"><%=request.getParameter("Caption")%></p>
            <form action = "Edit" method = "POST" id = "editCaptionForm">
                <input type="hidden" name = "PhotoID" value = "<%=request.getParameter("PhotoID")%>"/>
                <input type = "text" id = "newCaption" name = "PhotoCaption" placeholder = "New Caption"/>
                <input type = "submit" id = "editCaptionButton" value = "Edit Caption"/>
            </form>
        </div>
    </body>
</html>