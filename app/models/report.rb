class Report < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  validates :timelimit, presence: true
  validates :description, presence: true
end
