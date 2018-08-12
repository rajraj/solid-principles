require 'json'
require_relative './base'

module Formatter
  #
  # Returns the data in JSON format
  #
  class JSON < Base
    def format(total)
      { total: total }.to_json
    end
  end
end
