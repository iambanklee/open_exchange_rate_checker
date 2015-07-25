require 'open_exchange_rate_checker/api_handler'

module OpenExchangeRateChecker
  class RateChecker
    # FIXME - Move to config.yml
    API_END_POINT = 'https://openexchangerates.org/api/'
    API_PARA      = { app_id: '644a5dc925df4be1adccd97cd6fe017f' }

    # Accept date format YYYY-MM-DD due to the API_END_POINT format
    # TODO - Should have cache to reduce API usage and speed up checking rate
    def get_date_rate(date, currency)
      api_data = get_api_data(date)
      api_data["rates"][currency]
    end

    private
    def get_api_data(date)
      api_handler = OpenExchangeRateChecker::ApiHandler.new(get_historical_api_end_point(date))
      api_data    = api_handler.get(API_PARA)
      api_data
    end

    def get_historical_api_end_point(date_string)
      date = Date.parse(date_string).to_s
      "#{API_END_POINT}/historical/#{date}.json"
    end
  end
end
