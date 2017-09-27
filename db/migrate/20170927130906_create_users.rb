class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :api_token

      t.timestamps
    end
    add_index :users, :api_token, unique: true
  end
end
