class AddPrivateToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :private, :boolean, default: false
  end
end
