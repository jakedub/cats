class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :coat_pattern
      t.string :coat_color

      t.timestamps
    end
  end
end
