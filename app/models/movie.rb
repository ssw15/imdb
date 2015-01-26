class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director_id, :presence => true

  def director
    return Director.find_by(:id => self.director_id)
  end

  def roles
    return Role.where(:movie_id => self.id)
  end

end
