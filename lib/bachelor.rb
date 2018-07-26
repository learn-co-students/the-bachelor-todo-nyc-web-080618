require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |season_key,persons_array|
    if season == season_key
      persons_array.each do |person|
        person.each do |attribute,value|
          if value == "Winner"
            winner_name = person["name"]
          end
        end
      end
    end
  end
  winner_name.split[0]
end




def get_contestant_name(data, occupation)
  woman_name = ""
  data.each do |season_key,persons_array|
    persons_array.each do |person|
      person.each do |attribute,value|
        if value == occupation
          woman_name = person["name"]
        end
      end
    end
  end
  woman_name
end


def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_key,persons_array|
    persons_array.each do |person|
      person.each do |attribute,value|
        if value == hometown
          hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end



def get_occupation(data, hometown)
  first_occupation = ""
  data.each do |season_key,persons_array|
    persons_array.each do |person|
      person.each do |attribute,value|
        if value == hometown && first_occupation == ""
            first_occupation = person["occupation"]
        end
      end
    end
  end
  first_occupation
end


def get_average_age_for_season(data, season)
  age_array = []
  data.each do |season_key,persons_array|
    if season_key == season
      persons_array.each do |person|
        person.each do |attribute,value|
          if attribute == "age"
            age_array << value.to_i
          end
        end
      end
    end
  end


  total_age = 0
  age_array.each do |num|
    total_age += num
  end


  ((total_age.to_f / age_array.length) + 0.5 ).floor
end
