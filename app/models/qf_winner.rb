class QfWinner < ActiveRecord::Base
  belongs_to :user
  validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
  validates :user, presence: true
  validates :qf1_w, presence: true
  validates :qf2_w, presence: true
  validates :qf3_w, presence: true
  validates :qf4_w, presence: true
end
