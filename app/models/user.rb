class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :gender

  has_many :user_hobbies
  has_many :hobbies, through: :user_hobbies

  has_many :likes, foreign_key: 'like_user_id_id'
  has_many :liked_likes, class_name: 'Like', foreign_key: 'liked_user_id_id'

  has_many :like_users, through: :likes, source: :liked_user
  has_many :liked_users, through: :liked_likes, source: :like_user
end
