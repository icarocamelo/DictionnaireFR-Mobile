require 'rubygems'
require 'nokogiri'
require 'open-uri'

value = ARGV[0]
link1 = Nokogiri::HTML(open("http://www.le-dictionnaire.com/definition.php?mot=" + value))
#link2 = Nokogiri::HTML(open("http://dictionary.reverso.net/french-definition/" + value))
#link3 = Nokogiri::HTML(open("http://www.laparlure.com/terme/" + value))

puts link1.xpath("//td[@class='arial-12-gris']")
#puts link2.xpath("//div[@id='TableHTMLResult']")
#puts link3.xpath("//div[@id='grid_9']")
#puts page.css('td.arial-12-gris')

#Another sourche: http://dictionary.reverso.net/french-definition/maison
#div id: TableHTMLResult
