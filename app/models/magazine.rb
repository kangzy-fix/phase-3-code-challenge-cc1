class Magazine
  attr_accessor :name, :category

  def articles
    Article.all
  end
    
  def initialize(name, category)
    @name = name
    @category = category

  end


end
