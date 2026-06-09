class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :user_image

  belongs_to :gender

  has_many :user_hobbies, dependent: :destroy
  has_many :hobbies, through: :user_hobbies

  has_many :sent_likes,     class_name: 'Relationship', foreign_key: 'liker_id', inverse_of: :liker, dependent: :destroy
  has_many :received_likes, class_name: 'Relationship', foreign_key: 'liked_id', inverse_of: :liked, dependent: :destroy

  # 自分をいいねしたユーザー一覧
  has_many :likers,      through: :received_likes, source: :liker
  # 自分がいいねをしたユーザー一覧
  has_many :liked_users, through: :sent_likes,     source: :liked

  has_many :sent_messages, class_name: 'Message', inverse_of: :user, dependent: :destroy

  # 相互フォロー取得
  def matched_users
    likers & liked_users
  end

  # 会話取得
  def conversations
    Conversation.where(user1: self).or(Conversation.where(user2: self))
  end
end
