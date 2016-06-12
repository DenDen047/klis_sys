class Report < ActiveRecord::Base
  belongs_to :user
  has_many :accepts, dependent: :destroy
  has_many :bibliographies, dependent: :destroy
  
  validates :user, presence: true, length: { maximum: 50 }
  validates :timelimit, presence: true
  validates :description, presence: true
  
  default_scope -> { order(created_at: :desc) }
  
  def accepted_by? user
    accepts.where(user_id: user.id).exists?
  end
end
