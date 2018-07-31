require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = " "
  data[season].each do |attributes|
    if attributes["status"] == "Winner"
      winner = attributes["name"] 
    end
  end
  firstname = winner.partition(" ")
  firstname[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = " "
  data.each do |season, attributes|
    attributes.each do |category|
      if category["occupation"] == occupation
        name = category["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.each do |season, attributes|
    attributes.each do |category|
      if category["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, attributes|
    attributes.each do |category|
       if category["hometown"] == hometown 
         return category["occupation"]
       end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sumofages = 0
  totalpeople = 0
  data[season].each do |attributes|
    sumofages += attributes["age"].to_f
    totalpeople += 1
  end
  avgfloat = (sumofages / totalpeople)
  avgint = avgfloat.to_i
  avgintfloat = avgint.to_f
  avgintfloatcompare = avgintfloat + 0.5
  
  if avgfloat < (avgintfloatcompare)
    return avgint
  else
    return avgint + 1
  end
    
end
