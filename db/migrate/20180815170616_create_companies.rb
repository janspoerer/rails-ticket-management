class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, default: " "
      t.boolean :signup_flag, default: false
      t.boolean :billing_clearance_company, default: false
      t.boolean :billing_clearance_internal, default: true
      t.string :photo

      t.timestamps
    end
  end
end
