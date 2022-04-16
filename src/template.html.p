<!DOCTYPE html>
<html lang="en">
<head>
  <title>Mag Life</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" href="/static/styles/pico.min.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="/static/styles/main.css" type="text/css" media="screen" />
</head>
<body>
  <main class="container">
    <header class="container">
      <div class="site-logo"><a href="/">MAG LIFE</a></div>
    </header>

    ◊;; Article
    ◊when/splice[
      (equal? (select-from-metas 'layout metas) "article")
    ]{
      <div class="card article">
        <div class="article-header">
          <h1>◊(select-from-metas 'title metas)</h1>
          <p class="subtitle">◊(select-from-metas 'subtitle metas)</p>
          <div class="article-metadata">
            <span class="author">◊(select-from-metas 'author metas)</span>
            <span class="publish-date">◊(select-from-metas 'publish-date metas)</span>
          </div>
        </div>
        ◊(->html doc
                 #:tag 'div
                 #:attrs
                 '((class "article-body")
                   (id "rendered-content-root")))
      </div>
    }

    ◊;; Index, or default
    ◊when/splice[
      (or
        (equal? (select-from-metas 'layout metas) "index")
        (not (select-from-metas 'layout metas)))
    ]{
      <nav class="menu-bar">
        <a href="/about.html">about</a> |
        <a href="/contribute.html">contribute</a> |
        <a href="/topics.html">topics</a> |
        <a href="/newsletter.html">newsletter</a> |
        <a href="/contact.html">contact</a>
      </nav>
      ◊(->html doc
               #:tag 'div
               #:attrs
               '((id "rendered-content-root")))
    }
  </main>
</body>
</html>
