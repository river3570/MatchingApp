class Conversation < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'

  has_many :messages, dependent: :destroy

  def partner(user)
    user1 == user ? user2 : user1
  end
end
