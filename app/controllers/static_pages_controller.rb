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
  
  def fill
    @colors = [ "#000000", "#696969", "#808080", "#a9a9a9", "#c0c0c0", 
                "#d3d3d3", "#dcdcdc", "#f5f5f5", "#ffffff" ]
    @colors.shuffle!
    respond_to do |format|
      format.js
    end
  end
  
  def sort
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
  