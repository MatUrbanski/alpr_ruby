module AlprRuby
  class Result
    include Virtus.model

    attribute :plate, String
    attribute :confidence, Float
    attribute :region_confidence, Integer
    attribute :plate_index, Integer
    attribute :processing_time_ms, Float
    attribute :candidates, Array[Candidate]
    attribute :coordinates, Array[Coordinate]
    attribute :matches_template, Integer
    attribute :requested_topn, Integer
  end
end
