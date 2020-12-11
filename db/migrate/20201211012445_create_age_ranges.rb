class CreateAgeRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :age_range do |t|
      t.string :age

      t.timestamps
    end
  end
end
