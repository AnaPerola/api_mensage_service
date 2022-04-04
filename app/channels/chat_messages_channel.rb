# frozen_string_literal: true

class ChatMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_messages_channel'
    # ChatMessagesChannel.all_messages(Message.order(id: :desc).limit(20))
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_text(data)
    Message.create(content: data['content'], username: data['username'], color: data['content'], effect: data['content'])

    ActionCable.server.broadcast('chat_messages_channel', {
                                   content: data['content'],
                                   username: data['username'],
                                   color: data['color'],
                                   effect: data['effect'],
                                   type: 'chat'
                                 })
  end

  def speak; end

  def self.all_messages(messages)
    ActionCable.server.broadcast('chat_messages_channel', { history: messages })
  end
end
