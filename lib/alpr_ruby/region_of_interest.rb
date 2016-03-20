module AlprRuby
  class RegionOfInterest
    include Virtus.model

    attribute :x, Integer
    attribute :y, Integer
    attribute :width, Integer
    attribute :height, Integer
  end
end
