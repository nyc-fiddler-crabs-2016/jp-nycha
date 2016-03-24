class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :issue, null: false
      t.text :description, null: false
      t.string :level, null: false
      t.string :image
      t.boolean :status, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
