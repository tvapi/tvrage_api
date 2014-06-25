require 'spec_helper'

describe TvrageApi::Show do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.show }

  describe 'real request' do
    describe '.find' do
      it 'should return response class' do
        model.find(sid: '2930').class.should == Faraday::Response
      end
    end

    describe '.find_full' do
      it 'should return response class' do
        model.find_full(sid: '2930').class.should == Faraday::Response
      end
    end

    describe '.episodes' do
      it 'should return response class' do
        model.episodes(sid: '2930').class.should == Faraday::Response
      end
    end

    describe '.episode' do
      it 'should return response class' do
        model.episode(sid: '2930', ep: '2x04').class.should == Faraday::Response
      end
    end

    describe '.all' do
      it 'should return response class' do
        model.all.class.should == Faraday::Response
      end
    end
  end
end
