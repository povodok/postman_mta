module PostmanMta
  class Attachment < ApplicationModel
    attr_reader :message_token

    def initialize(message_token)
      @message_token = message_token
    end

    def find(uuid)
      get("/api/v1/messages/#{message_token}/attachments/#{uuid}")
    end
  end
end
