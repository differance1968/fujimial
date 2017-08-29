class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.text :aim
      t.text :content
      t.text :comment

      t.timestamps
    end
  end
end
