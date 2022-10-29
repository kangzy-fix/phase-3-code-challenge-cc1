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
