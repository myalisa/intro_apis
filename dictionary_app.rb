require "http"

response = HTTP.get("https://api.wordnik.com/v4/word.json/cake/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")

examples = response.parse



examples.each do |text|
  p text
  puts ""
end


