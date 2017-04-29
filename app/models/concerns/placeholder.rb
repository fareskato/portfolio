=begin
	This concern wiil be shared in the models
=end
module Placeholder
  extend ActiveSupport::Concern
  def self.image_generator(height:, width:)
  	"http://placehold.it/#{height}x#{width}"
  end

end