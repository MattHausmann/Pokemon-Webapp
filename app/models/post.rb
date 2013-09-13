class Post < ActiveRecord::Base
	def a_visibility 
		"true" 
	end
	def b_visibility 
		nil 
	end
	has_many :comments
	validates :title, presence:true,
		length: {minimum: 5}
end