require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'pry'

set :database, { adapter: "sqlite3", database: "development.sqlite3" }

get '/' do
  erb "<a href='/reports'><h1>Welcome to Weather Reports</h1></a>"
end

get '/reports' do
  @reports = Report.all.sort_by { |r| r.id }.reverse
  erb :index
end

post '/reports' do
  report = Report.new(params[:report])
  if report.save
    redirect "/reports/#{report.id}"
  else
    redirect '/reports/new'
  end
end

get '/reports/new' do
  erb :new
end

get '/reports/:id' do
  @report = Report.find_by_id(params[:id])
  erb :show
end

put '/reports/:id' do
  report = Report.find_by_id(params[:id])
  if report.update(params[:report])
    redirect "/reports/#{report.id}"
  else
    redirect "/reports/#{report.id}/edit"
  end
end

get '/reports/:id/edit' do
  @report = Report.find_by_id(params[:id])
  erb :edit
end

delete '/reports/:id' do

end
