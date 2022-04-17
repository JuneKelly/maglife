#lang pollen

◊ui-segment["CURRENT"]{
  ◊article-link-card['articles/lorem-ipsum.html]{}
}

◊ui-segment["TOPICS" #:link '("See all..." "/topics.html")]{
  ◊topic-grid{
    ◊topic-link["design"]{}
    ◊topic-link["tech"]{}
    ◊topic-link["vibes"]{}
    ◊topic-link["work"]{}
  }
}

◊ui-segment["ARTICLES" #:link '("See all..." "/articles.html")]{
  ◊article-list-card{}
}
