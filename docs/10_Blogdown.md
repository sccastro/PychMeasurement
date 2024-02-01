---
output:
  pdf_document: default
  html_document: default
---

# Blogdown


You can install blogdown from CRAN. If you want to test the development version, you may also install it from GitHub:

***Challenge 1***
install blogdown


```r
# from CRAN
install.packages("blogdown")

# or the development version from GitHub
devtools::install_github("rstudio/blogdown")
```

The easiest way to get started with a blogdown-based website is to create a website project from RStudio: File -> New Project. If you do not use RStudio, you may call the function blogdown::new_site().


The first time when you create a new website, blogdown will do a series of things behind the scenes: it downloads Hugo (the default static site generator), creates a website skeleton, installs a theme, adds some example posts, builds the site, and serves it so that you can see the website in your browser (or RStudio Viewer if you are in RStudio). It will not go through all these steps again the next time when you work on this website. All you need in the future is blogdown::serve_site(), or equivalently, the RStudio addin “Serve Site.”

Every time you open a website project, you only need to serve the site once, and blogdown will keep running in the background, listening to changes in your source files, and rebuilding the website automatically. All you have to do is create new posts, or edit existing posts, and save them. You will see the automatic live preview as you save the changes (unless you have errors in a source document).

There are a few RStudio addins to help you author your posts: you can use the “New Post” addin to create a new post, the “Update Metadata” addin to update the YAML metadata of a post, and the “Insert Image” addin to insert an image in a post.

***Challenge 2***
Add a "New Post"

***Challenge 3***
Insert an image


The default site generator in blogdown is Hugo (https://gohugo.io). A basic Hugo website usually contains the following files and directories:

- config.toml
- content/
- static/
- themes/
- public/


The configuration file config.toml can be used to specify options for the Hugo website, e.g.,


```r
baseURL = "/"
languageCode = "en-us"
title = "A Hugo website"
theme = "hugo-lithium-theme"
```

Some options are provided by Hugo itself, such as title and baseURL; you may refer to https://gohugo.io/getting-started/configuration/ for all built-in options. Some options are provided by the Hugo theme, and you need to read the documentation of the specific theme to know the additional options.

All source Markdown or R Markdown files should be placed under the content/ directory. The directory structure under content/ can be arbitrary.

The static/ directory contains static assets such as images and CSS files. Everything under static/ will be copied to the public/ directory when Hugo generates the website. For example, static/images/foo.png will be copied to public/images/foo.png, and if you want to include this image in your post, you may use ![title](/images/foo.png) in Markdown (the leading / typically indicates the root of public/).

You can download multiple themes to the themes directory. To activate a theme, specify its folder name in the theme option in config.toml. You can find a lot of Hugo themes from https://themes.gohugo.io. Remember, the best theme is always the next one, i.e., one that you have not used before. I recommend that you start with a simple theme (such as the default hugo-lithium theme in blogdown, hugo-xmin, or hugo-tanka), and write a substantial number of posts before seriously investing time in choosing or tweaking a theme.

After you serve a site using blogdown, your site will be continuously built to the public/ directory by default. You can upload this folder to any web server to deploy the website. However, if you know GIT, there is an even easier way to publish your website

## Rmarkdown Website

If you feel Hugo is too complex for you, and you only want to build a few Rmd documents into a website, this built-in site generator may be a good choice.

You can render collections of R Markdown documents as a website using the rmarkdown::render_site() function. We will call such websites “R Markdown websites” in this section. The RStudio IDE (version 1.0 or higher) also includes integrated support for developing R Markdown websites.

To start with, let’s walk through a very simple example, a website that includes two pages (Home and About) and a navigation bar to switch between them.

First, we need a configuration file _site.yml:


```r
name: "my-website"
navbar:
  title: "My Website"
  left:
    - text: "Home"
      href: index.html
    - text: "About"
      href: about.html
```

***Challenge 4***
Make a _site.yml file


Then two Rmd files, <code>index.Rmd</code>:


```r
---
title: "My Website"
---

Hello, Website!
```

and <code>about.Rmd</code>:


```r
---
title: "About This Website"
---

More about this website.
```

Note that the minimum requirement for any R Markdown website is that it have an index.Rmd file as well as a _site.yml file. If you execute the rmarkdown::render_site() function from within the directory containing the website, the following will occur:

1. All of the *.Rmd and *.md files in the root website directory will be rendered into HTML. Note, however, that Markdown files beginning with _ are not rendered (this is a convention to designate files that are to be included by top level Rmd documents as child documents).

2. The generated HTML files and any supporting files (e.g., CSS and JavaScript) are copied into an output directory (_site by default).

Typically when creating a website, there are various common elements you want to include on all pages (e.g., output options, CSS styles, header and footer elements, etc.). Here are additions in three files to the example above to make use of common elements:

***Challenge 5***
Add these elements to the site

<code>_site.yml</code>:

```r
name: "my-website"
navbar:
  title: "My Website"
  left:
    - text: "Home"
      href: index.html
    - text: "About"
      href: about.html
output:
  html_document:
    theme: cosmo
    highlight: textmate
    include:
      after_body: footer.html
    css: styles.css
```


<code>footer.html</code>:


```r

<p>Copyright &copy; 2016 Skynet, Inc. All rights reserved.</p>
```

<code>styles.css</code>


```r

blockquote {
  font-style: italic
}
```




