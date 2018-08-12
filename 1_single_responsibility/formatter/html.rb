require_relative './base'

module Formatter
  #
  # Returns the data in HTML format
  #
  class HTML < Base
    def format(total)
      "<h1>Total: #{total}</h1>"
    end
  end
end
