require 'spec_helper'

describe AlprRuby::Error do
  let(:error) { AlprRuby::Error.new(code: code) }

  describe '#render' do
    context 'when response code is 400' do
      let(:code) { 400 }

      it 'raise UnauthorizedError' do
        expect { error.render }.to raise_error(
          AlprRuby::InvalidParametersError
        )
      end
    end

    context 'when response code is 401' do
      let(:code) { 401 }

      it 'raise UnauthorizedError' do
        expect { error.render }.to raise_error(
          AlprRuby::UnauthorizedError
        )
      end
    end

    context 'when response code is 402' do
      let(:code) { 402 }

      it 'raise IncorrectPermissionsError' do
        expect { error.render }.to raise_error(
          AlprRuby::LimitUsageExceededError
        )
      end
    end

    context 'when response code is 403' do
      let(:code) { 403 }

      it 'raise ForbiddenError' do
        expect { error.render }.to raise_error(
          AlprRuby::TemporaryLimitExceeded
        )
      end
    end
  end
end
