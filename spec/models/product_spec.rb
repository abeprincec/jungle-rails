require "rails_helper"

RSpec.describe Product, type: :model do
  describe "Validations" do
    # validation tests/examples here

    @category = Category.new(name: "category1")

    @category.save

  
    it "name should should be nill " do
      @product2 = Product.new(name: nil, description: Faker::Hipster.paragraph(4),
                              quantity: 23,
                              price: 2_483.75)
      expect(@product2.name).to be_nil
    end
    it "price should should be nill " do
      @product2 = Product.new(name: "AAAA", description: Faker::Hipster.paragraph(4),
                              quantity: 23,
                              price: nil)
      expect(@product2.price).to be_nil
    end
    it "quantity should should be nill " do
      @product2 = Product.new(name: "AAAA", description: Faker::Hipster.paragraph(4),
                              quantity: nil,
                              price: 2_483.75)
      expect(@product2.quantity).to be_nil
    end
    it "category should should be nill " do
      @product2 = Product.new(name: "AAAA", description: Faker::Hipster.paragraph(4),
                              quantity: 23,
                              price: 2_483.75,
                              category_id: nil)
      expect(@product2.category_id).to be_nil
    end
  end
end

# monetize :price_cents, numericality: true
# mount_uploader :image, ProductImageUploader

# belongs_to :category
# has_many :reviews

# validates :name, presence: true
# validates :price, presence: true
# validates :quantity, presence: true
# validates :category, presence: true
