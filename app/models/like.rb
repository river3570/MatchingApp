class Like < ApplicationRecord
  belongs_to :like_user,  class_name: 'User', foreign_key: 'like_user_id_id'
  belongs_to :liked_user, class_name: 'User', foreign_key: 'liked_user_id_id'
end
