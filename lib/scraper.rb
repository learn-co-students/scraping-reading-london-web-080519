require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

puts doc.css(".headline-26OIBN").text


buttons = doc.css(".buttonBlue-3yHkWz.heading-3RIoNe")

buttons.each do |button|
    puts button.text
end