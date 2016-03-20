require 'spec_helper'

describe AlprRuby::Color do
  let(:color_attributes) do
    {
      'confidence': '96.7751',
      'value': 'red',
    }
  end

  subject { AlprRuby::Color.new(color_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      confidence: 96.7751,
      value: 'red',
    )
  end
end
