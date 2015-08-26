# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview


	def sign_up_email
		user = User.last
		UserMailer.sign_up_email(user)
	end

end
