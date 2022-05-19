FAVORITES_FILE = './data/favorites.gpx'

class OsmAndFavoritesParser

  def initialize(file_name)
    @file_contents = File.read(file_name)
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
  puts <<~ENTRY
    Name: #{name}
    Area: #{address_table[name][:area]}
    Coordinates: Lat= #{address_table[name][:coordinates][:lattitude]}  Lon= #{address_table[name][:coordinates][:longitude]}
    Google Map Link: #{google_map_link(name)}
    Description: #{address_table[name][:description]}
    ENTRY
  end

  def google_map_link(name)
    lat = address_table[name][:coordinates][:lattitude]
    lon = address_table[name][:coordinates][:longitude]
    "https://www.google.com/maps?q=#{lat}+#{lon}"
  end

  def names
    address_table.keys
  end
  private
  attr_reader :file_contents, :entry_list, :address_table, :areas

  def extract_entries
    # creates an array of entries of content that sits between tags <wpt></wpt> 
    # from @file_contents

    pattern = /(?m)<wpt .+?<\/wpt>/
    @file_contents.scan(pattern).uniq
  end

  def extract_areas
    address_table.each_with_object([]) do |(name, _), list|
      area = address_table[name][:area]
      list << area
    end
  end

  def create_address_table
    entry_list.each_with_object({}) do |entry, table|
      area = /<type>.*<\/type>/.match(entry)[0].gsub(/<.*?type>/, '')
      name = /<name>.*<\/name>/.match(entry)[0].gsub(/<.*?name>/, '')
      description = 
        if /<desc>.*<\/desc>/.match(entry)
          /<desc>.*<\/desc>/.match(entry)[0].gsub(/<.*?desc>/, '')
        else
          ''
        end
      lattitude = /(lat=")\K.*\" /.match(entry)[0].strip.gsub("\"", '')
      longitude = /(lon=")\K.*(">)/.match(entry)[0].gsub("\">", '')
  
    table[name] = 
      { :area => area,
        :description => description,
        :coordinates => {:lattitude => lattitude, :longitude => longitude }
      }
    end
  end
end



parser = OsmAndFavoritesParser.new(FAVORITES_FILE)
name = parser.names.sample
parser.display_entry(name)

