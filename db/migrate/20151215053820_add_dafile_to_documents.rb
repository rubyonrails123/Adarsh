class AddDafileToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :dafile, :string
  end
end
