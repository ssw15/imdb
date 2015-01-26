class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  # has many Roles (method name: "roles", foreign key: actor_id)

  # def roles
  #   return Role.where({ :actor_id => self.id })
  # end

  has_many :roles

  # Challenge:
  # has many Movies (method name: "filmography")

  # def filmography
  #   return Movie.where :id => self.roles.pluck(:movie_id)
  # end

  has_many :filmography, :through => :roles, :source => :movie
end
