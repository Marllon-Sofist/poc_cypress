
require 'httparty'

class CatListBreedsRequest

    include HTTParty

    def initialize
      @timeout = 60
      @complement = CONFIG["listBreeds"]
      @base_uri = CONFIG["url"]

      @headers =    {
                       "x-api-key" => CONFIG["token"]
                    }

      @options =    { 
                       "headers": @headers             
                    }
    end
  
    def getCatListBreeds
        self.class.get(@base_uri + @complement, @options)
    end

end
  