class RelationshipsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.like(user)

    if Relationship.find_by(liker: user, liked: current_user) && Relationship.find_by(liker: current_user, liked: user)
      Conversation.create(user1: current_user, user2: user)
    end

    Notification.create(user: user, partner: current_user, context: "#{user.nickname}さんがあなたと繋がりたいそうです！")

    redirect_to request.referer
  end

  def destroy
    user = User.find(params[:user_id])
    current_user.unliked(user)

    conversation = Conversation.find_by(user1: current_user,
                                        user2: user) || Conversation.find_by(user1: user,
                                                                             user2: current_user)
    conversation&.destroy

    redirect_to request.referer
  end
end
