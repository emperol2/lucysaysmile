json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :created_at, :updated_at, :password_digest, :contact_number, :company_name, :city, :country, :company_type, :zipcode, :address, :state, :timezone, :about_company, :website, :paypal_account, :payment_info, :skpye_id, :linkedin_id, :gender, :about_me
  json.url user_url(user, format: :json)
end
