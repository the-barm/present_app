class UploadsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :index]
  
  def create
    @upload = Upload.new(upload_params)
    if params[:upload][:private] == '1' 
      @upload.update_attribute(:private, true)
    end
    @upload.save ? flash[:success] = "Uploaded!" 
                 : flash[:danger] = "Upload failed!"
    redirect_to request.referrer || uploads_path
  end
  
  def destroy
    @upload = Upload.find_by(id: params[:id])
    @upload.destroy
    flash[:success] = "File deleted"
    redirect_to request.referrer || uploads_path
  end
  
  def index
    @upload = Upload.new
    @uploads = Upload.all
  end
  
  def update
    @upload = Upload.find_by(id: params[:id])
    if @upload.private
      @upload.update_attribute(:private, false)
    else
      @upload.update_attribute(:private, true)
    end
    @upload.save
    flash[:success] = "Attribute changed"
    redirect_to request.referrer || uploads_path
  end
  
  
  private

    def upload_params
      params.require(:upload).permit(:content)
    end
end
