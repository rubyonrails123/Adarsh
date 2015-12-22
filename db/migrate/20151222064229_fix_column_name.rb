class FixColumnName < ActiveRecord::Migration
  def change
rename_column :users, :user_id, :user
  end
  end

