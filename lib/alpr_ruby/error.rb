module AlprRuby
  class InvalidParametersError  < StandardError; end
  class UnauthorizedError       < StandardError; end
  class LimitUsageExceededError < StandardError; end
  class TemporaryLimitExceeded  < StandardError; end

  class Error
    ERROR_TYPES = {
      400 => InvalidParametersError,
      401 => UnauthorizedError,
      402 => LimitUsageExceededError,
      403 => TemporaryLimitExceeded,
    }

    def initialize(code:)
      @code = code
    end

    def render
      fail ERROR_TYPES[@code]
    end
  end
end
