class ChangeDataTypeProfilePictureToText < ActiveRecord::Migration[6.0]
  def change
    change_column :celebrities, :profile_picture, :text
  end
end
