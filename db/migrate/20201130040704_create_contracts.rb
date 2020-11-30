class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :place
      t.string :name
      t.string :nacionality
      t.string :profession
      t.string :academy_degree
      t.string :university
      t.string :departament
      t.string :dpi
      t.integer :age
      t.string :marital_status
      t.string :email
      t.string :phone
      t.text :body

      t.timestamps
    end
  end
end
