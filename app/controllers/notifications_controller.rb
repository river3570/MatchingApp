class NotificationsController < ApplicationController
  NOTIFICATION_COUNT = 12
  def index
    @notifications = Notification.page(params[:page]).per(NOTIFICATION_COUNT)
  end
end
