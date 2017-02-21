class Product < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, :text, :amount, :price, presence: true
  validates :text, length: {maximum: 500}
end
