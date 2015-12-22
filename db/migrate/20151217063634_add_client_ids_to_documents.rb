class AddClientIdsToDocuments < ActiveRecord::Migration
  def change
add_column :documents, :client_ids, :string
  end
end
