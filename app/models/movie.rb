class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director_id, :presence => true

  # belongs to Director (method name: "director", foreign key: director_id)

  # has many Roles (method name: "roles", foreign key: movie_id)

  # Challenge:
  # has many Actors (method name: "actors")

end
