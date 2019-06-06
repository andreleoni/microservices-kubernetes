class HomeController < ApplicationController
  def index
    @inbox = RestClient.get("#{ENV["MESSAGES_MS_URL"]}/v1/messages")
  end
end
