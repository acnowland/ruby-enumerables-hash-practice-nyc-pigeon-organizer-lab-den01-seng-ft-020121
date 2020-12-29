require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key,value), final_hash|
    value.each do |characteristic, pigeon|
      pigeon.each do |pigeon_name|
        if !final_hash[pigeon_name]
          final_hash[pigeon_name] = {}
        end
        if !final_hash[pigeon_name][key]
          final_hash[pigeon_name][key] = []
        end
        final_hash[pigeon_name][key].push(characteristic.to_s)
      end
    end
  end
  binding.pry
end
