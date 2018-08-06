def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |x|
    if x["status"] == "Winner"
      return x["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info_hash|
    info_hash.each do |x|
      if x["occupation"] == occupation
         return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info_arr|
    info_arr.each do |x|
      if x["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info_arr|
    info_arr.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  data[season].each do |x|
    total_age += (x["age"]).to_i
  end
  (total_age / data[season].length.to_f ).round(0)
end
