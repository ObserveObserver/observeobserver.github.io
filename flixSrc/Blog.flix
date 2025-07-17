mod Blog {

  pub struct Blog[r] {
    title : String,
    content : String,
    blogType: String
}

    pub def mkBlog(t: String, c: String, b: String, r: Region[r]): Blog[r] \ r =
      new Blog @ r { title = t, content = c, blogType = b }

    pub def getTitle(blog: Blog[r]): String = 
      blog->title
    
    pub def getContent(blog: Blog[r]): String =
      blog->content

    pub def getType(blog: Blog[r]): String =
      blog->blogType
}
