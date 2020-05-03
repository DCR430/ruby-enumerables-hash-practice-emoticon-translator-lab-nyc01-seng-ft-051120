# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path) # emoticons is the vriable for the yaml file of emoticons in both english and japanese
  new_hash = {} # new hash represented by empty curly brackets, return new has at the end
  emoticons.each do |key,value| # emoticons are looped thru via .each method, gone thru both key and value
      new_hash[key] = {}
      new_hash[key][:english] = value[0]
      new_hash[key][:japanese] = value[1]
    end

    new_hash
end

def get_japanese_emoticon
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
    emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  end

  
  # code goes here
end

def get_english_meaning
  # code goes here
end
