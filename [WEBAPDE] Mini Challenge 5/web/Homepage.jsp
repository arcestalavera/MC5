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
                <input type = "text" placeholder = "Photo URL"/>
                <input type = "submit" />
            </form>
        </div>
    </body>
</html>
