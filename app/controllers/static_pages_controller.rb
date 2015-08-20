class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @uploads = Upload.where("private = 't'")
    else
      @uploads = Upload.where("private = 'f'")
    end
    if @uploads.first.nil?
      @uploads = nil
    end
  end

  def about
  end
  
  def letters
  end
  
  def arr_sort
  end
  
  def sort
    @colors = [ "#000000", "#696969", "#808080", "#A9A9A9", "#C0C0C0", 
                "#D3D3D3", "#DCDCDC", "#F5F5F5", "#FFFFFF" ]
    @colors.shuffle!
    respond_to do |format|
      format.js
    end
  end
  
  def update
    if logged_in? 
      @upload = Upload.where("private = 't'").order("RANDOM()").first
    else
      @upload = Upload.where("private = 'f'").order("RANDOM()").first
    end
    respond_to do |format|
      format.js
    end
  end
end
  