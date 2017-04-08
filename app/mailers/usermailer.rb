class Usermailer < ApplicationMailer
  
  def welcome_email(user)
    @user = user
    @url  = 'http://www.tradeindialeads.com/login'
    mail(to: @user.email, subject: 'Welcome to Coin App')
  end
end
