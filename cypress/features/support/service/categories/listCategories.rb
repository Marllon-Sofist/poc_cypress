
require 'httparty'

class ListCategoriesRequest

    include HTTParty

    def initialize
      @timeout = 60
      @complement = CONFIG["categorires"]
      @base_uri = CONFIG["url"]

      @headers =    {
                       "x-api-key" => CONFIG["token"]
                    }

      @options =    { 
                       "headers": @headers             
                    }
    end
  
    def lisCategories
        self.class.get(@base_uri + @complement, @options)
    end

end
  