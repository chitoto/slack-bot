require "slack-notify"
require 'clockwork'
require 'dotenv'
Dotenv.load

client = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK']
)

client.notify("Hello There!")
