class Director < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  # has many Movies (method name: "filmography", foreign key: director_id)
end
