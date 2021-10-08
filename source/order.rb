# frozen_string_literal: true

class Order
  include Validator
  attr_reader :book, :reader, :date

  def initialize(book:, reader: nil, date: Date.today)
    @book = book
    @reader = reader
    @date = date
    validate
  end

  def to_s
    "Order: #{@book}, #{@reader}, #{@date}"
  end

  private

  def validate
    validate_book(book)
  end

  def validate_book(item)
    check_type(item, Book)
  end
end
