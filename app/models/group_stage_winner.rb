class GroupStageWinner < ActiveRecord::Base
    belongs_to :user
    validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
    
    validates :user, presence: true
    validates :groupa1, presence: true
    validates :groupa2, presence: true
    validates :groupb1, presence: true
    validates :groupb2, presence: true
    validates :groupc1, presence: true
    validates :groupc2, presence: true
    validates :groupd1, presence: true
    validates :groupd2, presence: true
    validates :groupe1, presence: true
    validates :groupe2, presence: true
    validates :groupf1, presence: true
    validates :groupf2, presence: true
    validates :groupg1, presence: true
    validates :groupg2, presence: true
    validates :grouph1, presence: true
    validates :grouph2, presence: true

end
