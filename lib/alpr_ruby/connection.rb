require 'json'

module AlprRuby
  class Connection
    BASE_URL    = 'https://openalpr.com/v1'.freeze

    def initialize(secret:)
      @secret = secret
    end

    def call(endpoint:, method:, params: {})
      response = Typhoeus::Request.new(
        "#{BASE_URL}/#{endpoint}",
        method: method,
        params: { secret_key: @secret }.merge!(params),
      ).run

      JSON.parse(response.response_body)
    end
  end
end
