class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :body

      t.timestamps
    end
  end
end
