class Picture < ActiveRecord::Base
  has_attached_file :data
  validates_attachment_presence :data
  validates_attachment_content_type :data,:content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  validates_attachment_size :data,:less_than => 10.megabytes
end
