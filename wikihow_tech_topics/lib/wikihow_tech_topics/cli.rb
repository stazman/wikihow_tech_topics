
class WikihowTechTopics::CLI

    def call
        puts "Welcome to Wikihow Tech Topics"
        puts ""
        puts "Type the number of the article you wish to read."
        run
    end

    def run
        scraped_site_title
        # scraped_site_content
    end

    def create
        new_article = CLI.new
    end

    def scraped_site_title
        test_array1 = ['how to text', 'how to email']
        test_array1.each.with_index {|title, index|
            puts "#{index+1}. #{title}" 
    }
    end

    # def scraped_site_content
    #     test_array2 = [{'content' => 'just do it'}, {'content' => 'just do it, too'}]
    #         test_array2.collect do |content_hash|
    #             content_hash.each.with_index {|content, index|
    #             input = gets.strip
    #             if input == index
    #                 puts "#{content}" 
    #             end 
    #         }
    #         end
    # end

end




