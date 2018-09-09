require 'sinatra/base'
require_relative "../models/team.rb"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @members={}
      params[:team][:members].each do |member|
      end

      erb :'../views/team'

    end
end
