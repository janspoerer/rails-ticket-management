class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, default: " "
      t.boolean :signup_flag, default: false

      # Promotions
      t.integer :promotional_ticket_time, default: 0

      # Contract status / Business relationship status
      t.boolean :billing_clearance_company, default: false # Checked or unchecked depending on whether company wants account to be active, i.e., allow users to make tickets
      t.boolean :billing_clearance_internal, default: false # Checked as soon as company is considered trustworthy

      # Basic data
      t.string :photo
      t.string :billing_address_street
      t.string :billing_address_postal_code
      t.string :billing_address_city
      t.references  :billing_address_country, foreign_key: true
      t.string :vat_identification_number

      t.timestamps
    end
  end
end
