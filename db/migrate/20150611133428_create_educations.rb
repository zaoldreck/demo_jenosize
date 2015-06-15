class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.string :date_attended
      t.string :degree
      t.string :field_of_study
      t.string :grade
      t.string :activities
      t.string :description

      t.timestamps null: false
    end
  end
end
