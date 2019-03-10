class NotificationMailer < ApplicationMailer

  default from: "no-replay@nomsterapp.com"

  def comment_added
    mail(to: "munirmuhsin@gmail.com", 
      subject: "A comment has been added to yoru palce")
  end
end
