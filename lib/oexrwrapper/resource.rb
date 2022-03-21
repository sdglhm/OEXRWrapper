module OEXRWrapper
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def get_request(url, params: {})
      raise_response client.connection.get("#{url}.json", params)
    end

    private

    def raise_response(response)
      case response
      when 404
        raise Error, "Not found error."
      when 401
        raise Error, "Missing or Invalid App ID."
      when 400
        raise Error, "Invalid base currency."
      end

      response
    end
  end
end
