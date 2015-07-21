class PicturesController < ApplicationController
  def new
  end
  
  def index
    @pictures = Picture.all
  end
end
