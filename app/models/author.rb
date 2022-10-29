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
