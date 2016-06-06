class Tweet < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  validates :content, presence: true, length: { in: 1..1024}
end
