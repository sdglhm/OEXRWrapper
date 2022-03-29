module OEXRWrapper
  class CurrenciesResources < Resource
    def retrieve
      currency_array = Array.new
      get_request('currencies').body.each do |currency|
        currency_array.push(Currency.new(currency[0], currency[1]))
      end

      Currencies.new currency_array
    end

    def code_to_string(code)
      get_request('currencies').body[String(code).upcase]
    end

    alias code_to_s code_to_string
  end
end
