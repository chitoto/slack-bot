require "slack-notify"
require 'clockwork'
require 'dotenv'
Dotenv.load
include Clockwork

client = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK']
)

client.notify("こんにちは！(Rubyで投稿)")

module Clockwork
  every(3.minutes, 'test') do
  client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
  client.notify("3分ごとに自動で送信します!")
  end
end
