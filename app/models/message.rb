# frozen_string_literal: true

class Message < ApplicationRecord
  # after_create_commit {
  #   ActionCable.server.broadcast 'chat_messages_channel', { history: Message.order(id: :desc) }
  # }
end
