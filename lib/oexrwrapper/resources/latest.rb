module OEXRWrapper
  class LatestResource < Resource
    def retrieve
      Latest.new get_request('latest').body['rates']
    end

    def method_missing(symbol, *args)
      if symbol !~ /^[a-zA-Z]{3}$/
        super
      else
        get_request('latest').body['rates'][symbol.to_s.upcase]
      end
    end

    def respond_to_missing symbol
      true
    end
  end
end
