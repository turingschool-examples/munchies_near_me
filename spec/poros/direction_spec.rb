require 'rails_helper'

RSpec.describe Direction do
  let(:direction) { Direction.new(direction_data) }

  it 'has attributes' do
    expect(direction.distance).to eq(0.732)
  end
end