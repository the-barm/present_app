class PicturesController < ApplicationController
  before_action :logged_in_user, only: [:new, :index]

  def new
  end
  
  def index
    @pictures = Picture.all
  end
end
