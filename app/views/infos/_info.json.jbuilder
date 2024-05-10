json.extract! info, :id, :name, :card, :cvv, :expired, :created_at, :updated_at
json.url info_url(info, format: :json)
