require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_supply = ""
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    if season_hash == :summer
      another_holiday_hash.each do |holiday_hash, supply_array|
        if holiday_hash == :fourth_of_july
          holiday_supply << supply_array[1]
          #binding.pry
        end
      end
    end
  end
  holiday_supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    if season_hash == :winter
      another_holiday_hash.each do |holiday_hash, supply_array|
        if holiday_hash == :christmas || holiday_hash == :new_years
          supply_array << supply
          #binding.pry
        end
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    if season_hash == :spring
      another_holiday_hash.each do |holiday, supply_array|
        if holiday == :memorial_day
          supply_array << supply
          #binding.pry
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  #binding.pry
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  another_supply_array = []
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    if season_hash == :winter
      another_holiday_hash.each do |holiday_hash, supply_array|
        supply_array.each do |supply|
          another_supply_array.push(supply)
          #binding.pry 
        end
      end
    end
  end
  
  another_supply_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    puts "#{season_hash.capitalize}:"
      
    another_holiday_hash.each do |holiday, supply|
      holiday_hash_array = holiday.to_s.split("_")
      
      holiday_hash_array.each do |supply|
        supply.capitalize!
      end
    
      holiday_string = holiday_hash_array.join(" ")
      puts "  #{holiday_string}: #{supply.join(", ")}"
      #binding.pry
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  bbq_array = []
  
  holiday_hash.each do |season_hash, another_holiday_hash|
    another_holiday_hash.each do |holiday, supply|
      supply.each do |string|
        if string == "BBQ"
          bbq_array << holiday
        end
      end
    end
    bbq_array
  end
  
  bbq_array
end