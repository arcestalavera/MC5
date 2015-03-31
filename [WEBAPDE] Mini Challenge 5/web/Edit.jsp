<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Picture Caption - PicKraken</title>
        
        <link rel="shortcut icon" href="img/KrakenIco.ico"/>
    </head>
    <body>
        <img src = "${Path}" height="500" width="500"/>
        <p>${Caption}</p>
        <form>
            <input type="hidden" name = "PhotoID" value = "${PhotoID}"/>
            <input type = "text" placeholder = "New Caption"/>
            <input type = "submit" value = "Edit Caption"/>
        </form>
    </body>
</html>
