class Comment < ApplicationRecord
  belongs_to :product

  validates :text, presence: true, length: { maximum: 500}

  def created_at_h
    created_at.strftime('%B %d, %Y at %I:%M%p')
  end

  def author?(current_user)
      true if author == current_user
  end

end
