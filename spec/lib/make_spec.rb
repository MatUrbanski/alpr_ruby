require 'spec_helper'

describe AlprRuby::Make do
  let(:make_attributes) do
    {
      'confidence': '96.7751',
      'value': 'Audi',
    }
  end

  subject { AlprRuby::Make.new(make_attributes) }

  it 'have proper attributes' do
    expect(subject).to have_attributes(
      confidence: 96.7751,
      value: 'Audi',
    )
  end
end
