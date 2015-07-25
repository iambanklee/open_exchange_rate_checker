require 'spec_helper'
require 'open_exchange_rate_checker/rate_checker'

describe OpenExchangeRateChecker::RateChecker do
  let(:rate_checker) {OpenExchangeRateChecker::RateChecker.new }

  describe "#get_date_rate" do
    subject { rate_checker.get_date_rate(date, currency) }

    context "when date = 2015-05-07 " do
      let(:date) { '2015-05-07' }

      context "and currency = GBP " do
        let(:currency) { 'GBP' }
        it { should eq 0.649309 }
      end

      context "and currency = TWD " do
        let(:currency) { 'TWD' }
        it { should eq 30.753 }
      end

      context "and currency = EUR " do
        let(:currency) { 'EUR' }
        it { should eq 0.889349 }
      end
    end

    context "when date = 2014-08-12 " do
      let(:date) { '2014-08-12' }

      context "and currency = GBP " do
        let(:currency) { 'GBP' }
        it { should eq 0.594915 }
      end

      context "and currency = TWD " do
        let(:currency) { 'TWD' }
        it { should eq 30.13607 }
      end

      context "and currency = EUR " do
        let(:currency) { 'EUR' }
        it { should eq 0.748021 }
      end
    end

  end
end