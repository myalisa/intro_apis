require "http"

system "clear"

print "Enter a Word:"
user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{ user_input }/definitions?limit=10&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")

definitions = response.parse

puts ""
puts "Definitions"
puts "=" * 50
puts ""

definitions.each do |definition|
  if definition["text"] != nil
    puts "     - #{definition["partOfSpeech"]} - #{definition["text"]}"
  end
end






