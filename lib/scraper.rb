require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open("http://flatironschool.com/"))

puts doc.css(".headline-26OIBN").text

courses = doc.css("div.title-oE5vT4")

item = 0

while item < 3 do
  puts courses[item].text.strip
  item += 1
end