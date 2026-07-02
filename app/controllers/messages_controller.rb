class MessagesController < ApplicationController
  def index
    @conversations = current_user.conversations
    if params[:id].present?
      user = User.find(params[:id])
      @conversation =
        Conversation.find_by(user1: user, user2: current_user) ||
        Conversation.find_by(user1: current_user, user2: user)
      @messages = @conversation&.messages
    else
      @messages = []
    end
  end

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to messages_path }
      end
    else
      render :index, status: :unprocessable_content
    end
  end

  private

  def message_params
    params.require(:message).permit(
      :conversation_id,
      :message
    )
  end
end
