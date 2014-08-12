require "lita"

module Lita
  module Handlers
    class Y < Handler
      route(/(\A|\s)y\??\z/, :y?, help: { "y?" => "pls" })

      def y?(response)
        response.reply("#{response.user.name} pls")
      end
    end

    Lita.register_handler(Y)
  end
end
