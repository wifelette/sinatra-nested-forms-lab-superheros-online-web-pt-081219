# frozen_string_literal: true

require 'sinatra/base'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]

    params[:team][:members].each do |hero_info|
      Hero.new(hero_info)
    end

    @heroes = Hero.all
    erb :team
  end
end
