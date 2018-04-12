require 'rubygems'
require 'nokogiri'
require 'open-uri'

# cette méthode vous donne le nom des monnaies :
def monnaie()
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    links = page.css("td[2]/a").text
    puts "\nVOICI LE NOM DES MONNAIES\n\n"
    puts links
end

# cette méthode vous donne le prix des monnaies correspondantes
def cours_des_monnaies()
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    links = page.css("td[5]/a").text
    puts "\nET MAINTENANT LE PRIX DES MONNAIES CORRESPONDANTES\n\n"
    puts links
end

monnaie()
cours_des_monnaies()


