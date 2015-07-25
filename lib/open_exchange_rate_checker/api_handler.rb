require 'json'

module OpenExchangeRateChecker
  class ApiHandler

    def initialize(api_end_point)
      @api_end_point = api_end_point
      @uri           = URI(@api_end_point)
    end

    def get(params = {})
      @uri.query = URI.encode_www_form(params)
      @response  = Net::HTTP.get_response(@uri)
      parser_response
    end

    private
    def parser_response
      case @response.code
      when "200"
        JSON.parse(@response.body)
      else
        @response.body
      end
    end
  end
end
