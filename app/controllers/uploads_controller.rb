class UploadsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def create
    @upload = Upload.new(upload_params)
    if params[:upload][:private] == '1' 
      @upload.update_attribute(:private, true)
    end
    @upload.save ? flash[:success] = "Uploaded!" 
                 : flash[:danger] = "Upload failed!"
    redirect_to current_user
  end
  
  def destroy
    @upload = Upload.find_by(id: params[:id])
    @upload.destroy
    flash[:success] = "File deleted"
    redirect_to request.referrer || current_user
  end
  
  
  private

    def upload_params
      params.require(:upload).permit(:content)
    end
end
