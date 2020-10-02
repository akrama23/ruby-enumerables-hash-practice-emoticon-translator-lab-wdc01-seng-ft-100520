# require modules here

require 'pry'
require 'yaml'
# emoticons = 
# YAML.load_library('emoticons.yml')

  def load_library(file_path)
  emoticons =  YAML.load_file(file_path)
  emoticons_hash = Hash.new 
  emoticons.each do |key, value|
    emoticons_hash[key] = Hash.new 
    emoticons_hash[key][:english] = value[0]
    emoticons_hash[key][:japanese] = value[1]
   end
   emoticons_hash
   end

# def get_japanese_emoticon(file_path, emoticon)
# emoticons_lib = load_library(file_path)
# emoticons_lib.each do |meaning, language|
#   if emoticons_lib[language][:english] == emoticon
#     return meaning 
#   end 
# end 
# end

def get_english_meaning(file_path, emoticon)
  
  emoticons_lib = load_library(file_path)
  emoticons_lib.each do |word, definitions|
    if definitions[:japanese] == emoticon
      return word 
    end 
  end
  return "Sorry, that emoticon was not found"
   
end