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
  