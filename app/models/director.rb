class Director < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  def movies
    return Movie.where(:director_id => self.id)
  end
end
