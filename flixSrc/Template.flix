mod Template { 

    use HtmlHandle.{body,a,h1,p,div,br2,br,divClass,divId,h1Id};

    pub def blogTemplate(blog: Blog.Blog[r]): String =
      def header(title: String): String =
        "<!DOCTYPE HTML><HEAD><TITLE>" ++ title ++ " - " ++ " *observe.observer</TITLE><META PROPERTY=\"og:title\" CONTENT=\"" 
          ++ title ++  
         "*observe.observer\"><META PROPERTY=\"og:type\" CONTENT=\"website\"><META PROPERTY=\"og:url\" CONTENT=\"HTTPS://OBSERVE.OBSERVER/index.html\"><META PROPERTY=\"og:image\" CONTENT=\"https://observe.observer/f/preview.jpg\"><META PROPERTY=\"og:description\" CONTENT=INQUIRE WITHIN><META NAME=\"theme-color\" CONTENT=\"#FFFFFF\"><META NAME=\"twitter:card\" CONTENT=\"summary_large_image\"><META NAME=\"twitter:image\" CONTENT=\"https://observe.observer/f/preview.jpg\"><META NAME=\"viewport\" CONTENT=\"width=device-width, initial-scale=1.0\"><LINK REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"test.css\"><META http-equiv=\"content-type\" CONTENT=\"text/html; charset=UTF-8\"></HEAD>";
      let footer = "<CENTER><IMG SRC=\"f/logo.png\"></CENTER><CENTER><A  HREF=\"https://github.com/ObserveObserver/observeobserver.github.io/tree/master/flixSrc\">Written in Flix</A></CENTER></BODY>";

      header(Blog.getTitle(blog)) ++
      body(
        divClass("top",h1("*observe.observer")) ++
        divClass("links",
            divClass("storieslink",a("https://observe.observer", "stories")) ++ 
            "\n" ++
            divClass("bloglink",a("BLOG.HTML","blog")) ++ 
            "\n" ++
            divClass("readmelink",a("README.HTML","README.NFO")) ++ 
            "\n" ++
            divClass("keyboardlink",a("KEYBOARDS.HTML","keyboards"))
        ) ++
        divId("divider","=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=") ++
        divClass("story",
            h1Id("storytitle", Blog.getTitle(blog)) ++
            p(Blog.getContent(blog))
        ) ++
        footer
    )

    
    pub def indexTemplate(blogList: String): String =
      let header =
        "<!DOCTYPE HTML><HEAD><TITLE>" ++ "*observe.observer</TITLE><META PROPERTY=\"og:title\" CONTENT=\"" 
          ++ "*observe.observer" ++  
         "*observe.observer\"><META PROPERTY=\"og:type\" CONTENT=\"website\"><META PROPERTY=\"og:url\" CONTENT=\"HTTPS://OBSERVE.OBSERVER/index.html\"><META PROPERTY=\"og:image\" CONTENT=\"https://observe.observer/f/preview.jpg\"><META PROPERTY=\"og:description\" CONTENT=INQUIRE WITHIN><META NAME=\"theme-color\" CONTENT=\"#FFFFFF\"><META NAME=\"twitter:card\" CONTENT=\"summary_large_image\"><META NAME=\"twitter:image\" CONTENT=\"https://observe.observer/f/preview.jpg\"><META NAME=\"viewport\" CONTENT=\"width=device-width, initial-scale=1.0\"><LINK REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"test.css\"><META http-equiv=\"content-type\" CONTENT=\"text/html; charset=UTF-8\"></HEAD>";
      
       let footer = "<CENTER><IMG SRC=\"f/logo.png\"></CENTER><CENTER><A  HREF=\"https://github.com/ObserveObserver/observeobserver.github.io/tree/master/flixSrc\">Written in Flix</A></CENTER></BODY>";

      header ++
      body(
        divClass("top",h1("*observe.observer")) ++
        divClass("links",
            divClass("storieslink",a("https://observe.observer", "stories")) ++ 
            "\n" ++
            divClass("bloglink",a("BLOG.HTML","blog")) ++ 
            "\n" ++
            divClass("readmelink",a("README.HTML","README.NFO")) ++ 
            "\n" ++
            divClass("keyboardlink",a("KEYBOARDS.HTML","keyboards"))
        ) ++
        divId("divider","=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=") ++
        blogList ++
        footer
    )

    pub def indexBody(blog: Blog.Blog[r]): String =
      let upperCaseBlog = String.toUpperCase(Blog.getTitle(blog));
      divClass("listing",
        divClass("title",
          a(upperCaseBlog ++ ".HTML", 
            h1(Blog.getTitle(blog)
            )
          )
        ) ++
        p( 
          List.foldLeft((x,y) -> x ++ y, "", (
            List.take(50, (List.map(x -> x ++ " ",
              String.words(Blog.getContent(blog)
              )
            )
          ))))
         ++ " -> " ++
        a(upperCaseBlog ++ ".HTML", "Continue"))
      )

    
}