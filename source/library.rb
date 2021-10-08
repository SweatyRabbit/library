# frozen_string_literal: true

require_relative 'autoload'

class Library
  attr_reader :books, :authors, :orders, :readers

  def initialize
    @lb_store = LibraryStore.new
    data = @lb_store.data
    @books = data[:books]
    @authors = data[:authors]
    @orders = data[:orders]
    @readers = data[:readers]
  end

  def add(entity)
    case entity
    when Book
      @books << entity
    when Author
      @authors << entity
    when Order
      @orders << entity
    when Reader
      @readers << entity
    end
  end

  def top_reader(quantity = 1)
    most_popular_entity(quantity: quantity, main_entity: :reader, selector: :book)
  end

  def top_book(quantity = 1)
    most_popular_entity(quantity: quantity, main_entity: :book, selector: :reader)
  end

  def number_of_readrs_of_popular_book(some_quantity = 3)
    @orders.select do |order|
      top_book(some_quantity).include?(order.book)
    end.uniq(&:reader).count
  end

  def save_library
    @lb_store.save
  end

  private

  def most_popular_entity(quantity:, main_entity:, selector:)
    @orders.group_by(&main_entity).transform_values do |item|
      item.uniq(&selector).count
    end.to_a.max_by(quantity, &:last).map(&:first)
  end
end
