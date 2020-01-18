require 'faker'
require "ruboty/faker/version"

module Ruboty
  module Handlers
    class Faker < Base
      on(
        /give me (?:a )?name/i,
        name: 'name',
        description: 'Ruboty gives you a name',
      )

      on(
        /give me (?:a )?quote/i,
        name: 'quote',
        description: 'Quote by matz',
      )

      def name(message)
        message.reply ::Faker::Name.name
      end

      def quote(message)
        message.reply ::Faker::Quote.matz
      end
    end
  end
end
