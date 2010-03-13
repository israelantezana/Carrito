Given /^there are no products$/ do
  Product.destroy_all
end

Given /^I have a product$/ do
  @product = Factory(:product)
end

Given /^the following products:$/ do |table|
  table.hashes.each do |each|
    Factory(:product, each)
  end
end

When /^I submit the new product form$/ do
  submit_form "new_product"
end

When /^I submit the edit product form$/ do
  submit_form "edit_product_#{@product.id}"
end

Then /^the product should be (?:created|updated) with:$/ do |table|
  attrs = table.rows_hash
  product = Product.first
  
  product.name.should                   == attrs["Name"]
  product.price.should                  == attrs["Price"].to_f
  product.description.should            == attrs["Description"]
end



