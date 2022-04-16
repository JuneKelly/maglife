#lang pollen

◊ui-segment["Current"]{
  ◊article-link-card['a/lorem-ipsum.html]{}
}

◊ui-segment["Topics" #:link '("See all..." "/topics.html")]{
  ◊topic-grid{
    ◊topic-link["design"]{}
    ◊topic-link["tech"]{}
    ◊topic-link["vibes"]{}
    ◊topic-link["work"]{}
  }
}
