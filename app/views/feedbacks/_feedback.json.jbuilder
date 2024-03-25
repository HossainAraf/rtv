json.extract! feedback, :id, :First_Name, :Last_Name, :E-mail, :Comment, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
