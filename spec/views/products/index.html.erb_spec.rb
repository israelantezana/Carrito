require 'spec_helper'

describe "/products/index.html.erb" do
  include ProductsHelper

  before(:each) do
    assigns[:products] = [
      stub_model(Product,
        :name => "value for name",
        :price => 9.99,
        :description => "value for description"
      ),
      stub_model(Product,
        :name => "value for name",
        :price => 9.99,
        :description => "value for description"
      )
    ]
  end

  it "renders a list of products" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
