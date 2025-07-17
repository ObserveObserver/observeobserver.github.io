mod HtmlHandle {

  pub def foo(): String =
    "Hello from HtmlHandle"

  pub def p(x: String): String =
    "<p>" ++ x ++ "</p>"

  pub def h1(x: String): String =
    "<h1>" ++ x ++ "</h1>"

  pub def div(x: String): String =
    "<div>" ++ x ++ "</div>"

  pub def divClass(class: String, text: String): String =
    "<div class=\"" ++ class ++"\">" ++ text ++ "</div>"
    
  pub def h1Id(id: String, text: String): String =
    "<h1 id=\"" ++ id ++ "\">" ++ text ++ "</h1>"

  pub def divId(id: String, text: String): String =
    "<div id=\"" ++ id ++ "\">" ++ text ++ "</div>"

  pub def a(link: String, text: String): String =
    "<a href=\"" ++ link ++ "\">" ++ text ++ "</a>"
  
  pub def center(x: String): String =
    "<center>" ++ x ++ "</center>"

  pub def body(text: String): String = 
    "<body>" ++ text ++ "</body>"
    
  pub def htmlTest(): String =
    body(div(a("t.html","hi!")))

  pub def i(x: String): String =
    "<i>" ++ x ++ "</i>"

  pub def br(): String =
    "<br>"
  
  pub def br2(): String =
    "<br><br>"
}