class Topic < ApplicationRecord
# Validations
	validates_presence_of :title
 
 # Relation ships
	has_many :blogs

end
