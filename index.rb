require 'sinatra'
require 'sass'
require 'thin'
require 'slim'

get '/' do
  slim :index
end

get '/stylesheet.css' do
  sass :stylesheet, :style => :expanded
end

get '/style' do
  :stylesheet
end

get '/sponsors' do
  slim :sponsors
end

get '/location' do
  slim :location
end

get '/pastPlans' do
  slim :pastPlans
end

get '/contact' do
  slim :contact
end

get '/faq' do
  slim :faq
end
