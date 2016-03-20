require 'spec_helper'

describe AlprRuby::Coordinate do
  let(:coordinate_attributes) do
    {
      'x': '123',
      'y': '321',
    }
  end

  subject { AlprRuby::Coordinate.new(coordinate_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      x: 123,
      y: 321,
    )
  end
end
