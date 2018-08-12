module Formatter
  #
  # Formatter base class
  #
  class Base
    def format(_total)
      raise NotImplementedError
    end
  end
end
