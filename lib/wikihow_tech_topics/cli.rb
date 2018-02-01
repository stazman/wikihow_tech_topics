require_relative 'scraper'
require_relative 'wikihow_tech_topic_model'
require 'pry'

class WikihowTechTopics::CLI

    def call
        start
    end

    def start
        puts "Welcome to Wikihow Tech Topics!"
        puts ""
        puts "Review the list of articles above then \ntype the number of the article above \nthat you wish to read."
        puts ""
        scraped_title_hash = WikihowTechTopics::Scraper.scraped_title_hash
        scraped_title_hash.collect do |key, title|
        puts "#{title}"
        end

    end


end

    # def self.scraped_content
    #     newly_scraped_for_content = WikihowTechTopics::WikihowTechTopicModel.create_from_content_hash
    #     newly_scraped_for_content.each.with_index(1) do |content_steps, i|
    #         puts "#{i}. #{content_steps}"
    #     end
    # end    

    # scraped_content

    # def self.scraped_titles
    #     newly_scraped_for_titles = WikihowTechTopics::WikihowTechTopicModel.create_from_title_hash
    #     newly_scraped_for_titles.each.with_index(1) do |title, i|
    #         unless title == ""
    #             puts "#{i}. #{title}"
    #         end
    #     end
    #     puts ""
    #     puts ""
    # end  
    # scraped_titles



