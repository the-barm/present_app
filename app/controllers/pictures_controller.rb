class PicturesController < ApplicationController
  before_action :logged_in_user, only: [:new, :index]

  def new
  end
  
  def index
    @pictures = Picture.all
  end
  
  private 
  
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
