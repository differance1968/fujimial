class AddTypesToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :type_id, :string
  end
end
