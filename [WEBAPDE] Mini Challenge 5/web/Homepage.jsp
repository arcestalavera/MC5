<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Photo"%>
<%@page import="Classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" 	media="all" href="css/Homepage.css" />
        <title>Your Pictures - PicKraken</title>
        
        <link rel="shortcut icon" href="img/KrakenIco.ico"/>
    </head>
    <body>
        <div id = "header">
            <h1 class = "header-item">PicKraken</h1>
            <h2 class = "header-item">${loggedUser.getUsername()}</h2>
        </div>
        <div>
            <form>
                <h3>Release here: <h3>
                <input type = "text" name = "photoURL" placeholder = "Photo URL"/>
                <input type = "text" name = "photoCaption" placeholder = "Caption"/>
                <input type = "submit" />
            </form>
        </div>
        
        <div>
            <%
                User user = (User)session.getAttribute("loggedUser");
                ArrayList<Photo> photos = user.getUserPhotos();
                
                for(Photo photo : photos){
                    System.out.println(photo.getPath());
            %>
                <form action = "View" method = "POST">
                    <img src = "<%=photo.getPath()%>" height="200" width="200"/>
                    <input type="hidden" name = "PhotoID" value = "<%=photo.getPhotoID()%>"/>
                    <input type="hidden" name = "Path" value = "<%=photo.getPath()%>"/>
                    <input type="hidden" name = "Caption" value = "<%=photo.getCaption()%>"/>
                    <input type = "submit" value = "Edit" />
                </form>
            <%} %>
        </div>
    </body>
</html>
