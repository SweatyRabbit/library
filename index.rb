# frozen_string_literal: true

require_relative 'source/library'

library = Library.new

author = Author.new('Ivan')
author2 = Author.new('Andrei')

library.add(author)
library.add(author2)

book = Book.new('Good', author)
book2 = Book.new('Bad', author2)
book3 = Book.new('Unknown', author)
book4 = Book.new('Dragons', author2)

library.add(book)
library.add(book2)
library.add(book3)
library.add(book4)

reader = Reader.new(name: 'Ivan', email: 'ivanhulko14@gmail.com', city: 'Dnipro', street: 'Husenko', house: 10)
reader2 = Reader.new(name: 'Kirill', email: 'email@email.com', city: 'Dnipro', street: 'Good', house: 10)
reader3 = Reader.new(name: 'John', email: 'email@email.com', city: 'Dnipro', street: 'Good', house: 10)
reader4 = Reader.new(name: 'John', email: 'email@email.com', city: 'Dnipro', street: 'Good', house: 10)
reader5 = Reader.new(name: 'Anna', email: 'email@email.com', city: 'Dnipro', street: 'Good', house: 10)

library.add(reader)
library.add(reader2)
library.add(reader3)
library.add(reader4)
library.add(reader5)

order = Order.new(book: book, reader: reader)
order2 = Order.new(book: book2, reader: reader2)
order3 = Order.new(book: book, reader: reader2)
order4 = Order.new(book: book2, reader: reader4)
order5 = Order.new(book: book, reader: reader3)
order6 = Order.new(book: book3, reader: reader4)
order7 = Order.new(book: book4, reader: reader5)
order8 = Order.new(book: book3, reader: reader)

library.add(order)
library.add(order2)
library.add(order3)
library.add(order4)
library.add(order5)
library.add(order6)
library.add(order7)
library.add(order8)

puts 'Most popular reader'
library.top_reader.each { |item| puts item.to_s }

puts 'Most popular book'
library.top_book.each { |item| puts item.to_s }

puts 'Number of readers of the most popular book'
puts library.number_of_readrs_of_popular_book

library.save_library
