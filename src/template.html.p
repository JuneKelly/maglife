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
      <div class="site-logo">Mag Life</div>
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
        ◊(->html doc #:tag 'div #:attrs '((class "article-body")))
      </div>
    }

    ◊;; Index, or default
    ◊when/splice[
      (or
        (equal? (select-from-metas 'layout metas) "index")
        (not (select-from-metas 'layout metas)))
    ]{
      ◊(->html doc #:tag 'div #:attrs '((id "content-root")))
    }
  </main>
</body>
</html>
