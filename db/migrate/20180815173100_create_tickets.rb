class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.integer :max_time, default: nil
      t.integer :actual_time, default: nil
      t.references :user, foreign_key: true
      t.boolean :billed, default: false
      t.boolean :paid, default: false
      t.string :status, default: "open" # Possible: open, closed, closed by user
      t.string :type_of_issue, default: nil
      t.boolean :satisfaction, default: nil
      t.datetime :closed_at, default: nil
      t.string :company

      t.timestamps
    end
  end
end
