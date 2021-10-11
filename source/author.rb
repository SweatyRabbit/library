# frozen_string_literal: true

class Author
  include Validator

  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name = name
    @biography = biography
    validate
  end

  def to_s
    "Author: #{@name}, #{@biography}"
  end

  private

  def validate
    validate_name(name)
  end

  def validate_name(name)
    check_type(name, String)
    check_empty(name)
  end
end
