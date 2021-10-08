# frozen_string_literal: true

module Error
  class InvalidTypeArgumentError < StandardError
    STANDARD_MESSAGE = 'Invalid type'

    def initialize(message = STANDARD_MESSAGE)
      super(message)
    end
  end
end
