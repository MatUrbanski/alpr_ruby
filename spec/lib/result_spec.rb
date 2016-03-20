require 'spec_helper'

describe AlprRuby::Result do
  let(:plate_attributes) do
    {
      'plate': 'ABCD1234',
      'matches_template': 1,
      'requested_topn': 1,
      'processing_time_ms': 2,
      'confidence': 3,
      'region': 'region',
      'region_confidence': 4,
      'coordinates': [
        {
          'x': 2,
          'y': 2
        }
      ],
      'candidates': [
        {
          'plate': 'string',
          'confidence': 2,
          'matches_template': 1
        }
      ]
    }
  end

  subject { AlprRuby::Result.new(plate_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      plate: 'ABCD1234',
      matches_template: 1,
      requested_topn: 1,
      processing_time_ms: 2,
      confidence: 3,
      region: 'region',
      region_confidence: 4
    )

    expect(subject.coordinates.map(&:class)).to eq [AlprRuby::Coordinate]
    expect(subject.candidates.map(&:class)).to eq [AlprRuby::Candidate]
  end
end
