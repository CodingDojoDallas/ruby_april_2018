class UserMailer < ApplicationMailer
	default from: 'notifications@eventhub.com'
	
	def welcome_email user
		@user = user[:user]
		@url = 'http://eventhub.com/login'
		mail(to: @user.email, subject: 'Welcome to Event Hub')
	end



end