def get_first_name_of_season_winner(data, season)
  participants = data[season]
  participants.each do |person|
    if person["status"] = "Winner"
      contestant_winner = person["name"].split(" ")
      return contestant_winner[0]
    end
  end
end

def get_contestant_name(data, entered_occupation)
  data.each do |season_key, individuals|
    individuals.each do |people|
        if people["occupation"] == entered_occupation
          return people["name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, entered_hometown)
  home_town_count = 0
  data.each do |season_key, individuals|
    individuals.each do |people|
      if people["hometown"] == entered_hometown
        home_town_count += 1
      end
    end
  end
  return home_town_count
end

def get_occupation(data, entered_hometown)
  data.each do |season_key, individuals|
    individuals.each do |people|
      if people["hometown"] == entered_hometown
        return people["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, entered_season)
  collective_age = 0
  overall_count = 0
  data.each do |season_key, individuals|
    if season_key == entered_season
      individuals.each do |people|
        collective_age += people["age"].to_f
        overall_count += 1
      end
    end
  end
  return (collective_age / overall_count).round
end
