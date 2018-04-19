json.extract! user, :id,  :first_name, :last_name, :email, :dojo, :created_at, :updated_at
json.url student_url(student, format: :json)
