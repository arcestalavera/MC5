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
            <img src = "img/KrakenLogo.png" id ="logo" width = "70" height="70">
            <h1 class = "header-item" id = "HomepageName">PicKraken</h1>
            <h2 class = "header-item" id = "userName">${loggedUser.getUsername()}</h2>
        </div>
        <div id = "release">
            <form action = "Upload" method = "POST">
                <h3 id = "releaseTitle">Release here: </h3>
                <input type = "text" class = "release-item" name = "photoURL" placeholder = "Photo URL"/>
                <input type = "text" class = "release-item" name = "photoCaption" placeholder = "Caption"/>
                <input type = "submit" id = "release-button" value = "Release!"/>
            </form>
        </div>
        
        <div id = "photos">
            <%
                User user = (User)session.getAttribute("loggedUser");
                ArrayList<Photo> photos = user.getUserPhotos();
                
                for(Photo photo : photos){
            %>
            <div class = "photo">    
                <form action = "View" method = "POST">
                    <img src = "<%=photo.getPath()%>" height="200" width="200"/>
                    <input type="hidden" name = "PhotoID" value = "<%=photo.getPhotoID()%>"/>
                    <input type="hidden" name = "Path" value = "<%=photo.getPath()%>"/>
                    <input type="hidden" name = "Caption" value = "<%=photo.getCaption()%>"/>
                    <input type = "submit" class = "edit-button"value = "Edit" />
                </form>
            </div>
            <%} %>
        </div>
    </body>
</html>
