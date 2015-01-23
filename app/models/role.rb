class Role < ActiveRecord::Base
  validates :character_name, :presence => true
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  def movie
    return Movie.find_by({ :id => self.movie_id })
  end

  def actor
    return Actor.find_by({ :id => self.actor_id })
  end
end
