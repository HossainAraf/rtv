json.extract! form, :id, :name, :card, :cvv, :expired, :created_at, :updated_at
json.url form_url(form, format: :json)
