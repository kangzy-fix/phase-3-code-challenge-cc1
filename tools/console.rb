require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###
fizzbuzz = Magazine.new("FizzBuzz", "Technology")
buzz = Magazine.new("Buzz", "Technology")
buzz2 = Magazine.new("Buzz", "Technology")
buzz3 = Magazine.new("Buzz", "Technology")
buzz4 = Magazine.new("Buzz", "Technology")
buzz5 = Magazine.new("Buzz", "Technology")
buzz6 = Magazine.new("Buzz", "Technology")
people = Magazine.new("People", "Entertainment")
people2 = Magazine.new("People", "Entertainment")
people3 = Magazine.new("People", "Entertainment")
nation= Magazine.new("Nation", "Politics")
nation2= Magazine.new("Nation", "Politics")
nation3= Magazine.new("Nation", "Politics")
art1=Article.new("Art1", people, "Author1")
art2=Article.new("Art2", people, "Author2")
art3=Article.new("Art3", people, "Author3")
fizzbuzz.add_article("Author1", "Art1")
fizzbuzz.add_article("Author2", "Art2")
fizzbuzz.add_article("Author3", "Art3")
buzz.add_article("Author1", "Art1")
buzz.add_article("Author2", "Art2")
people_daily = Magazine.new("People Daily", "Entertainment")
people_daily.add_article("Author1", "Art1")
people_daily.add_article("Author2", "sport")


### DO NOT REMOVE THIS
binding.pry

0
