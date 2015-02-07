class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :created_at
      t.datetime :updated_at
      t.string :password_digest
      t.string :contact_number
      t.string :company_name
      t.string :city
      t.string :country
      t.string :company_type
      t.string :zipcode
      t.string :address
      t.string :state
      t.string :timezone
      t.text :about_company
      t.string :website
      t.string :paypal_account
      t.text :payment_info
      t.string :skpye_id
      t.string :linkedin_id
      t.string :gender
      t.text :about_me

      t.timestamps
    end
  end
end
