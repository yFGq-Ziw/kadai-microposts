class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 128 }
  
  has_many :users, through: :favorites
  has_many :favorites, dependent: :destroy
end