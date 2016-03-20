module AlprRuby
  class Plate
    include Virtus.model

    attribute :img_height, Integer
    attribute :img_width, Integer
    attribute :results, Array[Result]
    attribute :version, Integer
    attribute :processing_time_ms, Float
  end
end
