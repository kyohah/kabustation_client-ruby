
require 'websocket-client-simple'
require 'json'

module KabustationClient
  class PushClient
    attr_reader :ws

    def initialize(callbacks = {})
      @callbacks = {
        open: -> {},
        message: -> (_board) {},
        error: -> (_e) {},
        close: -> (_e) {}
      }.merge(callbacks)

      config = Configuration.default

      @uri = "ws://#{config.host}#{config.base_path}/websocket"
    end

    def connect
      callbacks = @callbacks

      @ws = WebSocket::Client::Simple.connect @uri do |ws|
        ws.on :open do
          callbacks[:open].call
        end
    
        ws.on :message do |msg|
          data = msg.data.force_encoding("ASCII-8BIT").force_encoding('UTF-8')
          json = JSON.parse(data)
          board = KabustationClient::ApiClient.new.convert_to_type(json, 'BoardSuccess')
    
          callbacks[:message].call(board)
        end
    
        ws.on :error do |e|
          callbacks[:error].call(e)
        end
    
        ws.on :close do |e|
          callbacks[:close].call(e)
        end
      end
    end
    

    def close
      @ws.close
    end
  end
end
