class CreatePapers < ActiveRecord::Migration[5.0]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :grade_id
      t.string :subject_id
      t.string :picture
      t.string :file

      t.timestamps
    end
  end
end
