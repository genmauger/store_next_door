class ContactMailer < ApplicationMailer

  def send_contact_email(params)
     @user = params[:user]
     email = ENV.fetch('SYSTEM_EMAIL')
     @name =  params[:params][:name]
     @message = params[:params][:message]
     date = Time.now.strftime("%B, %d, %Y, %A")
     subject = "New user message #{date}"
    mail(to: ENV.fetch('MAILGUN_EMAIL'))
  end

end