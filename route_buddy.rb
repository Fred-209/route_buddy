require 'sinatra'
require 'tilt/erubis'
require_relative 'lib/database_persistence'


configure(:development) do 
  require "sinatra/reloader" 
  also_reload 'lib/database_persistence.rb'
end

before do 
  @storage = DatabasePersistence.new(logger)
end

after do 
  @storage.disconnect
end

helpers do 
  
  # def add_entry_to_storage
  #   @storage.add_entry()
  # end

  def google_map_link(entry)
    lat = entry['lat']
    long = entry['long']
    "https://www.google.com/maps/search/?api=1&query=#{lat},#{long}"
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
  
  
  erb(:index)
end

get '/view_entries' do 
  @entry_count = @storage.entry_count
  @area_count = @storage.unique_areas.count
  @unique_areas = @storage.unique_areas

  erb(:view_entries)
end

get '/add_entry' do 

  erb(:add_entry)
end

post '/add_entry' do 
  @storage.add_entry(params)
  session[:success] = "Address entry added to the database successfully."
  erb(:add_entry)
end

get '/delete_entry' do 
  

  erb(:delete_entry)
end

get '/lookup_entry' do
  @entries = @storage.search(params[:search_terms])
  
  erb(:entries_found)
end 

get '/search' do 
  @search_terms = params[:query]

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
