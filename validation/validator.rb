# frozen_string_literal: true

module Validator
  def check_type(object, expected_class)
    raise Error::InvalidTypeArgumentError unless object.is_a?(expected_class)
  end

  def check_empty(item)
    raise Error::EmptyVariableError if item.empty?
  end

  def check_positive(item)
    raise Error::PositiveNumericError unless item.positive?
  end
end
