class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :user_image

  belongs_to :gender

  has_many :user_hobbies, dependent: :destroy
  has_many :hobbies, through: :user_hobbies

  has_many :like_likes, class_name: 'Like', foreign_key: 'like_user_id', inverse_of: :like_user, dependent: :destroy
  has_many :liked_likes, class_name: 'Like', foreign_key: 'liked_user_id', inverse_of: :liked_user, dependent: :destroy

  has_many :like_users,  through: :like_likes,  source: :liked_user
  has_many :liked_users, through: :liked_likes, source: :like_user
end
