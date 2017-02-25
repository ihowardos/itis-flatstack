class Blog < ApplicationRecord
  validates :title, :text, presence: true
  validates :title,  length: { maximum: 30, minimum: 3 }
  validates :text,  length: { maximum: 1500 }
end
