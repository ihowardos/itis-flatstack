class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :ordered_products
  has_many :orders, through: :ordered_products

  validates :title, :text, :amount, :price, presence: true
  validates :text, length: {maximum: 500}
end
