require 'spec_helper'

describe AlprRuby::RegionOfInterest do
  let(:region_of_interest_attributes) do
    {
      'x': '123',
      'y': '321',
      'width': '123',
      'height': '123'
    }
  end

  subject { AlprRuby::RegionOfInterest.new(region_of_interest_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      x: 123,
      y: 321,
      width: 123,
      height: 123
    )
  end
end
