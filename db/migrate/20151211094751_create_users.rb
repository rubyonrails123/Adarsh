class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :user_id
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
