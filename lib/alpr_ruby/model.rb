module AlprRuby
  class Model
    include Virtus.model

    attribute :confidence, Float
    attribute :value, String
  end
end
