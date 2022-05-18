
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



parser = OsmAndFavoritesParser.new('gpx_parser.txt')
p parser.unique_areas

# file = File.read("gpx_parser.txt")
# addr_entries = file.scan(/(?m)<wpt .+?<\/wpt>/).uniq

# addr_table = {}
# addr_entries.each do |entry|
  # area = /<type>.*<\/type>/.match(entry)[0].gsub(/<.*?type>/, '')
  # name = /<name>.*<\/name>/.match(entry)[0].gsub(/<.*?name>/, '')
  # description = 
  #   if /<desc>.*<\/desc>/.match(entry)
  #     /<desc>.*<\/desc>/.match(entry)[0].gsub(/<.*?desc>/, '')
  #   else
  #     ''
  #   end
  # lattitude = /(lat=")\K.*\" /.match(entry)[0].strip.gsub("\"", '')
  # longitude = /(lon=")\K.*(">)/.match(entry)[0].gsub("\">", '')
  
  # addr_table[name] = 
  #   { :area => area,
  #     :description => description,
  #     :coordinates => {:lattitude => lattitude, :longitude => longitude }
  #   }
# end
# puts addr_table.count



