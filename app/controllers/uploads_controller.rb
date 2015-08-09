class UploadsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  
  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      flash[:success] = "Uploaded!"
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end
  
  
  private

    def upload_params
      params.require(:upload).permit(:content)
    end
end
