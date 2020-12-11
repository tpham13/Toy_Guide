class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.string :description
      t.string :development_area
      t.string :link_to_purchase
      t.string :image
      t.belongs_to :user
      t.belongs_to :age_range

      t.timestamps
    end
  end
end
