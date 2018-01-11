"use strict";
function validateContact() {
var apname=document.getElementById("apname").value;
var apemail=document.getElementById("apemail").value;
var aptel=document.getElementById("aptel").value;
var apdate=document.getElementById("apdate").value;
var apcomment=document.getElementById("apcomment").value;

if(apname=="" || apemail=="" || aptel=="" || apdate=="" || apcomment==""){
document.getElementById("ferror").innerHTML = "Please Fill all fields";
return false;
}
else{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(apemail))  
  {  
    return (true);
  }  
document.getElementById("ferror").innerHTML = "You have entered an invalid email address!";
    return (false);
}

}

function validateContact1() {



var apemail=document.getElementById("apemail").value;
var aptel=document.getElementById("aptel").value;
var apcomment=document.getElementById("apcomment").value;


var country_id=document.getElementById("country_id").value;
var checkb=document.getElementById("squaredOne").value;
var apfname = document.getElementById("apfname").value;
var aplname = document.getElementById("aplname").value;
var apdate = document.getElementById("apdate").value;
var apdob = document.getElementById("apdob").value;


if( apemail=="" || aptel=="" || apcomment=="" || country_id=="" || checkb.length<=3 || apfname=="" || aplname=="" || apdate=="" || apdob==""){
document.getElementById("ferror").innerHTML = "Please Fill all fields";
return false;
}
else{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(apemail))  
  {  
    return (true);
  }  
document.getElementById("ferror").innerHTML = "You have entered an invalid email address!";
    return (false);
}


}




function validateContactpage() {
document.getElementById("ferror").innerHTML = "";
var apname=document.getElementById("apname").value;
var apemail=document.getElementById("apemail").value;
var aptel=document.getElementById("aptel").value;
var apcomment=document.getElementById("apcomment").value;
var apservice=document.getElementById("apservice").value;
if(apname=="" || apemail=="" || aptel=="" || apcomment=="" || apservice == ""){
document.getElementById("ferror").innerHTML = "Please Fill all fields";
return false;
}
else{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(apemail))  
  {  
    return (true);
  }  
document.getElementById("ferror").innerHTML = "You have entered an invalid email address!";
    return (false);
}

}

function sendContact() {
    var valid;	
    valid = validateContactpage();
    if(valid) {
        var name = $("#apname").val();
        var email = $("#apemail").val();
        var tel = $("#aptel").val();
        var comment = $("#apcomment").val();
        var apservice = $("#apservice").val();
        var dataString = 'apname='+ name + '&apemail=' + email + '&aptel=' + tel + '&apcomment=' + comment  + '&apservice=' + apservice;
        
        jQuery.ajax({
            url: "email.php",
            data:dataString,
            type: "POST",
            success:function(data){
                $(".success").html(data);
            },
            error:function (){}
        });
    }
}