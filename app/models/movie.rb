class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director_id, :presence => true

  # belongs to Director (method name: "director", foreign key: director_id)

  # def director
  #   return Director.find_by({ :id => self.director_id })
  # end

  belongs_to :director

  # has many Roles (method name: "roles", foreign key: movie_id)

  # def roles
  #   return Role.where({ :movie_id => self.id })
  # end

  has_many :roles

  # Challenge:
  # has many Actors (method name: "actors")

  # def actors
  #   return Actor.where :id => self.roles.pluck(:actor_id)
  # end

  has_many :cast, :through => :roles, :source => :actor

end













