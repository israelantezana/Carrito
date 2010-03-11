require 'spec_helper'

describe "/products/show.html.erb" do
  include ProductsHelper
  before(:each) do
    assigns[:product] = @product = stub_model(Product,
      :name => "value for name",
      :price => 9.99,
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/9\.99/)
    response.should have_text(/value\ for\ description/)
  end
end
