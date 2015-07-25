require 'spec_helper'
require 'open_exchange_rate_checker/api_handler'

describe OpenExchangeRateChecker::ApiHandler do
  let(:api_end_point) { "https://openexchangerates.org/api/" }
  let(:api_handler) {OpenExchangeRateChecker::ApiHandler.new(api_end_point) }
  let(:parameters) { {app_id: '644a5dc925df4be1adccd97cd6fe017f'} }

  describe "#get" do
    subject { api_handler.get(parameters) }

    context "when call APIs" do
      it { should be_an(Hash) }
      it { should_not be_empty }
    end
  end
end