class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  # has many Roles (method name: "roles", foreign key: actor_id)

  # Challenge:
  # has many Movies (method name: "filmography")
end
