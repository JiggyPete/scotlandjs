require 'yaml'
data = YAML.load_file('../../scotlandcss/scotlandcss/_data/speakers.yml')
speakers =  data
speakers.each do |speaker|
  image = speaker["image"][9..-1]
  `open "http://localhost:5000/?conference=scotlandcss&name=#{speaker["name"]}&talk=#{speaker["title"]}&twitter=#{speaker["twitter"]}&picture=#{image}"`
end
