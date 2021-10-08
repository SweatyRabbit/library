# frozen_string_literal: true

module Error
  class EmptyVariableError < StandardError
    STANDARD_MESSAGE = 'Variable cannot be empty'

    def initialize(message = STANDARD_MESSAGE)
      super(message)
    end
  end
end
