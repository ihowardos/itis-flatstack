class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :title, :text, presence: true
  validates :title,  length: { maximum: 30, minimum: 3 }
  validates :text,  length: { maximum: 1500 }


   def reference
      SecureRandom.hex(1).upcase
   end

   private

   def slug_candidates
      [
        [:title, :reference]
      ]
   end
end
