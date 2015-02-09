class Director < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :filmography, :class_name => "Movie", :foreign_key => "director_id"

end
