require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'harrisontan', # Change the username to yours.
  :password => '',
  :database => 'potlucks', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

require_relative "models/potluck"
require_relative "models/person"
require_relative "models/item"
require_relative "models/tag"

require_relative "controllers/potlucks"
require_relative "controllers/people"
require_relative "controllers/items"
require_relative "controllers/tags"

require_relative "helpers/form_helpers"

get "/" do
  @potlucks = Potluck.all
  erb :index
end