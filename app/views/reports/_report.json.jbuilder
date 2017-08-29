json.extract! report, :id, :aim, :content, :comment, :created_at, :updated_at
json.url report_url(report, format: :json)
