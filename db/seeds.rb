puts "🌱 Seeding spices..."

# Seed your database here
Player.create(name: "Jon", rank: "Diamond", )
Player.create(name: "Nate", rank: "Silver")
Player.create(name: "GeorgeK" rank: "Silver")
Player.create(name: "GeorgeR", rank: "Bronze")
Player.create(name: "Elizabeth", rank: "Bronze")
Player.create(name: "Luis", rank: "Gold")
Player.create(name: "David", rank: "Gold")
Player.create(name: "Will", rank: "Bronze")
Player.create(name: "Emily", rank: "Iron")
Player.create(name: "Riz", rank: "Silver")

agent_names = ["Omen", "Astra", "Harbor", "Viper", "Brimstone", "Jett", "Reyna", "Pheonix", "Neon", "Yoru", "Raze", "Killjoy", "Sage", "Cypher", "Chamber",
 "Skye", "Breach", "Fade", "Kay-o", "Sova"]

Player.all.each do |agent|
    3.times do
      Agent.create(name: agent_names.sample, ranking: rand(1..3), player_id: player_id)
    end
  end

puts "✅ Done seeding!"
