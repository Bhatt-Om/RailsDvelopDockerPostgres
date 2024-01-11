json.extract! user, :id, :name, :email, :address_line_1, :address_line_2, :country, :state, :city, :pincode, :created_at, :updated_at
json.url user_url(user, format: :json)
