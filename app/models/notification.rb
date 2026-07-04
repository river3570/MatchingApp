class Notification < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :partner, class_name: 'User'
end
