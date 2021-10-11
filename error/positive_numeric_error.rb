# frozen_string_literal: true

module Error
  class PositiveNumericError < StandardError
    STANDARD_MESSAGE = 'Numeric is not positive'

    def initialize(message = STANDARD_MESSAGE)
      super(message)
    end
  end
end
