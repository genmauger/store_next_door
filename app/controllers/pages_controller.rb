class PagesController < ApplicationController

  def index
  end

  def contact
  end

  def contact_email
    user = current_user
    ContactMailer.send_contact_email(user: user, params: email_params).deliver_now
    render :contact
  end

  private 

  def email_params
    params.require(:contact).permit(:name, :message)
  end

end