
require 'httparty'

class CreateVotesRequest

    include HTTParty

    def initialize
      @timeout = 60
      @complement = CONFIG["votes"]
      @base_uri = CONFIG["url"]

      @headers =    {
                       "Content-Type" => "application/json",
                       "x-api-key" => "DEMO-API-KEY"
                    }

      @options =    { 
                       "headers": @headers             
                    }
    end
  
    def createVotes(body)
        self.class.post(@base_uri  + @complement, @options.merge("body": body.to_json ))
    end

end
  