class Director < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  # has many Movies (method name: "filmography", foreign key: director_id)

  # def filmography
  #   return Movie.where({ :director_id => self.id })
  # end

  has_many :filmography, :class_name => "Movie", :foreign_key => "director_id"
end
