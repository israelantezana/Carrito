require 'spec_helper'

describe "/products/new.html.erb" do
  include ProductsHelper

  before(:each) do
    assigns[:product] = stub_model(Product,
      :new_record? => true,
      :name => "value for name",
      :price => 9.99,
      :description => "value for description"
    )
  end

  it "renders new product form" do
    render

    response.should have_tag("form[action=?][method=post]", products_path) do
      with_tag("input#product_name[name=?]", "product[name]")
      with_tag("input#product_price[name=?]", "product[price]")
      with_tag("textarea#product_description[name=?]", "product[description]")
    end
  end
end
