require "pry"

def game_hash
    {home: {team_name: "Brooklyn Nets",
            colors: ["Black", "White"],
            players: {
                "Alan Anderson" => {
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1
              },
              "Reggie Evans" => {
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7
              },
              "Brook Lopez" => {
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15
              },
              "Mason Plumlee" => {
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 12,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5
              },
              "Jason Terry" => {
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1
              }}},
    away: {team_name: "Charlotte Hornets",
            colors: ["Turquoise", "Purple"],
            players: {
              "Jeff Adrien" => {
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2
              },
              "Bismak Biyombo" => {
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 7,
                blocks: 15,
                slam_dunks: 10
              },
              "DeSagna Diop" => {
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5
              },
              "Ben Gordon" => {
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0
              },
              "Brendan Haywood" => {
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 22,
                blocks: 5,
                slam_dunks: 12
              }}}}
end

#def num_points_scored(player)
#  game_hash.each do |home_or_away, team_hash|
#    team_hash.each do |team_info_key, team_info_val|
#     if team_info_key == :players
#      team_info_val.each do |player_name, player_stats_hash|
#        if player_name == player
#          return player_name[:points]
          #player_stats_hash.each do |stat_key, stat_val|
            #if stat_key == :points
              #stat_val
            #end
          #end
#        end
#      end
#    end
#  end
#end
#end

def num_points_scored(player)
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
      if player_name == player
        return player_stats[:points]
      end
    end
  end
end

def shoe_size(player)
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
      if player_name == player
        return player_stats[:shoe]
      end
    end
  end
end

def shoe_size(player)
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
      if player_name == player
        return player_stats[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |home_or_away, team_hash|
    if team_hash[:team_name] == team
      return team_hash[:colors]
    end
  end
end

def team_names
  game_hash.map do |home_or_away, team_hash|
    team_hash[:team_name]
  end
end

def player_numbers(team)
  answer = []
  game_hash.each do |home_or_away, team_hash|
    if team_hash[:team_name] == team
      team_hash[:players].each do |player_name, player_stats|
      answer << player_stats[:number]
    end
    end
  end
  return answer.sort
end

def player_stats(player)
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
    if player_name == player
      return player_stats
    end
    end
  end
end

def big_shoe_rebounds
  compare_shoe = 0
  player_with_big_shoe = ""
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
        if player_stats[:shoe] > compare_shoe
          compare_shoe = player_stats[:shoe]
          player_with_big_shoe = player_name
      end
    end
  end
  game_hash.each do |home_or_away, team_hash|
    team_hash[:players].each do |player_name, player_stats|
      if player_name == player_with_big_shoe
        return player_stats[:rebounds]
      end
    end
  end
end
