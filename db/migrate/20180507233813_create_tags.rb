class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
    end

    create_table :houses_tags, id: false do |t|
      t.belongs_to :house, index: true
      t.belongs_to :tag, index: true
    end

  end
end
