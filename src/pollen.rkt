#lang racket

(require pollen/decode
         pollen/setup
         pollen/file
         txexpr
         pollen/tag
         pollen/template
         pollen/core
         pollen/pagetree
         racket/date)


;; -- Setup
(provide (all-defined-out))
(module setup racket/base
    (provide (all-defined-out))
    (define poly-targets '(html)))


;; -- Environment
(define (env-lookup name)
  (getenv name))

(define (site-title)
  (or (env-lookup "SITE_TITLE") "A Cool Site"))


;; -- Custom Tags
(define (root . elements)
  (txexpr 'root empty
          (decode-elements
           elements
           #:txexpr-elements-proc
           (lambda (elements)
             (decode-paragraphs elements
                                #:linebreak-proc identity))
           #:string-proc (compose1 smart-quotes smart-dashes)
           #:exclude-tags '(style script))))


(define (magazine-segment title . elements)
  `(div [[class "magazine-segment"]]
        (h2 ,title)
        ,@elements))


(define (card . elements)
  `(div [[class "card"]]
        ,@elements))

(define (hyperlink url . text)
  `(a [[href ,url]] ,@text))

(define (article-link-card path)
  `(div [[class "card"]]
        (div [[class "article-link-title"]]
             ,(select-from-metas 'title path))
        (div [[class "article-link-meta"]]
             (div [[class "article-link-meta-left"]]
                  (div ,(select-from-metas 'author path))
                  (div ,(select-from-metas 'publish-date path)))
             (div [[class "article-link-meta-right"]]
                  ,(select-from-metas 'subtitle path)))))
