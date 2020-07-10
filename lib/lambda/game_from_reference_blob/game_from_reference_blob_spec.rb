require_relative 'game_from_reference_blob'

describe 'lambda_handler' do
  it 'generates json howdy' do
    result = lambda_handler(event: nil, context: nil)

    expect(result).to eq ''
  end
end
