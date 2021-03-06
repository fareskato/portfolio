class Blog < ApplicationRecord

# Create enum to toggle post status
  enum status: { draft: 0, published: 1 }

# Friendly id gem implemintation
  extend FriendlyId
  friendly_id :title, use: :slugged

# Validations
  validates_presence_of :title, :body

  # Relation ships
  belongs_to :topic

end
