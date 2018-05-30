class FinalWinner < ActiveRecord::Base
  belongs_to :user
  validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
  validates :user, :champion, presence: true
end
