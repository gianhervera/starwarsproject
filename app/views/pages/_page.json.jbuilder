json.extract! page, :id, :title, :content, :link, :created_at, :updated_at
json.url page_url(page, format: :json)
