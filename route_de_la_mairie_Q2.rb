require 'rubygems'
require 'nokogiri'
require 'open-uri'

# stocker URL des mairies dans le tableau mairie_val_d_oise
def get_all_the_urls_of_val_doise_townhalls(annuaire)
    page = Nokogiri::HTML(open(annuaire))
    links = page.css('a.lientxt')
    links.each do |mairie|
        puts mairie['href']
    end
end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")