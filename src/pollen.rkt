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
           ;; Note: this can end up inserting paragraphs where
           ;; they may not be expected.
           ;; #:txexpr-elements-proc
           ;; (lambda (elements)
           ;;   (decode-paragraphs elements
           ;;                      #:linebreak-proc identity))
           #:string-proc (compose1 smart-quotes smart-dashes)
           #:exclude-tags '(style script))))


(define (ui-segment title #:link [link #f] . elements)
  `(div [[class "ui-segment"]]
        (div [[class "ui-segment-heading"]]
             (h2 , title)
             ,@(if link
                   `(" " (a [[href ,(second link)]] ,(first link)))
                   `()))
        ,@elements))


(define (card . elements)
  `(div [[class "card"]]
        ,@elements))


(define (hyperlink url . text)
  `(a [[href ,url]] ,@text))


(define (article-link-card path)
  `(div [[class "card"]]
        (div [[class "article-link-title"]]
             (a [[href ,(string-append "/" (symbol->string path))]]
                ,(select-from-metas 'title path)))
        (div [[class "article-link-meta"]]
             (div [[class "article-link-meta-left"]]
                  (div ,(select-from-metas 'author path))
                  (div ,(select-from-metas 'publish-date path)))
             (div [[class "article-link-meta-right"]]
                  ,(select-from-metas 'subtitle path)))))

(define (topic-grid . elements)
  `(div [[class "topic-grid"]]
        ,@elements))


(define (topic-link topic)
  `(div [[class "topic-link"]]
        (a [[href ,(format "/topics/~a.html" topic)]]
           (img [[src ,(format "/static/images/topics/~a.png" topic)]])
           (div [[class "topic-link-label"]]
                ,topic))))
