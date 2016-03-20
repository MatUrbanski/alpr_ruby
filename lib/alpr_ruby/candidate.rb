module AlprRuby
  class Candidate
    include Virtus.model

    attribute :matches_template, Integer
    attribute :plate, String
    attribute :confidence, Float
  end
end
