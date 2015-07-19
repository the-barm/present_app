class StaticPagesController < ApplicationController
  def home
    @pictures = Picture.all
  end

  def about
  end
end
  