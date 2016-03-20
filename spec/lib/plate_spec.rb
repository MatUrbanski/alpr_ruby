require 'spec_helper'

describe AlprRuby::Plate do
  let(:plate_attributes) do
    {
      'results': [
        {
          'plate': 'string',
          'matches_template': 1,
          'requested_topn': 1,
          'processing_time_ms': 2,
          'confidence': 3,
          'region': 'string',
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
      ],
      'img_width': 100,
      'img_height': 100,
      'regions_of_interest': [
        {
          'x': 1,
          'y': 2,
          'width': 100,
          'height': 100
        }
      ],
      'epoch_time': 1,
      'version': 1,
      'data_type': 'alpr_results',
      'processing_time_ms': 1000.12
    }
  end

  subject { AlprRuby::Plate.new(plate_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      img_height: 100,
      img_width: 100,
      epoch_time: 1,
      version: 1,
      data_type: 'alpr_results',
      processing_time_ms: 1000.12,
    )

    expect(subject.results.map(&:class)).to eq [AlprRuby::Result]
    expect(subject.regions_of_interest.map(&:class)).to eq [AlprRuby::RegionOfInterest]
  end
end
