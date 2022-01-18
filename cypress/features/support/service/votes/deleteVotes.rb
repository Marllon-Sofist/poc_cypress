
require 'httparty'

class DeleteVotesRequest

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
  
    def deleteVotes(id_vote)
        self.class.delete(@base_uri + @complement + "/" + id_vote.to_s , @options)
    end

end
  