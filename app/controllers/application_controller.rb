class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/players" do
    players=Player.all
    players.to_json
  end

  get "/agents" do
    agents = Agent.all
    agents.to_json
  end

  post "/agents" do
    agent = Agent.create(
      name: params[:name],
      ranking: params[:ranking],
      player_id: params[player_id]
    )
    agent.to_json
  end

  post "/players" do
    player = Player.create(
      name: params[:name],
      rank: params[:rank]
    )
    player.to_json
  end

  patch '/players/:id' do
    player = Player.find(params[:id])
    player.update(
      rank: params[:rank]
    )
    player.to_json
  end

end
