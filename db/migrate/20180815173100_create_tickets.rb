class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :max_time, default: "60"
      t.integer :actual_time, default: nil
      t.references :user, foreign_key: true
      t.boolean :billed, default: false
      t.boolean :paid, default: false
      t.string :status, default: "open"
      t.string :type_of_issue, default: "not specified"
      t.boolean :satisfaction, default: nil
      t.string :title, default: "issue description not specified"

      t.timestamps
    end
  end
end
