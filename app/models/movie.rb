class Movie < ActiveRecord::Base
  validates :title, :presence => true
  validates :director_id, :presence => true
end
