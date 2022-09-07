require 'sinatra'
require 'tilt/erubis'
require_relative 'lib/database_persistence'

configure do 
  set :session_secret, "a_secret"
  enable :sessions
  require "sinatra/reloader"
  also_reload 'lib/database_persistence.rb'
  also_reload 'stylesheets/main.css'
end

configure(:development) do 
   
  require 'pry'
  
end

before do 
  @storage = DatabasePersistence.new(logger)
end

after do 
  @storage.disconnect
end

helpers do 
  
  def error_for_address_name(name)
    unless (1..100).cover?(name.strip.length)
      "Name cannot be empty."
    end
  end

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

def update_entry!(new_values)
  entry_id = new_values['id'].to_i

  new_values.each_pair do |column, new_value|
    next if column == 'id'
    @storage.edit_entry(entry_id, column, new_value)
  end
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

# Form to add new entry to database
get '/add_entry' do 
  erb(:add_entry)
end

# Adds new entry to database
post '/add_entry' do 
  @storage.add_entry(params)
  session[:success] = "Address entry added to the database successfully."
  erb(:add_entry)
end

# load entry into form for editing
get '/edit_entry/:id' do 
  @entry = @storage.fetch_entry_by_id(params['id'].to_i).first
  
  erb(:edit_entry)
end

# save edit changes to storage
post '/edit_entry' do 
  update_entry!(params)
  session[:success] = "Entry Updated"
  
  redirect "/entry/#{params['name'] }"
end

# delete entry from database
post '/delete_entry/:id' do 
  @storage.delete_entry(params[:id].to_i)
  session[:success] = "Entry Deleted"

  redirect "/"
end

# Search address entries
get '/search' do 
  @search_terms = params[:query]

  erb(:search)
end

# Display an entry from the database with name of :name
get '/entry/:name' do 
  @name = params[:name]
  @entry = @storage.fetch_entry_by_name(@name)
  @url = google_map_link(@entry)

  erb(:entry)
end


# display all entries for an area of :area
get '/area/:area' do 
  @area = params[:area]
  @unique_areas = @storage.unique_areas

  erb(:area)
end
