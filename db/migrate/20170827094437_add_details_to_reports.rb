class AddDetailsToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :grade_id, :integer, 'integer USING CAST(grade_id AS integer)'
    add_column :reports, :subject_id, :integer, 'integer USING CAST(subject_id AS integer)'
  end
end
