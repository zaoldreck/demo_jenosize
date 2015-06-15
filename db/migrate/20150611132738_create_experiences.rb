class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :title
      t.string :location
      t.datetime :time_period
      t.boolean :current_work
      t.string :description
      t.string :salary

      t.timestamps null: false
    end
  end
end
