
class RestUtils

    def get(endPoint)
        HTTParty.get(endPoint)  
    end

    def post(endPoint, body, header)
        HTTParty.post(endPoint, body: body, header: @header)
    end

    def put(endPoint, body, header)
        HTTParty.put(endPoint, body: body, header: @header) 
    end
end