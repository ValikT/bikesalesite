class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts    
  has_many :photos
  has_many :postcomments  
  has_many :votes 

  validates :nickname, presence: true 
  validates :nickname, length: { in: 3..12 }


end