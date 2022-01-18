
require 'httparty'

class GetYourVotesRequest

    include HTTParty

    def initialize
      @timeout = 60
     
      @base_uri = CONFIG["url"]

      @complement = CONFIG["votes"]

      @headers =    {
                       "x-api-key" => "DEMO-API-KEY"
                    }

      @options =    { 
                       "headers": @headers             
                    }
    end
  
    def getYourVotes
        self.class.get(@base_uri + @complement, @options)
    end

end
  