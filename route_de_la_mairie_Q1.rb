require 'rubygems'
require 'nokogiri'
require 'open-uri'


# fonction qui permet d'obtenir l'email à partir d'une page
def get_the_email_of_a_townhal_from_its_webpage(link)
    page = Nokogiri::HTML(open(link))
    links = page.css('div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    puts links
end

puts get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/91/ballainvilliers.html")
puts get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/91/guigneville-sur-essonne.html")