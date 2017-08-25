class AddPictureToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :picture, :string
  end
end
