class ApplicationController < ActionController::Base
	include SessionsHelper
	protect_from_forgery
	before_filter :set_user

	private
	def set_user
		@user = User.new
	end
end
