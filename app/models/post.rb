class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140 } # jets are capped at 140 chars.
  default_scope -> { order(created_at: :desc) } # newest jets / posts first 
end
