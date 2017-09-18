class AddTypesToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :type_id, :integer, 'integer USING CAST(type_id AS integer)'
  end
end
