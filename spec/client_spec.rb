require "spec_helper"

RSpec.describe OEXRWrapper::Client do
  let (:client) { OEXRWrapper::Client.new(app_id: "test") }


  context "when initialising" do
    it "set app id" do
      expect(client.app_id).to eq("test")
    end

    it "set default base currency" do
      expect(client.base_rate_code).to eq("USD")
    end
  end
end
