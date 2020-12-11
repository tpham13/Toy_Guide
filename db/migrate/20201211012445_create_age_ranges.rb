class CreateAgeRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :age_ranges do |t|
      t.string :age

      t.timestamps
    end
  end
end
