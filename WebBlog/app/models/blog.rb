class Blog < ApplicationRecord
  validates :title, :text, presence: true, length: { maximum: 15, minimum: 3}
end
