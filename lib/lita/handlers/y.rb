require "lita"

module Lita
  module Handlers
    class Y < Handler
      route(/^y\?/, :y?, command: true, help: { "y?" => "pls" })

      def y?(response)
        response.reply("#{response.user.name} pls")
      end
    end

    Lita.register_handler(Y)
  end
end
