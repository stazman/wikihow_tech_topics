require 'open-url'
require 'nokogiri'
require 'pry'

class Scraper
binding.pry
    @article_hash = {}

    def self.scrape_home_page_for_title
        home_page = Nokogiri::HTML(open(https://www.wikihow.com/Category:Computers-and-Electronics))

        # <div class="text"><p>How to <br><span>Change Alexa's Name</span></p></div>

        do on same page for later

        <div class="thumbnail d-height d-width">
        <a href="//www.wikihow.com/Change-Alexa%27s-Name">
        <div id="bodycontents">


        home_page.css('div').each do |article|
    
        articles = {
            :title => article.css('p.span').text
        }

        @article_hash << articles


    #     profile_hash = {}
    
    # profile_page = Nokogiri::HTML(open(profile_url))
    
    # link = profile_page.css("div.social-icon-container").children.css("a").map { |sm| sm.attribute("href").text }
    
    # link.each do |site|

        end
    end
    
end