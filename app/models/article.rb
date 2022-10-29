class Article
  def self.all
    @@all
  end

  attr_accessor :title, :author, :magazine, :category

  @@all = []

  def initialize(title, author, magazine, category)
    @title = title
    @author = author
    @magazine = magazine
    @category = category
    @@all << self
  end

end

# Path: app/models/magazine.rb
# Compare this snippet from app/models/magazine.rb:
# class Magazine
#   attr_accessor :name, :category
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name, category)
#     @name = name
#     @category = category
#
#   end
#
#
# end
#
# Compare this snippet from app/models/author.rb:
# class Author
#   attr_accessor :name
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name)
#     @name = name
#   end
#
# end
#
#
class Magazine
  def self.all
    @@all
  end

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end
end

# Path: app/models/author.rb
# Compare this snippet from app/models/magazine.rb:
# class Magazine
#   attr_accessor :name, :category
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name, category)
#     @name = name
#     @category = category
#
#   end
#
#
# end
#
# Compare this snippet from app/models/author.rb:
# class Author
#   attr_accessor :name
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name)
#     @name = name
#   end
#
# end
#
#
class Author
  def self.all
    @@all
  end

  attr_accessor :name

  @@all = []
end

# Path: app/models/magazine.rb
# Compare this snippet from app/models/magazine.rb:
# class Magazine
#   attr_accessor :name, :category
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name, category)
#     @name = name
#     @category = category
#
#   end
#
#
# end
#
# Compare this snippet from app/models/author.rb:
# class Author
#   attr_accessor :name
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name)
#     @name = name
#   end
#
# end
#
#
class Magazine
  def self.all
    @@all
  end

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end
end

# Path: app/models/author.rb
# Compare this snippet from app/models/magazine.rb:
# class Magazine
#   attr_accessor :name, :category
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name, category)
#     @name = name
#     @category = category
#
#   end
#
#
# end
#
# Compare this snippet from app/models/author.rb:
# class Author
#   attr_accessor :name
#
#   def articles
#     Article.all
#   end
#
#   def initialize(name)
#     @name = name
#   end
#
# end
#
#
class Author
  def self.all
    @@all
  end
end
