class AllHi < ActiveRecord::Migration
  def change
change_column:users, :role, :string
change_column:users, :lastname, :string  
   
 end
end
