class Team < ActiveRecord::Base
  has_many :documents
  has_and_belongs_to_many :clients
end
