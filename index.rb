require 'sinatra'
#require 'sinatra/cache'
require 'pony'
require 'sass'
require 'thin'
require 'slim'


# set :root, '/home/fal11/dickweed/Dropbox/sites/whatistheplan'
# set :public, '/home/fal11/dickweed/Dropbox/sites/whatistheplan'
# set :cache_enabled, true

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

post '/contact' do
  name = #{params[:name]}
  mail = #{params[:mail]}
  body = #{params[:body]}
  Pony.mail(:to => 'cclub@yakko.cs.wmich.edu', :from => mail, :subject => "PLAN Contact Form from " + name, :body => body)

  slim :contact
end

get '/contact' do
  slim :contact
end
