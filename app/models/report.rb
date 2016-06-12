class Report < ActiveRecord::Base
  belongs_to :user
  has_many :accepts, dependent: :destroy
  
  validates :user, presence: true, length: { maximum: 50 }
  validates :timelimit, presence: true
  validates :description, presence: true
  
  def accepted_by? user
    accepts.where(user_id: user.id).exists?
  end
end
