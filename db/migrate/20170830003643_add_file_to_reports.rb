class AddFileToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :file, :string
  end
end
