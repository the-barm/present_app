class StaticPagesController < ApplicationController
  
  def home
    @pictures = Picture.all
  end

  def about
  end
  
  def update
    @picture = Picture.order("RANDOM()").first
    respond_to do |format|
      format.js
    end
  end
end
  