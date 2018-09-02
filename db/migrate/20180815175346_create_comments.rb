class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :ticket, foreign_key: true
      t.text :content, default: ""
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
