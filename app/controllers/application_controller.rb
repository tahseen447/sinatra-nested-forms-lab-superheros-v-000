require 'sinatra/base'
require_relative "../models/team"
require_relative "../models/super_hero"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      @team = Team.new(params[:team])
      puts params.inspect
      params[:team][:members].each do |member|
        puts "here"
        SuperHero.new(member)
      end
      @members = SuperHero.all
      erb :'../views/team'

    end
end
