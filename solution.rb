# Please copy/paste all three classes into this file to submit your solution!
# Article class here
class Article
    @@all = []
  
    attr_accessor :title, :magazine
  
    def initialize(title, magazine, author)
      @title = title
      @magazine = magazine
      @author = author
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def author
      @author
    end
  
    def magazine
      @magazine
    end
  
    def title
      @title
    end
  
    def author_name
      self.author.name
    end
  
    def magazine_name
      self.magazine.name
    end
  end
# Author class here
class Author
    attr_reader :name
    def initialize(name)
      @name = name
    end
  
    def articles
      Article.all.select { |article| article.author == self }
    end
  
    def magazines
      articles.collect { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(title, magazine, self)
    end
  
    def topic_areas
      magazines.collect { |magazine| magazine.category }.uniq
    end
  end

#   Magazine class here
class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  
    def authors
      articles.collect { |article| article.author }.uniq
    end
  
    def article_titles
      articles.collect { |article| article.title }
    end
  
    def author_names
      authors.collect { |author| author.name }
    end
  
    def contributor_names
      Article.all.filter { |article| article.magazine == self }.map { |article| article.author.name }.uniq
    end
  
    def self.find_by_name(name)
      self.all.find { |magazine| magazine.name == name }
    end
  
    def self.find_by_category(category)
      self.all.select { |magazine| magazine.category == category }
    end
  
    def self.most_popular
      self.all.max_by { |magazine| magazine.contributor_names.count }
    end
  
    def contributor_count
      contributor_names.count
    end
  
    def contributing_authors
      popular_authors = Article.all.filter { |article| article.magazine.name == @name }.map {
        |article|
        article.author.name
      }.tally.each { |key, value| value > 2 }
      popular_authors
    end
  end
  
  