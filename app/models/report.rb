class Report < ActiveRecord::Base
  validates :user, presence: true
  validates :timelimit, presence: true
  validates :description, presence: true
end
