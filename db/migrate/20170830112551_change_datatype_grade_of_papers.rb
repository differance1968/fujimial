class ChangeDatatypeGradeOfPapers < ActiveRecord::Migration[5.0]
  def change
     # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :papers, :grade_id, :string
    change_column :papers, :subject_id, :string
  end
end
