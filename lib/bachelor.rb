require 'pry'

def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        name = people["name"].split(' ').first
      end 
    end
  end  
  name
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |people|
      people.each do |key,value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
