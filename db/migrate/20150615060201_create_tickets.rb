class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :remaining
      t.string :pricing

      t.timestamps null: false
    end
  end
end
