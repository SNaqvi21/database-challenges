require_relative './artist'

class ArtistRepository
  def all
    sql = 'SELECT id, name, genre FROM artists;'
    result = DatabaseConnection.exec_params(sql, [])

    artists = []

    result.each do |record|
      artist = Artist.new
      artist.id = record['id']
      artist.name = record['name']
      artist.genre = record['genre']

      artists << artist
    end
    
    return artists
  end
end
#     array = []
#     # Executes the SQL query:
#     sql = 'SELECT id, name, genre FROM artists;'
#     result = DatabaseConnection.exec_params(sql, [])

    
# result.each do |record|


# album = Artist.new
# album.id = record['id']
# album.name = record['name']
# album.genre = record['genre']

# array << album
# end

# array

#     # Returns an array of Artist objects.
#   end
# end