module AlprRuby
  class Client
    def initialize(secret:)
      @api = AlprRuby::Connection.new(secret: secret)
    end

    def recognize(params: {})
      response = @api.call(
        endpoint: 'recognize',
        method: :post,
        params: params
      )

      AlprRuby::Recognition.new(response)
    end
  end
end
