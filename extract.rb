require 'rubygems'
require 'nokogiri'
require 'open-uri'

value = ARGV[0]
link = Nokogiri::HTML(open("http://www.laparlure.com/terme/" + value))
result = link.xpath("//div[@class='grid_9']/table/*[not(span)]")
result.search("//span").remove
result.search("//p").remove
result.search("//div").remove
puts result.to_s.encode("iso-8859-1").force_encoding("utf-8")
