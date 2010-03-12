Given /^there are no products$/ do
  Product.destroy_all
end

When /^I submit the new product form$/ do
  submit_form "new_product"
end


Then /^the product should be created with:$/ do |table|
  attrs = table.rows_hash
  product = Product.first
  
  product.name.should                   == attrs["Name"]
  product.price.should                  == attrs["Price"].to_f
  product.description.should            == attrs["Description"]
end


