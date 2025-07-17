mod Markdown {

    struct Markdown[r] {regex : String, replacement : String}

    def mkMarkdown(regex: String, replacement: String, r: Region[r]): Markdown[r] \ r =
        new Markdown @ r {regex = regex, replacement = replacement}

    def applyPattern(text: String, p: Markdown[r]): String =
            String.replaceMatches(
                { regex = p->regex }, 
                { to    = p->replacement },
                text
            )

    pub def md(x: String): String =
        region r {
            let italics = mkMarkdown("\\*(.*?)\\*", "<i>$1</i>", r);
            let bold = mkMarkdown("\\*\\*(.*?)\\*\\*", "<b>$1</b>", r);
            let link = mkMarkdown("\\((.*?)\\)\\[(.*?)]", "<a href=\"$1\">$2</a>", r);
            let nlBr = mkMarkdown("\n","<br>",r);
            let patterns = bold :: italics :: link :: nlBr :: Nil;
            List.foldLeft((acc, pat) -> applyPattern(acc, pat), x, patterns)
        }
}