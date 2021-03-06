class Note < ActiveRecord::Base
  belongs_to :user
  
  default_scope {order(created_at: :desc)}

  validates :title, presence: true
  validates :body, presence: true
end
