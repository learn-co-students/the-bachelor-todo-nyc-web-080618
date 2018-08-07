require "pry"
def get_first_name_of_season_winner(data, season)
  first_name = ""
  data.each do |x,y|
    if x.to_s == season
      y.each do |i|
        if i["status"] == "Winner"
          first_name = i["name"].split(" ")[0]
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |x,y|
    y.each do |i|
        if i["occupation"] == occupation
          name = i["name"]
        end
      end
    end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |x,y|
    y.each do |i|
        if i["hometown"] == hometown
          count += 1
        end
      end
    end
  count  
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |x,y|
    y.each do |i|
      if i["hometown"] == hometown
        if occupation == ""
          occupation = i["occupation"]
        end
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  count = 0
  sum = 0
  avg = 0
  data.each do |x,y|
    y.each do |i|
      sum += i["age"].to_f
      count += 1
    end
  end
  (sum/count).round
end
