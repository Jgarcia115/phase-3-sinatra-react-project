require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/players" do
    players=Player.all
    players.to_json(include: :agents)
  end

  get '/players/:id' do
    player = Player.find(params[:id])
    player.to_json(include: :agents)
  end

  get "/agents" do
    agents = Agent.all
    agents.to_json
  end

  post "/agents" do
    player = Player.find(params[player_id])
    agent = player.agents.create(
      name: params[:name],
    )
    agent.to_json
  end

  post "/players" do
    player = Player.create(
      name: params[:name],
      rank: params[:rank],
      agents: params[:agents]
    )
    player.to_json
  end

  patch '/agents/:id' do
    agent = Agent.find(params[:id])
    agent.update(
      name: params[:name]
    )
    agent.to_json
  end

  delete '/agents/:id' do
    agent = Agent.find(params[:id])
    agent.destroy
    agent.to_json
  end

end
