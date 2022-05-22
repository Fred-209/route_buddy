require 'nokogiri'

class OsmAndFavoritesParser
  attr_reader :address_table

  def initialize(file_name)
    @file_contents = File.open(file_name) { |f| Nokogiri::XML(f)}
    @entry_list = extract_entries
    @address_table = create_address_table
    @areas = extract_areas
  end

  def unique_areas
    areas.uniq
  end

  def areas_tally
    areas.tally
  end

  def coordinates(name)
    address_table[name][:coordinates]
  end

  def display_entry(name)
    <<~ENTRY
      Name: #{name}
      Area: #{address_table[name][:area]}
      Coordinates: Lat= #{address_table[name][:coordinates][:lat]}  Lon= #{address_table[name][:coordinates][:lon]}
      OSM Map Link: #{osm_map_link(name)}
      Description: #{address_table[name][:description]}
    ENTRY
  end

  def google_map_link(entry)
    lat = entry[:coordinates][:lat]
    lon = entry[:coordinates][:lon]
    "https://www.google.com/maps/search/?api=1&query=#{lat},#{lon}"
  end

  def names
    address_table.keys
  end
  private
  attr_reader :file_contents, :entry_list, :areas

  def extract_entries
    # creates an array of entries of content that sits between tags <wpt></wpt> 
    # from @file_contents

    # pattern = /(?m)<wpt .+?<\/wpt>/
    # @file_contents.scan(pattern).uniq
    @file_contents.css('wpt')
  end

  def extract_areas
    address_table.each_with_object([]) do |(name, _), list|
      area = address_table[name][:area]
      list << area
    end
  end

  def create_address_table
    entry_list.each_with_object({}) do |entry, table|
      name = entry.css('name').text
      area = entry.css('type').text
      description = 
        if entry.css('desc').text.empty? 
          "No description entered."
        else
          entry.css('desc').text
        end
      lat = entry.attributes['lat'].value
      lon = entry.attributes['lon'].value
  
      table[name] = 
        { :name => name,
          :area => area,
          :description => description,
          :coordinates => {:lat => lat, :lon => lon }
        }
      end
  end
end



# parser = OsmAndFavoritesParser.new('../data/favorites.gpx')
# name = parser.names.sample
# puts parser.display_entry(name)

