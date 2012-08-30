require 'rubygems'
require 'open-uri'
require 'hpricot'

class Scrapper
  
  def initialize(url, state)
    # The Current state
      @state = state
    # The website to get data from. 
    # "http://en.wikipedia.org/wiki/List_of_California_area_codes"
      @url = url 
    # The response from the website 
      @response = ''
    # After parsing, the data is stored here Key <AreaCode> Value <City>
      @h = Hash.new
      @doc = ''
  end 

  def run
  # Opens the webpage using the open-uri wrapper
  open(@url, "User-Agent" => "Ruby/#{RUBY_VERSION}",
    "From" => "foo@bar.invalid",
    "Referer" => "http://en.wikipedia.org/wiki/List_of_California_area_codes") { |response|
     
    # gets some general meta information from the web page              
    puts "Fetched document: #{response.base_uri}"
    puts "\t Last Modified: #{response.last_modified}\n\n"
                
    # Save the response 
    @response = response.read
  }
    
  @doc = Hpricot(@response)
  end
  def parse(data)  
  # parsing would happen here but the parsing method is being rewritten do to wikipedia changing all the time the parsing function was 
  # using regex to find the parts of the html file to store in the database but this changed 
  # as regex became hard to use in this context.  
  
  
  
  end
end    
#rescue Exception => e
 # print e, "\n"
#end