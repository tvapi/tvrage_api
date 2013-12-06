require 'spec_helper'

describe TvrageApi::Request::Update do
  let(:klass) { TvrageApi::Request::Update }
  let(:model) { klass.new('http://example.com') }

  describe '#all' do
    it 'should call new with specific params' do
      klass.should_receive(:new).with('show_list.php')

      klass.all
    end
  end

  describe '#result' do
    it 'should call collection_response method' do
      model.should_receive(:collection_response)

      model.result
    end
  end

  describe '#data_key' do
    it 'should return correct value' do
      model.data_key.should == 'shows'
    end
  end
end
