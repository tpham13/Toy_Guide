class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :purchase_link
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
