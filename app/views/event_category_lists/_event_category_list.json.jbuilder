json.extract! event_category_list, :id, :event_category_name, :created_at, :updated_at
json.url event_category_list_url(event_category_list, format: :json)
