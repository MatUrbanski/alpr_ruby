module AlprRuby
  class Recognition
    include Virtus.model

    attribute :plate, Plate
    attribute :image_bytes, String
    attribute :color, Array[Color]
    attribute :make, Array[Make]
    attribute :img_width, Integer
    attribute :img_height, Integer
    attribute :credits_monthly_used, Integer
    attribute :makemodel, Array[Model]
    attribute :total_processing_time, Float
    attribute :credits_monthly_total, Integer
    attribute :image_bytes_prefix, String
    attribute :credit_cost, Integer

    alias_method :model, :makemodel
  end
end
