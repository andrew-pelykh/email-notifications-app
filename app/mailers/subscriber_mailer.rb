class SubscriberMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome dear friend')
  end

  def send_item(item, user)
    @user = user
    @item  = item
     mail(to: @user.email, subject: 'Example notification')
  end

end
