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

◊ui-segment["Articles" #:link '("See all..." "/articles.html")]{
  ◊article-list-card{}
}
