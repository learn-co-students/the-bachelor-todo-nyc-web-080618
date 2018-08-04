require 'pry'


def get_first_name_of_season_winner(data, season)
  winner = ""
  
  data[season].each do |cont|
    #binding.pry
      if cont["status"].downcase == "winner"
        winner = cont["name"]
      end
  end
  winner.split(" ")[0]
end




def get_contestant_name(data, occupation)
  job = ""
  
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          cont.each do |season_key, season_value|
            #binding.pry
              if season_value == occupation
                job = cont["name"]
              end
          end
      end
  end
  job
end




def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          cont.each do |season_key, season_value|
            #binding.pry
              if season_value == hometown
                hometown_counter+=1
              end
          end
      end
  end
  hometown_counter
end




def get_occupation(data, hometown)
  data.each do |szn_number, szn_info|
    #binding.pry
      szn_info.each do |cont|
        #binding.pry
          if cont.has_value?(hometown)
            return cont["occupation"]
          end
      end
  end
end




def get_average_age_for_season(data, season)
  cont_counter = 0
  cont_ages = 0
  
  data[season].each do |cont|
    #binding.pry
      cont.each do |season_key, season_value|
        #binding.pry
          if season_key == "age"
            cont_counter+=1
            cont_ages+=season_value.to_f
          end
      end
  end
  (cont_ages/cont_counter).round
end
