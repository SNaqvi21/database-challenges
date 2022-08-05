require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

result = DatabaseConnection.exec_params('SELECT * FROM books;', [])

result.each do |book|
  p book
end