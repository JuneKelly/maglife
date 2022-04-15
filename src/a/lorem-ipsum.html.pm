#lang pollen
◊(define-meta title "Lorem Ipsum")
◊(define-meta doc-publish-date "2022-01-01")
◊(define-meta author           "Jane Doe")
◊(define-meta summary          "Some thoughts on noise.")

◊card{
  ◊div[#:class "article"]{
    ◊div[#:class "article-header"]{
        ◊h1{Lorem Ipsum}
        ◊p[#:class "subtitle"]{Some thoughts on noise.}
        ◊div[#:class "article-metadata"]{
        ◊span[#:class "author"]{Jane Doe}
        ◊span[#:class "date"]{2022-01-01}
        }
    }
    ◊div[#:class "article-body"]{
      Hello.
    }
  }
}
