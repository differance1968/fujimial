class AddPicturesToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :picture, :string
  end
end
