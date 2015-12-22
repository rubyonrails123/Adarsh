class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.change :lastname, :string
    end
  end
  def self.down
    change_table :teams do |t|
      t.change :lastname, :integer
    end
  end
end

class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.change :lastname, :string
    end
  end
  def self.down
    change_table :clients do |t|
      t.change :lastname, :integer
    end
  end
end

