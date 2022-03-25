# frozen_string_literal: true
require "faraday"

module OEXRWrapper
  class Client
    BASE_URL = "https://openexchangerates.org/api/"

    attr_reader :app_id, :base_rate_code

    def initialize(app_id:, base_rate_code: "USD")
      @app_id = app_id
      @base_rate_code = base_rate_code
    end

    def latest
      LatestResource.new self
    end

    def currencies
      CurrenciesResources.new self
    end

    def connection
      @connection = Faraday.new do |conn|
        conn.url_prefix = BASE_URL
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.params["app_id"] = @app_id
        conn.params["base"] = @base_rate_code.upcase
      end
    end
  end
end
