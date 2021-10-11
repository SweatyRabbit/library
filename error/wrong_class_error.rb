# frozen_string_literal: true

module Error
  class WrongClassError < StandardError
    STANDARD_MESSAGE = 'Wrong class'

    def initialize(message = STANDARD_MESSAGE)
      super(message)
    end
  end
end
