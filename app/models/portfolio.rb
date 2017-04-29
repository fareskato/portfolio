class Portfolio < ApplicationRecord
  # Valodation
  validates_presence_of :title, :body, :main_image, :thumb_image
end
