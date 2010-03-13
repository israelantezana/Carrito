class Product < ActiveRecord::Base
  has_attached_file :photo, :styles => {:medium => "300x300>", :thumb => "100x100>" }
  
  validates_presence_of :name, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0
end
