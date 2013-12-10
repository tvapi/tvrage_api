require 'spec_helper'

class ExampleRequestClass < TvrageApi::Base
end

describe TvrageApi::Base do
  let(:klass) { ExampleRequestClass }
  let(:model) { klass.new }

  describe '.get' do
    it 'should set uri' do
      model.get('http://example.com')

      model.uri.should == 'http://example.com'
    end

    it 'should set options' do
      model.get('http://example.com', sample_options: true)

      model.options.should == { sample_options: true }
    end

    it 'should return self' do
      model.get('http://example.com').should == model
    end
  end

  describe '.response' do
    it 'should call get klass method' do
      klass.should_receive(:get).and_return(double(code: 200, parsed_response: {}))
      model.stub(:request_options).and_return({})

      model.response
    end

    it 'should return Hash' do
      klass.should_receive(:get).and_return(double(code: 200, parsed_response: {}))
      model.stub(:request_options).and_return({})

      model.response.class.should == Hash
    end

    it 'should return nil' do
      klass.should_receive(:get).and_return(double(code: 400))
      model.stub(:request_options).and_return({})

      model.response.should be_nil
    end
  end

  describe '.request_options' do
    it 'should return correct keys' do
      model.request_options.keys.sort.should == [:query, :base_uri].sort
    end
  end
end
