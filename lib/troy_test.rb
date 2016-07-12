require "pry"

holiday_hash = {
    :winter => {
      :new_years => ["Party Hats"],
      :christmas => ["Lights", "Wreath"],
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

# def all_winter_holiday_supplies(holiday_hash)
#   holiday_hash.each do |season, holiday|
#     if season == :winter
#       winter_supplies=[]
#       holiday.each do |holiday, supplies|
#        winter_supplies<<supplies
#       end
#       puts winter_supplies.flatten(1)
#     end
#   end
# end
# all_winter_holiday_supplies(holiday_hash)

# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holiday|
#     puts "#{season.capitalize}:"
#     holiday.each do |holiday, supplies|
#       # binding.pry
#       split_holiday=holiday.to_s.split("_")
#       split_holiday.each do |word|
#         word.capitalize!
#       end
#       # all_supplies=[]
#       # supplies.each do |supply|
#       #   all_supplies<<supply
#       #   puts all_supplies.join
#       # end
#       puts " " + split_holiday.join(" ") + ": " + supplies.join(", ")
#     end
#   end
# end
# all_supplies_in_holidays(holiday_hash)


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
end

all_holidays_with_bbq(holiday_hash)



