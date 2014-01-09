require 'rubygems'
require 'nokogiri'
require 'open-uri'

value = ARGV[0]
page = Nokogiri::HTML(open("http://www.le-dictionnaire.com/definition.php?mot=" + value))
puts page.xpath("//td[@class='arial-12-gris']")
#puts page.css('td.arial-12-gris')

#Another sourche: http://dictionary.reverso.net/french-definition/maison
