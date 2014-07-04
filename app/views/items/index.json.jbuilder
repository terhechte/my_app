json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :views, :die_votes, :fun_votes, :thumbnail, :content_image, :content_video, :content_html, :keywords, :priority, :slider_id, :category_id, :category_id
  json.url item_url(item, format: :json)
end
