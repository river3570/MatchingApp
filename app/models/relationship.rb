class Relationship < ApplicationRecord
  belongs_to :liker, class_name: 'User', inverse_of: :sent_likes
  belongs_to :liked, class_name: 'User', inverse_of: :received_likes
end
