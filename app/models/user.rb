class User < ActiveRecord::Base
  
  has_one :groupStageWinners
  has_one :ko16Winners
  has_one :qfWinners
  has_one :sfWinners
  has_one :finalWinners
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
