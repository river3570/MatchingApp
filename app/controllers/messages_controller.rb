class MessagesController < ApplicationController
  def index
    @conversations = current_user.conversations
    if params[:id].present?
      user = User.find(params[:id])
      conversation =
        Conversation.find_by(user1: user, user2: current_user) ||
        Conversation.find_by(user1: current_user, user2: user)
      @messages = conversation&.messages
    else
      @messages = []
    end
  end
end
