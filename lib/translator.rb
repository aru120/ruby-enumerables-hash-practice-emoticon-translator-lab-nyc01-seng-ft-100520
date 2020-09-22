# require modules here
require "yaml"
require 'pry'
<<<<<<< HEAD

def load_library(yml)
  flex = YAML.load_file(yml) 

  flex.each_with_object({}) do |(key, value), i|
  i[key] = {:english => value[0],:japanese => value[1]}
  i
  end
end

def get_japanese_emoticon(yml,emo)
  flex = load_library(yml)
  
  flex.each do |key,value|
    if value[:english] == emo 
      return value[:japanese]
  end
end
return "Sorry, that emoticon was not found"
end

# get_japanese_emoticon("./lib/emoticons.yml", "ヽ(ｏ`皿′ｏ)ﾉ")

 def get_english_meaning(yml,emo)
  flex = load_library(yml)
  flex.each do |key,value|
    if value[:japanese] == emo
     return  key
    end
 end
  return "Sorry, that emoticon was not found"
end
 get_english_meaning("./lib/emoticons.yml", "(＾ｖ＾)")
=======



def load_library
flex = YAML.load_file("./lib/emoticons.yml") 
# newHash = {"emotion" => {:english,:japanese}, "emoticon" => {} }


flex.each_with_object({}) do |(key, value), i|
  i[key] = key
  i[key][:english] = value[0]
  i[key][:japanese] = value[1]
  binding.pry
   end


  end
  load_library
  




# def get_japanese_emoticon
#   # code goes here
# end

# def get_english_meaning
  
#   flexyml = YAML.load_file(yml)
  
#   flexyml.each do |key, value|
#     if value[1] == emo
#       return key
#   end
  
# end
>>>>>>> 3df8265ca232ab940b8119f4ed45f0e722412f32
