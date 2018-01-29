require 'openurl'
require 'nokogiri'
require 'pry'


# test_array = [{'title' => 'how to text', 'content' => 'just do it'}], {'title' => 'how to email', 'content' => 'just do it, too'}]

class WikihowTechTopics::Scraper
    
    def self.scraped_title
        
        title_hash = {}

        @home_page = Nokogiri::HTML(open('https://www.wikihow.com/Category:Computers-and-Electronics'))

        home_page = @home_page.css('div')
        
        home_page.collect do |title|
            
        article_title = {
            :title => title.css('p.span').text
        }
        
        end
        title_hash << article_title    
    end
end

    # def self.scraped_content
    #     content_array = []


    #     content_url.css(<div class="thumbnail").each do |article|
    
    #     article_content = {
    #         :content_url => article.css( <a href="//www.wikihow.com/Change-Alexa%27s-Name">).text
    #     }
    #     end
    #     content_array << article_content
    # end

        # <div class="text"><p>How to <br><span>Change Alexa's Name</span></p></div>

        # <div class="thumbnail d-height d-width">
        # <a href="//www.wikihow.com/Change-Alexa%27s-Name">
        # <div id="bodycontents">
