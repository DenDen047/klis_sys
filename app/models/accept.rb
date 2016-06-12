class Accept < ActiveRecord::Base
  belongs_to :user
  belongs_to :report
  
  validates :user, presence: true
  validates :user_id, uniqueness: { scope: :report_id }
  validates :report, presence: true
end
