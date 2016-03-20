require 'spec_helper'

describe AlprRuby::Connection do
  let(:secret)     { 'test_secret' }
  let(:connection) { AlprRuby::Connection.new(secret: secret) }

  it 'has defined BASE_URL constant' do
    expect(AlprRuby::Connection::BASE_URL)
      .to eq 'https://api.openalpr.com/v1'
  end

  describe '#call' do
    let(:response_body) { '{"body":"value"}' }
    let(:request)       { instance_double(Typhoeus::Request) }

    let(:response) do
      instance_double(
        Typhoeus::Response,
        response_code: response_code,
        response_body: response_body
      )
    end

    before do
      expect(Typhoeus::Request).to receive(:new).with(
        'https://api.openalpr.com/v1/test_endpoint',
        method: :get,
        params: { secret_key: secret }
      ) { request }

      expect(request).to receive(:run) { response }
    end

    context 'when response_code is 200' do
      let(:response_code) { 200 }

      it 'returns parsed response_body' do
        expect(connection.call(endpoint: 'test_endpoint', method: :get))
          .to eq JSON.parse(response_body)
      end
    end

    context 'when response_code is not 200' do
      let(:response_code) { 401 }

      it 'returns error' do
        expect { connection.call(endpoint: 'test_endpoint', method: :get) }
          .to raise_error(AlprRuby::UnauthorizedError)
      end
    end
  end
end
