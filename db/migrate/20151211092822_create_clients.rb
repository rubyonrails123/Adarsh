class CreateClients < ActiveRecord::Migration
  def change
change_column(:clients, :lastname, :string)
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :companyname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
