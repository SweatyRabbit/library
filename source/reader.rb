# frozen_string_literal: true

class Reader
  include Validator
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    validate
  end

  def to_s
    "Reader: #{@name}, #{@email}, #{@city}, #{street}, #{house}"
  end

  private

  def validate
    [name, email, city, street].each do |item|
      validate_string(item)
    end
    validate_integer(house)
  end

  def validate_string(item)
    check_type(item, String)
    check_empty(item)
  end

  def validate_integer(item)
    check_type(item, Integer)
    check_positive(item)
  end
end
