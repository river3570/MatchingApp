class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user, class_name: 'User'
end
