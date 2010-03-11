class Product < ActiveRecord::Base
  has_attached_file :photo, :styles => { :big => "600x600>", :medium => "300x300>", :thumb => "100x100>" }
end
