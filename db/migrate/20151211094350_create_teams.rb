class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :firstname
      t.integer :lastname
      t.string :age
      t.string :companyname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
