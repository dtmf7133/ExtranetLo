function rnd(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min +1)) + min;
}

/*
$("input#q").on("keydown",function(e) {
   key = e.which;
   alert("hello");
   if (key===13) {
     e.preventDefault();
     $("#butSearch-addon").click();
   } 
});  
*/

/*
$("#-q").on("keydown",function(e){
  key = e.which; 
  alert(key);
  if (key===13) {
    alert("hello");
    //e.preventDefault();
    search($('input#q'));
    $("#butSearch-addon").click();
  } else {
  }
});
*/

function search(this1) {
 var text = $(this1).val().trim().toLowerCase();
 var re = new RegExp(text, "si");
 var found=0;
 for(i=1;i<linkt.length;i++) {
   tags = linkt[i];
   id =  linkids[i];
   if (re.test(tags)) {
     //window.open("#"+id, "_self");
     //$(this1).val(tags);
     $("#"+id).show();
     found=found+1;
     //if (found>=7) {
     //  break;
     //}
   } else {
     $("#"+id).hide(); 
   }
 }    
 //$(this1).val(""); 
 if (found===0) {
   $("#noresult").show();
 } else {
   $("#noresult").hide();
 }  
 //if (found>=1) {
  $("#friends").show();
 //} 
}

function setFooterPos() {
 if (document.getElementById("footerCont")) {
   tollerance = 16;
   $("#footerCont").css("top", parseInt( window.innerHeight - $("#footerCont").height() - tollerance ) + "px");
   $("#footer").css("top", parseInt( window.innerHeight - $("#footer").height() - tollerance ) + "px");
 }
}

function mymain() {

 setTimeout("setFooterPos()", 1000);

}

window.addEventListener("load", function() {
  mymain();
});

window.addEventListener("resize", function() {
  mymain();
});
