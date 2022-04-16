#lang pollen

◊ui-segment["Current"]{
  ◊article-link-card['articles/lorem-ipsum.html]{}
}

◊ui-segment["Topics" #:link '("See all..." "/topics.html")]{
  ◊topic-grid{
    ◊topic-link["design"]{}
    ◊topic-link["tech"]{}
    ◊topic-link["vibes"]{}
    ◊topic-link["work"]{}
  }
}

◊ui-segment["Articles"]{
  ◊card{
    ◊div[#:class "article-list"]{
      ◊div[#:class "article-list-item"]{
        ◊span[#:class "article-list-item-title"]{Foo}
        ◊span[#:class "article-list-item-author"]{Bar}
        ◊span[#:class "article-list-item-date"]{Baz}}
      ◊div[#:class "article-list-item"]{
        ◊span[#:class "article-list-item-title"]{Foo}
        ◊span[#:class "article-list-item-author"]{Bar}
        ◊span[#:class "article-list-item-date"]{Baz}}
    }
  }
}
