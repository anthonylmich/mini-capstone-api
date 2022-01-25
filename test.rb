require "http"

system "clear"

response = HTTP.get("http://localhost:3000/products")

index = response.parse(:json)
pp index

puts "what product would you like to look at?(id:)"
id = gets.chomp 

response = HTTP.get("http://localhost:3000/products/#{id}")

system "clear"

product = response.parse(:json)
pp product

response = HTTP.post("http://localhost:3000/create_product")

response = HTTP.patch("http://localhost:3000/products/#{id}")

response = HTTP.delete("http://localhost:3000/products/#{id}")