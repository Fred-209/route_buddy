require 'pg'

class DatabasePersistence

  def initialize(logger=nil)
    @db = if Sinatra::Base.production? 
      PG.connect(ENV['DATABASE_URL'])
    else
      PG.connect(dbname: "osmand_favorites")
    end
    @logger = logger if logger
    # @db = PG.connect(dbname: "osmand_favorites")
  end
  
  def add_entry(values)
    sql = "INSERT INTO osm_favorites (
             name, area, route_num, route_box, long, lat, notes
            )
            VALUES ($1, $2, $3, $4, $5, $6, $7);"
    query(sql, 
          values[:name],
          values[:area],
          values[:route_num],
          values[:route_box],
          values[:long],
          values[:lat],
          values[:notes]
         )
  end

  def areas
    sql ="SELECT area FROM osm_favorites;"
    result = query(sql).values.map { |area| area.first }
  end
  
  def areas_tally
    areas.tally
  end

  def coordinates(entry_id)
    entry = fetch_entry_by_id(entry_id).first
    [entry['lat'], entry['long']]
    
  end
  
  def delete_entry(entry_id)
    sql = "DELETE FROM osm_favorites WHERE id = $1;"
    query(sql, entry_id)
  end

  def disconnect
    @db.close
  end

  def edit_entry(entry_id, column, new_value)
    sql = "UPDATE osm_favorites
           SET #{column} = $1 WHERE id = $2;"
    query(sql, new_value, entry_id)
  end

  def entry_count
    sql = "SELECT COUNT(id) FROM osm_favorites;"
    query(sql).first['count']
  end
  
  def entries_for_area(area)
    sql = "SELECT * FROM osm_favorites
    WHERE area = $1"
    result =query(sql, area)
    entries = []
    result.each { |entry| entries << entry }
    entries
  end
      
  def fetch_entry_by_id(entry_id)
    sql = "SELECT * FROM osm_favorites
    WHERE id = $1;"
    query(sql, entry_id)
  end
  
  def fetch_entry_by_name(name)
    sql = "SELECT * FROM osm_favorites
    WHERE name = $1;"
    query(sql, name).first
  end
  
  def names
    sql = "SELECT name FROM osm_favorites;"
    # query(sql).values.map { |name| name.first }
    query(sql).field_values('name')
  end

  def query(sql, *params)
    @logger.info "#{sql} : #{params}" if @logger
    @db.exec_params(sql, params)
  end
  
  def rural_route_address(entry_id)
    entry = fetch_entry_by_id(entry_id).first
    [entry['route_num'], entry['route_box']]
  end
 
  def search(search_terms)
    names.each_with_object([]) do |name, matches|
      matches << fetch_entry_by_name(name) if name.match?(/#{search_terms.delete('\\')}/i)
    end
  end
  
  def unique_areas
    areas.uniq
  end
end
