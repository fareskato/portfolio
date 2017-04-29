class Portfolio < ApplicationRecord
  ##### Valodation
  validates_presence_of :title, :body, :main_image, :thumb_image

  ##### Create scopes
  # method 01 :: using class method
  def self.angular 
  	where(subtitle: "Angular")
  end	

  # method 02 :: using scope keyword with lambdas
  scope :ruby_on_rails_items, -> {where(subtitle: "Ruby on rails")} 
end
