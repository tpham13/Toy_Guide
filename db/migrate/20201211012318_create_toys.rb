class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.string :description
      t.string :development
      t.string :area
      t.string :link_to_purchase
      t.string :image

      t.timestamps
    end
  end
end
