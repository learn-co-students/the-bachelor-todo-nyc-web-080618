def get_first_name_of_season_winner(data, season)
  # code here
 arr = []
  data.each do |key, value|
    if key == season
      value.each do |element|
        if element["status"] == "Winner"
          arr << element["name"]
        end
      end
    end
  end
  arr[0].split(" ").first
end



def get_contestant_name(data, occupation)
  # code here
  arr = []
  data.each do |key, value|
      value.each do |element|
        if element["occupation"] == occupation
          arr << element["name"]
        end
      end
  end
  arr[0]
end


def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, value|
      value.each do |element|
        if element["hometown"] == hometown
          count += 1
        end
      end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  arr = []
  data.each do |key, value|
      value.each do |element|
        if element["hometown"] == hometown
          arr << element["occupation"]
        end
      end
  end
  arr[0]
end

def get_average_age_for_season(data, season)
  # code her
  total_age = 0
  length = 0
  data.each do |key, value|
    if key == season
      length += value.length
      value.each do |element|
        total_age += element["age"].to_i
      end
    end  
  end
  (total_age.to_f / length).round
end
