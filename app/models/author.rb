class Author < ApplicationRecord
    has_many :bhut_saari_books , class_name:"Book" , dependent: :destroy
    has_many :books , dependent: :destroy
    accepts_nested_attributes_for :books
end

# Author.create(name: "Alexa", books_attributes: [{book: "Alexa Book for Website"},{book: "Alexa Book for WEb"}])

# author =  Author.find(2)

# author.bhut_saari_books.create(book: "Rails")
# author.books.create(book: "Rails 1")