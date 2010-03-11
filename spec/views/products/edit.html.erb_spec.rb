require 'spec_helper'

describe "/products/edit.html.erb" do
  include ProductsHelper

  before(:each) do
    assigns[:product] = @product = stub_model(Product,
      :new_record? => false,
      :name => "value for name",
      :price => 9.99,
      :description => "value for description"
    )
  end

  it "renders the edit product form" do
    render

    response.should have_tag("form[action=#{product_path(@product)}][method=post]") do
      with_tag('input#product_name[name=?]', "product[name]")
      with_tag('input#product_price[name=?]', "product[price]")
      with_tag('textarea#product_description[name=?]', "product[description]")
    end
  end
end
