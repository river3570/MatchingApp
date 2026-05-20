class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :gender

  has_many :user_hobbies
  has_many :hobbies, through: :user_hobbies
end
