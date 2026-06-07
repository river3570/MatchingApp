class MessagesController < ApplicationController
  def index
    @relationship_users = User.first
  end
end
