require 'spec_helper'

describe AlprRuby::Recognition do
  let(:recognition_attributes) do
    {
      'total_processing_time': 100,
      'img_width': 1000,
      'img_height': 1000,
      'credit_cost': 100,
      'credits_monthly_used': 10,
      'credits_monthly_total': 10,
      'makemodel': [
        {
          'confidence': 0,
          'value': 'string'
        }
      ],
      'make': [
        {
          'confidence': 0,
          'value': 'string'
        }
      ],
      'color': [
        {
          'confidence': 0,
          'value': 'string'
        }
      ],
      'plate': {
        'results': [
          {
            'plate': 'string',
            'matches_template': 0,
            'requested_topn': 0,
            'processing_time_ms': 0,
            'confidence': 0,
            'region': 'string',
            'region_confidence': 0,
            'coordinates': [
              {
                'x': 0,
                'y': 0
              }
            ],
            'candidates': [
              {
                'plate': 'string',
                'confidence': 0,
                'matches_template': 0
              }
            ]
          }
        ],
        'img_width': 0,
        'img_height': 0,
        'regions_of_interest': [
          {
            'x': 0,
            'y': 0,
            'width': 0,
            'height': 0
          }
        ],
        'epoch_time': 0,
        'version': 0,
        'data_type': 'alpr_results',
        'processing_time_ms': 0
      }
    }
  end

  subject { AlprRuby::Recognition.new(recognition_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      total_processing_time: 100,
      img_width: 1000,
      img_height: 1000,
      credit_cost: 100,
      credits_monthly_used: 10,
      credits_monthly_total: 10
    )

    expect(subject.make.map(&:class)).to eq [AlprRuby::Make]
    expect(subject.model.map(&:class)).to eq [AlprRuby::Model]
    expect(subject.color.map(&:class)).to eq [AlprRuby::Color]
    expect(subject.plate).to be_an_instance_of AlprRuby::Plate

  end
end
