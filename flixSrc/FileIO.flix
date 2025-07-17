mod FileIO {

    def write(content: String, blogType: String, fileName: String): Result[IoError, Unit] \ IO =
        run {
            FileWrite.write({ str = content }, "output/" ++ blogType ++ fileName)
        } with FileWrite.runWithIO

    def readMd(fileName: String): Result[IoError, String] \ FileReadWithResult =
        match FileReadWithResult.read(fileName) {
            case Ok(content) => Ok(content)
            case Err(err)    => Err(err)
        }

    def writeSite(blog: Blog.Blog[r]): Result[IoError, Unit] \ IO =
        write(
           Template.blogTemplate(blog),
           Blog.getType(blog) ++ "/",
           String.toUpperCase(Blog.getTitle(blog)) ++ ".HTML"
        )

    pub def writeSiteFiles(blog: List[Blog.Blog[r]]): List[Result[IoError, Unit]] \ IO =
        blog |> List.map(x -> writeSite(x)) 

    pub def buildIndex(blogs: List[Blog.Blog[r]]): Result[IoError, Unit] \ IO =
        let listing = 
            blogs |> List.map(x -> Template.indexBody(x))
                  |> List.foldLeft((blog1,blog2) -> blog1 ++ blog2, "")
                  |> Template.indexTemplate;
        write(listing, "index.html", "")
    //  write(listing,indexUri); for when i upload blogs...

    // will change this once i actually upload blogs and use blog template
    pub def buildBlogIndex(blogs: List[Blog.Blog[r]]): Result[IoError, Unit] \ IO =
        let listing = 
            blogs |> List.map(x -> Template.indexBody(x))
                  |> List.foldLeft((blog1,blog2) -> blog1 ++ blog2, "")
                  |> Template.indexTemplate;
        write(listing, "BLOG.HTML", "")

    pub def readDirs(blogType: String, r: Region[r]): List[Blog.Blog[r]] \ IO + r =
        let result = run {
            let entries = FileRead.list("src/" ++ blogType);
            let titles = entries |> List.map(String.replace( {src = ".md"}, {dst = ""} ));
            let mdContent = List.map(x -> readMd("src/" ++ blogType ++ "/" ++ x), entries);
            let zipBlogs = List.zip(titles, mdContent); 
            
            println("found entries" :: entries);
            List.map(x -> match x {
                case (title, Ok(content)) => 
                    { title = title, content = Markdown.md(content), blogType = blogType }
                case (_, Err(_)) => 
                    { title = "", content = "", blogType = "" }
            }, zipBlogs)

        } with FileReadWithResult.runWithIO
          with FileRead.runWithIO;

        match result {
            case Ok(xs) => List.map(record -> Blog.mkBlog(record#title, record#content, blogType, r), xs)
            case Err(err) =>
                println("unable to list dir: ${err}");
                Nil
        }
}