class AddDetailsToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :grade_id, :integer
    add_column :reports, :subject_id, :integer
  end
end
