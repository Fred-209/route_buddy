require 'sinatra'
require 'tilt/erubis'
require_relative 'lib/database_persistence'


configure(:production) do 
  set :bind, '0.0.0.0'
end
configure(:development) do 
  require "sinatra/reloader" 
  also_reload 'lib/database_persistence.rb'
end

before do 
  @storage = DatabasePersistence.new(logger)
end

helpers do 
  
  def google_map_link(entry)
    lat = entry['lat']
    lon = entry['long']
    "https://www.google.com/maps/search/?api=1&query=#{lat},#{lon}"
  end

  def group_by_route_num(entries)
    entries.group_by { |entry| entry['route_num'] }.sort.to_h
  end
end

def group_by_area(entries)
  entries.group_by { |entry| entry['area'] }
end


#### Routes

not_found do 
  redirect '/'
end

get '/' do 
  @entry_count = @storage.entry_count
  @area_count = @storage.unique_areas.count
  @unique_areas = @storage.unique_areas
  
  erb(:index)
end

get '/search' do 
  @search_terms = params[:query]
  @search_results = @storage.search(@search_terms)

  erb(:search)
end

get '/entry/:name' do 
  @name = params[:name]
  @entry = @storage.fetch_entry_by_name(@name)
  @url = google_map_link(@entry)

  erb(:entry)
end

get '/area/:area' do 
  @area = params[:area]
  @unique_areas = @storage.unique_areas

  erb(:area)
end
