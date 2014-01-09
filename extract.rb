require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://www.le-dictionnaire.com/definition.php?mot=maison"))
puts page.xpath("//td[@class='arial-12-gris']")
#puts page.css('td.arial-12-gris')
