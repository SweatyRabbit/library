# frozen_string_literal: true

class Book
  include Validator

  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    validate
  end

  def to_s
    "Book: #{@title}, #{@author}"
  end

  private

  def validate
    check_string(title)
    check_author(author)
  end

  def check_string(item)
    check_type(item, String)
  end

  def check_author(item)
    check_type(item, Author)
  end
end
