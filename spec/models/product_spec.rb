require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
    before :each do
      @category = Category.new({name:"Apparel"})
    @product = Product.new(
      name: 'Item',
      price_cents: 1,
      quantity: 1,
      category: @category,
    )
  end
 describe "Validations" do
  it "is valid with valid attributes" do 
    expect(@product).to be_valid
  end
   it "is invalid without name attribute" do 
    @product.name = nil
    expect(@product).to be_invalid
    expect(@product.errors.full_messages).to include("Name can't be blank")
  end
 it "is invalid without name attribute" do 
    @product.price_cents = nil
    expect(@product).to be_invalid
    expect(@product.errors.full_messages).to include("Price can't be blank")
  end
  it "is invalid without quanitity attribute" do 
    @product.quantity= nil
    expect(@product).to be_invalid
    expect(@product.errors.full_messages).to include("Quantity can't be blank")
  end
    it "is invalid without category attribute" do 
    @product.category= nil
    expect(@product).to be_invalid
    expect(@product.errors.full_messages).to include("Category can't be blank")


  end
 end
end
