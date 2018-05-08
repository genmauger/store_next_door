class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:index]

  private

  def user_not_authorized
    flash[:warning] = "You are not authorized to perform this action"
    redirect_back fallback_location: root_path
  end

end
