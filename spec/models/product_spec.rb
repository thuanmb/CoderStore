require 'rails_helper'

RSpec.describe Product, type: :model do

    before(:each) do
      prod2 = Product.create!(name: 'prod2')
      prod1 = Product.create!(name: 'prod1')
      prod3 = Product.create!(name: 'prod3')

      @products = [prod1, prod2, prod3]
    end

    it "sort alphabetical" do

        # invoke sort method.... and return result
        @actual_products = Product.sort('alphabetical')
        # compare expected and actual values
        expect(@actual_products).to eq(@products)
    end
end

