class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|
      t.string :birthday
      t.string :marital_status

      t.timestamps null: false
    end
  end
end
