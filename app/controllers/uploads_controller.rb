class UploadsController < ApplicationController
  
  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      flash[:success] = "Uploaded!"
      render 'users/show'
    else
      render 'static_pages/home'
    end
  end
  
  
  private

    def upload_params
      params.require(:upload).permit(:content)
    end
end
