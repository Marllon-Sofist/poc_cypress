
require 'httparty'

class SearchBreedsByNameRequest

    include HTTParty

    def initialize
      @timeout = 60
      @complement = CONFIG["searchBreeds"]
      @base_uri = CONFIG["url"]

      @headers =    {
                       "x-api-key" => CONFIG["token"]
                    }

      @options =    { 
                       "headers": @headers             
                    }
    end
  
    def searchBreedsByName(name)
        self.class.get(@base_uri + @complement, @options)
    end

end
  