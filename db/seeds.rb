# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grade.create(:name => '中１')
Grade.create(:name => '中２')
Grade.create(:name => '中３')
Grade.create(:name => '高１')
Grade.create(:name => '高２')
Grade.create(:name => '高３')

Subject.create(:name => '国語')
Subject.create(:name => '数学')
Subject.create(:name => '理科')
Subject.create(:name => '社会')
Subject.create(:name => '英語')
Subject.create(:name => '音楽')
Subject.create(:name => '美術')
Subject.create(:name => '保険体育')
Subject.create(:name => '技術家庭')
Subject.create(:name => '情報')
Subject.create(:name => 'HR・行事')

Type.create(:name => 'シンク・ペア・シェア')
Type.create(:name => 'ジグソー')
Type.create(:name => 'ピアインストラクション')
Type.create(:name => 'シンク・ペア・シェア')
Type.create(:name => 'ディスカッション')
Type.create(:name => 'ディベート')
Type.create(:name => 'コンセプトマップ')
Type.create(:name => 'プロジェクト学習')
Type.create(:name => 'その他')