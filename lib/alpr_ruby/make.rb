module AlprRuby
  class Make
    include Virtus.model

    attribute :confidence, Float
    attribute :value, String
  end
end
