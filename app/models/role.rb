class Role < ActiveRecord::Base
  validates :character_name, :presence => true
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  # belongs to Actor (method name: "actor", foreign key: actor_id)

  # belongs to Movie (method name: "movie", foreign key: movie_id)

end
