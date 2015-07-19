class AddAttachmentDataToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :data
    end
  end

  def self.down
    remove_attachment :pictures, :data
  end
end
