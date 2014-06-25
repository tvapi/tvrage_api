require 'spec_helper'

describe TvrageApi::Recap do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.recap }

  describe 'real request' do
    describe '.all' do
      it 'should return response class' do
        model.all.class.should == Faraday::Response
      end
    end

    describe '.show' do
      it 'should return response class' do
        model.show(show: 5410).class.should == Faraday::Response
      end
    end

    describe '.last' do
      it 'should return response class' do
        model.last.class.should == Faraday::Response
      end
    end
  end
end
