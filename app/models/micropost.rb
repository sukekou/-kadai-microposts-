class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_okiniiri, class_name: 'Okiniiri', foreign_key: 'micropost_id'
  has_many :liked, through: :okiniiris, source: :user
  
end
