class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.string :reference
      t.string :team_id
      t.string :conclusion

      t.timestamps
    end
  end
end
