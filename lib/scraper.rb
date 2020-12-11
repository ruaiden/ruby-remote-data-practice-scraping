require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

doc.css(".headline-26OIBN").text.strip

courses = doc.css(".title-oE5vT4")
doc.css(".title-oE5vT4")[0]
doc.css(".title-oE5vT4")[0].name
doc.css(".title-oE5vT4")[0].attributes 

courses.each do |course|
  puts course.text.strip
end 