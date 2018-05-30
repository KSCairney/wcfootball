class GroupStageWinner < ActiveRecord::Base
    belongs_to :user
    validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
    
    validates :user, presence: true
    validates :groupa1, :groupa2, :groupb1, :groupb2, :groupc1, :groupc2, :groupd1, :groupd2, :groupe1, :groupe2, :groupf1, :groupf2, :groupg1, :groupg2, :grouph2, :grouph1, presence: true

end
