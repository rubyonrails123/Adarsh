class Client < ActiveRecord::Base
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :teams
end
