class UsersController < ApplicationController
  def new
  	@user = User.new
  	print @user
  end

	def create
		@user = User.create(user_params)
		print "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n"
		print user_params
		if @user.save!
			puts @user.errors.messages
			print "@user.save!\n"
			print @user
			print "\nuser.email:"
			print @user.email
			print "\nuser.name:"
			print @user.name
			print "\nuser.password_digest:"
			print @user.password_digest
			print "\n"
			redirect_to @user
		else
			render 'new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end
end
