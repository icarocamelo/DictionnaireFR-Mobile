require 'rubygems'
require 'nokogiri'
require 'open-uri'

value = ARGV[0]
link = Nokogiri::HTML(open("http://www.laparlure.com/terme/" + value))
result = link.xpath("//div[@class='grid_9']/table/*[not(span)]")
#result = link.search("//span").remove
#doc2.xpath('//img').each {|x| x.remove}
puts result.to_s.encode("iso-8859-1").force_encoding("utf-8")
