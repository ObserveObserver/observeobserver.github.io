
pub def main(): Result[IoError, Unit] \ IO =
    region rb {
        let stories = FileIO.readDirs("stories", rb);
        let blogs = FileIO.readDirs("blogs", rb);
        let index = 
            List.sortBy(x -> Blog.getTitle(x),stories) 
            |> List.reverse;

        stories |> FileIO.writeSiteFiles;
        blogs |> FileIO.writeSiteFiles;
        discard blogs |> FileIO.buildBlogIndex; // why is only this marked @MustUse?
        index |> FileIO.buildIndex
    }