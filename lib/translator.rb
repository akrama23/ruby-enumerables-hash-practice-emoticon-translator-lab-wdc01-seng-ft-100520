# require modules here

require 'pry'
require 'yaml'
# emoticons = 
# YAML.load_library('emoticons.yml')

def load_library(file_path)
 YAML.load_file(file_path)
file_path.each_with_object({}) do |(key, value), final_hash|
  binding.pry 
end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end