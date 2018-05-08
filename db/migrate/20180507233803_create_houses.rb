class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :rooms
      t.integer :vacancies
      t.float :rent
      t.boolean :active
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
