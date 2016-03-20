require 'spec_helper'

describe AlprRuby::Candidate do
  let(:candidate_attributes) do
    {
      'matches_template': 0,
      'plate': "ABCD123",
      'confidence': 90.740128
    }
  end

  subject { AlprRuby::Candidate.new(candidate_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      matches_template: 0,
      plate: 'ABCD123',
      confidence: 90.740128
    )
  end
end
