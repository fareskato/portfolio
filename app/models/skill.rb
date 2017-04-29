class Skill < ApplicationRecord
#  invoke the concern
include Placeholder

#####  validations
  validates_presence_of :title, :percent_utilized

 ##### Create default value using rails callbacks
  after_initialize :set_defaults
  # use Placeholder concern
  def set_defaults
  	self.main_image ||= Placeholder.image_generator(height:250, width:250)
  end
  

end
