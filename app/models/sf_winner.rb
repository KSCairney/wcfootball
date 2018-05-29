class SfWinner < ActiveRecord::Base
  belongs_to :user
  validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
  validates :user, presence: true
  validates :sf1_w, presence: true
  validates :sf2_w, presence: true
end
