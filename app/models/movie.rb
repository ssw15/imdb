class Movie < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :director

  has_many :roles, :dependent => :destroy, :dependent => :destroy

  has_many :cast, :through => :roles, :source => :actor

  has_many :likes

  has_many :users, :through => :likes
end













