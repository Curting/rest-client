require 'rest-client'

puts "REST Client"
puts "----------"
puts "Search on Bing.com:"
input = gets.chomp

response = RestClient.get('https://www.bing.com/search', { params: { q: input } })

puts "\nCode: #{response.code}"
puts "\nCookies:\n#{response.cookies}"
puts "\nHeaders:\n#{response.headers}"

puts "\nProceed to read the content of the body? (Y/n)"
input = gets.chomp.downcase
puts "\nContent of the body:\n#{response.body}" if input == "y"