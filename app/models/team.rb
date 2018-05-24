class Team < ActiveRecord::Base
    has_many :picks
    belongs_to :user
end
