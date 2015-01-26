class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  def roles
    return Role.where(:actor_id => self.id)
  end
end
