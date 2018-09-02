class CreateUseruploads < ActiveRecord::Migration[5.2]
  def change
    create_table :useruploads do |t|
      t.string :name
      t.string :comment
      t.string :datatype
      t.integer :size
      t.string :cloud_identifier
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
