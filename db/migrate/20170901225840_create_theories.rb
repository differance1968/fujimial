class CreateTheories < ActiveRecord::Migration[5.0]
  def change
    create_table :theories do |t|
      t.string :title
      t.text :content
      t.string :file
      t.string :picture

      t.timestamps
    end
  end
end
