    var myCookieName = "cookieExtranet";
    var myCookieExpire = 30; //minutes

    function setCookie(cname, cvalue, exmins) {
        const d = new Date();
        //d.setTime(d.getTime() + (exdays*24*60*60*1000));
        d.setTime(d.getTime() + (exmins*60*1000)); 
        let expires = "expires="+ d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }
  
    function getCookie(cname) {
      let name = cname + "=";
      let decodedCookie = decodeURIComponent(document.cookie);
      let ca = decodedCookie.split(';');
      for(let i = 0; i <ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return "";
    }  
  
    function checkpw(pw) {
       //alert(pw);
       sha2 = encryptSha2(pw);
       if (sha2 === "1624cd338755118684697bb4b2f29117a8c246e345d02118815d8ae2b0ad28ff") {
         $("#master").show();
         $("#pwmaster").hide();
          //renew cookie
         newval = sha2;
         setCookie(myCookieName, newval, myCookieExpire); 
       }
    }

    window.addEventListener("load", function() {
       val = getCookie(myCookieName);
       if (val==="1624cd338755118684697bb4b2f29117a8c246e345d02118815d8ae2b0ad28ff") {
         $("#master").show();
         $("#pwmaster").hide();
       }
    }, true);
 
