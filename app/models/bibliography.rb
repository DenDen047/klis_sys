class Bibliography < ActiveRecord::Base
  belongs_to :report
  
  validates :report, presence: true
  validates :name, presence: true
  validates :url, presence: true
  
  default_scope -> { order(created_at: :desc) }
end
