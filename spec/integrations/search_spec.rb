require 'spec_helper'

describe TvrageApi::Search do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.search }

  describe 'real request' do
    describe '.by_name' do
      it 'should return response class' do
        model.by_name(show: 'buffy').class.should == Faraday::Response
      end
    end

    describe '.full_by_name' do
      it 'should return response class' do
        model.full_by_name(show: 'buffy').class.should == Faraday::Response
      end
    end
  end
end
