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

+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\card}[5]{
  @@card
    ~~~
    <img src="/assets/members/!#2" alt="memberpicture" style="width:100%"/>
    ~~~
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
