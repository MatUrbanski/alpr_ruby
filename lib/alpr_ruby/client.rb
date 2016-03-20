module AlprRuby
  class Client
    def initialize(secret:)
      @api = AlprRuby::Connection.new(secret: secret)
    end

    def recognize(params: {})
      @api.call(
        endpoint: 'recognize',
        method: :post,
        params: params
      )
    end
  end
end
