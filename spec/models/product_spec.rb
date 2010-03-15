require 'spec_helper'

describe Product do
  before(:each) do
    # File to test uploaded file, the path of all test data should be in the 
    # test_data directory, but we should be careful if we use factories
    file = File.join(Rails.root, 'test_data', 'images','computer.jpg')
    @valid_attributes = {
      :name => "value for name",
      :price => 9.99,
      :description => "value for description",
      # We indicate in the seccond parameter of ActionController::TestUploadedFile the MIME type
      :photo => ActionController::TestUploadedFile.new(file, 'image/jpeg')
    }
  end

  it "should create a new instance given valid attributes" do
    Product.create!(@valid_attributes)
  end

  it 'should upload image file' do
    @product = Product.create!(@valid_attributes)
    File.exists?(@product.photo.path).should == true
  end


end
