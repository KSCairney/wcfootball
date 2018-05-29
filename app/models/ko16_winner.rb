class Ko16Winner < ActiveRecord::Base
    belongs_to :user
    validates  :user, uniqueness: { scope: :user_id, message: "You've already made your picks for this round!" }
    
    validates :user, presence: true
    validates :a1_v_b2, presence: true
    validates :b1_v_a2, presence: true
    validates :c1_v_d2, presence: true
    validates :d1_v_c2, presence: true
    validates :e1_v_f2, presence: true
    validates :f1_v_e2, presence: true
    validates :g1_v_h2, presence: true
    validates :h1_v_g2, presence: true
end
