class Like < ApplicationRecord
  belongs_to :like_user,  class_name: 'User', inverse_of: :like_likes
  belongs_to :liked_user, class_name: 'User', inverse_of: :liked_likes
end
