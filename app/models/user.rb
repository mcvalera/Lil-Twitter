class User < ActiveRecord::Base
  has_many :tweets

  has_many :follower_relationships, foreign_key: "follower_id", class_name: "Relationship"

  has_many :followee_relationships, foreign_key: "followee_id", class_name: "Relationship"

  has_many :followers, through: :followee_relationships

  has_many :followees, through: :follower_relationships

  # has_many :followers, through: :relationships
  # has_many :followings, through: :relationships

end

