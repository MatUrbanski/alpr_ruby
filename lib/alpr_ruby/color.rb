module AlprRuby
  class Color
    include Virtus.model

    attribute :confidence, Float
    attribute :value, String
  end
end
