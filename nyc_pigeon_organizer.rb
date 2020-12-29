require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key,value), final_hash|
    value.each do |characteristic, pigeon|
      pigeon.each do |pigeon_name|
        if !final_hash[pigeon_name]
          final_hash[pigeon_name] = {}
        end
        if !final_hash[pigeon_name][characteristic]
          final_hash[pigeon_name] = characteristic
        end
      end
    end
    binding.pry
  end
  binding.pry
end
