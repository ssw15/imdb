class Movie < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :director

  has_many :roles, :dependent => :destroy, :dependent => :destroy

  has_many :cast, :through => :roles, :source => :actor


  # after_destroy :clean_up_roles

  # def clean_up_roles
  #   self.roles.destroy_all
  # end

end













