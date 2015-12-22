class CreateJoinTableDocumentTeam < ActiveRecord::Migration
  def change
    create_join_table :documents, :teams do |t|
       t.index [:document_id, :team_id]
       t.index [:team_id, :document_id]
    end
  end
end
