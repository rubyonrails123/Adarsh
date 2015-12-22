class ChangeBodyTypeInPosts < ActiveRecord::Migration
  def change
change_column :clients, :lastname, :string
  end
end
