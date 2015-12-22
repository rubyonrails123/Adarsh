class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
   change_column :documents, :reference, :string
  end

  def down
   change_column :documents, :reference, :integer


  end
end
