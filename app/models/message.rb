class Message < ApplicationRecord
  belongs_to :conversation, class_name: 'Conversation'
  belongs_to :user, class_name: 'User'
end
