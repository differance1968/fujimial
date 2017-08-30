class AddFileToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :file, :string
  end
end
