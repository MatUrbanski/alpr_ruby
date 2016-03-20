require 'spec_helper'

describe AlprRuby::Model do
  let(:model_attributes) do
    {
      'confidence': '92.1251',
      'value': 'audi a8',
    }
  end

  subject { AlprRuby::Model.new(model_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      confidence: 92.1251,
      value: 'audi a8',
    )
  end
end
