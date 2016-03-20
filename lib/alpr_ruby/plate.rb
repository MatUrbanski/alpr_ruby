module AlprRuby
  class Plate
    include Virtus.model

    attribute :img_height, Integer
    attribute :img_width, Integer
    attribute :results, Array[Result]
    attribute :regions_of_interest, Array[RegionOfInterest]
    attribute :version, Integer
    attribute :epoch_time, Integer
    attribute :data_type, String
    attribute :processing_time_ms, Float
  end
end
