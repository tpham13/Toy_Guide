class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :url
      t.references :toy_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
