require 'yaml'

require 'pry'

def load_library(path)
 final_hash = {}
 YAML.load_file(path).each do |key, value|
  final_hash[key] = {}
  final_hash[key][:english] = value[0]
  final_hash[key][:japanese] = value[1]
end
final_hash
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
end 	  if emoji["get_meaning"].has_key?(emoticon)
    emoji["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
  