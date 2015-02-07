class Relationship < ActiveRecord::Base
  belongs_to :fan, foreign_key: "fan_id", class_name: "User"
  belongs_to :idol, foreign_key: "idol_id", class_name: "User"

  # Remember to create a migration!
end
