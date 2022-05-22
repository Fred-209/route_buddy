require 'sinatra'
require 'tilt/erubis'
require "sinatra/reloader" 
require_relative 'lib/osmand_favs_parser'

FAVORITES_FILE = './data/favorites.gpx'

before do 
  @parser = OsmAndFavoritesParser.new(FAVORITES_FILE)
  @address_table = @parser.address_table
  @names = @parser.names
  @entry_count = @address_table.count
  @area_count = @parser.unique_areas.count
  @unique_areas = @parser.unique_areas
end

helpers do 
  def entries_matching_search_terms(search_terms)
    matches = []
    @parser.names.each do |name|
      matches << name if name.match?(/#{search_terms}/i)
    end
    matches
  end

  def entries_in_area(area)
    matches = []
    @address_table.each do |entry, values|
      matches << entry if values[:area] == area
    end
    matches
  end
end

not_found do 
  redirect '/'
end

get '/' do 

  @entry = @parser.address_table[@parser.names.sample]
  @url = @parser.google_map_link(@entry)

  erb(:index)
end

get '/search' do 
  @search_terms = params[:query]
  @search_results = entries_matching_search_terms(@search_terms)

  erb(:search)
end

get '/entry/:name' do 
  @name = params[:name]
  @entry = @address_table[@name]
  @url = @parser.google_map_link(@entry)

  erb(:entry)
end

get '/area/:area' do 
  @area = params[:area]

  erb(:area)
end
