module OEXRWrapper
  class CurrenciesResources < Resource
    def retrieve
      Currencies.new get_request('currencies').body
    end

    def code_to_string(code)
      get_request('currencies').body[String(code).upcase]
    end

    alias code_to_s code_to_string
  end
end
