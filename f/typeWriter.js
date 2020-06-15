function typeWriter(a,b) {
  if (i < a.length) {
     if (a.charAt(i) == 'M') {
        document.getElementById("demo").innerHTML += '<br>'; 
     }
     else {
        document.getElementById("demo").innerHTML += a.charAt(i);
     }
    i++;
    setTimeout(function(){ typeWriter(a,b) }, b);
  }
}
var i = 0;
setTimeout(function() { i = 0; typeWriter('i want to die,M',80); }, 1000);
setTimeout(function() { i = 0; typeWriter(' i don\'t want to die.M',80); }, 2500);
setTimeout(function() { i = 0; typeWriter(' i have to live forever',80); }, 4400);
setTimeout(function() { i = 0; typeWriter('...',800); }, 6500);
setTimeout(function() { i = 0; typeWriter(' right?',100); }, 9200);
setTimeout(function(){$("p").fadeIn(4000); } , 11000);
