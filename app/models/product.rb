class Product < ActiveRecord::Base
  has_attached_file :photo, :styles => {:medium => "300x300>", :thumb => "100x100>" }
  
  validates_presence_of :name, :price
end
