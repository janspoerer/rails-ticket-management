class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :iso_alpha_2_code
      t.string :iso_alpha_3_code
      t.string :name

      t.timestamps
    end
  end
end
