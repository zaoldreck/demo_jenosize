class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :phone
      t.string :address
      t.string :linkedin
      t.string :facebook
      t.string :twitter
      t.string :website
      t.string :language

      t.timestamps null: false
    end
  end
end
