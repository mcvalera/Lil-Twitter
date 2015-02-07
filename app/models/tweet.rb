class Tweet < ActiveRecord::Base

  belongs_to :user
  belongs_to :original_user, foreign_key: "original_user_id", class_name: "User"
  # Remember to create a migration!

  validates :content, { :presence => true }
  validates :content, length: { maximum: 140 }

  default_scope { order(:id => :desc) }

  after_create :save_original_user_id

  def save_original_user_id
    unless original_user_id
      self.original_user_id = self.user_id
    end
  end

  def retweeted?
    self.user_id != self.original_user_id
  end


end
