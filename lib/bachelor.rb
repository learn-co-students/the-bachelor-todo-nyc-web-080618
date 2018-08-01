def get_first_name_of_season_winner(data, season)
  #The method should return the first name of that season's winner.
    data[season].each do |x|
      if x["status"] == "Winner"
        return x["name"].split(' ')[0]
      end
    end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total = 0
  data.each do |key, value|
    value.each do |x|
    if x["hometown"] == hometown
      total += 1
    end
  end
end
  total
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  count = 0
  data[season].each do |x|
    count += x["age"].to_f
end
  total_average = count/data[season].length
  total_average.round
end
