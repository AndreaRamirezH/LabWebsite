<!--
Add here global page variables to use throughout your website.
-->
+++
author = "O'Leary 2022"
mintoclevel = 2

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = false
website_title = "Lab Template"
website_descr = "Example website using Franklin"
website_url   = "https://tlienart.github.io/FranklinTemplates.jl/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\card}[5]{
  @@card
    ![#1](/assets/img/team/!#2.jpg)
    @@container
      ~~~
      <h2>#1</h2>
      ~~~
      @@title #3 @@
      @@vitae #4 @@
      @@email #5 @@
    @@
  @@
}
