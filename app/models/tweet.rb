class Tweet < ActiveRecord::Base

  belongs_to :user
  # Remember to create a migration!

  validates :content, { :presence => true }
  validates :content, length: { maximum: 140 }

  default_scope { order(:id => :desc) }
end
