require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validation' do
    it "create new name" do
      @category = Category.create(name: "food")
      @product = Product.create(name: "pizza", price: 1500, quantity: 1, category: @category)
    expect(@product).to be_valid
   end
   it "create error message for empty name" do
    @category = Category.create(name: "food")
      @product = Product.create(name: nil, price: 1500, quantity: 1, category: @category)
      expect(@product.errors.messages[:name]).to eq ["can't be blank"]
   end
   it "create error message for empty price" do
    @category = Category.create(name: "food")
      @product = Product.create(name: "pizza", price: nil, quantity: 1, category: @category)
      expect(@product.errors.messages[:price]).to eq ["can't be blank"]
   end
 end
end