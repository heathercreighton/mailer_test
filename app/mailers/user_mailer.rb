class UserMailer < ApplicationMailer


#must remember to reduce the security options on the account the email is being sent from or
#use a mail server like Mail Gun that is built for sending this kind of email.
default from: 'coder.creighton@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end


end
