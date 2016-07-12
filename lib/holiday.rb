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
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, equipment|
      if holiday == :christmas || :new_years
        equipment<<"Balloons"
      end
    end
  end  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]=["Grill", "Table Cloth"]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall]={columbus_day: ["Flags", "Parade Floats", "Italian Food",]}
  holiday_hash[:winter]={valentines_day: ["Cupid Cut-Out", "Candy Hearts"]}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.each do |season, holiday|
    if season == :winter
      winter_supplies=[]
      holiday.each do |holiday, supplies|
       winter_supplies<<supplies
      end
      return winter_supplies.flatten(1)
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      # binding.pry
      split_holiday=holiday.to_s.split("_")
      split_holiday.each do |word|
        word.capitalize!
      end
      # all_supplies=[]
      # supplies.each do |supply|
      #   all_supplies<<supply
      #   puts all_supplies.join
      # end
      puts "  " + split_holiday.join(" ") + ": " + supplies.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays=[]
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.any? {|item| item=="BBQ"}
        bbq_holidays<<holiday
      end
    end
  end 
  return bbq_holidays
  #whaddup
end







