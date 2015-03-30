/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    $("#login").animate({opacity: '+=1'});
    
    var isOpened = false;
    $("#signupheader").click(function(){
        if(!isOpened)
        {
            $(this).animate({bottom: '+=184px'});
            $("#signup").animate({bottom: '+=50%'});
            $("#signupform").slideToggle("medium");
            $("#login").fadeOut("medium");
            isOpened = true;
        }
        else
        {
            $(this).animate({bottom: '-=184px'});
            $("#signup").animate({bottom: '-=50%'});
            $("#signupform").slideToggle("medium");
            $("#login").fadeIn("slow");
            isOpened = false;
        }
    });
});