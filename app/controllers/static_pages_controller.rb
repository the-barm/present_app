class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @pictures = Picture.where("data_file_name NOT LIKE ?" , "kitten%")
    else
      @pictures = Picture.where("data_file_name LIKE ?" , "kitten%")
    end
  end

  def about
  end
  
  def update
    if logged_in? 
      @picture = Picture.where("data_file_name NOT LIKE ?" , 
                               "kitten%").order("RANDOM()").first
    else
      @picture = Picture.where("data_file_name LIKE ?" , 
                               "kitten%").order("RANDOM()").first
    end
    respond_to do |format|
      format.js
    end
  end
end
  