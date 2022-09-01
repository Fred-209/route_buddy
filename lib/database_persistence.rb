require 'pg'

class DatabasePersistence

  def initialize(logger)
      @db = PG.connect("postgresql://${{ PGUSER }}:${{ PGPASSWORD }}@${{ PGHOST }}:${{ PGPORT }}/${{ PGDATABASE }}")
    # @db = if Sinatra::Base.deployment? 
    #   PG.connect(DATABASE_URL)
    # else
    #   PG.connect(dbname: "osmand_favorites")
    # end
    @logger = logger
  end

  def query(sql, *params)
    @logger.info "#{sql} : #{params}"
    @db.exec_params(sql, params)
  end

  def areas
    sql ="SELECT area FROM osm_favorites;"
    result = query(sql).values.map { |area| area.first }
  end

  def coordinates(entry_id)
    entry = fetch_entry_by_id(entry_id).first
    [entry['lat'], entry['long']]
    
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

  def names
    sql = "SELECT name FROM osm_favorites;"
    query(sql).values.map { |name| name.first }
  end

  def areas_tally
    areas.tally
  end


  def rural_route_address(entry_id)
    entry = fetch_entry_by_id(entry_id).first
    [entry['route_num'], entry['route_box']]
  end

  def unique_areas
    areas.uniq
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

  def search(search_terms)
    names.each_with_object([]) do |name, matches|
      matches << fetch_entry_by_name(name) if name.match?(/#{search_terms}/i)
    end
  end

end
