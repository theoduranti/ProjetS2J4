require 'rubygems'
require 'nokogiri'
require 'open-uri'

# stocker URL des mairies dans le tableau mairie_val_d_oise
def get_all_the_urls_of_val_doise_townhalls
    mairie_val_d_oise = Array.new
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links = page.css('a.lientxt')
    links.each do |mairie|
        mairie_val_d_oise << mairie['href']
    end
    return mairie_val_d_oise
end

# stocker le résultat de la fonction dans la variable tableau
tableau = get_all_the_urls_of_val_doise_townhalls

# fonction qui permet d'obtenir l'email à partir d'une page
def get_the_email_of_a_townhal_from_its_webpage(link)
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com#{link}"))    # Concaténation URL commune et celle choppée par la précédente fonction 
    links = page.css('div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    puts links
end

# Pour chaque élément du tableau, le passer dans la fonction qui permet d'obtenir le mail
tableau.each do |mairie|
    get_the_email_of_a_townhal_from_its_webpage(mairie)
end