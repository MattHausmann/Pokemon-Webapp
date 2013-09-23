class ApplicationController < ActionController::Base
	include SessionsHelper
	protect_from_forgery
	before_filter :set_user

	private
	def set_user
		@current_user = User.find_by(remember_token: User.encrypt(cookies[:remember_token]))
	end
end
