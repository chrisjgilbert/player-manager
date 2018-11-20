require 'pg'

class Player

  def self.all
    connection = PG.connect( dbname: "player_manager" )
    result = connection.exec( "SELECT * FROM players" )
    result.map { |player| "#{player['name']} #{player['position']}" }
  end

end
