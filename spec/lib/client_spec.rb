require 'spec_helper'

describe AlprRuby::Client do
  let(:secret) { 'test_secret' }
  let(:client) { AlprRuby::Client.new(secret: secret) }

  describe '#initialize' do
    it 'creates new instance of AlprRuby::Connection' do
      expect(AlprRuby::Connection).to receive(:new).with(secret: secret)

      client
    end
  end

  describe '#recognize' do
    let(:attributes) do
      {
        image_url: 'http://www.motofilm.pl/wp-content/uploads/2010/04/audi_a8_prezentacja_270410_03_glo.jpg',
        tasks: 'plate, color, make, makemodel',
        topn: 1,
        country: 'eu'
      }
    end

    it 'returns AlprRuby::Recognition object' do
      VCR.use_cassette('recognize') do
        expect(client.recognize(params: attributes))
          .to be_an_instance_of AlprRuby::Recognition
      end
    end
  end
end
