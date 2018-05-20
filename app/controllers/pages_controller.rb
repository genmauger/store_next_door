class PagesController < ApplicationController

  # layout false, only: [:index]

  def index
    @current_user = current_user
    @current_facility = current_user.storage_facility
    
  end

  #On index
  #Find current user
  #Display all property ids for current user

end