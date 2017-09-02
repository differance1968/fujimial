json.extract! paper, :id, :title, :grade_id, :subject_id, :picture, :file, :created_at, :updated_at
json.url paper_url(paper, format: :json)
