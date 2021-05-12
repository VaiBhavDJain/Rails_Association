class Book < ApplicationRecord
   
   belongs_to :author  # For bi directional purpose
   # belongs_to :writer, class_name: 'Author', foreign_key: 'author_id' # For bi directional# For bi directional
end

# For bi directional :-
 
# irb> a = Author.first
# irb> b = a.books.first
# irb> a.name == b.author.name
# => true
# irb> a.name = 'Rohit'
# irb> a.name == b.author.name
# => true

# irb> a = Author.first
# irb> b = a.books.first
# irb> a.name == b.writer.name
# => true
# irb> a.name = 'Rohan'
# irb> a.name == b.writer.name
# => false