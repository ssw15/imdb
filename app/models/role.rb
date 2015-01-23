class Role < ActiveRecord::Base
  validates :character_name, :presence => true
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true
end
