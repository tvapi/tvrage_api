require 'spec_helper'

describe TvrageApi::Schedule do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.schedule }

  describe 'real request' do
    describe '.quick' do
      it 'should return response class' do
        model.quick.class.should == Faraday::Response
      end
    end

    describe '.full' do
      it 'should return response class' do
        model.full(country: 'US').class.should == Faraday::Response
      end
    end
  end
end
