class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :time
      t.string :description

      t.timestamps null: false
    end
  end
end
