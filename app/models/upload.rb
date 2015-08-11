class Upload < ActiveRecord::Base
    mount_uploader :content, UploadUploader
    validates :content,  presence: true
    validate  :content_size

    private

    # Validates the size of an uploaded picture.
    def content_size
      if content.size > 5.megabytes
        errors.add(:content, "should be less than 5MB")
      end
    end
    
end
