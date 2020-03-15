require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition , :brand
  #you removed attr_reader for :brand and added it to attr_accessor since we want to be able to change the :brand. attr_reader wouldn't let us do that unless we had an attr_writer with it.
   BRANDS = []
  def initialize(brand)
    @brand = brand
    #you want to make sure that every brand is unique (dunno why couldn't use .uniq for this tho)=>
   BRANDS << brand unless BRANDS.any?{|br| br == brand}
    #you are keeping this part (BRANDS << brand) in this method unlike the book example because we want to access all the brands instead of a specific one. 
  end
  

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
   
end